## DC setup: feedback No. 1

Instantiate, embed, assign delegate, assign localized text.

```objc
    // One.
    self.feedbackOne = [DelegateFeedbackView loadFromNib];
    [self.feedbackOneContainerView embedView:self.feedbackOne];
    self.feedbackOne.delegate = self;
    self.feedbackOne.title = LS(@"Feedback.One.Title");
    self.feedbackOne.acceptTitle = LS(@"Feedback.One.Yes");
    self.feedbackOne.declineTitle = LS(@"Feedback.One.No");
```

