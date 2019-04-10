//
//  PositionView.m
//  Encourage
//
//  Created by 曹绍奇 on 2019/3/20.
//  Copyright © 2019 Apple. All rights reserved.
//

#import "PositionView.h"

@interface PositionView (){
    
    UIImageView *_placeHolderImageView;   //占位图片
//    UILabel *_titleLabel;
}

@end

@implementation PositionView


- (void)setType:(PositionType)Type{
    
    if (Type==PositionTypeDefault) {
        
        _placeHolderImageView.image = [UIImage imageNamed:@"xiangmu_kongbai_tongyong"];
//        _titleLabel.text = @"这里什么都没有";
//        _titleLabel.font=[UIFont systemFontOfSize:CONTROL_W(50)];
//        _titleLabel.textColor=RGB16(0x666666);
        [_placeHolderImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self).offset(0);
            make.centerY.equalTo(self).offset(-self.height*0.15);
            make.width.mas_equalTo(CONTROL_W(360));
            make.height.mas_equalTo(CONTROL_W(376));
        }];
//        _titleLabel.font=[UIFont systemFontOfSize:CONTROL_W(50)];
//        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//
//            make.left.equalTo(self.mas_left).offset(0);
//            make.right.equalTo(self.mas_right).offset(0);
//            make.top.equalTo(_placeHolderImageView.mas_bottom).offset(0);
//            make.width.mas_equalTo(self.width);
//            make.height.mas_equalTo(CONTROL_W(20));
//        }];
    }else if (Type==PositionTypeComments){
        
        _placeHolderImageView.image = [UIImage imageNamed:@"xiangmu_kongbai_pinglun"];
        [_placeHolderImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self).offset(0);
            make.centerY.equalTo(self).offset(0);
            make.width.mas_equalTo(CONTROL_W(336));
            make.height.mas_equalTo(CONTROL_W(249));
        }];
    }
}

- (instancetype)initWithFrame:(CGRect)frame{
    
    self=[super initWithFrame:frame];
    if (self) {
        
//        self.backgroundColor=DSRandomColor;
        
        
        //占位图片
        _placeHolderImageView = [[UIImageView alloc ]init];
        [self addSubview:_placeHolderImageView];
        
//        //标题
//        _titleLabel = [[UILabel alloc] init];
//        _titleLabel.textAlignment = NSTextAlignmentCenter;
//        [self addSubview:_titleLabel];
    }
    return self;
}

+(void)removeNoDataView:(UIView *)supview{
    
    for (UIView *view in supview.subviews) {
        
        if ([view isKindOfClass:[PositionView class]]) {
            
            [view removeFromSuperview];
        }
    }
}


@end
