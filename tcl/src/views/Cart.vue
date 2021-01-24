<template>
  <div class="carts">
    <van-nav-bar
      title="购物车"
      left-arrow
      safe-area-inset-top
      fixed
      @click-left="onClickLeft"
    >
    </van-nav-bar>
    <div class="aloneCart">
      <van-swipe-cell v-for="(v, i) of cartList" :key="i">
        <div class="box1"> 
        <van-checkbox v-model="v.checkList"  :name="i"/>
        <van-card :price="v.price" :title="v.Iname" :thumb="v.img">
          <template #footer>
            <van-stepper v-model="v.value" />
          </template>
        </van-card>
          </div>
        <template #right>
          <van-button @click="delectList(v.lid)" text="删除" type="danger" class="delete-button" />
        </template>
      </van-swipe-cell>
      <van-submit-bar :price="3050" button-text="提交订单" @submit="onSubmit">
        <van-checkbox v-model="checked">全选</van-checkbox>
      </van-submit-bar>
    </div>
  </div>
</template>
<script>
import Vue from "vue";
import {
  SubmitBar,
  NavBar,
  Checkbox,
  SwipeCell,
  Button,
  Card,
  Stepper,
} from "vant";
Vue.use(SubmitBar)
  .use(NavBar)
  .use(Checkbox)
  .use(SwipeCell)
  .use(Button)
  .use(Card)
  .use(Stepper);
import { mapState, mapMutations } from "vuex";
export default {
  data() {
    return {
      checkList: "",
      value:"",
      checked: "",
    };
  },
  computed: {
 ...mapState(["cartList"]),
  },
  methods: {
    ...mapMutations(["addCartList","removeCartLite"]),
    onClickLeft() {
      this.$router.push("/");
    },
    onSubmit(){},
     delectList(lid){
     localStorage.removeItem('cartList');
     this.removeCartLite(lid);
     
  },
  },
  beforeCreate() {
    document
      .querySelector("body")
      .setAttribute("style", "background:rgb(245, 245, 245)");
  },
   mounted(){
  // JSON.parse(localStorage.getItem('cartList'))
   }
};
</script>
<style scoped>
.aloneCart{
padding-top: 50px;
}
.aloneCart .box1{
display: flex;
}
.aloneCart>>>.van-card{
  width: 100%;
  background-color:#ffffff;
}

.aloneCart>>>.van-checkbox{
  background-color: #ffffff;
  margin: 8px 0 0;
  padding: 0 3px;
}
.aloneCart>>>.van-swipe-cell__right {
  padding-top: 13%;
}

</style>
