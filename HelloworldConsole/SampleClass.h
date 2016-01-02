//
//  SampleClass.h
//  HelloworldConsole
//
//  Created by 大朏哲明 on 2016/01/02.
//  Copyright © 2016年 t.otsuki. All rights reserved.
//

#ifndef SampleClass_h
#define SampleClass_h

#import <Foundation/Foundation.h>

@interface SampleClass:NSObject
- (void)sampleMethod;
- (int)max:(int)num1 andNume2:(int)num2;
- (NSString *) getEmployeeNameForID: (int) id withError:(NSError **)errorPtr;
@end

#endif /* SampleClass_h */
