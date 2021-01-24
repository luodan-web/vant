<template>
  <div>
    <van-nav-bar left-arrow safe-area-inset-top fixed   @click-left="onClickLeft"></van-nav-bar>
    <div class="imgSize">
      <img :src="datas.img" alt="" />
      <div class="fontSizes">{{ datas.Iname }}</div>
      <div>{{ datas.details }}</div>
      <div>￥{{ datas.price }}</div>
    </div>
    <van-field
      v-model="fieldValue"
      is-link
      readonly
      label="领卷"
      placeholder=""
      @click="show = true"
    />
    <van-popup v-model="show" round position="bottom">
      <van-cascader
        v-model="cascaderValue"
        title="优惠卷"
        :options="options"
        @close="show = false"
        @finish="onFinish"
      />
    </van-popup>
    <van-field
      v-model="fieldValue"
      is-link
      readonly
      label="规格"
      placeholder=""
      @click="show = true"
    />
    <van-popup v-model="show" round position="bottom">
      <van-cascader
        v-model="cascaderValue"
        title=""
        :options="options"
        @close="show = false"
        @finish="onFinish"
      />
    </van-popup>
    <van-field
      v-model="fieldValue"
      is-link
      readonly
      label="配送"
      placeholder=""
      @click="show = true"
    />
    <van-popup v-model="show" round position="bottom">
      <van-cascader
        v-model="cascaderValue"
        title="请选择所在地区"
        :options="options"
        @close="show = false"
        @finish="onFinish"
      />
    </van-popup>
    <van-goods-action>
      <van-goods-action-icon icon="chat-o" text="首页" @click="onClickIcon" />
      <van-goods-action-icon icon="cart-o" text="分类" @click="onClickIcon" />
      <van-goods-action-icon icon="shop-o" text="收藏" @click="onClickIcon" />
      <van-goods-action-button type="warning" text="加入购物车" @click="addCart"/>
      <van-goods-action-button type="danger" text="立即购买" />
    </van-goods-action>
  </div>
</template>
<script>
import {mapMutations } from "vuex";
import Vue from "vue";
import {
  NavBar,
  Cascader,
  Field,
  Popup,
  GoodsAction,
  GoodsActionIcon,
  GoodsActionButton,
} from "vant";
Vue.use(NavBar)
  .use(Cascader)
  .use(Field)
  .use(Popup)
  .use(GoodsAction)
  .use(GoodsActionButton)
  .use(GoodsActionIcon);
export default {
  data() {
    return {
      datas: [],
      
      show: false,
      fieldValue: "",
      cascaderValue: "",
      options: [
        {
          text: "浙江省",
          value: "330000",
          children: [{ text: "杭州市", value: "330100" }],
        },
        {
          text: "江苏省",
          value: "320000",
          children: [{ text: "南京市", value: "320100" }],
        },
      ],
    };
  },
  methods: {
 
     onClickLeft() {
      this.$router.push("/classify");
    },
    onClickIcon() {
      this.$router.push("/");
    },
    onClickButton() {
      Toast("点击按钮");
    },

    onFinish({ selectedOptions }) {
      this.show = false;
      this.fieldValue = selectedOptions.map((option) => option.text).join("/");
    },
    tiaos() {
      this.$router.push("/");
    },
    getDeatils() {
      let lid = this.$route.query.lid;
      console.log(lid);
      this.axios.get("/details", { params: { lid: lid } }).then((res) => {
        this.datas = res.data.resultes[0];
        console.log(this.datas);
      });
    },
    ...mapMutations(["addCartList"]),
    addCart(){
      let product={
        lid:this.$route.query.lid,
        img:this.datas.img,
        price:this.datas.price,
        Iname:this.datas.Iname
      }
      // console.log(product)
      this.addCartList(product);
      this.$router.push('/cart');
    },
  },
  mounted() {
    this.getDeatils();
  },
};
</script>
<style scoped>
.imgSize {
  background: #fff;
  padding: 10px;
}
.imgSize > img {
  width: 100%;
}
.fontSizes {
  color: #333;
  font-weight: 700;
  font-size: 18px;
}
.imgSize > :nth-child(3) {
  margin-top: 7px;
  color: #999;
  font-size: 14px;
}
.imgSize > :last-child {
  margin-top: 10px;
  font-size: 25px;
  color: #ff4545;
  font-weight: 700;
}
.classlyImgbig img {
  width: 19%;
  margin: 10px 10px;
}
.classlyImgbig > :last-child > :first-child {
  font-size: 15px;
  color: #333333;
  margin-bottom: 10px;
}
.classlyImgbig > :last-child > :last-child {
  font-size: 15px;
  color: #ff4545;
  font-weight: 600;
}
</style>
