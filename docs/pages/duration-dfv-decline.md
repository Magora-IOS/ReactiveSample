#### Execution duration: DFV decline

```objc
- (IBAction)decline:(id)sender {
    CFTimeInterval dtWas = CACurrentMediaTime();

    self.status = DelegateFeedbackViewStatusDecline;
    [self updateAcceptDeclineImages];
    [self updateValidityImage];
    [self reportStatus];

    CFTimeInterval dtNow = CACurrentMediaTime();
    NSLog(@"DelegateFeedbackView. Decline duration: '%@'", @(dtNow - dtWas));
}
```

