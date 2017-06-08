
#import "ViewController.h"

#import "DelegateFeedbackContainerView.h"

#import "UIView+Embed.h"
#import "UIView+NibFile.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UIView *delegateContainerView;
@property (nonatomic, strong) DelegateFeedbackContainerView *delegateFeedback;

@property (nonatomic, strong) IBOutlet UIView *reactiveContainerView;

@end

@implementation ViewController

#pragma mark - PUBLIC

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViewController];
}

#pragma mark - PRIVATE

- (void)setupViewController {
    self.delegateFeedback = [DelegateFeedbackContainerView loadFromNib];
    [self.delegateContainerView embedView:self.delegateFeedback];
}

@end

