//
//  DL_GlobalData.h
//  sharedGlobalData
//
//  Created by Jeffry Bobb on 7/14/12.
//  Copyright (c) 2012 Jeffry Bobb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DL_GlobalData : NSObject
@property ( retain, nonatomic)NSString *globalPropertyString;
-(void)globalfunction;

+(DL_GlobalData *)DL_GlobalDataShared;
+(id)allocWithZone:(NSZone *)zone;
@end
