<template lang="">
  <div>
    <swiper class="homeswiper">
      <swiper-item v-for="item in banners" :key="item.acm">
        <a :href="item.link" class="slide">
          <img :src="item.image"/>
        </a>
      </swiper-item>
    </swiper>
  </div>
</template>
<script>

import { Swiper, SwiperItem } from 'components/common/swiper'
export default {
  props: {
    banners: {
      type: Array,
      default () {
        return []
      }
    }
  },
  name: 'HomeSwiper',
  components: {
    Swiper,
    SwiperItem
  }
}
</script>
<style>
.homeswiper img{
  width:375px;
  height:200px
}
</style>
