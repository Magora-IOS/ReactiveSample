#### RC setup: feedback No. 3

Final feedback view instance.

```objc
    // Three.
    self.feedbackThree = [ReactiveFeedbackView loadFromNib];
    [self.feedbackThreeContainerView embedView:self.feedbackThree];
    self.feedbackThree.title = LS(@"Feedback.Three.Title");
    self.feedbackThree.acceptTitle = LS(@"Feedback.Three.Yes");
    self.feedbackThree.declineTitle = LS(@"Feedback.Three.No");
```

