<template>
  <div class="app">
    <div class="search">    
    <van-icon name="arrow-left"  size="1.5rem" @click="home"/>
    <div>
      <form action="/">
        <van-search
          v-model="value"
          show-action
          placeholder="请输入搜索关键词"
          @search="onSearch"
          @cancel="onCancel"
        />
      </form>
    </div>
    </div>
    <div v-show="isShow" class="box">
      <div class="box1">
        <div>历史搜索</div>
        <div v-for="(v, i) of add" :key="i" class="box2">
          {{ v }}
        </div>
        <div @click="clearHistory">清除历史搜索</div>
      </div>
      <div class="box3" v-if="this.values == false">
        <div>非常抱歉，没有找到您所要的商品</div>
        <van-button type="danger" @click="home">返回首页</van-button>
      </div>
    </div>
    <div class="ab">
      <van-row type="flex" justify="space-between">
        <van-col
          span="12"
          v-for="(a, b) of values.slice(8, 12)"
          :key="b"
          @click="toDeatils(a.lid)"
        >
          <img :src="a.img" alt="" class="imgSize" />
          <div class="classSize">
            <div class="classSize1">{{ a.Iname }}</div>
            <div class="classSize2">￥{{ a.price }}</div>
          </div>
        </van-col>
      </van-row>
    </div>
  </div>
</template>
<script>
import Vue from "vue";
import { Col, Row,Icon  } from "vant";
Vue.use(Col);
Vue.use(Row);
Vue.use(Icon);
export default {
  data() {
    return {
      value: "",
      values: [],
      add: [],
      isShow: false,
    };
  },
  methods: {

    home() {
      this.$router.push("/");
    },
    onSearch() {
      this.axios
        .get("/search", { params: { value: this.value } })
        .then((res) => {
          this.values = res.data.result;
          console.log(this.values);
        });
      this.add.push(this.value);
      this.isShow = true;
    },
    onCancel() {
      Toast("取消");
    },
    clearHistory() {
      this.isShow = false;
      this.add=[];
    },
  },
  beforeCreate() {
    document
      .querySelector("body")
      .setAttribute("style", "background:rgb(245, 245, 245)");
  },
 
};
</script>
<style scoped>
.search{
display: flex;
}
.search>:first-child{
  background-color:#ffffff;
  color: #555;
  line-height: 54px;

}
.search>:last-child{
  width: 95%;
}
.box >>> .van-button--danger {
  background-color: #f45;
  border: 1px solid #f45;
}
.box1 {
  width: 100%;
  height: 150px;
  background: #ffffff;
  margin-top: 10px;
  margin-bottom: 10px;
}
.box1 > :first-child {
  color: #ccc;
  padding: 20px 10px;
}
div.box2 {
  color: #dddddd;
  padding: 0 0 0 10px;
  float: left;
}
.box1 > :last-child {
  margin-top: 20px;
  text-align: center;
  color: #ff4545;
}
.box3 {
  color: #ff4545;
  margin: 25px 0;
  margin-bottom: 30px;
  text-align: center;
}
.box > :last-child > :last-child {
  margin-top: 35px;
}
.ab {
  background: #ffffff;
}
.imgSize {
  width: 100%;
}
.classSize {
  width: 100%;
}
.classSize1 {
  font-size: 15px;
  color: #333;
  line-height: 1rem;
  margin: 0.5rem 0.6rem 0.5rem 0.54rem;
}
.classSize2 {
  font-size: 16px;
  color: #ff4545;
}
</style>
