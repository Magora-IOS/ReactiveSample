#### Execution duration: RFV accept

```objc
- (IBAction)accept:(id)sender {
    [[self.acceptButton
        rac_signalForControlEvents:UIControlEventTouchUpInside]
        subscribeNext:^(id x) {
            CFTimeInterval dtWas = CACurrentMediaTime();

            @strongify(self);
            // This runs other updates.
            self.status = ReactiveFeedbackViewStatusAccept;

            CFTimeInterval dtNow = CACurrentMediaTime();
            NSLog(@"ReactiveFeedbackView. Accept duration: '%@'", @(dtNow - dtWas));
        }];
}
```

