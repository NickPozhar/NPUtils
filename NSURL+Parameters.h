//
//  NSURL+Parameters.h
//  Find a Drug
//
//  Created by Николай  Пожар on 14.03.13.
//  Copyright (c) 2013 AngryBeavers. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 * Category on NSURL to provide routine to build URLs with parameters.
 */
@interface NSURL (Parameters)

+ (NSURL *)urlWithUrlString:(NSString *)url
             parameters:(NSDictionary *)parameters
                encoding:(NSStringEncoding)encoding;

@end
