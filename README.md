# Docker Container for qbittorrent

docker run \
  -p 8080:8080 \
  -v ~/config:/home/qbtuser/.config/ \
  -v ~/Downloads:/home/qbtuser/Downloads \
  brettmcgin/qbittorrent

# VPN (ipvanish)
https://github.com/brettmcginnis/docker_ipvanish
