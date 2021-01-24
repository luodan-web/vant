<template>
  <div class="register_1">
    <van-tab title="登录账户密码" name="b">
      <div class="register_2">
        <input v-model="uname"  type="text" placeholder="手机号码/邮箱/用户名" />
        <input v-model="password" type="text" placeholder="登录密码" />
        <label for="remenber">
          <input
            class="remenber"
            type="checkbox"
            name="remenber"
            v-model="remenber"
          />
          <span></span>
          记住密码
        </label>
        <van-button type="danger" @click="register">登录</van-button>
        <a>忘记密码</a>
      </div>
      <div class="register_2_a">
        <div class="xian"></div>
        <span>其他登录方式</span>
        <div class="xian"></div>
      </div>
    </van-tab>
  </div>
</template>
<script>
import Vue from "vue";
import { Button } from "vant";
import { Tab, Toast } from "vant";
import { mapActions } from "vuex";
Vue.use(Button)
  .use(Tab)
  .use(Toast);
export default {
  data() {
    return {
      remenber: "",
      activeName: "a",
      password: "",
      uname: "",
    };
  },
  methods: {
    //登录
    register() {
      this.login({
        uname: this.uname,
        password: this.password,
      }).then(() => {
        if (this.remenber) {
          localStorage.setItem("uname", this.uname);
        } else {
          sessionStorage.setItem("uname", this.uname);
        }
      });
    },
    ...mapActions(["login"]),
  },
};
</script>
<style scoped>
label {
  margin-bottom: 15px;
  color: #999;
}
.register_1 >>> .van-tab--active {
  color: #ff4455;
}
.register_1 >>> .van-tab {
  font-size: 16px;
}

.register_1 >>> .van-button--danger {
  background-color: #f45;
  border: 0.2rem solid #f45;
}

.register_2 {
  display: flex;
  flex-direction: column;
  margin: 0 auto;
  width: 90%;
}
.register_2 > input {
  margin-bottom: 17px;
  outline: none;
  border: 1px solid #c3baba;
  height: 1.95rem;
}
.register_2 > :nth-child(2) {
  margin-bottom: 30px;
}
.register_2 > a {
  margin: 35px 0px;
  font-size: 16px;
  text-align: center;
  color: #999;
}
.register_2_a {
  display: flex;
  justify-content: center;
  color: #cccccc;
  font-size: 15px;
}
.xian {
  height: 1px;
  width: 30%;
  background: #cccccc;
  margin: 8px 10px;
}
</style>
