<template>
  <card class="hot-tags-container">
    <div class="tag title">
      <span>&lt;HOT TAGS&gt;</span>
    </div>
    <a class="tag" v-for="(tag, index) in tags"
      :key="index"
      :href="'https://qiita.com/tags/' + tag.id">
      <span>{{ tag.id }}</span>
    </a>
  </card>
</template>

<script>
import axios from 'axios'
import Card from '~/components/parts/card'
export default {
  components: {
    Card
  },
  data: function () {
    return {
      tags: []
    }
  },
  created: function () {
    axios.get('https://qiita.com/api/v2/tags?sort=count&per_page=15')
      .then(res => {
        this.tags = res.data
      })
  }
}
</script>

<style lang="scss" scoped>
.hot-tags-container {
  margin-top: 15px;
  display: flex;
  flex-direction: column;
}

.tag {
  padding: 8px;
  border-radius: 0;
  font-family: monospace;
  display: block;

  &.title {
    span {
      font-size: 16px;
      font-weight: bold;
    }
  }

  &:not(:last-child) {
    box-shadow: 0 0 0 0;
    border-bottom: solid 1px #555;
  }
}

a.tag {
  text-decoration: none;
  color: black;
}
</style>
