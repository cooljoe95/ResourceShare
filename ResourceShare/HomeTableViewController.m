//
//  HomeTableViewController.m
//  ResourceShare
//
//  Created by Joseph Katz on 9/13/14.
//  Copyright (c) 2014 Mysfits. All rights reserved.
//

#import "HomeTableViewController.h"
#import "ProductListTableViewController.h"

@interface HomeTableViewController ()
@property (nonatomic,strong) NSArray *data;
@property(retain) NSIndexPath* lastIndexPath;

@end

@implementation HomeTableViewController

NSMutableIndexSet *expandedSections;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:99/255.0 green:80/255.0 blue:163/255.0 alpha:1.0];
    self.navigationController.navigationBar.translucent = NO;
    
    if (!expandedSections)
    {
        expandedSections = [[NSMutableIndexSet alloc] init];
    }


    

}


- (BOOL)tableView:(UITableView *)tableView canCollapseSection:(NSInteger)section
{
    // if (section>0) return YES;
    
    return YES;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if ([self tableView:tableView canCollapseSection:section])
    {
        if ([expandedSections containsIndex:section])
        {
            return 4; // return rows when expanded
        }
        
        return 1; // only top row showing
    }
    
    // Return the number of rows in the section.
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] ;
    }
    
    // Configure the cell...
    
    if ([self tableView:tableView canCollapseSection:indexPath.section])
    {
        if (!indexPath.row)
        /*    self.data = @[@"Computer Equipment",@"Heavy Equipment",@"Labor",@"Office",@"Vehicles"];
*/
        {
            // first row
            if (indexPath.section == 0) {
                cell.textLabel.text = @"Computer Equipment";
                cell.textLabel.textColor =[UIColor colorWithRed:99/255.0 green:80/255.0 blue:163/255.0 alpha:1.0];

            }
            if (indexPath.section ==1) {
                cell.textLabel.text = @"Heavy Equipment";
                cell.textLabel.textColor =[UIColor colorWithRed:99/255.0 green:80/255.0 blue:163/255.0 alpha:1.0];
            }
            if (indexPath.section == 2) {
                cell.textLabel.text = @"Labor";
                cell.textLabel.textColor =[UIColor colorWithRed:99/255.0 green:80/255.0 blue:163/255.0 alpha:1.0];
            }
            if (indexPath.section ==3) {
                cell.textLabel.text=@"Office";
                cell.textLabel.textColor =[UIColor colorWithRed:99/255.0 green:80/255.0 blue:163/255.0 alpha:1.0];
            }
            if (indexPath.section == 4) {
                cell.textLabel.text = @"Vehicles";
                cell.textLabel.textColor =[UIColor colorWithRed:99/255.0 green:80/255.0 blue:163/255.0 alpha:1.0];
            }
           // cell.textLabel.text = @"Expandable"; // only top row showing
            
            if ([expandedSections containsIndex:indexPath.section])
            {
                
                UIImageView *imView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"UITableContract"]];
                cell.accessoryView = imView;
            }
            else
            {
                
                UIImageView *imView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"UITableExpand"]];
                cell.accessoryView = imView;
            }
        }
        else
        {
            // all other rows
            if (indexPath.section == 0) {
                if (indexPath.row ==1)  {
                    cell.textLabel.text = @"       A/V";
                    cell.textLabel.textColor =[UIColor colorWithRed:174/255.0 green:174/255.0 blue:174/255.0 alpha:1.0];

                }
                
                if(indexPath.row == 2){
                    cell.textLabel.text = @"       Printer";
                    cell.textLabel.textColor =[UIColor colorWithRed:174/255.0 green:174/255.0 blue:174/255.0 alpha:1.0];
                }
                
                if(indexPath.row == 3){
                    cell.textLabel.text = @"       WiFi";
                    cell.textLabel.textColor =[UIColor colorWithRed:174/255.0 green:174/255.0 blue:174/255.0 alpha:1.0];
                }
            }else if (indexPath.section == 1) {
                
                if (indexPath.row ==1)  {
                    cell.textLabel.text = @"       Bulldozer";
                    cell.textLabel.textColor =[UIColor colorWithRed:174/255.0 green:174/255.0 blue:174/255.0 alpha:1.0];
                }
                if(indexPath.row == 2){
                    cell.textLabel.text = @"       Crane";
                    cell.textLabel.textColor =[UIColor colorWithRed:174/255.0 green:174/255.0 blue:174/255.0 alpha:1.0];
                }
                
                if(indexPath.row == 3){
                    cell.textLabel.text = @"       Forklift";
                    cell.textLabel.textColor =[UIColor colorWithRed:174/255.0 green:174/255.0 blue:174/255.0 alpha:1.0];
                }
                
            }else if (indexPath.section == 2) {
                
                if (indexPath.row ==1)  {
                    cell.textLabel.text = @"       Tech/IT";
                    cell.textLabel.textColor =[UIColor colorWithRed:174/255.0 green:174/255.0 blue:174/255.0 alpha:1.0];
                }
                if(indexPath.row == 2){
                    cell.textLabel.text = @"       Financial";
                    cell.textLabel.textColor =[UIColor colorWithRed:174/255.0 green:174/255.0 blue:174/255.0 alpha:1.0];
                }
                
                if(indexPath.row == 3){
                    cell.textLabel.text = @"       Creative";
                    cell.textLabel.textColor =[UIColor colorWithRed:174/255.0 green:174/255.0 blue:174/255.0 alpha:1.0];
                }
                
            }else if (indexPath.section ==3){
                
                if (indexPath.row ==1)  {
                    cell.textLabel.text = @"       Office Space";
                    cell.textLabel.textColor =[UIColor colorWithRed:174/255.0 green:174/255.0 blue:174/255.0 alpha:1.0];
                }
                if(indexPath.row == 2){
                    cell.textLabel.text = @"       Furniture";
                    cell.textLabel.textColor =[UIColor colorWithRed:174/255.0 green:174/255.0 blue:174/255.0 alpha:1.0];
                }
                
                if(indexPath.row == 3){
                    cell.textLabel.text = @"       Computer";
                    cell.textLabel.textColor =[UIColor colorWithRed:174/255.0 green:174/255.0 blue:174/255.0 alpha:1.0];
                }
            }
            else if (indexPath.section ==4){
                
                if (indexPath.row ==1)  {
                    cell.textLabel.text = @"       Truck";
                    cell.textLabel.textColor =[UIColor colorWithRed:174/255.0 green:174/255.0 blue:174/255.0 alpha:1.0];
                }
                if(indexPath.row == 2){
                    cell.textLabel.text = @"       Minivan";
                    cell.textLabel.textColor =[UIColor colorWithRed:174/255.0 green:174/255.0 blue:174/255.0 alpha:1.0];
                }
                
                if(indexPath.row == 3){
                    cell.textLabel.text = @"       Boat";
                    cell.textLabel.textColor =[UIColor colorWithRed:174/255.0 green:174/255.0 blue:174/255.0 alpha:1.0];
                }
                
            }
            
            cell.accessoryView = nil;
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
    }
    else
    {
        cell.accessoryView = nil;
        cell.textLabel.text = @"Normal Cell";
        
    }

    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([self tableView:tableView canCollapseSection:indexPath.section])
    {
        if (!indexPath.row)
        {
            // only first row toggles exapand/collapse
            [tableView deselectRowAtIndexPath:indexPath animated:YES];
            
            NSInteger section = indexPath.section;
            BOOL currentlyExpanded = [expandedSections containsIndex:section];
            NSInteger rows;
            
            
            NSMutableArray *tmpArray = [NSMutableArray array];
            
            if (currentlyExpanded)
            {
                rows = [self tableView:tableView numberOfRowsInSection:section];
                [expandedSections removeIndex:section];
                
            }
            else
            {
                [expandedSections addIndex:section];
                rows = [self tableView:tableView numberOfRowsInSection:section];
            }
            
            
            for (int i=1; i<rows; i++)
            {
                NSIndexPath *tmpIndexPath = [NSIndexPath indexPathForRow:i
                                                               inSection:section];
                [tmpArray addObject:tmpIndexPath];
            }
            
            UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
            
            if (currentlyExpanded)
            {
                [tableView deleteRowsAtIndexPaths:tmpArray
                                 withRowAnimation:UITableViewRowAnimationTop];
                
                UIImageView *imView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"UITableExpand"]];
                cell.accessoryView = imView;
            }
            else
            {
                [tableView insertRowsAtIndexPaths:tmpArray
                                 withRowAnimation:UITableViewRowAnimationTop];
                
                UIImageView *imView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"UITableContract"]];
                cell.accessoryView = imView;
            }
        }
    }
        
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [searchBar resignFirstResponder]; //move the keyboard out of the way
    //Code....
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
