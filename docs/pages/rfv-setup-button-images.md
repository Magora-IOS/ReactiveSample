#### RFV setup: accept/decline images

Set highlighted flag based on status.

```objc
- (void)setupAcceptDeclineImages {
    @weakify(self);
    [RACObserve(self, status)
        subscribeNext:^(id x) {
            @strongify(self);
            self.acceptImageView.highlighted =
                (self.status == ReactiveFeedbackViewStatusAccept) ? YES : NO;
            self.declineImageView.highlighted =
                (self.status == ReactiveFeedbackViewStatusDecline) ? YES : NO;
        }];
}
```

