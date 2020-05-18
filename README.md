## mxjsbuilder preview

---

### 【*New】 v0.0.2-preview  预览版

* 定制 dartdevc 编译器，编译 Flutter 工程为 mxflutter 可用的 JS 代码
* JS 代码简化，工具易用性在开发中，欢迎试用。

`mxjsbuilder 包含大文件，如果 github clone 太慢，推荐直接下载zip包`

---
## mxjsbuilder 使用指南 

### 编译Flutter工程，生成JS代码
示例1:运行 mxjsbuilder ，传入工程目录的地址


```
#进入mxjsbuilder目录
cd mxjsbuilder/

#执行 mxjsbuilder ，编译 flutter_app 工程
./mxjsbuilder /Users/mxflutter/flutter_app
```

示例2: 在要编译的 Flutter 工程根目录运行mxjsbuilder

```
#进入要编译的 Flutter 工程跟目录
cd /Users/mxflutter/flutter_app/

#执行 mxjsbuilder ，编译 flutter_app 工程
/Users/mxflutter_tools/mxjsbuilder 
```

生成的 JS 文件在对应工程 flutter_app 的 `/Users/mxflutter/flutter_app/mxflutter_js_build` 目录下

推荐将 mxjsbuilder 所在路径加入环境变量，在工程根目录运行 mxjsbuilder


### 引入JS代码

参照 github https://github.com/mxflutter/mxflutter/blob/master/mxflutter/example/mxflutter_js_src/home_page.js 中引入mxjsbuilder_demo https://github.com/mxflutter/mxflutter/blob/master/mxflutter/example/mxflutter_js_src/mxjsbuilder_demo.js 的代码


```
let flutter_demo = require("./mxjsbuilder_demo.js");
  
Navigator.push(context, new MaterialPageRoute({
    builder: function (context) {
        return new flutter_demo.main.MyHomePage.new({ title: "Flutter Demo Home Page" });
    }
}))

```


更复杂的示例参照 https://github.com/mxflutter/mxflutter/tree/dev_mxjsbuilder/mxflutter_js_src/mxjsbuilder_demo

### 建议

mxjsbuilder 处于预览版，还在完善当中，推荐在单独的页面来试用，拷贝编译好的 JS 页面到 mxflutter 运行，以简化直接写 JS 代码的工作量。欢迎报告问题和提建议。






