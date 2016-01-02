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
    double rectWidth;
    double rectHeight;
}
-(id)initWithName:(NSString *)name andWidth:(double)width andHeight:(double)height andColor:(NSString *)color;
-(double)area;
@end

#endif /* Rectangle_h */
