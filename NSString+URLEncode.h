//
//  NSString+URLEncode.h
//  Find a Drug
//
//  Created by Николай  Пожар on 15.03.13.
//  Copyright (c) 2013 AngryBeavers. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSString (URLEncode)

-(NSString *)urlEncodeUsingEncoding:(NSStringEncoding)encoding;

@end
