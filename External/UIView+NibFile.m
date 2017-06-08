
#import "UIView+NibFile.h"

@implementation UIView (NibFile)

+ (instancetype)loadFromNib {
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:self options:nil] firstObject];
}

@end

