//
//  Square.m
//  HelloworldConsole
//
//  Created by 大朏哲明 on 2016/01/02.
//  Copyright © 2016年 t.otsuki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"

@implementation Square


-(id)initWithSide:(CGFloat)side andName:(NSString*)name
{
    length = side;
    shapeName = name;
    return self;
}
-(void)calculateArea{
    area=length*length;
}
-(void)calculateAreaOfSide:(CGFloat)side
{
    area = side*side;
}
-(void)printArea
{
    NSLog(@"The area of square is %f",area);
}
@end