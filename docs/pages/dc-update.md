## DC title update

Denote selected values in the title.

```objc
- (void)updateResult {
    self.titleLabel.text =
        [NSString
            stringWithFormat:LS(@"Delegate.Result"),
            @(self.feedbackOne.status),
            @(self.feedbackTwo.status),
            @(self.feedbackThree.status)];
}
```

