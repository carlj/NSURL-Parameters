#NSURL+Parameters
Category to access the URL Parameters within your [`NSURL`](https://developer.apple.com/library/ios/documentation/Cocoa/Reference/Foundation/Classes/NSURL_Class/Reference/Reference.html)

[![Build Status](https://travis-ci.org/carlj/NSURL-Parameters.png?branch=master)](https://travis-ci.org/carlj/NSURL-Parameters)

##Installation
Just drag & drop the [`NSURL+Parameters.h`](NSURL+Parameters/NSURL+Parameters.h) and [`NSURL+Parameters.m`](NSURL+Parameters/NSURL+Parameters.m) to your project.


##Usage
First of all take a look at the [Example Project](Example/Classes/ExampleViewController.m)

``` objc
NSURL *url = [NSURL URLWithString: @"http://example.com/index.php?foo=bar&test=one"];

//Access a value for a given parameter key
NSLog(@"parameter for key 'foo' = %@", [url parameterForKey:@"foo"]);
NSLog(@"parameter for key 'test' = %@", [url parameterForKey:@"test"]);

//Access a value for a given parameter key, with the literal syntax
NSLog(@"parameter for key 'foo' with literal syntax = %@", url[@"foo"]);
NSLog(@"parameter for key 'test' with literal syntax = %@", url[@"test"]);

//Access a value for a given parameter key, with the parameters property
NSLog(@"parameter for key 'foo' with parameters property = %@", url.parameters[@"foo"]);
NSLog(@"parameter for key 'test' with parameters property = %@", url.parameters[@"test"]);


//Access a escaped value for a given parameter key
NSString *urlString = @"http://example.com/index.php?foo=bar&test=one two";
urlString = [urlString stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding];

url = [NSURL URLWithString: urlString];

NSLog(@"parameter for key 'test' (shouldnt be escaped) = %@", [url parameterForKey:@"test"]);
```

##LICENSE
Released under the [MIT LICENSE](LICENSE)