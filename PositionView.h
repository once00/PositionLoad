//
//  PositionView.h
//  Encourage
//
//  Created by 曹绍奇 on 2019/3/20.
//  Copyright © 2019 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    PositionTypeDefault, //默认
    PositionTypeComments, //评论
} PositionType;

@interface PositionView : UIView

@property (nonatomic, assign) PositionType Type;

//-(instancetype)initWithFrame:(CGRect)frame
//               withImageName:(NSString *)imageName
//            withMessageTitle:(NSString *)messageTitle
//               withTopHeight:(CGFloat)topHeight
//              withImageWidth:(CGFloat)imageWidth
//             withImageHeight:(CGFloat)imageHeight;

//移除没有数据界面
+(void)removeNoDataView:(UIView *)supview;

@end

NS_ASSUME_NONNULL_END
