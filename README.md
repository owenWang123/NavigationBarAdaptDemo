# NavigationBarAdaptDemo
此Demo为参考之作，引用了spicyShrimp写的一个导航栏修复的库。详情见：https://github.com/spicyShrimp/UINavigation-SXFixSpace

# 内容要点
  1、引入库文件夹:UINavigation-SXFixSpace。修复导航栏偏移
  2、UIBarButtonItem+SimpleInit，适用多种情况的Item创建。
  
  # 使用案例：
  1、Item只有图片：
  [UIBarButtonItem itemWithTarget:self action:@selector(rightNavigationEvent) image:[UIImage imageNamed:@"search"]];
  2、Item只有title:
  [UIBarButtonItem itemWithTarget:self action:@selector(rightNavigationEvent) title:@"Title"];
  3、同时有title和image(image默认居右)：
  [UIBarButtonItem itemWithTarget:self action:@selector(rightNavigationEvent) title:@"Search" image:[UIImage imageNamed:@"search"]];
  4、title、image同时存在时，还可设置它们之间的间距space和contentEdgeInsets：
  [UIBarButtonItem itemWithTarget:self action:@selector(rightNavigationEvent) title:@"Search" image:[UIImage imageNamed:@"search"] imageTitleSpace:5 margin:UIEdgeInsetsMake(0, 0, 0, 10)];
