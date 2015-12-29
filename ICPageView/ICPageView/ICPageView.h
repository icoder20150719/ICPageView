//
//  ICPageView.h
//  ICPageView
//
//  Created by andy  on 15/12/29.
//  Copyright © 2015年 andy . All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol PageViewImageItemProtocol <NSObject>

@optional
/*本地图片*/
-(NSString *)imageName;

/*远程图片*/
-(NSURL *)imageUrl;

/*远程图片 带有占位图*/
-(NSString *)imagePlaceholder;

@end

@protocol ICPageViewDelegate <NSObject>

@optional
-(void)pageViewDidTapIndex:(NSInteger)index;
-(void)pageViewDidScrollTOIndex:(NSInteger)index;

@end

@protocol ICPageViewDataSource <NSObject>

@required

-(NSInteger)numberOfPageView;
-(id<PageViewImageItemProtocol>)imageItemForPageViewAtIndex:(NSInteger)index;

@end

@interface ICPageView : UIView

/*自动翻页时间*/
@property (nonatomic ,assign) CGFloat pageTime;
/*取消自动翻页*/
@property (nonatomic ,assign) BOOL cancelAutoPage;

-(void)reloadData;
/*pageCtroll颜色*/
@property (nonatomic ,strong) UIColor *pageIndicatorTintColor;
@property (nonatomic ,strong) UIColor *currentPageIndicatorTintColor;
@property (nonatomic ,weak) id<ICPageViewDataSource>dataSource;
@property (nonatomic ,weak) id<ICPageViewDelegate>delegate;


@end
