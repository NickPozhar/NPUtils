//
//  NSURL+Parameters.m
//  Find a Drug
//
//  Created by Николай  Пожар on 14.03.13.
//  Copyright (c) 2013 AngryBeavers. All rights reserved.
//

#import "NSURL+Parameters.h"

#import "NSString+URLEncode.h"
#import "NSString+URLParameters.h"


@implementation NSURL (Parameters)

+ (NSURL *)urlWithUrlString:(NSString *)url
             parameters:(NSDictionary *)parameters
                encoding:(NSStringEncoding)encoding;
{
    NSString *resultUrl = [[NSString alloc] initWithString:url];
    
    resultUrl = [resultUrl stringByAppendingString:[@"?" stringByAppendingString:[NSString parametersStringFromDictionary:parameters]]];
    
    return [[NSURL alloc] initWithString:[resultUrl urlEncodeUsingEncoding:encoding]];
}

@end
