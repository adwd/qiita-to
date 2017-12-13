<template>
  <div class="timeline-container">
    <ul class="items">
      <li v-for="(item, index) in items"
          v-bind:key="item.id"
          v-bind:title="item.title">
        {{ item.title }}
      </li>
    </ul>
  </div>
</template>

<script>
import axios from 'axios'

export default {
  data: function () {
    return {
      items: []
    }
  },
  created: function () {
    axios.get('https://qiita.com/api/v2/items')
      .then(res => {
        this.items = res.data
      })
  }
}
</script>

<style scoped>
div.timeline-container {
  background-color: white;
}

ul.items {
}
</style>
