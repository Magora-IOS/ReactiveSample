#### RFV declaration

Feedback view configuration and reporting.

```objc
@interface ReactiveFeedbackView : UIView

// Configuration.
@property (nonatomic, copy) NSString *acceptTitle;
@property (nonatomic, copy) NSString *declineTitle;
@property (nonatomic, copy) NSString *title;

// Reporting.
@property (nonatomic, assign, readonly) ReactiveFeedbackViewStatus status;

@end
```

**Note** the absense of a delegate.

