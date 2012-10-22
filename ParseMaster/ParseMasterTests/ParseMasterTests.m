//
//  ParseMasterTests.m
//  ParseMasterTests
//
//  Created by Miles Alden on 10/21/12.
//  Copyright (c) 2012 MilesAlden. All rights reserved.
//

#import "ParseMasterTests.h"
#import "ParseMaster.h"
#import "OBJCReturnTypes.h"
#import "NSTNDictionaryAdditions.h"



@implementation ParseMasterTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testPtrSetting
{
    ParseMaster *parser = [[ParseMaster alloc] init];
    
    // Values to test
    const char *aPtr = "Silly String";
    char aChar = "a";
    int anInt = INT_MAX;
    BOOL aBOOL = YES;
    float aFloat = 3.141592f;
    double aDouble = 3.14159265358973;
    short aShort = SHRT_MAX;
    long aLong = LONG_MAX;
    unsigned short aUShort = USHRT_MAX;
    unsigned long aULong = ULLONG_MAX;
    unsigned int aUInt = UINTMAX_MAX;
    // Long long too!
    
    
    // char *
    const char *newType = [OBJCReturnTypes returnTypeForKey:@"char *"];
    NSString *stringResult = [parser numberWithPrimitiveType:newType pointerToData:aPtr];
    STAssertNotNil( stringResult, @"ptr is null" );    
    NSLog(@"result: %@", stringResult);
    
    // char
    newType = [OBJCReturnTypes returnTypeForKey:@"char"];
    stringResult = [parser numberWithPrimitiveType:newType pointerToData:&aChar];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %@", stringResult);
    
    // int
    newType = [OBJCReturnTypes returnTypeForKey:@"int"];
    stringResult = [parser numberWithPrimitiveType:newType pointerToData:&anInt];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %@", stringResult);
    
    // bool
    newType = [OBJCReturnTypes returnTypeForKey:@"bool"];
    stringResult = [parser numberWithPrimitiveType:newType pointerToData:&aBOOL];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %@", stringResult);
    
    // float
    newType = [OBJCReturnTypes returnTypeForKey:@"float"];
    stringResult = [parser numberWithPrimitiveType:newType pointerToData:&aFloat];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %@", stringResult);
    
    // double
    newType = [OBJCReturnTypes returnTypeForKey:@"double"];
    stringResult = [parser numberWithPrimitiveType:newType pointerToData:&aDouble];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %@", stringResult);
    
    // short
    newType = [OBJCReturnTypes returnTypeForKey:@"short"];
    stringResult = [parser numberWithPrimitiveType:newType pointerToData:&aShort];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %@", stringResult);
    
    // long
    newType = [OBJCReturnTypes returnTypeForKey:@"long"];
    stringResult = [parser numberWithPrimitiveType:newType pointerToData:&aLong];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %@", stringResult);
    
    
    // uShort
    newType = [OBJCReturnTypes returnTypeForKey:@"unsigned short"];
    stringResult = [parser numberWithPrimitiveType:newType pointerToData:&aUShort];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %@", stringResult);
    
    // uLong
    newType = [OBJCReturnTypes returnTypeForKey:@"unsigned long"];
    stringResult = [parser numberWithPrimitiveType:newType pointerToData:&aULong];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %@", stringResult);
    
    // uInt
    newType = [OBJCReturnTypes returnTypeForKey:@"unsigned int"];
    stringResult = [parser numberWithPrimitiveType:newType pointerToData:&aUInt];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %@", stringResult);
    


}

@end
