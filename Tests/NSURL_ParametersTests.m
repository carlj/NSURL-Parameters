//
//  NSURL_ParametersTests.m
//  NSURL+ParametersTests
//
//  Created by Carl Jahn on 16.09.13.
//  Copyright (c) 2013 Carl Jahn. All rights reserved.
//

#import "NSURL_ParametersTests.h"
#import "NSURL+Parameters.h"
@implementation NSURL_ParametersTests


- (void)testKeyValue {
  
  NSURL *url = [NSURL URLWithString: @"http://example.com/index.php?foo=bar&test=one"];
  
  STAssertEqualObjects([url parameterForKey:@"foo"], @"bar", @"values arent the same");
  STAssertEqualObjects([url parameterForKey:@"test"], @"one", @"values arent the same");
}


- (void)testWithLiterals {
  
  NSURL *url = [NSURL URLWithString: @"http://example.com/index.php?foo=bar&test=one"];

  STAssertEqualObjects(url[@"foo"], @"bar", @"values arent the same");
  STAssertEqualObjects(url[@"test"], @"one", @"values arent the same");
}

- (void)testFail {

  NSURL *url = [NSURL fileURLWithPath:@"/var/temp/"];
  
  
  STAssertNil([url parameterForKey:@"param1"], @"value isnt nil");
  STAssertNil([url parameterForKey:@"param2"], @"value isnt nil");
}

- (void)testEscaping {

  NSString *urlString = @"http://example.com/index.php?foo=bar&test=one two";
  urlString = [urlString stringByAddingPercentEscapesUsingEncoding: NSUTF8StringEncoding];
  
  NSURL *url = [NSURL URLWithString: urlString];
  
  STAssertEqualObjects(url[@"foo"], @"bar", @"values arent the same");
  STAssertEqualObjects(url[@"test"], @"one two", @"values arent the same");
}

- (void)testParametersProperty {

  NSURL *url = [NSURL URLWithString: @"http://example.com/index.php?foo=bar&test=one"];
  
  STAssertEqualObjects(url.parameters[@"foo"], @"bar", @"values arent the same");
  STAssertEqualObjects(url.parameters[@"test"], @"one", @"values arent the same");
}

@end
