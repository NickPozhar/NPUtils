//
//  NSString+URLParameters.m
//  MaproxObserver
//
//  Created by Николай  Пожар on 21.05.13.
//  Copyright (c) 2013 AngryBeavers. All rights reserved.
//

#import "NSString+URLParameters.h"


@implementation NSString (URLParameters)

+ (NSString *)parametersStringFromDictionary:(NSDictionary *)parameters
{
    NSString *resultString = @"";
    
    NSArray *parameterNames = [parameters allKeys];
    
    if ([parameterNames count] > 0) {
        for (NSString *parameterName in [parameters allKeys]) {
            resultString = [resultString stringByAppendingString:[NSString stringWithFormat:@"%@=%@&",
                                                                  parameterName,
                                                                  parameters[parameterName]]];
        }
        resultString = [resultString stringByReplacingCharactersInRange:NSMakeRange([resultString length] - 1, 1)
                                                             withString:@""];
    }
    
    return resultString;
}

@end
