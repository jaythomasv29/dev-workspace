import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import Hello from './Hello';
import Bye from './Bye';
import * as serviceWorker from './serviceWorker';
import 'tachyons' // using an npm package that was installed called tachyons

ReactDOM.render(
  <React.StrictMode>
  <Bye greeting = {`We are leaving this page now...`}></Bye>
    <Hello greeting={`Hello React Nina`}/>
    <App />

  </React.StrictMode>,
  document.getElementById('root')
);

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
