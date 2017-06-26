#### RFV setup: accept button

Sync title and susbscribe to button click.

```objc
- (void)setupAccept {
    RAC(self.acceptLabel, text) = RACObserve(self, acceptTitle);

    @weakify(self);
    [[self.acceptButton
        rac_signalForControlEvents:UIControlEventTouchUpInside]
        subscribeNext:^(id x) {
            @strongify(self);
            self.status = ReactiveFeedbackViewStatusAccept;
        }];
}
```

**Note** the absense of reporting.

