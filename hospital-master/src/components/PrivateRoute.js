import React from 'react';
import { Redirect, Route } from 'react-router-dom';
 
 const PrivateRoute = ({auth, component: Component, ...rest}) =>{

    return (
        <Route 
            {...rest}
            render={
                props => auth ?
                (<Component {...props}/>)
                : (<Redirect to={{ pathname: "/" }}/>)
            }
        >

        </Route>
    )
}
export default PrivateRoute;