//
//  UITableView+PositionView.h
//  Encourage
//
//  Created by 曹绍奇 on 2019/3/20.
//  Copyright © 2019 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


typedef enum : NSUInteger {
    TabPositionTypeDefault, //默认
    TabPositionTypeComments, //评论
} TabPositionType;

@interface UITableView (PositionView)

@property (nonatomic, strong, readonly) UIView *emptyView;


-(void)addEmptyViewWithTabPositionType:(TabPositionType)type;

@end

NS_ASSUME_NONNULL_END
