//
//  CSMenuVC.m
//  CarShow
//
//  Created by Peter on 15/4/12.
//  Copyright (c) 2015年 Peter. All rights reserved.
//

#import "CSMenuVC.h"

@interface CSMenuVC ()

@end

@implementation CSMenuVC
@synthesize itemsArray;
-(id)initWithItems:(NSArray*)aArray;
{
    self=[super init];
    if(self)
    {
        itemsArray=[[NSArray alloc] initWithArray:aArray];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setBackImage:[UIImage imageNamed:@"mainBack.jpg"]];
    self.view.backgroundColor=[UIColor grayColor];
    // Do any additional setup after loading the view.
    
    //生成菜单按钮
    for(int i=0;i<self.itemsArray.count;i++)
    {
        CSButton * btn=[CSButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:self.itemsArray[i] forState:UIControlStateNormal];
        btn.frame=CGRectMake(100, 50+i*60, 50, 50);
        [self.view addSubview:btn];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
