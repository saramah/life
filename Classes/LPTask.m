//
//  LPTask.m
//  life
//
//  Created by Sarah Barbour on 3/2/10.
//  Copyright 2010 Primer. All rights reserved.
//

#import "LPTask.h"


@implementation LPTask

@synthesize description = description_;
@synthesize details = details_;
@synthesize deadline = deadline_;
@synthesize tags = tags_;
@synthesize completed = completed_;

- (id)initWithDescription:(NSString*)desc andDetails:(NSString*)det andDeadline:(NSDate*)date andTags:(NSMutableArray*)tagList
{
	if(self = [super init])
	{
		self.description = desc;
		self.details = det;
		self.deadline = date;
		self.tags = tagList;
		self.completed = NO;
	}
	return self;
}

- (void)dealloc
{
	self.description = nil;
	self.details = nil;
	self.deadline = nil;
	self.tags = nil;
	[super dealloc];
}

@end
