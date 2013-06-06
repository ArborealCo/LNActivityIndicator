/*
 * This file is part of the LNActivityIndicator package.
 * Copyright (c) 2013 Listn, LLC <hello@listn.net>
 *
 * For the full copyright and license information, please
 * view the LICENSE file that was distributed with this
 * source code.
 */

#import "ViewController.h"
#import "LNActivityIndicatorView.h"

@interface ViewController ()
{
    LNActivityIndicatorView* activityIndicator;
}

@end

@implementation ViewController

@synthesize hideSwitch;

- (void)viewDidLoad
{
    [super viewDidLoad];

    activityIndicator = [[LNActivityIndicatorView alloc] initWithFrame:CGRectMake(0, 0, 25, 25)
                                                                 image:[UIImage imageNamed:@"19-gear"]];
    activityIndicator.center = self.view.center;
    activityIndicator.rotationDuration = 1.0f;
    [self.view addSubview:activityIndicator];

    [activityIndicator startAnimating];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(id)sender
{
    if (activityIndicator.isAnimating)
    {
        [activityIndicator stopAnimating];
        [sender setTitle:@"Start Animating" forState:UIControlStateNormal];
    }
    else
    {
        [activityIndicator startAnimating];
        [sender setTitle:@"Stop Animating" forState:UIControlStateNormal];
    }
}

- (IBAction)valueChanged:(id)sender
{
    if ([sender isOn])
        activityIndicator.hidesWhenStopped = YES;
    else
        activityIndicator.hidesWhenStopped = NO;
    
}

@end
