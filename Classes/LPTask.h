//
//  LPTask.h
//  life
//
//  Created by Sarah Barbour on 3/2/10.
//  Copyright 2010 Primer. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface LPTask : NSObject {

	NSString *description_;
	NSString *details_;
	NSDate *deadline_;
	NSMutableArray *tags_;
	BOOL completed_;
}

@property (nonatomic, retain) NSString* description;
@property (nonatomic, retain) NSString* details;
@property (nonatomic, retain) NSDate* deadline;
@property (nonatomic, retain) NSMutableArray* tags;
@property (nonatomic) BOOL completed;

- (id)initWithDescription:(NSString*)desc andDetails:(NSString*)det andDeadline:(NSDate*)date andTags:(NSMutableArray*)tagList;

@end
