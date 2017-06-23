#### DC setup

Instantiate and setup feedback views, reset title label.

```objc
@implementation DelegateFeedbackContainerView

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupDelegateFeedbackContainerView];
}

- (void)setupDelegateFeedbackContainerView {
    // Feedback One/Two/Three setup. Code has been collapsed. See following slides.
    [self updateResult];
}

// delegate callback. Code has been collapsed. See following slides.
// updateResult function. Code has been collapsed. See following slides.

@end
```

