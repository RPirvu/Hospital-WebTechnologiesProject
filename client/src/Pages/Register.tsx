import React, { useState } from 'react'
import axios, { AxiosResponse } from 'axios';

export default function Register() {
    const [username, setUsername] = useState<String>("");
    const [password, setPassword] = useState<String>("");
    const [email, setEmail] = useState<String>("");

    const Register = () => {
        axios.post("http://localhost:4000/register", {
          username,
          password,
          email
        }, {
          withCredentials: true
        }).then((res: AxiosResponse) => {
            if (res.data === "success") {
                window.location.href = '/login'
            }
        })
    }
    
    return (
        <div>
           <h1>Register</h1>
           <input type="text" placeholder='username' onChange={e => setUsername(e.target.value)}/>
           <input type="password" placeholder='password' onChange={e => setPassword(e.target.value)}/>
           <input type="text" placeholder='email' onChange={e => setEmail(e.target.value)}/>
           <button onClick={Register}>Register</button>
         
        </div>
    )
}
