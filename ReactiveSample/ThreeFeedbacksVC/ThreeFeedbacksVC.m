
#import "ThreeFeedbacksVC.h"

#import "DelegateFeedbackContainerView.h"
#import "ReactiveFeedbackContainerView.h"

#import "UIView+Embed.h"
#import "UIView+NibFile.h"

@interface ThreeFeedbacksVC ()

@property (nonatomic, strong) IBOutlet UIView *delegateContainerView;
@property (nonatomic, strong) DelegateFeedbackContainerView *delegateFeedback;

@property (nonatomic, strong) IBOutlet UIView *reactiveContainerView;
@property (nonatomic, strong) ReactiveFeedbackContainerView *reactiveFeedback;

@end

@implementation ThreeFeedbacksVC

#pragma mark - PUBLIC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupThreeFeedbacksVC];
}

#pragma mark - PRIVATE

- (void)setupThreeFeedbacksVC {
    self.delegateFeedback = [DelegateFeedbackContainerView loadFromNib];
    [self.delegateContainerView embedView:self.delegateFeedback];

    self.reactiveFeedback = [ReactiveFeedbackContainerView loadFromNib];
    [self.reactiveContainerView embedView:self.reactiveFeedback];
}

@end

