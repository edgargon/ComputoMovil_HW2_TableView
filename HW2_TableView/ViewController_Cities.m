//
//  ViewController_Cities.m
//  HW2_TableView
//
//  Created by Edgar González on 05/10/14.
//  Copyright (c) 2014 Edgar González. All rights reserved.
//

#import "ViewController_Cities.h"
#import "Declarations_States.h"
#import "cell_Cities.h"


@interface ViewController_Cities ()
@property (strong, nonatomic) IBOutlet UILabel *lblCityName;

@end

@implementation ViewController_Cities

NSMutableArray *CityNames;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.imgEscudo.image     = [UIImage imageNamed:strSelectedImg];
    
    CityNames = [NSMutableArray arrayWithObjects:
                 @"Palenque",       @"Tapachula",        @"Tuxtla",
                 @"Colima",         @"Manzanillo",       @"Tecoman",
                 @"Guadalajara",    @"Tonala",           @"Zapopan",
                 @"Morelia",        @"Patzcuaro",        @"Uruapan",
                 @"Ixtlán del río", @"San Blass",        @"Tepic",
                 @"Culiacán",       @"Mazatlán",         @"Mochis",
                 @"Hermosillo",     @"Obregon",          @"Navojoa",
                 @"Guadalupe",      @"Víctor Rosales",   @"Zacatecas",
                 nil];
    CityImg = [NSMutableArray arrayWithObjects:
                 @"Chiapas_Palenque.jpg",    @"Chiapas_Tapachula.jpg",    @"Chiapas_Tuxtla.jpg",
                 @"Colima_Colima.jpg",       @"Colima_Manzanillo.jpg",    @"Colima_Tecoman.jpg",
                 @"Jalisco_Gdl.jpg",         @"Jalisco_Tonala.jpg",       @"Jalisco_Zapopan.jpg",
                 @"Michoacan_Morelia.jpg",   @"Michoacan_Patzcuaro.jpg",  @"Michoacan_Uruapan.jpg",
                 @"Nayarit_Ixtlan.jpg",      @"Nayarit_SanBlas.jpg",      @"Nayarit_Tepic.jpg",
                 @"Sinaloa_Culiacan.jpg",    @"Sinaloa_Mazatlan.jpg",     @"Sinaloa_Mochis.jpg",
                 @"Sonora_Hermosillo.jpg",   @"Sonora_Navojoa.jpg",       @"Sonora_Obregon.jpg",
                 @"Zacatecas_Gpe.jpg",       @"Zacatecas_Victor.jpeg",    @"Zacatecas_Zacatecas.jpg",
                 nil];
    
    
    self.navigationItem.title = strSelectedName;
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
    return 3;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"cell_Cities";
    
    cell_Cities *cell = (cell_Cities *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[cell_Cities alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.lblCities.text      = CityNames[indexPath.row + (StateSelected * 3)];
    cell.imgCellCities.image = [UIImage imageNamed:CityImg[indexPath.row + (StateSelected * 3) ]];
    
    return cell;
}

//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
 
    self.lblCityName.text = CityNames[indexPath.row + (StateSelected * 3)];
    self.imgEscudo.image  = [UIImage imageNamed:CityImg[indexPath.row + (StateSelected * 3) ]];

    
    /* NSString * storyboardName = @"Main";
     UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
     UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"ViewController_Cities"];
     [self presentViewController:vc animated:YES completion:nil];*/
    
}


@end
