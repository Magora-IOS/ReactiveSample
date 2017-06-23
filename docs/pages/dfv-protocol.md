#### DFV protocol

Protocol to report feedback view status changes.

```objc
@protocol DelegateFeedbackViewDelegate

- (void)delegateFeedbackView:(DelegateFeedbackView *)feedbackView
    status:(DelegateFeedbackViewStatus)status;

@end
```

