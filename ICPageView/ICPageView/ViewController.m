//
//  ViewController.m
//  ICPageView
//
//  Created by andy  on 15/12/29.
//  Copyright © 2015年 andy . All rights reserved.
//

#import "ViewController.h"
#import "ICPageView.h"
#import "ICImageItem.h"

@interface ViewController ()<ICPageViewDelegate,ICPageViewDataSource>
@property (nonatomic ,strong)NSArray *images;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *images = [NSMutableArray array];
    for (int i = 0; i<5; i++) {
        ICImageItem *item = [[ICImageItem alloc]init];
//        item.imageName = @"1.png";//本地图片
        item.imageUrl = [NSURL URLWithString:@"http://221.228.198.167:81/pos/images/1/f60caa98-60ce-41ed-bb1b-20fcf8f5749e.png"];//网络图片
        item.imagePlaceholder = @"1.png";//占位图
        [images addObject:item];
    }
    _images = images;
    
    
    ICPageView *pageView = [[ICPageView alloc]init];
    pageView.frame = CGRectMake(0, 20, self.view.frame.size.width, 200);
    pageView.delegate = self;
    pageView.dataSource = self;
    [self.view addSubview:pageView];
    // Do any additional setup after loading the view, typically from a nib.
}
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
