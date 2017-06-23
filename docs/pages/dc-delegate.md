#### DC delegate title update

Update title when any of the feedback instances reports a change.

```objc
- (void)delegateFeedbackView:(DelegateFeedbackView *)feedback
    status:(DelegateFeedbackViewStatus)status {

    [self updateResult];
}
```

