//
//  ViewController.m
//  HW2_TableView
//
//  Created by Edgar González on 05/10/14.
//  Copyright (c) 2014 Edgar González. All rights reserved.
//

#import "TableViewController_States.h"
#import "Declarations_States.h"
#import "cell_States.h"
#import "ViewController_Cities.h"

@interface TableViewController_States ()

@end

@implementation TableViewController_States

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    StateNames = [NSMutableArray arrayWithObjects: @"Chiapas", @"Colima", @"Jalisco", @"Michoacan", @"Nayarit",@"Sinaola", @"Sonora", @"Zacatecas" ,nil];
    
    StateImg    =  [NSMutableArray arrayWithObjects: @"Chiapas_escudo.png", @"Colima_escudo.jpg", @"Jalisco_escudo.png", @"Michoacan_escudo.png", @"Nayarit_escudo.jpg", @"Sinaloa_escudo.png", @"Sonora_escudo.png", @"Zacatecas_escudo.jpg", nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**********************************************************************************************
 Table Functions
 **********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    static NSString *CellIdentifier = @"cell_States";
    
    cell_States *cell = (cell_States *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[cell_States alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.lblStateName.text      = StateNames[indexPath.row];
        
    return cell;
}

//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    strSelectedName     = [NSString stringWithFormat:@"%@", StateNames[indexPath.row]];
    strSelectedImg      = [NSString stringWithFormat:@"%@", StateImg[indexPath.row]];
    StateSelected       = indexPath.row;
    NSLog(@"strSelectedName %@", strSelectedName);
    NSLog(@"strSelectedImg %@", strSelectedImg);
    
   /* NSString * storyboardName = @"Main";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
    UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"ViewController_Cities"];
    [self presentViewController:vc animated:YES completion:nil];*/

}


@end
