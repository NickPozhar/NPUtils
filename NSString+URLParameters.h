//
//  NSString+URLParameters.h
//  MaproxObserver
//
//  Created by Николай  Пожар on 21.05.13.
//  Copyright (c) 2013 AngryBeavers. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSString (URLParameters)

+ (NSString *)parametersStringFromDictionary:(NSDictionary *)parameters;

@end
