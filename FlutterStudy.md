# Flutter 学习笔记

## Widget

### 无状态的 Widget Stateless Widget

无状态的 Widget 是在一定配置下的固定视图，一旦创建 UI 就不回改变，页面也不会再次渲染，类似于静态页内容。

### 有状态的 Widget Stateful Widget

有状态的 Widget 组件可以在生命周期中进行变化，如果数据修改对于的 UI 也会更改，类似于表单等组件。

## MaterialApp 需要将 MaterialApp 作为项目的跟组件。

可以在其中配置页面标题，页面组题，和路由跳转配置
MaterialApp 是入口类，更多的功能在他的子控件上

### MaterialApp 提供了常见导航栏功能

| AppBar 属性               | 功能                                                                                       |
| ------------------------- | ------------------------------------------------------------------------------------------ |
| leading                   | 可以定制左上角按钮                                                                         |
| automaticallyImplyLeading | 是否自动给导入左上角按钮                                                                   |
| title                     | AppBar 标题                                                                                |
| actions                   | 右上角功能图标可自定义                                                                     |
| flexibleSpace             | 可折叠的应用栏，在改变 appBar 的 size 是有效                                               |
| bottom                    | appBar 下方悬浮栏                                                                          |
| elevation                 | 阴影高度，默认为 4.0                                                                       |
| shadowColor               | 阴影颜色                                                                                   |
| shap                      | 阴影 ShapeBorder                                                                           |
| backgroundColor           | appBar 背景色                                                                              |
| brightness                | Brightness dart /light 改变上方电冲，时间等状态栏颜色                                      |
| iconTheme                 | 所有 icon 主题                                                                             |
| actionsIconTheme          | actions 中所有 icon 主题                                                                   |
| textTheme                 | text 主题                                                                                  |
| primary                   | AppBar 是否在整个屏幕最上方，true 时，距离 AppBar 贴合状态栏下方，false 贴合整个屏幕最上方 |
| centerTitle               | title 是否剧中                                                                             |
| titleSpacing              | title 距离左侧偏移量                                                                       |
| toolbarOpacity            | AppBar 透明度                                                                              |
| bottomOpacity             | 底部透明度                                                                                 |
| toolbarHeight             | AppBar 透高度                                                                              |

### Scaffold 提供了比较常见的页面属性

| Scaffold 属性               | 功能                                                                                       |
| ------------------------- | ------------------------------------------------------------------------------------------ |
| appBar                   | 页面上方导航条                                                                         |
| body | 页面容器                                                                   |
| floatingActionButton | 悬浮按钮                                                                   |
| floatingActionButtonLocation | 悬浮按钮                                                                   |
| persistentFooterButtons | 显示再底部导航调上方的一组按钮                                                                   |
| drawer | 左侧菜单                                                                   |
| endDrawer | 右侧菜单                                                                   |
| bottomNavigationBar | 底部导航条                                                                   |

### Text
Text 属性极Style显示
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  double get textScaleFactor => 1.5;
  @override
  Widget build(BuildContext context) {
    return Text('''Text相关内容：
        - textDirection // 决定 text开始绘画的方向TextDirection.ltr/rtl
        - textAlign // 决定文字显示位置，textAlign.start/end 的位置是基于 textDirection来决定的
        - maxLines // 最大行数
        - overflow:TextOverflow.ellipsis // 超出用省略号显示（测试只针对当前行，如果当前行内容超过则显示省略号，不超就不会显示
      ''',
        textDirection: TextDirection.ltr,
        textScaler: TextScaler.linear(textScaleFactor),
        // textAlign.start 的位置是基于 textDirection来决定的
        textAlign: TextAlign.start,
        maxLines: 5,
        overflow: TextOverflow.ellipsis,
        style: style);
  }
}

var style = TextStyle(
    backgroundColor: const Color.fromARGB(255, 253, 245, 18),
    color: const Color.fromARGB(209, 18, 4, 76),
    fontSize: 8,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    letterSpacing: 5,
    fontStyle: FontStyle.italic,
    shadows: [shadow]);
var shadow =
    const Shadow(color: Colors.red, offset: Offset(2, 2), blurRadius: 2);
```
### Container（容器）

