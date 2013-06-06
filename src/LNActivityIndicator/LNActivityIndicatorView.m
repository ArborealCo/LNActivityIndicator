/*
 * This file is part of the LNActivityIndicator package.
 * Copyright (c) 2013 Listn, LLC <hello@listn.net>
 *
 * For the full copyright and license information, please
 * view the LICENSE file that was distributed with this
 * source code.
 */

#import "LNActivityIndicatorView.h"
#import <QuartzCore/QuartzCore.h>

@interface LNActivityIndicatorView ()
{
    UIImageView* _imageView;
}
@end

@implementation LNActivityIndicatorView
@synthesize rotationDuration;
@synthesize hidesWhenStopped;

- (id)initWithFrame:(CGRect)frame image:(UIImage*)image
{
    if (self = [super initWithFrame:frame])
    {
        _imageView = [[UIImageView alloc] initWithFrame:frame];
        _imageView.image = image;
        [self addSubview:_imageView];
        self.hidden = YES;
        self.hidesWhenStopped = YES;
    }
    return self;
}

- (void)startAnimating
{
    self.hidden = NO;
    _isAnimating = YES;
    CABasicAnimation* animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    animation.fromValue = [NSNumber numberWithFloat:0.0f];
    animation.toValue = [NSNumber numberWithFloat:2 * M_PI];
    animation.duration = rotationDuration;
    animation.repeatCount = HUGE_VAL;
    [_imageView.layer addAnimation:animation forKey:@"Rotation"];
}

- (void)stopAnimating
{
    if (self.hidesWhenStopped)
        self.hidden = YES;
    _isAnimating = NO;
    [_imageView.layer removeAnimationForKey:@"Rotation"];
}

@end
