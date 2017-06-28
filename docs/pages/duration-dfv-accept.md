#### Execution duration: DFV accept

```objc
- (IBAction)accept:(id)sender {
    CFTimeInterval dtWas = CACurrentMediaTime();

    self.status = DelegateFeedbackViewStatusAccept;
    [self updateAcceptDeclineImages];
    [self updateValidityImage];
    [self reportStatus];

    CFTimeInterval dtNow = CACurrentMediaTime();
    NSLog(@"DelegateFeedbackView. Accept duration: '%@'", @(dtNow - dtWas));
}
```

