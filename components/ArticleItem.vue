<template>
  <div class="article-item">
    <div class="left">
      <a :href="'https://qiita.com/' + item.user.id">
        <img class="avatar" :src="item.user.profile_image_url">
      </a>
    </div>
    <div class="right">
      <a :href="item.url">
        <h3 class="title">
          <span class="tag" v-if="tags.first">#{{ tags.first.name }}</span>
          {{ item.title }}
        </h3>
        <span class="author">{{ item.user.id }}</span>
        <span class="rest-tag" v-for="(t, i) in tags.rest"
          :key="t.name">
          #{{ t.name }}
        </span>
        <div class="counts">
          <i class="fa fa-commenting-o" aria-hidden="true"></i>
          <span class="likes-count">{{ item.likes_count }}</span>
          <i class="fa fa-heart-o" aria-hidden="true"></i>
          <span class="comments-count">{{ item.comments_count }}</span>
        </div>
      </a>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    item: Object
  },
  data: function () {
    const tags = this.item.tags || []
    const first = tags.pop()

    return {
      tags: {
        first,
        rest: tags
      }
    }
  }
}
</script>

<style scoped lang="scss">
.article-item {
  display: flex;
  background-color: white;
  box-shadow: 0 1px 4px 0 rgba(0, 0, 0, 0.15);
  border-radius: 3px;
  padding: 8px;
}

a {
  text-decoration: none;
  color: black;
}

.tag {
  display: inline-block;
  background-color: black;
  color: white;
  border-radius: 2px;
  padding: 2px 6px;
  font-weight: bold;
  font-size: 0.8em;
}

.rest-tag {
  & + .rest-tag {
    margin-left: 4px;
  }
  font-size: 0.9em;
}

.title {
  font-size: 1.2em;
}

.author {
  display: block;
  color: #555;
  font-weight: bold;
  font-size: 1.1em;
}

.left {
  margin-right: 10px;
}

.right {
  width: 100%;
  margin-right: 10px;
}

.avatar {
  width: 60px;
  border-radius: 50%;
}

.counts {
  display: flex;
  justify-content: flex-end;

  .likes-count,
  .comments-count {
    margin: auto 16px;
  }
}
</style>
