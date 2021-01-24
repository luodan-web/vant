<template>
  <div class="myfooter" style="padding-bottom: 53px">
    
      <van-tabbar v-model="active">
      <van-tabbar-item replace to="/">
        <template>
          <img
            :src=" home.active ?  home.inactive :  home.active"
          />
        </template>
      </van-tabbar-item>
      <van-tabbar-item>
        <van-tabbar-item to="/classify">
          <template>
            <img :src=" classfiy.inactive ?  classfiy.inactive :  classfiy.active" />
          </template>
        </van-tabbar-item>
      </van-tabbar-item>
      <van-tabbar-item replace to="/cart">
        <van-tabbar-item>
          <template>
            <img :src="carts.inactive ?carts.inactive : carts.active" />
          </template>
        </van-tabbar-item>
      </van-tabbar-item>
      <van-tabbar-item replace to="/me">
        <van-tabbar-item>
          <template>
            <img :src="me.inactive ? me.inactive : me.active" />
          </template>
        </van-tabbar-item>
      </van-tabbar-item>
      <van-tabbar-item>
        <van-tabbar-item>
          <template>
            <img :src="orther.inactive ? orther.inactive : orther.active" />
          </template>
        </van-tabbar-item>
      </van-tabbar-item>
    </van-tabbar>

  </div>
</template>
<script>
import Vue from "vue";
import { Tabbar, TabbarItem,Icon } from "vant";
Vue.use(Tabbar).use(TabbarItem).use(Icon);
export default {
  data() {
    return {
       active: 0,
      home:  {
          active: require("../../public/style/11.jpg"),
          inactive: require("../../public/style/1.jpg"),
        },
       classfiy: {
          active: require("../../public/style/22.jpg"),
          inactive: require("../../public/style/2.jpg"),
        },
        carts:{
          active: require("../../public/style/1.jpg"),
          inactive: require("../../public/style/3.jpg"),
        },
       me: {
          active: require("../../public/style/1.jpg"),
          inactive: require("../../public/style/4.jpg"),
        },
        orther:{
          active: require("../../public/style/1.jpg"),
          inactive: require("../../public/style/5.jpg"),
        },
      
    };
  },
};
</script>
<style scoped>
img {
  width: 80%;
}
.myfooter>>>.van-tabbar-item{
display:table-cell;
text-align: center;
background-color:rgb(245, 245, 245) ;
}

</style>
