/*
 * This file is part of the LNActivityIndicator package.
 * Copyright (c) 2013 Listn, LLC <hello@listn.net>
 *
 * For the full copyright and license information, please
 * view the LICENSE file that was distributed with this
 * source code.
 */

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) IBOutlet UISwitch* hideSwitch;

- (IBAction)buttonTapped:(id)sender;

@end
