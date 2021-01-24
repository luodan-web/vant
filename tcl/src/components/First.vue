<template>
    <div>
    <div class='app'>
<van-row type="flex" justify="space-around">
<van-col v-for="(v,i) of imgs" :key="i" class="a" span='5' >
       <div>
       <img :src="v.imgs" alt="">
      <span>{{v.dalei}}</span>  
       </div>
       </van-col>
</van-row>
    </div>
    <div class="discounts">
 <div class="discount">
           <div>
                <p>
            <span>25.0</span>
            <span>元</span>
           </p>
            <p>满899减</p>
           </div>
       </div>
       <div class="discount">
           <div>
                <p>
            <span>20.0</span>
            <span>元</span>
           </p>
            <p>满800减</p>
           </div>
       </div>
    </div>
      
    </div>
</template>
<script>
import Vue from 'vue';
import { Col, Row } from 'vant';
Vue.use(Row).use(Col);
export default {
 data(){
     return{
         imgs:[]
     }
 },
 methods:{
     getpicture(){
       this.axios.get('/picture').then(res=>{
           this.imgs=res.data.result;
           console.log(this.imgs)
       }) 
     }
},
mounted(){
    this.getpicture();
}
}
</script>
<style scoped>
.app{
    background-color:#fff;
    width: 95%;
    margin: 0 auto;
    border-radius:0.2rem ;
    height: 160px;
}
.a>div{
    margin-top:10px;
    width: 70%;
  }
.a>div>img{
    width: 90%;
    margin-left:6px ;
}
.a>div>span{
    display: block;
    font-weight:700 ;
    font-size:12px ;
    color: #111;
    text-align: center;
}
.discounts{
    display: flex;
    justify-content: flex-start;
}
.discount{
    width: 40%;
    position: relative;
    background:url('../../public/style/20.jpg') no-repeat;
    background-size:100% 100% ;
    margin:10px 0 10px 10px ;
}
.discount>div{
    margin:10px 20px; 
    color: #fff3D5;
}
.discount>div>p>:first-child{
    font-weight:700;
    font-size:22px;
    }
 .discount>div>p>:nth-child(2){
    font-size:12px;
    }
       
</style>