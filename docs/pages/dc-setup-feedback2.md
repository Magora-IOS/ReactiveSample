## DC setup: feedback No. 2

Another instance with different localized text.

```objc
    // Two.
    self.feedbackTwo = [DelegateFeedbackView loadFromNib];
    [self.feedbackTwoContainerView embedView:self.feedbackTwo];
    self.feedbackTwo.delegate = self;
    self.feedbackTwo.title = LS(@"Feedback.Two.Title");
    self.feedbackTwo.acceptTitle = LS(@"Feedback.Two.Yes");
    self.feedbackTwo.declineTitle = LS(@"Feedback.Two.No");
```

