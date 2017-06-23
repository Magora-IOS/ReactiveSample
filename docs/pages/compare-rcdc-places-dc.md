### DC vs RC: DC span

DC title update mechanism span.
```objc
@interface DelegateFeedbackContainerView () <DelegateFeedbackViewDelegate>
```
0. Declare delegate protocol support by DC
0. Implement delegate function(s)
0. Assign DC as the delegate to receive notifications (as many times, as there are components)
0. Update title at the start
0. Update title in the delegate function

