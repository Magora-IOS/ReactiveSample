
#import "DelegateFeedbackContainerView.h"

#import "DelegateFeedbackView.h"

@interface DelegateFeedbackContainerView()

@property (nonatomic, strong) IBOutlet UIView *feedbackOneContainerView;
@property (nonatomic, strong) DelegateFeedbackView *feedbackOne;

@property (nonatomic, strong) IBOutlet UIView *feedbackTwoContainerView;
@property (nonatomic, strong) DelegateFeedbackView *feedbackTwo;

@property (nonatomic, strong) IBOutlet UIView *feedbackThreeContainerView;
@property (nonatomic, strong) DelegateFeedbackView *feedbackThree;

@end

@implementation DelegateFeedbackContainerView

@end

