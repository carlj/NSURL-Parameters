//
//  ExampleViewController.m
//  NSURL+Parameters
//
//  Created by Carl Jahn on 16.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import "ExampleViewController.h"
#import "NSURL+Parameters.h"

@implementation ExampleViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
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
}


@end
