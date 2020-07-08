import React from 'react';
import './Bye.css'

const Bye = (props) => {
    return(
        <div class="bye-div" className="f1 tc">
            <h2>{props.greeting}</h2>
        </div>
    );
}

export default Bye;