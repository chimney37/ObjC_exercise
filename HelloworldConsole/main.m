//
//  main.m
//  HelloworldConsole
//
//  Created by 大朏哲明 on 2016/01/01.
//  Copyright © 2016年 t.otsuki. All rights reserved.
//

#import <Foundation/Foundation.h>

//use a type definition to output debug messages in debug mode only
#if DEBUG == 0
#define DebugLog(...)
#elif DEBUG == 1
#define DebugLog(...) NSLog(__VA_ARGS__)
#endif

#define MAX_ARRAY_LENGTH 10

//typedef
typedef unsigned char BYTE;

@interface SampleClass:NSObject
- (void)sampleMethod;
- (int)max:(int)num1 andNume2:(int)num2;
- (NSString *) getEmployeeNameForID: (int) id withError:(NSError **)errorPtr;
@end

@interface Box : NSObject{
    //Instance variables.private and only accessible inside class implementation
    double length;
    double breadth;
}
@property(nonatomic, readwrite) double height;  //Property
@end

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

@implementation Box
@synthesize height;

-(id)init
{
    self = [super init];
    length = 1.0;
    breadth = 1.0;
    return self;
}
-(double) volume
{
    return length*breadth*height;
}

@end

//implement a Block, an objective-C object that represents a single task or unit of behavior
double (^multiplyTwoValues)(double,double) =
^(double firstValue, double secondValue){
    return firstValue*secondValue;
};

//struct usage
typedef struct Books
{
    //https://www.bignerdranch.com/blog/unsafe-at-any-speed/
    //__unsafe_unretained needs to be included to prevent compilers from complaining about having objective-c objects within a struct
    __unsafe_unretained NSString *title;
    __unsafe_unretained NSString *author;
    __unsafe_unretained NSString *subject;
    int book_id;
} Book;

int main(int argc, const char * argv[]) {
    // insert code here...
    
    //object management is no longer necessary since xcode 4.2.
    //NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSLog(@"Hello, World! from main");
    
    /* my first class in Objective-C*/
    SampleClass *sampleClass = [[SampleClass alloc]init];
    [sampleClass sampleMethod];
    
    int a = 100;
    int b = 200;
    NSLog(@"Max value is : %d", [sampleClass max:a andNume2:b]);
    
    Box *box1 = [[Box alloc]init];
    Box *box2 = [[Box alloc]init];
    
    double volume = 0.0;
    
    box1.height = 5.0;
    box2.height = 10.0;
    
    volume = [box1 volume];
    NSLog(@"Volume of Box1 : %f", volume);
    volume = [box2 volume];
    NSLog(@"Volume of Box2 : %f", volume);
    
    //call block
    NSLog(@"Result multiplying two values is %f", multiplyTwoValues(a,b));
    
    //use array
    int n[MAX_ARRAY_LENGTH];
    int i,j;
    for(i=0; i < MAX_ARRAY_LENGTH; i++)
    {
        n[i] = i + 100;
    }
    
    for(j =0; j < 10 ;j++)
    {
        NSLog(@"Element[%d] = %d", j, n[j]);
    }
    
    //pointer manipulation
    int var = 20;
    int *ip;
    ip = &var;
    NSLog(@"Address of var variable: %x",(uint)&var);
    NSLog(@"Address stored in ip variable: %x", (uint)ip);
    NSLog(@"Value of *ip variable: %d", *ip);
    
    //string representation (NSString and NSMutableString)
    NSString *greeting = @"Hello";
    NSLog(@"Greeting Message: %@", greeting);
    
    //usage of structs
    Book Book1;
    Book1.title = @"Objective-C Programming";
    Book1.author = @"Tetsuaki Otsuki";
    Book1.subject = @"Objective-C tutorial";
    Book1.book_id = 7777777;
    
    NSLog(@"Book1 Title: %@", Book1.title);
    NSLog(@"Book1 author: %@", Book1.author);
    NSLog(@"Book1 subject: %@", Book1.subject);
    NSLog(@"Book1 book_id: %d", Book1.book_id);
    
    //standard predefined macros
    NSLog(@"File : %s",__FILE__);
    
    DebugLog(@"Debug log, gets printed during debug only");
    
    //Error handling
    NSError *error = nil;
    NSString *name1 = [sampleClass getEmployeeNameForID:1 withError:&error];
    
    if(error)
        NSLog(@"Error finding name1: %@",error);
    else
        NSLog(@"Name1: %@", name1);
    
    error = nil;
    
    NSString *name2 = [sampleClass getEmployeeNameForID:2 withError:&error];
    
    if(error)
        NSLog(@"Error finding name2: %@",error);
    else
        NSLog(@"Name2: %@", name2);
    
    //program arguments: argv[0] contains the name of program itself
    NSLog(@"Program name %s\n", argv[0]);
    NSLog(@"Number of arugments = %d", argc);
    
    //illustrating the use of stringWithFormat and character escape on double quote
    NSString *dquotes = [NSString stringWithFormat:@"%@",@"\""];
    if(argc > 1)
        NSLog(@"The first argument supplied is \"%s%@", argv[1],dquotes);
    
    //object management including deallocation is no longer necessary since xcode 4.2
    //[pool drain];
    
    return 0;
}