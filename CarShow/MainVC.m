//
//  MainVC.m
//  CarShow
//
//  Created by Peter on 15/4/11.
//  Copyright (c) 2015年 Peter. All rights reserved.
//

#import "MainVC.h"

#import "DesignVC.h"
#import "HonorVC.h"
#import "ControlVC.h"
#import "SmartVC.h"
#import "ComfortVC.h"
#import "SafeVC.h"
@interface MainVC ()

@end

@implementation MainVC
{
    NSArray * menus;
    NSMutableDictionary * menusDict;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setBackImage:[UIImage imageNamed:@"01.jpg"]];
   
    // Do any additional setup after loading the view.
    
    menus=@[@"设计",@"尊贵",@"驾控",@"智能",@"舒适",@"安全"];
    menusDict=[[NSMutableDictionary alloc] init];
    [menusDict setObject:[NSArray arrayWithObjects:@"工艺",@"外观",@"内饰", nil] forKey:@"设计"];
    [menusDict setObject:[NSArray arrayWithObjects:@"行李箱",@"尊贵后排",@"音箱",@"钥匙", nil] forKey:@"尊贵"];
    [menusDict setObject:[NSArray arrayWithObjects:@"泊车",@"ACC",@"定速巡航",@"XDS",@"动力", nil] forKey:@"驾控"];
    [menusDict setObject:[NSArray arrayWithObjects:@"预碰撞",@"后视影像",@"倒车倾覆",@"疲劳提醒",@"车道保持",@"变道辅助",@"动态前灯",@"防炫目", nil] forKey:@"智能"];
    [menusDict setObject:[NSArray arrayWithObjects:@"静音",@"空调",@"E+A",@"大灯", nil] forKey:@"舒适"];
    [menusDict setObject:[NSArray arrayWithObjects:@"主动安全",@"胎压监测",@"被动安全", nil] forKey:@"安全"];
    
   
    
    for(int i=0;i<menus.count;i++)
    {
        CSButton * btn=[CSButton buttonWithType:UIButtonTypeCustom];
        btn.tag=i+1;
        btn.small=0.5;
        btn.frame=CGRectMake(180+i*122, 300, 80, 80);
        [btn setTitle:[menus[i] substringToIndex:1] forState:UIControlStateNormal];
        [btn setTitle:menus[i] forState:UIControlStateHighlighted];
        [btn addTarget:self action:@selector(menuBtnClicekd:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(backHome) name:@"backHome"  object:nil];
    
}
-(void)backHome
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}
-(void)menuBtnClicekd:(UIButton*)btn
{
    switch (btn.tag) {
        case 1:{
            DesignVC * designVC=[[DesignVC alloc] initWithItems:menusDict[menus[btn.tag-1]]];
            [self.navigationController pushViewController:designVC animated:YES];
            }
            break;
        case 2:{
            HonorVC * designVC=[[HonorVC alloc] initWithItems:menusDict[menus[btn.tag-1]]];
            [self.navigationController pushViewController:designVC animated:YES];
        }
            break;case 3:{
                ControlVC * designVC=[[ControlVC alloc] initWithItems:menusDict[menus[btn.tag-1]]];
                [self.navigationController pushViewController:designVC animated:YES];
            }
            break;case 4:{
                SmartVC * designVC=[[SmartVC alloc] initWithItems:menusDict[menus[btn.tag-1]]];
                [self.navigationController pushViewController:designVC animated:YES];
            }
            break;case 5:{
                ComfortVC * designVC=[[ComfortVC alloc] initWithItems:menusDict[menus[btn.tag-1]]];
                [self.navigationController pushViewController:designVC animated:YES];
            }
            break;
        case 6:{
            SafeVC * designVC=[[SafeVC alloc] initWithItems:menusDict[menus[btn.tag-1]]];
            [self.navigationController pushViewController:designVC animated:YES];
        }
            break;
        default:
            break;
    }
}

-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
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
