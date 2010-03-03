//
//  TaskList.m
//  life
//
//  Created by Sarah Barbour on 3/2/10.
//  Copyright 2010 Primer. All rights reserved.
//

#import "LPTaskList.h"
#import "LPTaskViewController.h"
#import "LPAddTaskController.h"

#define ADD_CELL 1

@implementation LPTaskList

@synthesize tasks = tasks_;


#pragma mark -
#pragma mark Lifecycle

/*!
    @method     initWithStyle:
    @abstract   <#(brief description)#>
    @discussion <#(comprehensive description)#>
*/
- (id)initWithStyle:(UITableViewStyle)style 
{
    // Override initWithStyle: if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
    if (self = [super initWithStyle:style]) 
	{
		self.tasks = [NSMutableArray array];
		addCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"AddCell"];
		addCell.textLabel.text = @"Add Task";
    }
    return self;
}

/*!
 @method     viewDidLoad
 @abstract   <#(brief description)#>
 @discussion <#(comprehensive description)#>
 */
- (void)viewDidLoad 
{
    [super viewDidLoad];

    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
	self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

/*!
 @method     didReceiveMemoryWarning
 @abstract   <#(brief description)#>
 @discussion <#(comprehensive description)#>
 */
- (void)didReceiveMemoryWarning 
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

/*!
 @method     viewDidUnload
 @abstract   <#(brief description)#>
 @discussion <#(comprehensive description)#>
 */
- (void)viewDidUnload 
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

/*!
 @method     dealloc
 @abstract   <#(brief description)#>
 @discussion <#(comprehensive description)#>
 */
- (void)dealloc 
{
	self.tasks = nil;
	[addCell release];
	addCell = nil;
    [super dealloc];
}


#pragma mark -
#pragma mark UITableViewDelegate
/*!
 @method     tableView:didSelectRowAtIndexPath:
 @abstract   <#(brief description)#>
 @discussion <#(comprehensive description)#>
 */
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath 
{	
	if([indexPath row] == 0)
	{
		LPAddTaskController *addController = [[LPAddTaskController alloc] init];
		[self.navigationController pushViewController:addController animated:YES];
		[addController release];
	}
	else
	{
		LPTaskViewController *tvController = [[LPTaskViewController alloc] initWithTask:[tasks_ objectAtIndex:[indexPath row] + ADD_CELL]];
		[self.navigationController pushViewController:tvController animated:YES];
		[tvController release];
	}
}


#pragma mark -
#pragma mark UITableViewDataSource

/*!
 @method     tableView:cellForRowAtIndexPath:
 @abstract   <#(brief description)#>
 @discussion <#(comprehensive description)#>
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
	if ([indexPath row] == 0)
		return addCell;
    
    static NSString *CellIdentifier = @"TaskCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) 
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
    
    // Set up the cell...
	LPTask *task = [tasks_ objectAtIndex:[indexPath row] + ADD_CELL];
	
	cell.textLabel.text = task.description;
	cell.detailTextLabel.text = [task.deadline description];
    
    return cell;
}

/*!
 @method     tableView:numberOfRowsInSection:
 @abstract   <#(brief description)#>
 @discussion <#(comprehensive description)#>
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
    return [tasks_ count] + ADD_CELL;
}

/*!
 @method     
 @abstract   <#(brief description)#>
 @discussion <#(comprehensive description)#>
 */
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
    return 1;
}


/*!
 @method     tableView:moveRowAtIndexPath:toIndexPath:
 @abstract   <#(brief description)#>
 @discussion <#(comprehensive description)#>
 */
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath 
{
	
}

/*!
 @method     tableView:canMoveRowAtIndexPath:
 @abstract   <#(brief description)#>
 @discussion <#(comprehensive description)#>
 */
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath 
{
    // Return NO if you do not want the item to be re-orderable.
	if ([indexPath row] == 0)
		return NO;
    return YES;
}


#pragma mark -
#pragma mark Event Handlers

/*!
 @method     
 @abstract   <#(brief description)#>
 @discussion <#(comprehensive description)#>
 */
- (void)addTask:(NSString *)subject withDetails:(NSString*)details withDeadline:(NSDate *)deadline andTags:(NSMutableArray *)tags
{
	LPTask *task = [[LPTask alloc] initWithDescription:subject andDetails:details andDeadline:deadline andTags:tags];

	[self.tasks addObject:task];
	
	[task release];
}

/*!
 @method     
 @abstract   <#(brief description)#>
 @discussion <#(comprehensive description)#>
 */
- (void)completeTask:(LPTask *)task
{
	
}

@end

