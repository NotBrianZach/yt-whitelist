#!/usr/bin/env bash

source ~/yt-whitelist/configuration/master.toml
# don't need to pass lua_path/cpath here since they are env vars in config.nix
FILE_PORT=$FILE_PORT \
IS_DEV=true \
LUA_CODE_CACHE_STATUS='off' \
jwt='$jwt' \
http_upgrade='$http_upgrade' \
host='$host' \
LUALIB_DIR="$HOME/CollectiveStorybook/nginx/lualib/user-lib" \
envsubst < ~/yt-whitelist/conf/template.nginx.conf > ~/yt-whitelist/nginx/conf/nginx.conf
