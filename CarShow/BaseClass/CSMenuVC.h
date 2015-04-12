//
//  CSMenuVC.h
//  CarShow
//
//  Created by Peter on 15/4/12.
//  Copyright (c) 2015年 Peter. All rights reserved.
//

#import "CSBaseVC.h"

@interface CSMenuVC : CSBaseVC
-(id)initWithItems:(NSArray*)aArray;
@property(nonatomic,strong) NSArray * itemsArray;
@end
