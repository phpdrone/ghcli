# Github php CLI docker image

## Docker usage

```sh
docker run -ti phpdrone/ghcli --help
```

For the options, see https://github.com/gboddin/php-github-cli

## Drone usage

Commenting a pull request for eg: 

```yaml
pipeline:
  comment-pull-request:
    image: phpdrone/ghcli
    secrets: [ github_api_token ]
    commands:
      - ghcli pr:comment ${DRONE_REPO_OWNER} ${DRONE_REPO_NAME} ${DRONE_PULL_REQUEST} "Panda is not happy"
    when:
      event: pull_request
      status: failure
```
