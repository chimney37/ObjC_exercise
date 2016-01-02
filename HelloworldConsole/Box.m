//
//  Box.m
//  HelloworldConsole
//
//  Created by 大朏哲明 on 2016/01/02.
//  Copyright © 2016年 t.otsuki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

@implementation Box
@synthesize height;

-(id)init
{
    self = [super init];
    length = 1.0;
    breadth = 1.0;
    return self;
}
-(double) volume
{
    return length*breadth*height;
}

@end

