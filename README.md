## mxjsbuilder preview

---

###【*New】v0.0.1-preview  预览版

* 定制 dartdevc 编译器，编译 Flutter 工程为 mxflutter 可用的 JS 代码
* JS 代码简化，工具易用性在开发中，欢迎试用。

---
## mxjsbuilder 使用指南 

## 编译Flutter工程，生成JS代码
运行mxjsbuilder.sh脚本，传入工程目录的地址

例如 


```
#进入mxjsbuilder目录
cd mxjsbuilder/

#生成flutter_app工程
./mxjsbuilder.sh /Users/mxflutter/flutter_app
```


生成的 JS 文件在对应工程 flutter_app 的 `/Users/mxflutter/flutter_app/mxflutter_js_build` 目录下


## 引入JS代码

参照 github https://github.com/mxflutter/mxflutter/blob/master/mxflutter/example/mxflutter_js_src/home_page.js  中引入 https://github.com/mxflutter/mxflutter/blob/master/mxflutter/example/mxflutter_js_src/mxjsbuilder_demo.js 的代码


```
let flutter_demo = require("./mxjsbuilder_demo.js");
  
Navigator.push(context, new MaterialPageRoute({
    builder: function (context) {
        return new flutter_demo.main.MyHomePage.new({ title: "Flutter Demo Home Page" });
    }
}))

```





