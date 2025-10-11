# discourse-docker
Pretendo instance of discourse-docker, to make it a little more friendly to deploy as a container

Todo: figure out how to run this. No idea whats going on

Maybe we should just use the launcher completely:
- Make a web-only config file: `web-only.yml`
- `launcher bootstrap web-only --skip-prereqs` -> build an image
- `launcher start-cmd web-only --skip-prereqs` -> get start cmd
- extract image name from start-cmd
- `docker push IMAGE_NAME`
