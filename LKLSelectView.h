//
//  LKLSelectView.h
//  SelectListView
//
//  Created by LingKangli on 16/3/11.
//  Copyright © 2016年 com.TongChang.Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LKLDelegate.h"

@interface LKLSelectView : UIView

-(instancetype)initWithFrame:(CGRect)frame;
-(instancetype)initWithFrame:(CGRect)frame andArray:(NSMutableArray*)array;
-(void)setArray:(NSMutableArray*) array;

@property(nonatomic,assign)id<LKLDelegate> delegate;

@end
