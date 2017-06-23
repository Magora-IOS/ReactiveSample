#### DFV properties

Status, selection image, title, acceptance image/title, decline image/title.

```objc
@interface DelegateFeedbackView ()

@property (nonatomic, assign, readwrite) DelegateFeedbackViewStatus status;

@property (nonatomic, strong) IBOutlet UIImageView *validityImageView;
@property (nonatomic, strong) IBOutlet UILabel *titleLabel;

@property (nonatomic, strong) IBOutlet UIImageView *acceptImageView;
@property (nonatomic, strong) IBOutlet UILabel *acceptLabel;

@property (nonatomic, strong) IBOutlet UIImageView *declineImageView;
@property (nonatomic, strong) IBOutlet UILabel *declineLabel;

@end
```

