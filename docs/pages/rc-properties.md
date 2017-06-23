#### RC properties

Title, ReactiveFeedbackView intances, and containers.

```objc
@interface ReactiveFeedbackContainerView ()

@property (nonatomic, strong) IBOutlet UILabel *titleLabel;

@property (nonatomic, strong) IBOutlet UIView *feedbackOneContainerView;
@property (nonatomic, strong) ReactiveFeedbackView *feedbackOne;

@property (nonatomic, strong) IBOutlet UIView *feedbackTwoContainerView;
@property (nonatomic, strong) ReactiveFeedbackView *feedbackTwo;

@property (nonatomic, strong) IBOutlet UIView *feedbackThreeContainerView;
@property (nonatomic, strong) ReactiveFeedbackView *feedbackThree;

@end
```

**Note** the absense of any delegate protocol.

