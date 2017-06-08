
#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) IBOutlet UIView *delegateContainerView;
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

}

@end

