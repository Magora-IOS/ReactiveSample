#### DFV setup

Reset titles, images.

```objc
- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupDelegateFeedbackView];
}

- (void)setupDelegateFeedbackView {
    self.status = DelegateFeedbackViewStatusNone;

    [self updateAcceptTitle];
    [self updateDeclineTitle];
    [self updateTitle];

    [self updateAcceptDeclineImages];
    [self updateValidityImage];
}
```

