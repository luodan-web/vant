<template>
  <div>
    <img
      :src="v.img"
      alt=""
      v-for="(v, i) of imgss.slice(0, 4)"
      :key="i"
      class="image"
    />
    <div class="images">
      <div v-for="(v, i) of imgss.slice(4, 6)" :key="i">
        <img :src="v.img" alt="" />
      </div>
    </div>
    <div class="images">
      <div v-for="(v, i) of imgss.slice(6, 8)" :key="i">
        <img :src="v.img" alt="" />
      </div>
    </div>
    <div class="images">
      <div v-for="(v, i) of imgss.slice(8, 10)" :key="i">
        <img :src="v.img" alt="" />
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      imgss: [],
    };
  },
  methods: {
    getpicture1() {
      this.axios.get("/picture1").then((res) => {
        this.imgss = res.data.result;
        console.log(this.imgss);
      });
    },
  },
  mounted() {
    this.getpicture1();
  },
};
</script>
<style  scoped>
.image {
  width: 100%;
}
.images {
  width: 100%;
  display: flex;
}
.images img {
  width: 100%;
}
</style>>
