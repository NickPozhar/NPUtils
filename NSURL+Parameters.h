//
//  NSURL+Parameters.h
//  Find a Drug
//
//  Created by Николай  Пожар on 14.03.13.
//  Copyright (c) 2013 AngryBeavers. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSURL (Parameters)

+ (NSURL *)urlWithUrlString:(NSString *)url
             parameters:(NSDictionary *)parameters
                encoding:(NSStringEncoding)encoding;

@end
