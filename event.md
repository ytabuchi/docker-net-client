# Docker イベント用

## Docker Build Cloud

[Docker Build Cloud](https://app.docker.com/build/accounts/xlsoftpartner/builders/docker-build-cloud-sample/cli)

### ローカル設定

Docker Desktop で Builder を作成したら CLI で以下を行う。

```sh
docker login
docker buildx create --driver cloud xlsoftpartner/docker-build-cloud-sample
```

実際にビルドを試してみる。

1) `docker buildx build https://github.com/dockersamples/buildme.git --builder cloud-xlsoftpartner-docker-build-cloud-sample`
2) `docker buildx build --builder cloud-xlsoftpartner-docker-build-cloud-sample .`

クラウドでビルドするのでローカルにイメージが増えない

`WARNING: No output specified with cloud driver. Build result will only remain in the build cache. To push result image into registry use --push or to load image into docker use --load

？load をどのコマンドにつけるのか。

Optional - set cloud builder as default

`docker buildx use cloud-xlsoftpartner-docker-build-cloud-sample --global`


### CI/CD インテグレーション

[Docker Build Cloud](https://app.docker.com/build/accounts/xlsoftpartner/builders/docker-build-cloud-sample/gha) の該当クラウドビルダーでそのクラウドビルダー向けにカスタマイズされたサンプルコードが表示される。

そのコードを元にリポジトリに Actions を追加する。

[docker\-net\-client/\.github/workflows/docker\-build\-cloud\.yml at master · XLsoft\-Corporation/docker\-net\-client](https://github.com/XLsoft-Corporation/docker-net-client/blob/master/.github/workflows/docker-build-cloud.yml)

- サンプルリポジトリが `master` ブランチだったので記述を変更。
- `${{ secrets.DOCKERHUB_USERNAME }}` などがあるので、「Settings＞Secres and Variables＞Actions」でリポジトリシークレットを追加。

コミットを試す。

