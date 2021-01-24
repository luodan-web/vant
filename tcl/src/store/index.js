import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'
import qs from 'qs'
import router from '../router'
import { Toast } from "vant";
Vue.use(Vuex)
Vue.use(Toast);
var carPage=JSON.parse(localStorage.getItem('cartList'))||[]
export default new Vuex.Store({
  state: {
    // 界面初始的储存的状态
      uname:'',
      // 购物车初始化列表
      cartList:carPage
    },
   mutations: {
    // 修改state中的变量
    setUname(state,name){
      state.uname=name
    },
    // 添加到购物车
    addCartList(state,product){
      console.log(product)
      let isExists=false;
      state.cartList.forEach((item)=>{
        if(item.lid==product.lid){
          item.lid+=product.lid;
          isExists=true
        }                               
      })
      if(!isExists){
        let list=product
        state.cartList.push(list)
        }
        localStorage.setItem('cartList',JSON.stringify(state.cartList))
          },
        // 删除购物车
      removeCartLite(state,lid){
      state.cartList.forEach((item,index)=>{
        if(lid==item.lid){
          // index是数组下标的位置
          state.cartList.splice(index,1)
         }
      })
      // 删除单个的数据，将剩余的数据保存到内部的
      localStorage.setItem('cartList',JSON.stringify(state.cartList))
    },
    //增加个数,count
    addList(state,lid){
      state.cartList.forEach(item=>{
        if(item.lid==lid){
          item.count++
        }
      })

    }
    // 减少个数
  },
  actions: {
    login(context,payload){
      console.log(payload)
        axios.post("/login",qs.stringify(payload)).then((res)=>{
        if (res.data.code==200){
         router.push({path:'/'});
         context.commit('setUname',payload.uname)
          }
          else{
            Toast('用户登录失败')
          }
        });
           }
  },
  modules: {
  }
})

