#### VC implementation

Embed delegate and reactive containers into VC.

```objc
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViewController];
}

- (void)setupViewController {
    self.delegateFeedback = [DelegateFeedbackContainerView loadFromNib];
    [self.delegateContainerView embedView:self.delegateFeedback];

    self.reactiveFeedback = [ReactiveFeedbackContainerView loadFromNib];
    [self.reactiveContainerView embedView:self.reactiveFeedback];
}

@end
```

