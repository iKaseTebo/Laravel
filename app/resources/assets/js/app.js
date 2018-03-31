import Vue from 'vue';
import App from './components/AppComponent';
import router from './router/router.js';
import resource from 'vue-resource';

Vue.use(resource);

const app = new Vue({
    el: '#app',
    components: { App },
    router,
});