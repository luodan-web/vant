<template>
  <div>
    <van-nav-bar title="用户中心" left-arrow> </van-nav-bar>
    <div>
      <div class="box">
        <div class="box1">
          <img src="https://m.user.tcl.com/img/user-img.png" alt="" @click="tiao" />
          <div v-if="uname == ''"  @click="tiao">登录/注册</div>
          <div v-else>
            欢迎您{{ uname }} |<button @click="logout">注销</button>
          </div>
        </div>
      </div>
    </div>
    <van-cell title="我的订单" is-link value="全部" />
    <van-grid :column-num="4">
      <van-grid-item v-for="(v, i) of test" :key="i">
        <div>{{ v.img }}</div>
        <span>{{ v.text }}</span>
      </van-grid-item>
    </van-grid>
    <div class="kongxi"></div>
    <van-grid :column-num="4" class="second">
      <van-grid-item v-for="(v, i) of test1" :key="i">
        <span>{{ v.mount }}</span>
        <span>{{ v.text }}</span>
      </van-grid-item>
    </van-grid>
    <div class="kongxi"></div>
    <van-cell
      title="我的返现"
      is-link
      to="/"
      label="活动返现订单"
      icon="location-o"
    />
    <van-cell
      title="我的服务"
      is-link
      to="/"
      label="维修、安装、服务进度查询"
      icon="location-o"
    />
    <div class="kongxi"></div>
    <van-cell
      title="设置"
      is-link
      to="/"
      label="个人信息、收货地址、账号安全"
      icon="location-o"
    />
    <div class="kongxi"></div>
    <myfooter></myfooter>
  </div>
</template>
<script>
import Vue from "vue";
import { NavBar, Cell, CellGroup, Grid, GridItem } from "vant";
import { mapState, mapMutations } from "vuex";
Vue.use(NavBar)
  .use(Cell)
  .use(CellGroup)
  .use(Grid)
  .use(GridItem);
import Myfooter from "../components/Myfooter.vue";
export default {
  data() {
    return {
      test: [
        { id: "1", img: "", text: "待支付" },
        {
          id: "2",
          img: "",
          text: "待发货",
        },
        {
          id: "3",
          img: "",
          text: "待收货",
        },
        {
          id: "4",
          img: "",
          text: "待评价",
        },
      ],

      test1: [
        { text: "我的收藏", mount: "0" },
        { text: "优惠卷", mount: "0" },
        { text: "卡包", mount: "0" },
        { text: "我的预约", mount: "0" },
      ],
    };
  },
  components: { Myfooter },
  computed: {
    ...mapState(["uname"]),
  },
  methods: {
    logout() {
      this.setUname('');
      localStorage.clear();
      sessionStorage.clear();
    },
    ...mapMutations(["setUname"]),
    tiao() {
      this.$router.push("/loginReigister");
    },
  },
  mounted(){
    let name=localStorage.getItem('uname')||sessionStorage.getItem('uname');
    this.setUname(name||'')
  }
};
</script>
<style scoped>
button {
  background: rgba(0, 0, 0, 0);
  border: 0;
}
.header {
  padding: 1rem 0rem;
  font-size: 1.1rem;
  color: #333;
  text-align: center;
}
.box {
  position: flex;
  width: 100%;
  height: 4.5rem;
  background: url("https://m.user.tcl.com/img/bg.png");
}
.box1 {
  position: relative;
  text-align: center;
  font-size: 15px;
  color: #ffff;
}
.box1 > img {
  height: 2rem;
  margin: 0.75rem 0 0.2rem 0;
}
.second {
  margin-top: 15px;
  font-size: 16px;
  color: #333;
}
.kongxi {
  width: 100%;
  height: 10px;
  background-color: #f1f1f1;
}
</style>
