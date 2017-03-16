//
//  OwnCaptureInputPortTests.m
//  AVFoundationRadar
//
//  Created by Marco Feltmann on 16.03.17.
//

#import <XCTest/XCTest.h>
#import <AVFoundation/AVFoundation.h>
#import "OwnCaptureInputPort.h"

@interface OwnCaptureInputPortTests : XCTestCase

@end

@implementation OwnCaptureInputPortTests

- (void)testOwnCapturePortInputWithSetCaptureInput {

  
  AVCaptureSession * testSession = [[AVCaptureSession alloc] init];
  AVCaptureDeviceInput * testInput = [[AVCaptureDeviceInput alloc] initWithDevice:[AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo] error:nil];
  AVCaptureOutput * testOutput = [[AVCaptureMetadataOutput alloc] init];

  [testSession beginConfiguration];
  [testSession addInputWithNoConnections:testInput];
  [testSession addOutputWithNoConnections:testOutput];

  AVCaptureConnection * testConnection = [AVCaptureConnection connectionWithInputPorts:@[[[OwnCaptureInputPort alloc] initWithInput:testInput]] output:testOutput];
  [testSession canAddConnection:testConnection];
  [testSession addConnection:testConnection];

  XCTAssertNoThrow([testSession commitConfiguration], @"Do not want this EXC_BAD_ACCESS right here. Don't even understand it.");
}

@end
