#### RC setup: feedback No. 2

Do the same for the second feedback instance.

```objc
    // Two.
    self.feedbackTwo = [ReactiveFeedbackView loadFromNib];
    [self.feedbackTwoContainerView embedView:self.feedbackTwo];
    self.feedbackTwo.title = LS(@"Feedback.Two.Title");
    self.feedbackTwo.acceptTitle = LS(@"Feedback.Two.Yes");
    self.feedbackTwo.declineTitle = LS(@"Feedback.Two.No");
```

