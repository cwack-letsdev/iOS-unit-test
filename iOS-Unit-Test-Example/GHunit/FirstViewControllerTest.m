/**
 * 
 * User: cwack
 * Date: 16.10.12
 * Time: 09:53
 *
 * This code is copyright (c) 2012 let's dev. All rights reserved.
 * URL: http://www.letsdev.de
 * e-Mail: contact@letsdev.de
 */

#import <GHUnitIOS/GHUnit.h>
#import "LDViewController.h"

@interface FirstViewControllerTest : GHViewTestCase
@end


@implementation FirstViewControllerTest {

}

- (void)testTheViewController {
    LDViewController *viewController = [[LDViewController alloc] init];
    GHVerifyView(viewController.view);
}

@end