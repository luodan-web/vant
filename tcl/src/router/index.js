import Vue from 'vue'
import VueRouter from 'vue-router'
import Homepage from '../views/Homepage.vue'
import Me from '../views/Me.vue'
import LoginReigister from '../views/LoginReigister.vue'
import Classify from '../views/Classify.vue'
import Deatils from '../views/Deatils.vue'
import Search from '../views/Search.vue'
import Cart from '../views/Cart.vue'
Vue.use(VueRouter)
const routes = [{
        path: '/cart',
        name: 'Cart',
        component: Cart,
        meta: {
            title: '购物车',
            islogin: true
        }
    },
    {
        path: '/search',
        name: 'Search',
        component: Search,
        meta: { title: '搜索' }
    },
    {
        path: '/deatils',
        name: 'Deatils',
        component: Deatils,
        meta: { title: '商品的详情' }

    },
    {
        path: '/classify',
        name: 'Classify',
        component: Classify,
        meta: { title: '商品的分类' }

    },
    {
        path: '/',
        name: 'Homepage',
        component: Homepage,
        meta: { title: '商品的首页' }

    },
    {
        path: '/me',
        name: 'Me',
        component: Me,
        meta: { title: '我的' }

    },
    {
        path: "/loginReigister",
        name: 'LoginReigister',
        component: LoginReigister,
        meta: { title: '登录注册' }
    }
]
const router = new VueRouter({
        mode: 'history',
        base: process.env.BASE_URL,
        routes
    })
    // 一个spa应用中，如何修改网页当中的标签，可以使用全局守卫导航 
router.beforeEach((to, from, next) => {
    // 从from跳到to
    document.title = to.meta.title
    console.log(to);
    // if()
    if (to.meta.islogin) {
        if (localStorage.getItem('uname') || sessionStorage.getItem('uname')) {
            next();
        } else {
            if (to.path == 'me') {
                next()
            } else {
                next({ path: '/me' })
            }
        }

    } else {
        next();
    }


})
export default router