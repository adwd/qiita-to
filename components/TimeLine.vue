<template>
  <div class="timeline-container">
    <article-item v-for="(item, index) in items"
        :key="item.id"
        :item="item">
    </article-item>
  </div>
</template>

<script>
import axios from 'axios'
import ArticleItem from '~/components/ArticleItem.vue'

export default {
  components: {
    ArticleItem
  },
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
.article-item + .article-item {
  margin-top: 15px;
}
</style>
