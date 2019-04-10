//
//  UITableView+PositionView.m
//  Encourage
//
//  Created by 曹绍奇 on 2019/3/20.
//  Copyright © 2019 Apple. All rights reserved.
//

#import "UITableView+PositionView.h"
#import <objc/runtime.h>

static char UITableViewEmptyView;

@implementation UITableView (PositionView)

@dynamic emptyView;

- (UIView *)emptyView
{
    return objc_getAssociatedObject(self, &UITableViewEmptyView);
}

- (void)setEmptyView:(UIView *)emptyView
{
    [self willChangeValueForKey:@"HJEmptyView"];
    objc_setAssociatedObject(self, &UITableViewEmptyView,
                             emptyView,
                             OBJC_ASSOCIATION_ASSIGN);
    [self didChangeValueForKey:@"HJEmptyView"];
}

-(void)addEmptyViewWithTabPositionType:(TabPositionType)type{
 
    if (!self.emptyView){
        
        CGRect frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
        
        UIView* noMessageView = [[UIView alloc] initWithFrame:frame];
        noMessageView.backgroundColor = [UIColor clearColor];
        
        UIImageView *carImageView = [[UIImageView alloc] init];
        [noMessageView addSubview:carImageView];
        
        
        [self addSubview:noMessageView];
        
        
        if (type==TabPositionTypeDefault) {
            
            UIImage* image = [UIImage imageNamed:@"xiangmu_kongbai_tongyong"];
            [carImageView setImage:image];
//            carImageView.frame=CGRectMake((frame.size.width-image.size.width)/2, ((frame.size.height-image.size.height)/2) * 0.6, CONTROL_W(360), CONTROL_W(376));
            
            [carImageView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.equalTo(self).offset(0);
                make.centerY.equalTo(self.mas_top).offset((self.height - self.contentInset.top - self.contentInset.bottom) / 2);
                make.width.mas_equalTo(CONTROL_W(360));
                make.height.mas_equalTo(CONTROL_W(376));
            }];
        }else  if (type==TabPositionTypeComments) {
            
            UIImage* image = [UIImage imageNamed:@"xiangmu_kongbai_pinglun"];
            [carImageView setImage:image];
            carImageView.frame=CGRectMake(0, (frame.size.height-image.size.height)/2, CONTROL_W(336), CONTROL_W(249));
        }
        
        
        self.emptyView = noMessageView;
        
    }
}

@end
