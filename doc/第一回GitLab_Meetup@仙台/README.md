## GitLabについての簡単なプレゼン資料

[第一回GitLab Meetup@仙台](https://docs.google.com/presentation/d/1bdKrkkIe9bvNJ8nql-a-Z3KIoFWUGEpCcrxiJMAF3Hk/edit?usp=sharing)

## GitLab Pagesでウェブページをデプロイするハンズオン

### 1. チャットのアカウントを作成する

コミュニケーションツールとして、GitLabのパッケージにバンドルされているチャットのMattermostのクラウドサービス版を利用します。

#### 手順

1. https://gitlab.com にログインします。
1. https://gitlab.mattermost.com を表示します。
1. Sign in with: 「GitLab」をクリックします。
1. Your teams: 「Community」をクリックします。
1. CHANNELSの下の「More...」をクリックします。
1. Search channelsに"gitlab-jp"を入力し「Join」をクリックします。

### 2. JekyllのテンプレートプロジェクトをForkしてGitLab Pagesにデプロイする

#### 用語解説

* "Jekyll"とは人気のあるStatic Site Generator(SSG)の一つでブログによく利用されます。
* "Fork"とはプロジェクトをコピーして別のプロジェクトを開始することです。

#### 手順

1. [Jekyllのテンプレートプロジェクト](https://gitlab.com/gitlab-jp/jekyll)を表示します。
1. 「Fork」をクリックします。
1. Forkしたプロジェクトで「Pipelines」メニューを表示します。
1. 「Run Pipeline」をクリックします。
1. New Pipeline画面で「Create pipeline」をクリックします。
1. Pipelineが完了するまでしばらく待ちます。
1. `https://<your account>.gitlab.io/jekyll`にページがデプロイされていることを確認します。

### 3. 元プロジェクトを修正してマージリクエストを送る

gitlab-jp/jekyll#1 に従い作業して下さい。

### 3. 各自で自由にGitLabをいじってみる

各自で自由にGitLabをいじってみて何が出来るのか試して下さい。
質問などがあれば、随時、主催者に質問をして下さい。