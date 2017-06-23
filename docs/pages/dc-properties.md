#### DC properties

Title, DelegateFeedbackView intances, and containers.

```objc
@interface DelegateFeedbackContainerView () <DelegateFeedbackViewDelegate>

@property (nonatomic, strong) IBOutlet UILabel *titleLabel;

@property (nonatomic, strong) IBOutlet UIView *feedbackOneContainerView;
@property (nonatomic, strong) DelegateFeedbackView *feedbackOne;

@property (nonatomic, strong) IBOutlet UIView *feedbackTwoContainerView;
@property (nonatomic, strong) DelegateFeedbackView *feedbackTwo;

@property (nonatomic, strong) IBOutlet UIView *feedbackThreeContainerView;
@property (nonatomic, strong) DelegateFeedbackView *feedbackThree;

@end
```

**Note** the `<DelegateFeedbackViewDelegate>`.

