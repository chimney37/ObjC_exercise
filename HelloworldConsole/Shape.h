//
//  Shape.h
//  HelloworldConsole
//
//  Created by 大朏哲明 on 2016/01/02.
//  Copyright © 2016年 t.otsuki. All rights reserved.
//

#ifndef Shape_h
#define Shape_h

@interface Shape:NSObject
{
    NSString *shapeName;
}
@property(nonatomic, readwrite) NSString *shapeColor;
-(id)initWithName:(NSString *)name;
-(void)print;
@end
#endif /* Shape_h */
