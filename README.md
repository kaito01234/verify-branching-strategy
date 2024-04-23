# Github Setting Test

[![Open in Dev Containers](https://img.shields.io/static/v1?label=Dev%20Containers&message=Open&color=blue&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/kaito01234/github-branching-strategy)

## デプロイフロー検討

- gitタグを打つ
    - GitHub Actions実行
        - ブランチに強制プッシュ
        - リリースノート更新



          - development
          - integration
          - staging
          - production

git checkout production
git reset --hard main
git push origin production --force-with-lease


git tag v.2
git push origin v.2
