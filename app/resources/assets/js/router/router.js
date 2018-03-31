import Vue from 'vue';
import VueRouter from 'vue-router';
Vue.use(VueRouter);

import Example from '../components/ExampleComponent';
import Home from '../components/HomeComponent';
import User from '../components/UserComponent';

const routes = [
	{
        path: '/',
        component: Home
    },
    {
        path: '/Example',
        component: Example
    },
    {
        path: '/User',
        component: User
    }		
];

export default new VueRouter({ routes });