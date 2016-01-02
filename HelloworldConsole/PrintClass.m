//
//  PrintClass.m
//  HelloworldConsole
//
//  Created by 大朏哲明 on 2016/01/02.
//  Copyright © 2016年 t.otsuki. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "PrintClass.h"

@implementation PrintClass
-(void)printDetails{
    NSLog(@"Printing Details");
}
-(void)setDelegate:(id)newDelegate{
    delegate = newDelegate;
}
@end