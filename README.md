# ICPageView
![Image](https://github.com/icoder20150719/ICPageView/blob/master/pageView.gif)
##用法
#使用和tableView使用方法类似

//创建PageView
ICPageView *pageView = [[ICPageView alloc]init];
pageView.frame = CGRectMake(0, 20, self.view.frame.size.width, 200);
//设置代理和数据源
pageView.delegate = self;
pageView.dataSource = self;
[self.view addSubview:pageView];

#代理方法

#pragma mark - ICPageViewDataSource

-(NSInteger)numberOfPageView
{
return _images.count;
}

-(id<PageViewImageItemProtocol>)imageItemForPageViewAtIndex:(NSInteger)index
{
return _images[index];
}

#pragma mark - ICPageViewDelegate
-(void)pageViewDidScrollTOIndex:(NSInteger)index
{
NSLog(@"pageViewDidScrollTOIndex %ld",index);
}

-(void)pageViewDidTapIndex:(NSInteger)index
{
NSLog(@"pageViewDidTapIndex %ld",index);
}

