//
//  LKLSelectView.m
//  SelectListView
//
//  Created by LingKangli on 16/3/11.
//  Copyright © 2016年 com.TongChang.Co., Ltd. All rights reserved.
//

#import "LKLSelectView.h"
#import "ProjectObj.h"

@interface LKLSelectView ()<UITableViewDataSource,UITableViewDelegate>{
    
    NSMutableArray* _arrayValue;
    NSMutableArray* _selectArray;
    
    UITableView* _tableView;
}

@end


@implementation LKLSelectView

@synthesize delegate = _delegate;

-(instancetype)initWithFrame:(CGRect)frame andArray:(NSMutableArray*)array{
    
    self = [super initWithFrame:frame];
    if (self) {
        [self setArray:array];
        
    }
    return self;
}

-(void)setArray:(NSMutableArray*) array{
        
    _arrayValue = [array mutableCopy];
    //    _selectArray = [[NSMutableArray alloc]init];
    //    _selectArray = _arrayValue;
    NSLog(@"_arrayValue is %@",_arrayValue);
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height)];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.backgroundColor = [UIColor whiteColor];
    [self addSubview:_tableView];
    //    [self.delegate click:1];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString* identity = @"identiy";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identity];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identity];
        ProjectObj *obj = _arrayValue[indexPath.row];
        cell.textLabel.text = obj.Name;
        cell.textLabel.textAlignment = NSTextAlignmentCenter;
//        cell.textLabel.textColor = [UIColor whiteColor];
//        cell.backgroundColor = [UIColor redColor];
    }
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [_arrayValue count];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return self.bounds.size.height/[_arrayValue count];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"test is");
    [self.delegate click:indexPath];
    //    if () {
    //        <#statements#>
    //    }
}

@end
