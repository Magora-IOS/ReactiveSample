#### RC setup: title update signals

Listen to feedback view status changes.

```objc
    [[RACSignal
        combineLatest:@[
            RACObserve(self.feedbackOne, status),
            RACObserve(self.feedbackTwo, status),
            RACObserve(self.feedbackThree, status)
        ]]
```

The signals also fire at the time of RACObserve execution.

