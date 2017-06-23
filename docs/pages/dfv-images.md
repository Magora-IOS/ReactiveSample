#### DFV image updaters

Update selection (validity) image and accept/decline images.

```objc
- (void)updateValidityImage {
    self.validityImageView.highlighted =
        (self.status != DelegateFeedbackViewStatusNone) ? YES : NO;
}

- (void)updateAcceptDeclineImages {
    self.acceptImageView.highlighted =
        (self.status == DelegateFeedbackViewStatusAccept) ? YES : NO;
    self.declineImageView.highlighted =
        (self.status == DelegateFeedbackViewStatusDecline) ? YES : NO;
}
```

