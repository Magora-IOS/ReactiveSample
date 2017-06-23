#### DFV reporting

Status change reporting.

```objc
- (void)reportStatus {
    if (self.delegate) {
        [self.delegate delegateFeedbackView:self status:self.status];
    }
}
```

