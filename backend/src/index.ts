import mongoose, { Error } from 'mongoose';
import express, { Request, Response, NextFunction } from 'express';
import cors from 'cors';
import passport from 'passport';
import passportLocal from 'passport-local';
import cookieParser from 'cookie-parser';
import session from 'express-session';
import bcrypt from 'bcryptjs';
import dotenv from 'dotenv';
import User from './User';
import { UserInterface } from './Interfaces/UserInterface';

const LocalStrategy = passportLocal.Strategy;

dotenv.config();

mongoose.connect(`${process.env.HTTP}${process.env.USER}:${process.env.PASS}${process.env.REST}`, {
    useCreateIndex: true,
    useNewUrlParser: true,
    useUnifiedTopology: true
}, (err : Error) =>{ 
    if(err) throw err;
        console.log("Connected To Mongo")
    
});

//Middleware
const app = express();
app.use(express.json());
app.use(cors({origin: "http://localhost:3000", credentials: true}));
app.use(
    session({
        secret: "secretcode",
        resave: true,
        saveUninitialized: true,
    })
);
app.use(cookieParser());
app.use(passport.initialize());
app.use(passport.session());


//Passport
passport.use(new LocalStrategy((username, password, done) => {
    User.findOne({ username: username }, (err, user : any) => {
        if(err) throw err;
        if(!user) return done(null, false);
        bcrypt.compare(password, user.password, (err, result) => {
            if (err) throw err;
            if (result === true){
                return done(null, user);
            } else {
                return done(null, false);
            }
        });
    });
})
);

passport.serializeUser((user : any, cb) => {
    cb(null, user.id);
});

passport.deserializeUser((id : string, cb) => {
    User.findOne({ _id: id }, (err, user : any ) => {
        const userInformation = {
            username: user.username,
            role: user.role,
            id: user._id,
            email: user.email
            
        };
        cb(err, userInformation);
    });
});

//Routes
    //register route
app.post('/register', async (req, res) =>{
    const { username, password } = req?.body;
    if ( !username || !password || typeof username !=="string" || typeof password !=="string") {
        res.send("Improper Values");
        return;
    }
    User.findOne({ username }, async (err: Error, doc) => {
        if (err) throw err;
        if (doc) res.send("User Already Exists");
        if (!doc) {
            const hashedPassword = await bcrypt.hash(req.body.password, 10);
        const newUser = new User({
            username: req.body.username,
            email: req.body.email,
            password: hashedPassword
        });
        await newUser.save();
        res.send("success");
        }
    })  
});


const isAdministratorMiddleware = (req : Request, res : Response, next : NextFunction) => {
    const { user } : any = req;
    if (user) {
        User.findOne({ username: user.username }, (err, doc: UserInterface) => {
            if (err) throw err;
            if (doc?.role === 'Admin') {
                next();
            }
            else{
                res.send("Sorry, only administrators cand perform this");  
            }   
        })
    }
    else{
        res.send("Sorry, you arent logged in")
    }
   
}

    //login route
app.post("/login", passport.authenticate("local"), (req, res) => {
    res.send("success");
});

    //get user's info
app.get("/user", (req, res) => {
    res.send(req.user);
  });

app.get("/logout",(req, res) => {
    req.logout();
    res.send("success")
})



//   app.put("/updateuser/:id",(req, res) => {

//     const  requestid  = req.params.id

//    let user = users.filter(user => {
//        return user.id === requesti
       
//        d;
//    })

//   });

app.post("/deleteuser",isAdministratorMiddleware, async  (req, res) => {
    const { id } = req.body
    await User.findByIdAndDelete(id, (err: Error) => {
        if (err) throw err;
    });
    res.send("success")
})

app.get("/getallusers", isAdministratorMiddleware, async (req, res) => {
    await User.find({}, (err: Error, data: UserInterface[]) => {
        if (err) throw err;
        const filteredUsers : any = [];
        data.forEach((item : any) => {
            const userInformation = {
                id: item._id,
                username: item.username,
                role: item.role
            }
            filteredUsers.push(userInformation);
        })
        res.send(filteredUsers);
    })
})

app.get("/getallusersoff", async (req, res) => {
    await User.find({}, (err: Error, data: UserInterface[]) => {
        if (err) throw err;
        const filteredUsers : any = [];
        data.forEach((item : any) => {
            const userInformation = {
                id: item._id,
                username: item.username,
                role: item.role
            }
            filteredUsers.push(userInformation);
        })
        res.send(filteredUsers);
    })
})

app.listen(4000, () => {
    console.log("Server Started")
})