//
//  CountriesListTableViewController.m
//  CountriesApp
//
//  Created by Nuvvala on 6/6/15.
//  Copyright (c) 2015 Narasimha. All rights reserved.
//

#import "CountriesListTableViewController.h"
#import "CountriesModalClass.h"
#import "CityTableViewController.h"

@interface CountriesListTableViewController ()

@end

@implementation CountriesListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CountriesModalClass *country1 = [[CountriesModalClass alloc]initWithCountryName:@"India" image:[UIImage imageNamed:@""] popularCitirs:@[@"Hyderabad",@"Banglore",@"Chennai"] touristPlaces:@[@"Beach",@"Charminar"] imageView:[UIImage imageNamed:@"Charminar.png"]];
    
    CountriesModalClass *country2 = [[CountriesModalClass alloc]initWithCountryName:@"UnitedStats" image:[UIImage imageNamed:@""] popularCitirs:@[@"Hyderabad",@"Banglore",@"Chennai"] touristPlaces:@[@"Beach",@"Charminar"] imageView:[UIImage imageNamed:@"GoldenGateBridge.png"]];
    
    CountriesModalClass *country3 = [[CountriesModalClass alloc]initWithCountryName:@"Australia" image:[UIImage imageNamed:@""] popularCitirs:@[@"Hyderabad",@"Banglore",@"Chennai"] touristPlaces:@[@"Beach",@"Charminar"] imageView:[UIImage imageNamed:@"Sydney.png"]];
    
    self.array= @[country1,country2,country3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Identifier" forIndexPath:indexPath];
    if (cell == 0) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Identifier"];
    }
    
    // Configure the cell...
    
    CountriesModalClass *countries = self.array[indexPath.row];
    
   
    cell.textLabel.text = countries.countryNames;

    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
        
        [self performSegueWithIdentifier:@"cityandplaces" sender:cell];
    }}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"cityandplaces"]) {
       // NSLog(@" %@  ",[sender class]);
        UITableViewCell *cell = (UITableViewCell *)sender;
        
        NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
      //  NSLog(@" %@  ",indexPath);
        CountriesModalClass *countries = self.array[indexPath.row];
         NSLog(@" %@  ",countries);
        CityTableViewController *destinationViewController = (CityTableViewController *)segue.destinationViewController;
        
        destinationViewController.popularPlaces = countries.popularCities;
        destinationViewController.touristPlaces = countries.touristPlaces;
    }

}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
