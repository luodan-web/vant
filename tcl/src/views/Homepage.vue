<template>
    <div> 
        <carousel></carousel>
        <first></first>
        <second></second>
        <three></three>
        <myfooter></myfooter>
    </div>
</template>
<script>
import Carousel from '../components/Carousel';
import Myfooter from '../components/Myfooter';
import First from '../components/First';
import Second from '../components/Second';
import Three from '../components/Three';
export default {
    components:{Carousel,Myfooter,First,Second,Three},
    // 一个spa应用中，如何修改网页当中的标签，在创建的时候修改，不利于维护，
    // created(){
    //     document.title="首页"
    // }
}
</script>
<style scoped>

</style>