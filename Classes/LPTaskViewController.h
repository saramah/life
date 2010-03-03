//
//  LPTaskController.h
//  life
//
//  Created by Sarah Barbour on 3/2/10.
//  Copyright 2010 Primer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LPTask.h"


@interface LPTaskViewController : UIViewController {

	LPTask *task;
	
}

- (id)initWithTask:(LPTask *)specificTask;

@end
