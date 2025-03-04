[![Open in Dev Containers](https://img.shields.io/static/v1?label=Dev%20Containers&message=Open&color=blue&logo=visualstudiocode)](https://vscode.dev/redirect?url=vscode://ms-vscode-remote.remote-containers/cloneInVolume?url=https://github.com/kaito01234/verify-branching-strategy)

## infrastructure command

* `pnpm i`
* `pnpm cdk deploy --all`

## リリースブランチを GitHub Actions から force push できるようにする

- Deploy keys作成

```bash
ssh-keygen -t ed25519 -f ./deploy_key -N ""
```

- Deploy key設定
  - Settings -> Deploy Keys -> Add deploy key
    - Title: PUBLIC_DEPLOY_KEY
    - Key: deploy_key.pub
    - Allow write access: ON

- Secret設定
  - Settings -> Secrets and variables -> Actions -> New repository secret
    - Name: PRIVATE_DEPLOY_KEY
    - Secret: deploy_key


- リリースブランチのRulesetsに、Bypass list = Deploy keys を設定


## Actionsのテスト
act -W .github/workflows/tag-test.yml -e .act/event.json
