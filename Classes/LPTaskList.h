//
//  TaskList.h
//  life
//
//  Created by Sarah Barbour on 3/2/10.
//  Copyright 2010 Primer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LPTask.h"


@interface LPTaskList : UITableViewController <UITableViewDelegate,
											   UITableViewDataSource>
{
	NSMutableArray *tasks_;
	
	UITableViewCell *addCell;
}

@property (nonatomic, retain) NSMutableArray *tasks;

- (void)addTask:(NSString *)subject withDetails:(NSString *)details withDeadline:(NSDate *)deadline andTags:(NSMutableArray *)tags;
- (void)completeTask:(LPTask *)task;

@end
