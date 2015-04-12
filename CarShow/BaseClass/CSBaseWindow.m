//
//  CSBaseWindow.m
//  CarShow
//
//  Created by Peter on 15/4/11.
//  Copyright (c) 2015年 Peter. All rights reserved.
//

#import "CSBaseWindow.h"

@implementation CSBaseWindow
{
    UIView * bottomToolView;
}
-(id)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if(self)
    {
        bottomToolView=[[UIView alloc] initWithFrame:CGRectMake(0, 768-40, 1024, 40)];
        bottomToolView.backgroundColor=[UIColor blackColor];
        [self addSubview:bottomToolView];
        
        UIButton * homeBtn=[UIButton buttonWithType:UIButtonTypeContactAdd];
        homeBtn.frame=CGRectMake(1024-60, 0, 40, 40);
        [homeBtn addTarget:self action:@selector(backHome) forControlEvents:UIControlEventTouchUpInside];
        [bottomToolView addSubview:homeBtn];
    }
    return self;
}
-(void)backHome
{
    //[self.rootViewController.navigationController ];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"backHome" object:nil];
}
-(void)bringToolViewToFront
{
    [self bringSubviewToFront:bottomToolView];
}
-(void)sendEvent:(UIEvent *)event
{
    [self bringToolViewToFront];
    [super sendEvent:event];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
