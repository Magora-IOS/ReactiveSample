#### Execution duration: RFV decline

```objc
- (IBAction)decline:(id)sender {
    [[self.declineButton
        rac_signalForControlEvents:UIControlEventTouchUpInside]
        subscribeNext:^(id x) {
            CFTimeInterval dtWas = CACurrentMediaTime();

            @strongify(self);
            // This runs other updates.
            self.status = ReactiveFeedbackViewStatusDecline;

            CFTimeInterval dtNow = CACurrentMediaTime();
            NSLog(@"ReactiveFeedbackView. Decline duration: '%@'", @(dtNow - dtWas));
        }];
}
```

