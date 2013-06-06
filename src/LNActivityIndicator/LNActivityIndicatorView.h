/*
 * This file is part of the LNActivityIndicator package.
 * Copyright (c) 2013 Listn, LLC <hello@listn.net>
 *
 * For the full copyright and license information, please
 * view the LICENSE file that was distributed with this
 * source code.
 */

#import <UIKit/UIKit.h>

@interface LNActivityIndicatorView : UIView

// The duration of a single rotation.
@property (nonatomic) float rotationDuration;
// Indicates whether the activity indicator is animating or not.
@property (readonly, nonatomic) BOOL isAnimating;
// When set to YES, causes the image to be hidden when the animation is stopped.
// Default: YES.
@property (nonatomic) BOOL hidesWhenStopped;

// Initialize a new instance with the given frame and image to be rotated.
- (id)initWithFrame:(CGRect)frame image:(UIImage*)image;
// Start the rotation animation (and show the view if hidden).
- (void)startAnimating;
// Stop the rotation animation (and hide the view if hidesWhenStopped is YES)
- (void)stopAnimating;

@end
