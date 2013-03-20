//
//  NSURL+Parameters.m
//  Find a Drug
//
//  Created by Николай  Пожар on 14.03.13.
//  Copyright (c) 2013 AngryBeavers. All rights reserved.
//

#import "NSURL+Parameters.h"
#import "NSString+URLEncode.h"


@implementation NSURL (Parameters)

+ (NSURL *)urlWithUrlString:(NSString *)url
             parameters:(NSDictionary *)parameters
                encoding:(NSStringEncoding)encoding;
{
    NSString *resultUrl = [[NSString alloc] initWithString:url];
    
    NSArray *parameterNames = [parameters allKeys];
    
    if ([parameterNames count] > 0) {
        resultUrl = [resultUrl stringByAppendingString:@"?"];
        for (NSString *parameterName in [parameters allKeys]) {
            resultUrl = [resultUrl stringByAppendingString:[NSString stringWithFormat:@"%@=%@&",
                                                            parameterName,
                                                            parameters[parameterName]]];
        }
        resultUrl = [resultUrl stringByReplacingCharactersInRange:NSMakeRange([resultUrl length] - 1, 1)
                                                       withString:@""];
    }
    
    return [[NSURL alloc] initWithString:[resultUrl urlEncodeUsingEncoding:encoding]];
}

@end
