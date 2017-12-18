<template>
  <div class="timeline-container">
    <article-item v-if="loaded" v-for="item in items"
        :key="item.id"
        :item="item">
    </article-item>
    <div class="loading" v-if="!loaded">
    </div>
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
      items: [],
      loaded: false
    }
  },
  created: function () {
    axios.get('https://qiita.com/api/v2/items')
      .then(res => {
        this.items = res.data
        this.loaded = true
      })
  }
}
</script>

<style scoped>
.article-item + .article-item {
  margin-top: 15px;
}

.loading {
  height: 800px;
}
</style>
