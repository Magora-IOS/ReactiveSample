
#import "ReactiveFeedbackContainerView.h"

#import "ReactiveFeedbackView.h"

#import "Localization.h"
#import "UIView+Embed.h"
#import "UIView+NibFile.h"
#import <ReactiveObjC/ReactiveObjC.h>

@interface ReactiveFeedbackContainerView ()

@property (nonatomic, strong) IBOutlet UILabel *titleLabel;

@property (nonatomic, strong) IBOutlet UIView *feedbackOneContainerView;
@property (nonatomic, strong) ReactiveFeedbackView *feedbackOne;

@property (nonatomic, strong) IBOutlet UIView *feedbackTwoContainerView;
@property (nonatomic, strong) ReactiveFeedbackView *feedbackTwo;

@property (nonatomic, strong) IBOutlet UIView *feedbackThreeContainerView;
@property (nonatomic, strong) ReactiveFeedbackView *feedbackThree;

@end

@implementation ReactiveFeedbackContainerView

#pragma mark - PUBLIC

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupReactiveFeedbackContainerView];
}

#pragma mark - PRIVATE

- (void)setupReactiveFeedbackContainerView {
    // One.
    self.feedbackOne = [ReactiveFeedbackView loadFromNib];
    [self.feedbackOneContainerView embedView:self.feedbackOne];

    self.feedbackOne.title = LS(@"Feedback.One.Title");
    self.feedbackOne.acceptTitle = LS(@"Feedback.One.Yes");
    self.feedbackOne.declineTitle = LS(@"Feedback.One.No");

    // Two.
    self.feedbackTwo = [ReactiveFeedbackView loadFromNib];
    [self.feedbackTwoContainerView embedView:self.feedbackTwo];

    self.feedbackTwo.title = LS(@"Feedback.Two.Title");
    self.feedbackTwo.acceptTitle = LS(@"Feedback.Two.Yes");
    self.feedbackTwo.declineTitle = LS(@"Feedback.Two.No");

    // Three.
    self.feedbackThree = [ReactiveFeedbackView loadFromNib];
    [self.feedbackThreeContainerView embedView:self.feedbackThree];

    self.feedbackThree.title = LS(@"Feedback.Three.Title");
    self.feedbackThree.acceptTitle = LS(@"Feedback.Three.Yes");
    self.feedbackThree.declineTitle = LS(@"Feedback.Three.No");
    
    // Result.
    [self setupResult];
}

- (void)setupResult {
    @weakify(self);

    [[RACSignal
        combineLatest:@[
            RACObserve(self.feedbackOne, status),
            RACObserve(self.feedbackTwo, status),
            RACObserve(self.feedbackThree, status)
        ]]
        subscribeNext:^(id x) {
            @strongify(self);
            self.titleLabel.text =
                [NSString
                    stringWithFormat:LS(@"Reactive.Result"),
                    @(self.feedbackOne.status),
                    @(self.feedbackTwo.status),
                    @(self.feedbackThree.status)];
        }];
}

@end

