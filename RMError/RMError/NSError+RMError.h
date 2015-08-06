//
//  NSError+RMError.h
//  RMError
//
//  Created by Robert Mißbach on 06.08.15.
//  Copyright (c) 2015 Robert Mißbach. All rights reserved.
//

#import <Foundation/Foundation.h>


/// Quickest way to create an errer with a description.
FOUNDATION_EXPORT NSError * RMErrorCreate(NSString *errorDescription);


extern NSString * const RMErrorDomainDefault;
extern NSUInteger const RMErrorCodeDefault;


/**
 This category provides some methods to simplify the work with NSErrors.
 */
@interface NSError (RMError)

/**
 Creates and initializes an NSError object for a given domain, code and description. The <code>description</code> parameter is what will be accessable as <code>error.localizedDescription</code>. If the domain is nil then <code>RMErrorDomainDefault</code> is used as domain.
 */
+ (instancetype)errorWithCode:(NSUInteger)code
                  description:(NSString *)description
                       domain:(NSString *)domain;

/**
 Creates and initializes an NSError object for a given code and description. The <code>description</code> parameter is what will be accessable as <code>error.localizedDescription</code>. The domain of this error will be <code>RMErrorDomainDefault</code>.
 */
+ (instancetype)errorWithCode:(NSUInteger)code
                  description:(NSString *)description;

/**
 Creates an error with an error code and <code>RMErrorDomainDefault</code> as domain. The discription will be empty.
 */
+ (instancetype)errorWithCode:(NSUInteger)code;

/**
 Creates an error with a localizedDescription and <code>RMErrorDomainDefault</code> as domain. The error code will be <code>RMErrorCodeDefault</code>.
 */
+ (instancetype)errorWithDescription:(NSString *)description;

@end
