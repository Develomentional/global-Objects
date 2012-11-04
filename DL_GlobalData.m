//
//  DL_GlobalData.m
//  sharedGlobalData
//
//  Created by Jeffry Bobb on 7/14/12.
//  Copyright (c) 2012 Jeffry Bobb. All rights reserved.
//

#import "DL_GlobalData.h"

@implementation DL_GlobalData
@synthesize globalPropertyString = _globalPropertyString;
static DL_GlobalData *DL_GlobalDataShared = nil;
+(DL_GlobalData *)DL_GlobalDataShared{
    static dispatch_once_t pred;
    static DL_GlobalData *DL_GlobalDataShared = nil;
        //correct way to create threadsafe singlton
      if (DL_GlobalDataShared == nil) {
    dispatch_once(&pred, ^{
        DL_GlobalDataShared = [[DL_GlobalData alloc] init];
    });
    return DL_GlobalDataShared;

  
        DL_GlobalDataShared = [[super allocWithZone:NULL]init];
            //initialize properties
        DL_GlobalDataShared.globalPropertyString = [[NSString alloc]init];
    }
    return DL_GlobalDataShared;
}
+(id)allocWithZone:(NSZone *)zone{
    @synchronized(self){
        if (DL_GlobalDataShared == nil) {
            DL_GlobalDataShared = [[super allocWithZone:zone]init];
            return DL_GlobalDataShared;
        }
    }
    return nil;
}

    //funtion
-(void)globalfunction{
    
    
}


@end
