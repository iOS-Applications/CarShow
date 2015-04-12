//
//  CSBaseVC.h
//  CarShow
//
//  Created by Peter on 15/4/11.
//  Copyright (c) 2015年 Peter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CSButton.h"
@interface CSBaseVC : UIViewController
+(CSBaseVC*)loadFromXib;
-(void)setBackImage:(UIImage*)aBackImage;
@end
