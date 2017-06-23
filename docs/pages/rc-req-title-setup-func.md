#### DC title requirements: setup function

2\. Setup function to observe signals and react. 

```objc
- (void)setupResult {
    @weakify(self);

    [[RACSignal
        combineLatest:@[
            RACObserve(self.feedbackOne, status),
            RACObserve(self.feedbackTwo, status),
            RACObserve(self.feedbackThree, status)
        ]]
        subscribeNext:^(id x) {
            @strongify(self);
            self.titleLabel.text =
                [NSString
                    stringWithFormat:LS(@"Reactive.Result"),
                    @(self.feedbackOne.status),
                    @(self.feedbackTwo.status),
                    @(self.feedbackThree.status)];
        }];
}
```

