//
//  Rectangle.m
//  HelloworldConsole
//
//  Created by 大朏哲明 on 2016/01/02.
//  Copyright © 2016年 t.otsuki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

@implementation Rectangle
-(id)initWithName:(NSString *)name andWidth:(double)width andHeight:(double)height andColor:(NSString *)color
{
    self.shapeColor = color;
    shapeName = name;
    rectWidth = width;
    rectHeight = height;
    return self;
}
-(double)area
{
    return rectWidth*rectHeight;
}
-(void)print
{
    NSLog(@"width=%f", rectWidth);
    NSLog(@"height=%f", rectHeight);
    NSLog(@"area=%f", self.area);
    NSLog(@"name=%@", shapeName);
    NSLog(@"color=%@",self.shapeColor);
}
@end
