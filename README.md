# RMError
[![Build Status](https://travis-ci.org/packatino/RMError.svg?branch=Travis)](https://travis-ci.org/packatino/RMError)

Makes creating NSError objects easier than ever before!

## Add RMError to your project
The best way to use RMError is via [CocoaPods](https://cocoapods.org/) by adding the following line to your pod file:
>     pod 'RMError'

## Use RMError
To use RMError you have to import the NSError+RMError.h category:
>     #import <NSError+RMError.h>

The simplest way to create an NSError object looks like this:
>     NSError *error = RMErrorCreate(@"My error message.");

You can also use those more convenient methods:
>     NSError *error = [NSError errorWithDescription:@"My error message."];

>     NSError *error = [NSError errorWithCode:123];

>     NSError *error = [NSError errorWithCode:123 description:@"My error message."];

>     NSError *error = [NSError errorWithCode:123 description:@"My error message." domain:@"MyErrorDomain"];

<br />
<br />
Don't hesitate to give feedback or create a pull request :)
