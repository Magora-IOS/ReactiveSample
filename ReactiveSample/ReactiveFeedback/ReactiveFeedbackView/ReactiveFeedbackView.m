
#import "ReactiveFeedbackView.h"

#import <ReactiveObjC/ReactiveObjC.h>

#define MEASURE_DURATION

@interface ReactiveFeedbackView ()

@property (nonatomic, assign, readwrite) ReactiveFeedbackViewStatus status;

@property (nonatomic, strong) IBOutlet UIImageView *validityImageView;
@property (nonatomic, strong) IBOutlet UILabel *titleLabel;

@property (nonatomic, strong) IBOutlet UIImageView *acceptImageView;
@property (nonatomic, strong) IBOutlet UILabel *acceptLabel;
@property (nonatomic, strong) IBOutlet UIButton *acceptButton;

@property (nonatomic, strong) IBOutlet UIImageView *declineImageView;
@property (nonatomic, strong) IBOutlet UILabel *declineLabel;
@property (nonatomic, strong) IBOutlet UIButton *declineButton;

@end

@implementation ReactiveFeedbackView

#pragma mark - PUBLIC

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupReactiveFeedbackView];
}

#pragma mark - PRIVATE

- (void)setupReactiveFeedbackView {
    self.status = ReactiveFeedbackViewStatusNone;

    [self setupAccept];
    [self setupDecline];
    [self setupTitle];

    [self setupAcceptDeclineImages];
    [self setupValidityImage];
}

- (void)setupAccept {
    RAC(self.acceptLabel, text) = RACObserve(self, acceptTitle);

    @weakify(self);
    [[self.acceptButton
        rac_signalForControlEvents:UIControlEventTouchUpInside]
        subscribeNext:^(id x) {
#ifdef MEASURE_DURATION
            CFTimeInterval dtWas = CACurrentMediaTime();
#endif
            @strongify(self);
            self.status = ReactiveFeedbackViewStatusAccept;
#ifdef MEASURE_DURATION
            CFTimeInterval dtNow = CACurrentMediaTime();
            NSLog(@"ReactiveFeedbackView. Accept duration: '%@'", @(dtNow - dtWas));
#endif
        }];
}

- (void)setupAcceptDeclineImages {
    @weakify(self);
    [RACObserve(self, status)
        subscribeNext:^(id x) {
            @strongify(self);
            self.acceptImageView.highlighted =
                (self.status == ReactiveFeedbackViewStatusAccept) ? YES : NO;
            self.declineImageView.highlighted =
                (self.status == ReactiveFeedbackViewStatusDecline) ? YES : NO;
        }];
}

- (void)setupDecline {
    RAC(self.declineLabel, text) = RACObserve(self, declineTitle);

    @weakify(self);
    [[self.declineButton
        rac_signalForControlEvents:UIControlEventTouchUpInside]
        subscribeNext:^(id x) {
#ifdef MEASURE_DURATION
            CFTimeInterval dtWas = CACurrentMediaTime();
#endif
            @strongify(self);
            self.status = ReactiveFeedbackViewStatusDecline;
#ifdef MEASURE_DURATION
            CFTimeInterval dtNow = CACurrentMediaTime();
            NSLog(@"ReactiveFeedbackView. Decline duration: '%@'", @(dtNow - dtWas));
#endif
        }];
}

- (void)setupTitle {
    RAC(self.titleLabel, text) = RACObserve(self, title);
}

- (void)setupValidityImage {
    @weakify(self);
    [RACObserve(self, status)
        subscribeNext:^(id x) {
            @strongify(self);
            self.validityImageView.highlighted =
                (self.status != ReactiveFeedbackViewStatusNone) ? YES : NO;
        }];
}

@end

