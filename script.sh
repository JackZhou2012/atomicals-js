#!/bin/bash

while true; do
    yarn cli mint-dft quark --satsbyte=130 > output.log 2>&1
    exit_code=$?
    if [ $exit_code -eq 0 ]; then
        echo "命令执行成功"
        break
    else
        echo "命令执行失败，将重新执行"
        sleep 1
    fi
done
