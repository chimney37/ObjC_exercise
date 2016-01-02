//
//  Square.h
//  HelloworldConsole
//
//  Created by 大朏哲明 on 2016/01/02.
//  Copyright © 2016年 t.otsuki. All rights reserved.
//

#ifndef Square_h
#define Square_h

#include "Shape.h"

@interface Square:Shape
{
    CGFloat length;
}
-(id)initWithSide:(CGFloat)side andName:(NSString*)name;

@end

#endif /* Square_h */
