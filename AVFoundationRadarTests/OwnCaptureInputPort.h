//
//  OwnCaptureInputPort.h
//  AVFoundationRadar
//
//  Created by Marco Feltmann on 16.03.17.
//

#import <AVFoundation/AVFoundation.h>

@interface OwnCaptureInputPort : AVCaptureInputPort

- (instancetype) initWithInput:(AVCaptureInput*)input;

@end
