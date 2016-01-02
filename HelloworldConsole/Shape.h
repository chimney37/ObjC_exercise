//
//  Shape.h
//  HelloworldConsole
//
//  Created by 大朏哲明 on 2016/01/02.
//  Copyright © 2016年 t.otsuki. All rights reserved.
//

#ifndef Shape_h
#define Shape_h

#include "PrintClass.h"

@interface Shape:NSObject<PrintProtocolDelegate>
{
    NSString *shapeName;
    CGFloat area;
}
@property(nonatomic, readwrite) NSString *shapeColor;
-(id)initWithName:(NSString *)name;
-(void)print;
-(void)calculateArea;
-(void)printArea;
-(void)startAction;
@end

/*illustrating the use of categories feature in Objective-C*/
@interface Shape(myAddition)
-(NSString *)getAlias;
-(NSString *)getName;
@end

/*illustrating the use of class extensions*/
@interface Shape()
{
    NSString *internalID;
}
-(void)setInternalID;
-(NSString *)getExternalID;
@end

#endif /* Shape_h */
