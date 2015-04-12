//
//  CSButton.m
//  CarShow
//
//  Created by Peter on 15/4/12.
//  Copyright (c) 2015年 Peter. All rights reserved.
//

#import "CSButton.h"

@implementation CSButton
{
    BOOL touched;
}
@synthesize small;
-(id)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if(self)
    {
        self.small=1;
    }
    return self;
    
}
-(void)setSmall:(CGFloat)aSmall
{
    small=aSmall;
    [self setNeedsDisplay];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    touched=YES;
    [self setNeedsDisplay];
    
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesEnded:touches withEvent:event];
    touched=NO;
    [self setNeedsDisplay];
}
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef context=UIGraphicsGetCurrentContext();
    
    CGFloat inset=self.bounds.size.width*(1-self.small)/2;
    CGContextAddEllipseInRect(context, touched?self.bounds:CGRectInset(self.bounds, inset, inset));
    CGContextSetFillColorWithColor(context, [UIColor orangeColor].CGColor);
    CGContextFillPath(context);
    
}


@end
