//
//  ParseMaster.h
//  ParseMaster
//
//  Created by Miles Alden on 10/21/12.
//  Copyright (c) 2012 MilesAlden. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ParseMaster : NSObject {
    
    void *ptr;
    int valLength;
    const char *valType;
}


@property (nonatomic, strong) NSData *ptrAsData;

- (void)setPtr:(void *)ptr forType:(const char*)type length:(int)length;
- (NSData *)getPtr;
- (NSString *)numberWithPrimitiveType:(const char *)_argType pointerToData:(void*)arg;


@end
