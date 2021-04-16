<template>
  <div class="tab-control">
    <div v-for="(item, index) in titles" :key="item" class="tab-control-item"
    :class="{active: index === currentIndex}" @click="itemClick(index)">
      <span>{{item}}</span>
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    itemClick (index) {
      this.currentIndex = index
      this.$emit('tabItemClick', index)
    }
  },
  data () {
    return {
      currentIndex: 0
    }
  },
  props: {
    titles: {
      type: Array,
      default () {
        return []
      }
    }
  },
  name: 'TabControl'
}
</script>

<style>
.tab-control{
  display: flex;
  text-align: center;
  font-size: 15px;
  height: 40px;
  line-height: 40px;
}
.tab-control-item{
  flex: 1;
}
.tab-control-item span{
  padding: 5px;
}
.tab-control .active{
  color: var(--color-high-text);
}
.active span{
  border-bottom: 3px solid var(--color-high-text);
}
</style>
