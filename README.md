# RxStudy
RxSwift/RxCocoa框架的学习

## 更新2021年5月25日

这个项目建立的时间我查看了一下git的提交记录，2019年1月29日。

过了2年了才重新开始RxSwift的学习，我不得不说对我而言Rx还是很难，可能是我没有理解。

跑去学了Flutter和简单的Vue入门，说实话Vue的学习成本是最低的，因为它的MVVM框架基本上已经好了，你不需要做太多的操作，开箱即用。

Flutter的学习曲线稍微难一点，但是学会了Provider之后，基本也算是在MVVM上路。

反观Rx的学习曲线真的是陡峭啊，虽然我理解Oberveral其实就是异步的stream，但是使用起来的时候还是一脸懵逼，因为它不过智能简单，需要理解大量非原生的API。

如果你要说为啥不直接上Combine，我只是想说Rx学了，Combine还会难么？

SwiftUI+Combine联合起来才能展现威力，不过在苹果这一侧，一个好的响应式和状态管理都还不够好，虽然Rx有些框架已经在向大前端的实现了，可惜的时候原生的支持不够好的，学习成本也太高了。

这个可能是我第一个Swift的MVVM项目，依旧撸的玩安卓的api。

我已经写了Flutter和uni-app版本，所以Swift版本更看重的逻辑与RxSwift的理解。

曾经的我更看重在单个UI上的编写与实现，现在经常想的是这个有没有现成的轮子可以，更偏向于思路与思考。我不是说UI不需要思考，如果有好用的轮子何乐而不为呢？

能用OC桥接过来的库，必然有它的独特性与通用性，MJRefresh与MB、SV真香。

代码提交测试。

## 更新2021年7月28日
MBProgressHUD全部替换为SVProgressHUD。

黑暗模式适配完成。

## Flutter版wanandroid客户端

[项目地址](https://github.com/seasonZhu/FlutterPlayAndroid)

## uni-app版wanandroid客户端

[项目地址](https://github.com/seasonZhu/UniAppPlayAndroid)

## Xcode新版的代码块
[代码块](https://www.jianshu.com/p/967efd9fb8d2)

## 最近的出现的bug

```
[TableView] Warning once only: UITableView was told to layout its visible cells and other contents without being in the view hierarchy (the table view or one of its superviews has not been added to a window). This may cause bugs by forcing views inside the table view to load and perform layout without accurate information (e.g. table view bounds, trait collection, layout margins, safe area insets, etc), and will also cause unnecessary performance overhead due to extra layout passes. Make a symbolic breakpoint at UITableViewAlertForLayoutOutsideViewHierarchy to catch this in the debugger and see what caused this to occur, so you can avoid this action altogether if possible, or defer it until the table view has been added to a window. Table view: <UITableView: 0x14c864c00; frame = (-207 -368; 414 736); clipsToBounds = YES; gestureRecognizers = <NSArray: 0x28028cea0>; layer = <CALayer: 0x280cdf420>; contentOffset: {0, 0}; contentSize: {414, 0}; adjustedContentInset: {0, 0, 44, 0}; dataSource: <RxCocoa.RxTableViewDataSourceProxy: 0x2828e4060>>
```
我在Stack Overflow看了一下,大概意思就是我没有在主线程进行页面布局

[Stack Overflow](https://stackoverflow.com/questions/64568183/warning-once-only-uitableview-was-told-to-layout-its-visible-cells-and-other-co)

然后我把BaseTableViewController => viewDidLoad => setupTableView => 简单布局 

```
DispatchQueue.main.async {
    
}
```
我这个包裹就可以,我实在没明白为什么
