LNActivityIndicator
===================

A simple QuartzCore-based activity indicator that rotates an image while some activity is being performed.

Dependencies
============

The animation depends on the QuartzCore framework, so be sure to add it to your project or you'll get a linker error when you build.

Usage
=====
1. Create an instance of LNActivityIndicatorView and initialize it with a frame and an image.
2. Add the instance as a subview of the view you'd like the activity indicator to be displayed in.
3. Set the rotationDuration property to the desired value.
4. Optionally set hidesWhenStopped to NO if you'd like the activity indicator to remain visible when stopped.
5. Call the startAnimating method to start animating your image.
6. Call the stopAnimating method to stop animating your image.

See the included sample for details.
