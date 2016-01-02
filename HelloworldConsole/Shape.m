//
//  Shape.m
//  HelloworldConsole
//
//  Created by 大朏哲明 on 2016/01/02.
//  Copyright © 2016年 t.otsuki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

@implementation Shape
@synthesize shapeColor;
-(id)initWithName:(NSString *)name{
    shapeName = name;
    self.shapeColor = @"defaultcolor";
    return self;
}
-(void)print{
    NSLog(@"Shape name=%@", shapeName);
}
@end