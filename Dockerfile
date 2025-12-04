From node:14-alpine
Run apk add --no-cache git python3 make g++
run git clone -q https://github.com/najasoft/todo-app.git
workdir /todo-app
copy ..
run yarn install --production
cmd ["node","/src/index.js"]
