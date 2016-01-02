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
-(void)calculateArea{
}
-(void)printArea{
    NSLog(@"Shape Area=%f",area);
}
-(void)setInternalID{
    internalID = [NSString stringWithFormat: @"UNIQUEKEY%dUNIQUEKEY",arc4random()%100];
}
-(NSString *)getExternalID{
    return [internalID stringByReplacingOccurrencesOfString:@"UNIQUEKEY" withString:@""];
}
-(void)startAction{
    PrintClass *printClass = [[PrintClass alloc]init];
    [printClass setDelegate:self];
    [printClass printDetails];
}
-(void)processCompleted{
    NSLog(@"Printing Process Completed");
}
@end

@implementation Shape(myAdditions)
-(NSString *)getAlias{
    return  [NSString stringWithFormat:@"%@ %@", (id)self, shapeName];
}
-(NSString *)getName{
    return shapeName;
}
@end

