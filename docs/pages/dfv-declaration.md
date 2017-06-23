#### DFV declaration

Feedback view configuration (three titles) and reporting (status + delegate).

```objc
@interface DelegateFeedbackView : UIView

// Configuration.
@property (nonatomic, copy) NSString *acceptTitle;
@property (nonatomic, copy) NSString *declineTitle;
@property (nonatomic, copy) NSString *title;

// Reporting.
@property (nonatomic, assign, readonly) DelegateFeedbackViewStatus status;
@property (nonatomic, weak) id<DelegateFeedbackViewDelegate> delegate;

@end
```

