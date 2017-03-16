//
//  OwnCaptureInputPort.m
//  AVFoundationRadar
//
//  Created by Marco Feltmann on 16.03.17.
//

#import "OwnCaptureInputPort.h"

@implementation OwnCaptureInputPort

AVCaptureInput * __myInput;

- (NSString*)mediaType {

  return AVMediaTypeMetadataObject;
}

- (AVCaptureInput*)input {

  return __myInput;
}

- (instancetype)initWithInput:(AVCaptureInput *)input {

  if( (self = [super init] ) != nil) {

    __myInput = input;
  }

  return self;
}

@end
