#### RC setup: title update reaction

Update title to denote current feedback view statuses.

Almost identical to previously seen `DelegateFeedbackContainerView:updateResult`.

```objc
        subscribeNext:^(id x) {
            @strongify(self);
            self.titleLabel.text =
                [NSString
                    stringWithFormat:LS(@"Reactive.Result"),
                    @(self.feedbackOne.status),
                    @(self.feedbackTwo.status),
                    @(self.feedbackThree.status)];
        }];
```

**Note** the @strongify(self) macro call to make self strong inside block.

