#### RFV setup: title, selection image

Sync title. Set highlighted flag based on status.

```objc
- (void)setupTitle {
    RAC(self.titleLabel, text) = RACObserve(self, title);
}

- (void)setupValidityImage {
    @weakify(self);
    [RACObserve(self, status)
        subscribeNext:^(id x) {
            @strongify(self);
            self.validityImageView.highlighted =
                (self.status != ReactiveFeedbackViewStatusNone) ? YES : NO;
        }];
}
```

