# AVFoundationIssue
Demo project for holding some tests proving there are expectation violations in AVFoundation framework.

## Usage
To make clear where the expectations are violated only the unit tests are interesting.  
You'll need to start both test classes separately since `OwnCaptureInputPortTests.m` is called first and will crash with an unexpected `EXC_BAD_ACCESS`

## Underlying Use Case
To improve the quality of image data processed by AVFoundation for decoding QR Codes I need to optimize image input for better contrast and edges. A similar usecase is available on [Stack Overflow](http://stackoverflow.com/questions/41698062/reading-low-contrast-3d-printed-qr-codes-with-android).

## Violated Expectations
[AVFoundation Programming Guide](https://developer.apple.com/library/content/documentation/AudioVideo/Conceptual/AVFoundationPG/Articles/04_MediaCapture.html#//apple_ref/doc/uid/TP40010188-CH5-SW2) documents the ability to wire instances of AVCaptureInput and AVCaptureOutput into an AVCaptureSession using AVCaptureConnection.  
Therefor I expected to be able to do so without any obstacles but it doesn't work like expected.  
The two test cases show what I tried according to API promises and the actual result those actions had.
