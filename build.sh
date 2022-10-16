#!/bin/bash
echo && echo && echo && echo  "<< bash 시작 >>" && echo
installDependencies() {
    echo && echo && echo && echo  "[nestjs/cli, quasar/cli 설치...]"  && echo
    yarn global add @nestjs/cli
    yarn global add @quasar/cli
}
setupServer() {
    cd ./backend || return
    echo && echo && echo && echo  "[백엔드 빌드...]" && echo
    yarn build
    cd ..
}
setupClient() {
    cd ./frontend || return
    echo && echo && echo && echo  "[프론트엔드 빌드...]" && echo
    yarn build
    cd ..
}
#copy() {
#    echo  " Copying assets to server"  &&  echo
#    mkdir -p ./server/views
#    cp -R ./client/dist/spa/* ./server/views
#    }
#}
#installDependencies && setupServer && setupClient && copy
#installDependencies && setupServer && setupClient && copy
installDependencies && setupServer && setupClient
echo && echo && echo && echo  "<< bash 종료 >>" && echo
