<template>
  <div class="footer-container">
    <ul class="links">
      <li v-for="link of links">
        <a :href="link.to">{{ link.title }}</a>
      </li>
    </ul>
    <ul class="links2">
      <li v-for="link of links2">
        <a :href="link.to">{{ link.title }}</a>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      links: [
        { title: 'Qiita とは', to: 'https://qiita.com/about' },
        { title: 'ユーザー', to: 'https://qiita.com/users' },
        { title: 'タグ', to: 'https://qiita.com/tags' },
        { title: '投稿', to: 'https://qiita.com/items' },
        { title: 'ブログ', to: 'https://blog.qiita.com' },
        { title: 'API', to: 'https://qiita.com/api/v2/docs' },
        { title: 'Qiita:Team', to: 'https://teams.qiita.com' }
      ],
      links2: [
        { title: 'Terms', to: '#' },
        { title: 'プライバシー', to: '#' },
        { title: 'ヘルプ', to: '#' }
      ]
    }
  }
}
</script>

<style lang="scss">
.footer-container {
  display: flex;
  flex-direction: column;
  justify-content: center;

  height: 100%;
}

ul.links, ul.links2 {
  display: flex;
  align-items: center;
  flex-wrap: wrap;

  margin-left: auto;
  margin-right: auto;

  list-style: none;

  li {
    & + li {
      margin-left: 10px;
    }

    a {
      text-decoration: none;
      color: black;
      font-size: 18px;
      word-break: keep-all;
    }
  }
}

ul.links2 {
  margin-top: 16px;
}
</style>
