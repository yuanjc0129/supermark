<template>
    <div class="tar-bar-item" @click="itemClick">
        <div v-if="isActive"><slot name="item-icon"></slot></div>
        <div v-else><slot name="item-icon-active"></slot></div>
        <!-- <div :class="{active:!isActive}" > -->
        <!-- <div :style="!isActive?{color: this.activeColor}:{}" > -->
        <div :style="activeStyle" >
            <slot name="item-text"></slot>
        </div>
    </div>
</template>
<script>
export default {
  props: {
    path: String,
    activeColor: {
      type: String,
      default: '#D4237A'
    }
  },
  name: 'TabBarItem',
  methods: {
    itemClick () {
      return this.$router.replace(this.path) !== -1
    }
  },
  computed: {
    isActive () {
      return this.$route.path.indexOf(this.path)
    },
    activeStyle () {
      return !this.isActive ? { color: this.activeColor } : {}
    }
  },
  data () {
    return {
      // isActive: true
    }
  }
}
</script>
<style>
.tar-bar-item{
    flex: 1;
    text-align: center;
    height: 49px;
    font-size: 14px;
}
.tar-bar-item img{
    width: 24px;
    height: 24px;
    margin-top: 3px;
    vertical-align: middle;
}

</style>
