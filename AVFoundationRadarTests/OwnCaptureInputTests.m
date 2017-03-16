//
//  OwnCaptureInputTests.m
//  AVFoundationRadar
//
//  Created by Marco Feltmann on 16.03.17.
//

#import <XCTest/XCTest.h>
#import <AVFoundation/AVFoundation.h>

#import "OwnCaptureInput.h"

@interface OwnCaptureInputTests : XCTestCase

@end

@implementation OwnCaptureInputTests

- (void)testAddingOwnCaptureInput {

  AVCaptureSession * testSession = [[AVCaptureSession alloc] init];
  AVCaptureInput * testInput = [[OwnCaptureInput alloc] init];
  AVCaptureOutput * testOutput = [[AVCaptureMetadataOutput alloc] init];

  [testSession beginConfiguration];
  [testSession addOutput:testOutput];

  XCTAssertTrue([testSession canAddInput:testInput], @"I expect the session to be able to add my own input instance.");
  XCTAssertNoThrow([testSession addInput:testInput], @"I'm not expecting this to throw since nowhere I am told which AVCaptureInput instances are supported.");

  [testSession commitConfiguration];
}

@end
