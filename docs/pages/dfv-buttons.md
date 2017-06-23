#### DFV buttons

Listen to accept/decline buttons, update images, report status change.

```objc
- (IBAction)accept:(id)sender {
    self.status = DelegateFeedbackViewStatusAccept;
    [self updateAcceptDeclineImages];
    [self updateValidityImage];
    [self reportStatus];
}

- (IBAction)decline:(id)sender {
    self.status = DelegateFeedbackViewStatusDecline;
    [self updateAcceptDeclineImages];
    [self updateValidityImage];
    [self reportStatus];
}
```

