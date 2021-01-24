<template>
  <div>
    <div class="app">
      <div><img src="../../public/style/6.jpg" alt=""></div>
      <van-search v-model="value" placeholder="请输入搜索关键词"   shape="round"
  background="rgba(0, 0, 0,0)" @click="skip" :class="{active:isActive}"/>
  </div>
    <van-swipe class="my-swipe" :autoplay="3000" indicator-color="white">
      <van-swipe-item v-for="(v, i) of imgs" :key="i">
        <img :src="v.img" alt="" />
      </van-swipe-item>
    </van-swipe>
   </div>
</template>

<script>
import Vue from "vue";
import { Swipe,SwipeItem,Search,Sticky} from "vant";
Vue.use(Swipe).use(SwipeItem).use(Search).use(Sticky);
export default {
  data() {
    return {
      container: null,
      imgs: [],
      value:'',
      isActive:false
      
    };
  },
  methods: {
    skip(){
      this.$router.push('/search')
    },
    getCarousel() {
      this.axios.get("/carousel").then((res) => {
        this.imgs = res.data.result;
        console.log(this.imgs);
      });
    },
  },
  mounted() {
    this.container = this.$refs.container;
    this.getCarousel();
  },
};
</script>
<style scoped>
.app{
position: fixed;
/* position:absolute; */
z-index: 99999;
display: flex;
}
.app>:first-child{
 margin-left:20px ;
 margin-top:1px ;
  width: 18%;
}
.app>:nth-child(2){
  width: 100%;
}
.app>>>.van-search__content--round{
  border-radius:5px ;
}
.app>>>.van-search .van-cell{
  padding: 5px 66px 5px 3px;
}
.my-swipe .van-swipe-item {
  color: #fff;
  font-size: 20px;
  line-height: 150px;
  text-align: center;
}
img{
  width: 100%;
}
.my-swipe .van-swipe-item[data-v-e3565ce0]{
line-height: 40px;
}
</style>
