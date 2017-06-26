#### RFV setup: decline button

Sync title and susbscribe to button click.

```objc
- (void)setupDecline {
    RAC(self.declineLabel, text) = RACObserve(self, declineTitle);

    @weakify(self);
    [[self.declineButton
        rac_signalForControlEvents:UIControlEventTouchUpInside]
        subscribeNext:^(id x) {
            @strongify(self);
            self.status = ReactiveFeedbackViewStatusDecline;
        }];
}
```

**Note** the absense of reporting.
