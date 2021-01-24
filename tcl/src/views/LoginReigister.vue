<template>
  <div class="register_3">
    <van-nav-bar
      title="个人中心"
      left-arrow
      @click-left="onClickLeft"
    ></van-nav-bar>
    <van-tabs v-model="activeName">
      <register></register>
      <login></login>
    </van-tabs>
  </div>
</template>
<script>
import Vue from "vue";
import { NavBar, Tabs } from "vant";
Vue.use(NavBar).use(Tabs);
import Login from "../components/Login";
import Register from "../components/Register";
export default {
  components: { Login, Register },
  data() {
    return {
      activeName: "a",
    };
  },
  methods: {
    onClickLeft() {
      this.$router.push("/");
    },
  },
};
</script>
<style scoped>
.register_3{
  background: #fff;
}
.register_3 >>> .van-tabs__line {
  background-color: #fff;
}
.register_3 >>> .van-tabs--line .van-tabs__wrap {
  height: 80px;
  width: 71%;
  margin: 0 auto;
}
.register_3 >>> .van-tab--active {
  color: #ff4455;
}
.register_3>>> .van-tab {
  font-size: 16px;
}
</style>
