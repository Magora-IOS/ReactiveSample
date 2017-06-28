
#import "DelegateFeedbackView.h"

#define MEASURE_DURATION

@interface DelegateFeedbackView ()

@property (nonatomic, assign, readwrite) DelegateFeedbackViewStatus status;

@property (nonatomic, strong) IBOutlet UIImageView *validityImageView;
@property (nonatomic, strong) IBOutlet UILabel *titleLabel;

@property (nonatomic, strong) IBOutlet UIImageView *acceptImageView;
@property (nonatomic, strong) IBOutlet UILabel *acceptLabel;

@property (nonatomic, strong) IBOutlet UIImageView *declineImageView;
@property (nonatomic, strong) IBOutlet UILabel *declineLabel;

@end

@implementation DelegateFeedbackView

#pragma mark - PUBLIC

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupDelegateFeedbackView];
}

- (void)setAcceptTitle:(NSString *)title {
    _acceptTitle = title;
    [self updateAcceptTitle];
}

- (void)setDeclineTitle:(NSString *)title {
    _declineTitle = title;
    [self updateDeclineTitle];
}

- (void)setTitle:(NSString *)title {
    _title = title;
    [self updateTitle];
}

#pragma mark - PRIVATE

- (void)setupDelegateFeedbackView {
    self.status = DelegateFeedbackViewStatusNone;

    [self updateAcceptTitle];
    [self updateDeclineTitle];
    [self updateTitle];

    [self updateAcceptDeclineImages];
    [self updateValidityImage];
}

- (IBAction)accept:(id)sender {
#ifdef MEASURE_DURATION
    CFTimeInterval dtWas = CACurrentMediaTime();
#endif
    self.status = DelegateFeedbackViewStatusAccept;
    [self updateAcceptDeclineImages];
    [self updateValidityImage];
    [self reportStatus];
#ifdef MEASURE_DURATION
    CFTimeInterval dtNow = CACurrentMediaTime();
    NSLog(@"DelegateFeedbackView. Accept duration: '%@'", @(dtNow - dtWas));
#endif
}

- (IBAction)decline:(id)sender {
#ifdef MEASURE_DURATION
    CFTimeInterval dtWas = CACurrentMediaTime();
#endif
    self.status = DelegateFeedbackViewStatusDecline;
    [self updateAcceptDeclineImages];
    [self updateValidityImage];
    [self reportStatus];
#ifdef MEASURE_DURATION
    CFTimeInterval dtNow = CACurrentMediaTime();
    NSLog(@"DelegateFeedbackView. Decline duration: '%@'", @(dtNow - dtWas));
#endif
}

- (void)reportStatus {
    if (self.delegate) {
        [self.delegate delegateFeedbackView:self status:self.status];
    }
}

- (void)updateAcceptDeclineImages {
    self.acceptImageView.highlighted =
        (self.status == DelegateFeedbackViewStatusAccept) ? YES : NO;
    self.declineImageView.highlighted =
        (self.status == DelegateFeedbackViewStatusDecline) ? YES : NO;
}

- (void)updateAcceptTitle {
    if (self.acceptLabel) {
        self.acceptLabel.text = self.acceptTitle;
    }
}

- (void)updateDeclineTitle {
    if (self.declineLabel) {
        self.declineLabel.text = self.declineTitle;
    }
}

- (void)updateTitle {
    if (self.titleLabel) {
        self.titleLabel.text = self.title;
    }
}

- (void)updateValidityImage {
    self.validityImageView.highlighted =
        (self.status != DelegateFeedbackViewStatusNone) ? YES : NO;
}

@end

