### DC vs RC: DC requirements

DC title update mechanism requirements:
0. Declare delegate protocol support by DC
    ```objc
    @interface DelegateFeedbackContainerView () <DelegateFeedbackViewDelegate>
    ```
0. Implement delegate function(s)
    ```objc
    - (void)delegateFeedbackView:(DelegateFeedbackView *)feedback
        status:(DelegateFeedbackViewStatus)status {
        - - - -
    }
    ```
0. Assign DC as the delegate to receive notifications (as many times, as there are components)
```objc
    - - - -
    self.feedbackOne.delegate = self;
    - - - -
    self.feedbackTwo.delegate = self;
    - - - -
    self.feedbackThree.delegate = self;
    - - - -
```
0. Update title at the start
```objc
- (void)setupDelegateFeedbackContainerView {
    - - - -
    [self updateResult];
    - - - -
}
```
0. Update title in the delegate function
```objc
- (void)delegateFeedbackView:(DelegateFeedbackView *)feedback
    status:(DelegateFeedbackViewStatus)status {

    [self updateResult];
}
```

