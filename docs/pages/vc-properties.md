#### VC properties

Containers and their child views.

```objc
@interface ViewController ()

// Parent container view.
@property (nonatomic, strong) IBOutlet UIView *delegateContainerView;
// Embedded child view.
@property (nonatomic, strong) DelegateFeedbackContainerView *delegateFeedback;

// Parent container view.
@property (nonatomic, strong) IBOutlet UIView *reactiveContainerView;
// Embedded child view.
@property (nonatomic, strong) ReactiveFeedbackContainerView *reactiveFeedback;

@end
```

