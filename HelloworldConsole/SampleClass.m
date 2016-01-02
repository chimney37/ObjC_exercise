//
//  SampleClass.m
//  HelloworldConsole
//
//  Created by 大朏哲明 on 2016/01/02.
//  Copyright © 2016年 t.otsuki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SampleClass.h"

@implementation SampleClass

- (void)sampleMethod{
    NSLog(@"Hello World! from class method");
}

- (int)max:(int)num1 andNume2:(int)num2{
    /* local variable declaration */
    if(num1 > num2)
        return num1;
    else
        return num2;
}

/* create a custom Error */
-(NSString *) getEmployeeNameForID:(int)id withError:(NSError *__autoreleasing *)errorPtr{
    if(id == 1)
        return @"Employee Test Name";
    else
    {
        NSString *domain = @"com.MyCompany.MyApplication.ErrorDomain";
        NSString *desc = @"Unable to complete the process";
        NSDictionary *userInfo = [[NSDictionary alloc] initWithObjectsAndKeys:desc,
                                  @"NSLocalizedDescriptionKey",
                                  NULL];
        *errorPtr = [NSError errorWithDomain:domain code:-101 userInfo:userInfo];
        return @"";
    }
}

@end
