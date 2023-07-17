#!/usr/bin/env bash

DIR_AT_HOME="$HOME/.vscode"
DIR_IN_LIBRARY="$HOME/Library/Application Support/Code"

DIRS=("$DIR_AT_HOME" "$DIR_IN_LIBRARY")

for dir in "${DIRS[@]}"; do
    if [ -d "$dir" ]; then
        read -p "你是否要删除 $dir ? y/N " answer
        case $answer in
            [Yy]* )
                rm -rf "$dir"
                echo "√ 已删除"
                ;;
            * )
                echo "× 没有执行删除"
                ;;
        esac
    fi
done
