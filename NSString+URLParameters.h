//
//  NSString+URLParameters.h
//  MaproxObserver
//
//  Created by Николай  Пожар on 21.05.13.
//  Copyright (c) 2013 AngryBeavers. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 * Category on NSString to build url parameters strings from dictionary.
 */
@interface NSString (URLParameters)

/**
 * Create NSString from NSDictionary.
 * @param parameters Dictionary where keys is parameter names and values is actual values.
 */
+ (NSString *)parametersStringFromDictionary:(NSDictionary *)parameters;

@end
