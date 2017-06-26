#### RFV setup

Setup buttons, images, labels, titles.

```objc
- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupReactiveFeedbackView];
}

- (void)setupReactiveFeedbackView {
    self.status = ReactiveFeedbackViewStatusNone;

    [self setupAccept];
    [self setupDecline];
    [self setupTitle];

    [self setupAcceptDeclineImages];
    [self setupValidityImage];
}
```

