//
//  ParseMasterTests.m
//  ParseMasterTests
//
//  Created by Miles Alden on 10/21/12.
//  Copyright (c) 2012 MilesAlden. All rights reserved.
//

#import "ParseMasterTests.h"
#import "FiR3FiParseMaster.h"
#import "FiR3FiOBJCReturnTypes.h"
#import "FiR3FiDictionaryAdditions.h"



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
    FiR3FiParseMaster *parser = [[FiR3FiParseMaster alloc] init];
    
    // Values to test
    const char *aPtr = "Silly String";
    char aChar = 'a';
    int anInt = INT_MAX;
    BOOL aBOOL = YES;
    float aFloat = 3.141592f;
    double aDouble = 3.14159265358973;
    short aShort = SHRT_MAX;
    long aLong = LONG_MAX;
    unsigned short aUShort = USHRT_MAX;
    unsigned long aULong = ULLONG_MAX;
    unsigned int aUInt = UINTMAX_MAX;
    void *nullPtr = NULL;
    long long aLongLong = LONG_LONG_MAX;
    char boolAsChar = (char)YES;
    
    // char *
    NSError *err;
    NSString *newType = [FiR3FiOBJCReturnTypes returnTypeAsStringForKey:@"char *"];
    NSString *stringResult = [parser parsePrimitiveWithData:[NSData dataWithBytes:aPtr length:strlen(aPtr)]
                                                    andType:newType
                                                      error:&err];
    STAssertNotNil( stringResult, @"ptr is null" );    
    NSLog(@"result: %s : %@", aPtr, stringResult);
    
    // char
    newType = [FiR3FiOBJCReturnTypes returnTypeAsStringForKey:@"char"];
    stringResult = [parser parsePrimitiveWithData:[NSData dataWithBytes:&aChar length:sizeof(aChar)]
                                                    andType:newType
                                                      error:&err];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %c : %@",aChar, stringResult);
    
    // int
    newType = [FiR3FiOBJCReturnTypes returnTypeAsStringForKey:@"int"];
    stringResult = [parser parsePrimitiveWithData:[NSData dataWithBytes:&anInt length:sizeof(anInt)]
                                          andType:newType
                                            error:&err];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %d : %@",anInt, stringResult);
    
    // bool
    newType = [FiR3FiOBJCReturnTypes returnTypeAsStringForKey:@"bool"];
    stringResult = [parser parsePrimitiveWithData:[NSData dataWithBytes:&aBOOL length:sizeof(aBOOL)]
                                          andType:newType
                                            error:&err];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %d : %@",aBOOL, stringResult);
    
    // float
    newType = [FiR3FiOBJCReturnTypes returnTypeAsStringForKey:@"float"];
    stringResult = [parser parsePrimitiveWithData:[NSData dataWithBytes:&aFloat length:sizeof(aFloat)]
                                          andType:newType
                                            error:&err];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %f : %@",aFloat, stringResult);
    
    // double
    newType = [FiR3FiOBJCReturnTypes returnTypeAsStringForKey:@"double"];
    stringResult = [parser parsePrimitiveWithData:[NSData dataWithBytes:&aDouble length:sizeof(aDouble)]
                                          andType:newType
                                            error:&err];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %f : %@",aDouble, stringResult);
    
    // short
    newType = [FiR3FiOBJCReturnTypes returnTypeAsStringForKey:@"short"];
    stringResult = [parser parsePrimitiveWithData:[NSData dataWithBytes:&aShort length:sizeof(aShort)]
                                          andType:newType
                                            error:&err];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %hd : %@",aShort, stringResult);
    
    // long
    newType = [FiR3FiOBJCReturnTypes returnTypeAsStringForKey:@"long"];
    stringResult = [parser parsePrimitiveWithData:[NSData dataWithBytes:&aLong length:sizeof(aLong)]
                                          andType:newType
                                            error:&err];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %li : %@", aLong, stringResult);
    
    
    // uShort
    newType = [FiR3FiOBJCReturnTypes returnTypeAsStringForKey:@"unsigned short"];
    stringResult = [parser parsePrimitiveWithData:[NSData dataWithBytes:&aUShort length:sizeof(aUShort)]
                                          andType:newType
                                            error:&err];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %u : %@",aUShort, stringResult);
    
    // uLong
    newType = [FiR3FiOBJCReturnTypes returnTypeAsStringForKey:@"unsigned long"];
    stringResult = [parser parsePrimitiveWithData:[NSData dataWithBytes:&aULong length:sizeof(aULong)]
                                          andType:newType
                                            error:&err];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %lu : %@", aULong, stringResult);
    
    // uInt
    newType = [FiR3FiOBJCReturnTypes returnTypeAsStringForKey:@"unsigned int"];
    stringResult = [parser parsePrimitiveWithData:[NSData dataWithBytes:&aUInt length:sizeof(aUInt)]
                                          andType:newType
                                            error:&err];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %u : %@",aUInt, stringResult);
    
    // NULL
    newType = [FiR3FiOBJCReturnTypes returnTypeAsStringForKey:@"pointer"];
    stringResult = [parser parsePrimitiveWithData:[NSData dataWithBytes:&nullPtr length:sizeof(nullPtr)]
                                          andType:newType
                                            error:&err];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %p : %@",nullPtr, stringResult);

    // long long
    newType = [FiR3FiOBJCReturnTypes returnTypeAsStringForKey:@"unsigned long long"];
    stringResult = [parser parsePrimitiveWithData:[NSData dataWithBytes:&aLongLong length:sizeof(aLongLong)]
                                          andType:newType
                                            error:&err];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %llu : %@",aLongLong, stringResult);

    // bool as char
    newType = [FiR3FiOBJCReturnTypes returnTypeAsStringForKey:@"char"];
    stringResult = [parser parsePrimitiveWithData:[NSData dataWithBytes:&boolAsChar length:sizeof(boolAsChar)]
                                          andType:newType
                                            error:&err];
    STAssertNotNil( stringResult, @"ptr is null" );
    NSLog(@"result: %c : %@",boolAsChar, stringResult);


}

@end
