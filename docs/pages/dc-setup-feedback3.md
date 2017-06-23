#### DC setup: feedback No. 3

Third instance.

```objc
    // Three.
    self.feedbackThree = [DelegateFeedbackView loadFromNib];
    [self.feedbackThreeContainerView embedView:self.feedbackThree];
    self.feedbackThree.delegate = self;
    self.feedbackThree.title = LS(@"Feedback.Three.Title");
    self.feedbackThree.acceptTitle = LS(@"Feedback.Three.Yes");
    self.feedbackThree.declineTitle = LS(@"Feedback.Three.No");
```

