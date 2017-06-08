
#import "DelegateFeedbackContainerView.h"

#import "DelegateFeedbackView.h"

#import "Localization.h"
#import "UIView+Embed.h"
#import "UIView+NibFile.h"

@interface DelegateFeedbackContainerView () <DelegateFeedbackViewDelegate>

@property (nonatomic, strong) IBOutlet UILabel *titleLabel;

@property (nonatomic, strong) IBOutlet UIView *feedbackOneContainerView;
@property (nonatomic, strong) DelegateFeedbackView *feedbackOne;

@property (nonatomic, strong) IBOutlet UIView *feedbackTwoContainerView;
@property (nonatomic, strong) DelegateFeedbackView *feedbackTwo;

@property (nonatomic, strong) IBOutlet UIView *feedbackThreeContainerView;
@property (nonatomic, strong) DelegateFeedbackView *feedbackThree;

@end

@implementation DelegateFeedbackContainerView

#pragma mark - PUBLIC

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupDelegateFeedbackContainerView];
}

#pragma mark - PRIVATE

- (void)setupDelegateFeedbackContainerView {
    // One.
    self.feedbackOne = [DelegateFeedbackView loadFromNib];
    [self.feedbackOneContainerView embedView:self.feedbackOne];
    self.feedbackOne.delegate = self;
    self.feedbackOne.title = LS(@"Feedback.One.Title");
    self.feedbackOne.acceptTitle = LS(@"Feedback.One.Yes");
    self.feedbackOne.declineTitle = LS(@"Feedback.One.No");

    // Two.
    self.feedbackTwo = [DelegateFeedbackView loadFromNib];
    [self.feedbackTwoContainerView embedView:self.feedbackTwo];
    self.feedbackTwo.delegate = self;
    self.feedbackTwo.title = LS(@"Feedback.Two.Title");
    self.feedbackTwo.acceptTitle = LS(@"Feedback.Two.Yes");
    self.feedbackTwo.declineTitle = LS(@"Feedback.Two.No");

    // Three.
    self.feedbackThree = [DelegateFeedbackView loadFromNib];
    [self.feedbackThreeContainerView embedView:self.feedbackThree];
    self.feedbackThree.delegate = self;
    self.feedbackThree.title = LS(@"Feedback.Three.Title");
    self.feedbackThree.acceptTitle = LS(@"Feedback.Three.Yes");
    self.feedbackThree.declineTitle = LS(@"Feedback.Three.No");
    
    // Result.
    [self updateResult];
}

- (void)delegateFeedbackView:(DelegateFeedbackView *)feedback
    status:(DelegateFeedbackViewStatus)status {

    [self updateResult];
}

- (void)updateResult {
    self.titleLabel.text =
        [NSString
            stringWithFormat:LS(@"Delegate.Result"),
            @(self.feedbackOne.status),
            @(self.feedbackTwo.status),
            @(self.feedbackThree.status)];
}

@end

