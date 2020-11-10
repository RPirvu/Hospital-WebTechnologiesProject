import mongoose from 'mongoose';

const user = new mongoose.Schema({
    username: {
        type: String,
        unique: true
    },
    password:{
        type:String
    },
    role: {
        type: String,
        enum : ['Patient','Admin','Doctor','Secretary'],
        default: 'Patient'
    },
    email: {
        type: String,
        trim: true,
        lowercase: true,
        unique: true,
        required: 'Email address is required',
        match: [/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/, 'Please fill a valid email address']
    }
});


export default mongoose.model("User", user);