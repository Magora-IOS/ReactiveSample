#### RC setup: feedback No. 1

Instantiate, embed, assign localized text.

```objc
    // One.
    self.feedbackOne = [ReactiveFeedbackView loadFromNib];
    [self.feedbackOneContainerView embedView:self.feedbackOne];
    self.feedbackOne.title = LS(@"Feedback.One.Title");
    self.feedbackOne.acceptTitle = LS(@"Feedback.One.Yes");
    self.feedbackOne.declineTitle = LS(@"Feedback.One.No");
```

**Note** the absense of delegate assignment.

