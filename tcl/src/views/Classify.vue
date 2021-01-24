<template>
  <div class="app">
    <van-nav-bar title="分类" left-arrow safe-area-inset-top fixed> </van-nav-bar>
    <div class="classlys">
      <div>
        <van-sidebar v-model="activeKey" @change="onChange(activeKey)">
          <van-sidebar-item :title="v.dalei" v-for="(v, i) of fonts" :key="i">
          </van-sidebar-item>
        </van-sidebar>
      </div>
      <div>
        <div class="classiyContent">
          <img :src="content[0].img" alt="" />
          <van-divider>热门分类</van-divider>
          <van-row type="flex" justify="space-around">
            <van-col
              span="7"
              v-for="(s, k) of content.slice(1,7)"
              :key="k"
              class="classlyImg"
            >
              <img :src="s.img" alt="" />
              <div>{{ s.Iname }}</div>
            </van-col>
          </van-row>
        </div>

          <van-divider>热门单品</van-divider>
          <div>
            <div
              span="24"
              v-for="(a, b) of content.slice(8, 13)"
              :key="b"
              @click="toDeatils(a.lid)"
            >
            <div class="classlyImgbig" >
               <img :src="a.img" alt="" />
              <div>
                <div>{{ a.Iname }}</div>
                <div>￥{{ a.price }}.00</div>
              </div>
            </div>
             
            </div>
          </div>
      </div>
    </div>
    <myfooter></myfooter>
  </div>
</template>
<script>
import Vue from "vue";
import { Divider, Sidebar, SidebarItem, Notify, Col, Row } from "vant";
Vue.use(Sidebar).use(SidebarItem).use(Divider).use(Col).use(Row);
import Myfooter from "../components/Myfooter.vue";
export default {
  components: { Myfooter },
  data() {
    return {
      activeKey: 0,
      fonts: [],
      content: [{ img: "" }],
    };
  },
  methods: {
    // 分类的文字
    classFont() {
      this.axios.get("/picture").then((res) => {
        this.fonts = res.data.result;
        console.log(this.fonts);
      });
    },
    // 分类的内容
    onChange(activeKey) {
      this.axios
        .get("/picture1", { params: { indexs: activeKey } })
        .then((res) => {
          this.content = res.data.a;
          console.log(this.content);
        });
    },
    // 跳转详情
    toDeatils(lid){
      this.$router.push({path:'/deatils',query:{lid:lid}})
    }
  
  },
  mounted() {
    this.classFont();
    this.onChange(0);
  },
};
</script>
<style scoped>
.app {
  background-color: #fff;
}
.classlys {
  display: flex;
}

.classlys>>>.van-sidebar{
position: fixed;
margin-top:40px ;
}
/* .classlys>:nth-child(1){
  position:flex;
} */
.classlys>:last-child{
  margin-left: 100px;
  margin-top:60px ;
  margin-right:15px ;

}
.classiyContent > img {
  width: 100%;
}
.classlyImg > img {
  width: 60%;
  margin-left: 18px;
  margin-bottom: 5px;
}
.classlyImg div {
  text-align: center;
  font-size: 12px;
  margin-bottom: 8px;
  color: #555;
}
.classlyImgbig{
  display: flex;
  padding: 12px 0;
  margin-right:20px ;
}
.classlyImgbig img{
  width: 19%;
  margin: 10px 10px;
}
.classlyImgbig>:last-child>:first-child{
  font-size: 15px;
  color:#333333;
  margin-bottom:10px ;
}
.classlyImgbig>:last-child>:last-child{
   font-size: 15px;
   color: #ff4545;
   font-weight:600 ;
}
</style>
