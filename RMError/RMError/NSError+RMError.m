//
//  NSError+RMError.m
//  RMError
//
//  Created by Robert Mißbach on 06.08.15.
//  Copyright (c) 2015 Robert Mißbach. All rights reserved.
//

#import "NSError+RMError.h"


FOUNDATION_EXTERN NSError * RMErrorCreate(NSString *errorDescription)
{
    return [NSError errorWithDescription:errorDescription];
}


NSString * const RMErrorDomainDefault = @"RMErrorDomainDefault";
NSUInteger const RMErrorCodeDefault = 0;


@implementation NSError (RMError)

#pragma mark - Factory methods

+ (instancetype)errorWithCode:(NSUInteger)code
                  description:(NSString *)description
                       domain:(NSString *)domain
{
    if (!domain)
    {
        domain = RMErrorDomainDefault;
    }
    if (!description)
    {
        description = @"";
    }
    
    NSDictionary *userInfo = [NSDictionary dictionaryWithObject:description forKey:NSLocalizedDescriptionKey];
    
    NSError *error = [NSError errorWithDomain:domain
                                         code:code
                                     userInfo:userInfo];
    
    return error;
}


+ (instancetype)errorWithCode:(NSUInteger)code
                  description:(NSString *)description
{
    return [NSError errorWithCode:code
                      description:description
                           domain:nil];
}


+ (instancetype)errorWithCode:(NSUInteger)code
{
    return [NSError errorWithCode:code
                      description:nil
                           domain:nil];
}


+ (instancetype)errorWithDescription:(NSString *)description
{
    return [NSError errorWithCode:RMErrorCodeDefault
                      description:description
                           domain:nil];
}

@end
