#### RFV properties

Status, selection image, title, acceptance image/title/button, decline image/title/button.

```objc
@interface ReactiveFeedbackView ()

@property (nonatomic, assign, readwrite) ReactiveFeedbackViewStatus status;

@property (nonatomic, strong) IBOutlet UIImageView *validityImageView;
@property (nonatomic, strong) IBOutlet UILabel *titleLabel;

@property (nonatomic, strong) IBOutlet UIImageView *acceptImageView;
@property (nonatomic, strong) IBOutlet UILabel *acceptLabel;
@property (nonatomic, strong) IBOutlet UIButton *acceptButton;

@property (nonatomic, strong) IBOutlet UIImageView *declineImageView;
@property (nonatomic, strong) IBOutlet UILabel *declineLabel;
@property (nonatomic, strong) IBOutlet UIButton *declineButton;

@end
```

