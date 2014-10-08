//
//  ViewController_Amigos.m
//  HW2_TableView
//
//  Created by Edgar González on 07/10/14.
//  Copyright (c) 2014 Edgar González. All rights reserved.
//

#import "ViewController_Amigos.h"
#import "cell_Amigos.h"

@interface ViewController_Amigos ()

@property (strong, nonatomic) IBOutlet UISegmentedControl *SegCtrl;
@property (strong, nonatomic) IBOutlet UITableView *TableView;

@end

@implementation ViewController_Amigos

NSMutableArray *NmbAmigo_escuela;
NSMutableArray *ApellidoAmigo_escuela;
NSMutableArray *EdadAmigo_escuela;
NSMutableArray *ImgAmigo_escuela;

NSMutableArray *NmbAmigo_trabajo;
NSMutableArray *ApellidoAmigo_trabajo;
NSMutableArray *EdadAmigo_trabajo;
NSMutableArray *ImgAmigo_trabajo;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    
    // Do any additional setup after loading the view.
    NmbAmigo_escuela = [NSMutableArray arrayWithObjects: @"Andres", @"Carlos", @"Javier", @"Oribe", @"Rafael",@"Raúl",nil];
    
    ApellidoAmigo_escuela =  [NSMutableArray arrayWithObjects: @"Guardado", @"Salcido", @"Hernández", @"Peralta", @"Márquez", @"Jiménez", nil];
    
    EdadAmigo_escuela = [NSMutableArray arrayWithObjects: @"28", @"34", @"26", @"30", @"34",@"35", @"23" ,nil];
    
    ImgAmigo_escuela =  [NSMutableArray arrayWithObjects: @"Andres_Guardado.jpg", @"Carlos_Salcido.png", @"Javier_Hernandez.jpg", @"Oribe_Peralta.jpg", @"Rafael_Marquez.jpg", @"raul_jimenez.jpg", nil];
    
    NmbAmigo_trabajo = [NSMutableArray arrayWithObjects: @"Andres", @"Fernando", @"Iker", @"Xavi", nil];
    
    ApellidoAmigo_trabajo =  [NSMutableArray arrayWithObjects: @"Iniesta", @"Torres", @"Casillas", @"Hernández", nil];
    
    EdadAmigo_trabajo = [NSMutableArray arrayWithObjects: @"29", @"30", @"33", @"34", nil];
    
    ImgAmigo_trabajo =  [NSMutableArray arrayWithObjects: @"Andres_Iniesta.jpg", @"Fernando_Torres.jpg", @"iker_casillas.jpg", @"Xavi_Hernandez.jpg", nil];
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
    if(self.SegCtrl.selectedSegmentIndex == 0)
    {
        return 6;
    }
    else
    {
        return 4;
    }
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 110;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"cell_Amigos";
    
    cell_Amigos *cell = (cell_Amigos *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[cell_Amigos alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    if(self.SegCtrl.selectedSegmentIndex == 0)
    {
      cell.imgAmigo.image        = [UIImage imageNamed:ImgAmigo_escuela[indexPath.row]];
      cell.lblNombreAmigo.text   = NmbAmigo_escuela[indexPath.row];
      cell.lblApellidoAmigo.text = ApellidoAmigo_escuela[indexPath.row];
      cell.lblEdadAmigo.text     = EdadAmigo_escuela[indexPath.row];
    }
    else
    {
        cell.imgAmigo.image        = [UIImage imageNamed:ImgAmigo_trabajo[indexPath.row]];
        cell.lblNombreAmigo.text   = NmbAmigo_trabajo[indexPath.row];
        cell.lblApellidoAmigo.text = ApellidoAmigo_trabajo[indexPath.row];
        cell.lblEdadAmigo.text     = EdadAmigo_trabajo[indexPath.row];
    }
    return cell;
}

//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    
}
- (IBAction)fnSgmValueChanged:(id)sender {
    [self.TableView reloadData];
}


@end
