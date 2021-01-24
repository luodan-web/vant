import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import 'vant/lib/index.css'
import 'lib-flexible'
Vue.config.productionTip = false;
axios.defaults.baseURL = 'http://127.0.0.1:3003';
Vue.prototype.axios = axios;
new Vue({
    router,
    store,
    render: h => h(App)
}).$mount('#app')