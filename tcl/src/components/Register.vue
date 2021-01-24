<template>
  <div class="register_1">
    <van-tab title="注册账户密码" name="a">
      <div class="register_2">
        <input
          type="text"
          placeholder="手机号码"
          v-model="phone"
          @blur="phones"
        />
        <input
          type="text"
          placeholder="登录密码"
          v-model="passwordss"
          @blur="password"
        />
        <van-button type="danger" @click="login">立即注册</van-button>
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
Vue.use(Button).use(Tab);
Vue.use(Toast);
export default {
  data() {
    return {
      passwordss: "",
      phone: "",
    };
  },
  // 注册
  methods: {
    //正则验证手机号
    phones() {
      let rge = /^1[3456789]\d{9}$/;
      if (!rge.test(this.phone)) {
        Toast("手机号码格式错误");
        return false;
      }
    },
    //正在验证密码
    password() {
      let reg1 = /^[0-9a-zA-Z\\W]{6,8}$/;
      if (!reg1.test(this.passwordss)) {
        Toast("密码格式错误");
        return false;
      }
    },
    login() {
      if(this.passwordss&&this.phone){
      this.axios
        .post("/register", "phone=" + this.phone + "&password=" + this.passwordss)
        .then((res) => {
          if (res.data.code == 200) {
            Toast("注册成功");
          } else {
            Toast("用户名已经存在");
          }
        });
    }
    }
  },
};
</script>
<style scoped>
.register_1 {
  background-color: #fff;
}
.register_1 >>> .van-button--danger {
  background-color: #f45;
  border: 1px solid #f45;
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
