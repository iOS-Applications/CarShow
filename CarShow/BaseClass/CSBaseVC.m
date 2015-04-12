//
//  CSBaseVC.m
//  CarShow
//
//  Created by Peter on 15/4/11.
//  Copyright (c) 2015年 Peter. All rights reserved.
//

#import "CSBaseVC.h"

@interface CSBaseVC ()

@end

@implementation CSBaseVC
+(CSBaseVC*)loadFromXib
{
    NSLog(@"%@ VC",NSStringFromClass([self class]));
    CSBaseVC* vc= (CSBaseVC*)[[UIViewController alloc] initWithNibName:NSStringFromClass([self class]) bundle:nil];

    return vc;
    
}
-(void)setBackImage:(UIImage*)aBackImage
{
     self.view.layer.contents=(id)aBackImage.CGImage;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden=YES;
    
    // Do any additional setup after loading the view.
}
-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationLandscapeLeft;
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
