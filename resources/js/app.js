/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');
window.Vue = require('vue');

import App from './components/App.vue';
// import Vue from 'vue'
import VueRouter from 'vue-router'
Vue.use(VueRouter)
/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default))

//
const Prof = Vue.component('profile', require('./components/Profile.vue').default);
const Login = Vue.component('login', require('./components/Login.vue').default);
const Registration = Vue.component('registration', require('./components/Registration.vue').default);
const Reset = Vue.component('resetPassword', require('./components/ResetPassword.vue').default);
const NewPassword = Vue.component('newPassword', require('./components/NewPassword.vue').default);
const Announcements = Vue.component('OLX', require('./components/OLX.vue').default);
const Announcement = Vue.component('announcement', require('./components/Announcement.vue').default);
const Comments = Vue.component('comments', require('./components/Comments.vue').default);
const CreateChildComments = Vue.component('createChildComments', require('./components/CreateChildComment').default);

const routes = [
    { path: '/profile', component:  Prof},
    { name: 'login', path: '/login', component:  Login},
    { name: 'registration', path: '/registration', component:  Registration},
    { path: '/reset', component:  Reset},
    { path: '/password/reset/:token', component:  NewPassword},
    { path: '/announcements', component:  Announcements},
    { path: '/announcement/:id', component:  Announcement},
    { path: '/comments', component:  Comments},
    { path: '/createChildComments', component:  CreateChildComments},
]


const router = new VueRouter({
    mode: 'history',
    routes: routes // short for `routes: routes`
});

const app = new Vue({
    el: '#app',
    router: router,
    render: h => h(App),
});
