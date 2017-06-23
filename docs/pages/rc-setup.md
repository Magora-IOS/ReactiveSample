#### RC setup

Instantiate and setup feedback views, setup title label.

```objc
@implementation ReactiveFeedbackContainerView

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupReactiveFeedbackContainerView];
}

- (void)setupReactiveFeedbackContainerView {
    // Feedback One/Two/Three setup. Code has been collapsed. See following slides.
    [self setupResult];
}

// setupResult function. Code has been collapsed. See following slides.

@end
```

