//
//  Rectangle.h
//  HelloworldConsole
//
//  Created by 大朏哲明 on 2016/01/02.
//  Copyright © 2016年 t.otsuki. All rights reserved.
//

#ifndef Rectangle_h
#define Rectangle_h

#include "Shape.h"

@interface Rectangle : Shape
{
    CGFloat rectWidth;
    CGFloat rectHeight;
}
-(id)initWithName:(NSString *)name andWidth:(double)width andHeight:(double)height andColor:(NSString *)color;

-(void)calculateAreaOfLength:(CGFloat)length andBreadth:(CGFloat)breadth;
-(void)printArea;

@end
#endif /* Rectangle_h */
