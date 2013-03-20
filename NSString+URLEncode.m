//
//  NSString+URLEncode.m
//  Find a Drug
//
//  Created by Николай  Пожар on 15.03.13.
//  Copyright (c) 2013 AngryBeavers. All rights reserved.
//

#import "NSString+URLEncode.h"


@implementation NSString (URLEncode)

-(NSString *)urlEncodeUsingEncoding:(NSStringEncoding)encoding {
	return (__bridge NSString *)CFURLCreateStringByAddingPercentEscapes(NULL,
                                                                        (CFStringRef)self,
                                                                        NULL,
                                                                        //(CFStringRef)@"!*'\"();:@&=+$,?/%#[]% ",
                                                                        (CFStringRef)@"+",
                                                                        CFStringConvertNSStringEncodingToEncoding(encoding));
}

@end
