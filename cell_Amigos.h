//
//  cell_Amigos.h
//  HW2_TableView
//
//  Created by Edgar González on 07/10/14.
//  Copyright (c) 2014 Edgar González. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cell_Amigos : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *imgAmigo;
@property (strong, nonatomic) IBOutlet UILabel *lblNombreAmigo;
@property (strong, nonatomic) IBOutlet UILabel *lblApellidoAmigo;
@property (strong, nonatomic) IBOutlet UILabel *lblEdadAmigo;

@end
