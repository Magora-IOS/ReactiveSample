#### RC setup: title update overview

Everything related to title happens inside single function.

```objc
- (void)setupResult {
    @weakify(self);

    [[RACSignal
        combineLatest:@[
            // Feedback One/Two/Three signals. Code has been collapsed. See following slides.
        ]]
        subscribeNext:^(id x) {
            // Reaction to signals. Code has been collapsed. See following slides.
        }];
}
```

**Note** the @weakify(self) macro call to make self weak for the subscribe block.

