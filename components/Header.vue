<template>
  <div class="container">
    <div class="left">
      <span class="qiita">Qiita</span>
    </div>

    <div class="center">
      <form id="site-search-form" action="/search" method="GET">
      <span class="fa fa-search"></span>
      <input placeholder="キーワードを入力">
      </form>
    </div>

    <ul class="right">
      <li class="stock">
        <a href="/stock"><i class="fa fa-folder-open-o" aria-hidden="true"></i>ストック一覧</a>
      </li>
      <li class="post">
        <a href="/drafts/new"><i class="fa fa-pencil" aria-hidden="true"></i>投稿する</a>
      </li>
      <li><i class="fa fa-bell-o fa-lg" aria-hidden="true"></i></li>
      <li>
        <img src="/images/adwd.jpg" width="33px" height="33px">
      </li>
    </ul>
  </div>
</template>

<script>
</script>

<style scoped>
div.container {
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: space-between;
  background-color: white;
}

ul.right {
  display: flex;
  align-items: center;
  list-style: none;
}

ul.right li {
  margin-right: 16px;
}

span {
  /* display: inline-block; */
  vertical-align: middle;
}

@media screen and (max-width: 600px) {
  .stock, .post {
    display: none;
  }
}

span.qiita {
  padding: 5px;
  margin-left: 16px;
  background-color: #55c500;
  color: white;
  font-size: 22px;
  font-weight: bold;
}

i.fa-folder-open-o, i.fa-pencil {
  margin-right: 6px;
}

a {
  text-decoration: none;
  color: #00c673;
  font-weight: bold;
  font-size: 12px;
}

.post {
  padding: 5px 10px;
  background-color: #367e00;
  border-radius: 4px;
}

.post a {
  color: white;
}

#site-search-form {
  display: block;
  position: relative;
  font-size: 17px;
}

#site-search-form .fa-search {
  position: absolute;
  top: 6px;
  left: 6px;

  color: #aaa;
}

#site-search-form input {
  background-color: #e8e7e7;
  border: 0px;
  border-radius: 4px;
  padding: 8px 8px 8px 32px;
}

</style>
