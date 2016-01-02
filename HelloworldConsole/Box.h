//
//  Box.h
//  HelloworldConsole
//
//  Created by 大朏哲明 on 2016/01/02.
//  Copyright © 2016年 t.otsuki. All rights reserved.
//

#ifndef Box_h
#define Box_h

@interface Box : NSObject{
    //Instance variables.private and only accessible inside class implementation
    double length;
    double breadth;
}
-(double)volume;

@property(nonatomic, readwrite) double height;  //Property
@end

#endif /* Box_h */
