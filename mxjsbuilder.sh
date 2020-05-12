#!/bin/bash

# 定义脚本执行相关路径
SCRIPT_DIR=$(cd $(dirname $0); pwd)
echo $SCRIPT_DIR

BIN_DIR="$SCRIPT_DIR/flutter_mxbuilder/bin/cache/dart-sdk/bin"
#echo $BIN_DIR

DART="$BIN_DIR/dart"
#echo $DART

# 获取工程目录
DIR=$( cd "$( dirname "$1" )" && pwd )
#echo $DIR
cd $DIR

# 获取工程名字
PROJECT="$(basename $1)"
cd $PROJECT
#echo Project Name=$PROJECT

PROJECT_DIR=$(pwd)
#echo Current Project Path=$PROJECT_DIR

# host flutter_root flutter pub get
echo "$PROJECT flutter pub get... "
cd $PROJECT_DIR
flutter pub get

echo Clean $PROJECT_DIR/mxflutter_js_build/
rm -rf $PROJECT_DIR/mxflutter_js_build/

BUILD_SCRIPT="$SCRIPT_DIR/flutter_mxbuilder/packages/flutter_tools/bin/flutter_tools.snapshot"
#echo $BUILD_SCRIPT

echo Running mxjsbuilder $PROJECT ...
# 执行脚本
"$DART" "$BUILD_SCRIPT" "run" "-d" "chrome"

# 把工程文件移动到外面,删除不用的文件

rm -rf $PROJECT_DIR/mxflutter_js_build/packages/flutter/
rm -rf $PROJECT_DIR/mxflutter_js_build/packages/collection/
rm -rf $PROJECT_DIR/mxflutter_js_build/packages/meta/
rm -rf  $PROJECT_DIR/mxflutter_js_build/packages/typed_data/
rm -rf  $PROJECT_DIR/mxflutter_js_build/packages/vector_math/
mv  $PROJECT_DIR/mxflutter_js_build/packages/* $PROJECT_DIR/mxflutter_js_build/
rm -rf  $PROJECT_DIR/mxflutter_js_build/packages/
rm  $PROJECT_DIR/mxflutter_js_build/web_entrypoint.dart.lib.js

echo mxjsbuilder build done.
echo Output:$PROJECT_DIR/mxflutter_js_build