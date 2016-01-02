//
//  PrintClass.h
//  HelloworldConsole
//
//  Created by 大朏哲明 on 2016/01/02.
//  Copyright © 2016年 t.otsuki. All rights reserved.
//

#ifndef PrintClass_h
#define PrintClass_h

/* illustrates the use of the protocol feature and also delegation*/
@protocol PrintProtocolDelegate
@required
-(void)processCompleted;
@end

@interface PrintClass : NSObject
{
    id delegate;
}
-(void) printDetails;
-(void) setDelegate:(id)newDelegate;
@end

#endif /* PrintClass_h */
