//
//  ICImageItem.h
//  ICPageView
//
//  Created by andy  on 15/12/29.
//  Copyright © 2015年 andy . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ICImageItem : NSObject
@property (nonatomic ,copy)NSString *imageName;
@property (nonatomic ,strong)NSURL *imageUrl;
@property (nonatomic ,copy)NSString *imagePlaceholder;
@end
