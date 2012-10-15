//
//  FirstAsyncTest.m
//  iOS-Unit-Test-Example
//
//  Created by Christian Wack (cwack) on 15.10.12.
//  Copyright (c) 2012 let's dev. All rights reserved.
//


#import <GHUnitIOS/GHUnit.h>


@interface FirstAsyncTest : GHAsyncTestCase { }
@end

@implementation FirstAsyncTest {
	BOOL connectionSucceeded;
}

- (BOOL) shouldRunOnMainThread
{
	return NO;
}

- (void) setUp
{
	connectionSucceeded = NO;
}

- (void) tearDown
{
}

- (void) testAsynchronousMethodCall
{
        // Call prepare to setup the asynchronous action.
        // This helps in cases where the action is synchronous and the
        // action occurs before the wait is actually called.
    [self prepare];
    
    
        // Call an asynchronous method
	NSURLRequest* request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.letsdev.de"]];
	NSURLConnection* connection = [NSURLConnection connectionWithRequest:request delegate:self];
	[connection start];
    
    // Wait until notify called for timeout (seconds); If notify is not called with kGHUnitWaitStatusSuccess then
    // we will throw an error.
    GHTestLog(@"Now, I'm waiting");
    [self waitForStatus:kGHUnitWaitStatusSuccess timeout:30.0];
    
    GHTestLog(@"Now, I continue");
}



- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	connectionSucceeded = YES;
    
	[connection release];
    
    GHTestLog(@"Now, I finished with success");
    
	[self notify:kGHUnitWaitStatusSuccess forSelector:@selector(testAsynchronousMethodCall)];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
	connectionSucceeded = NO;
    
	[connection release];
    
    GHTestLog(@"Now, I finished with error");
    
    [self notify:kGHUnitWaitStatusFailure forSelector:@selector(testAsynchronousMethodCall)];
}

@end
