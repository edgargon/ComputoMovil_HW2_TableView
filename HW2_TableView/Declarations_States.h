//
//  Declarations_States.h
//  HW2_TableView
//
//  Created by Edgar González on 05/10/14.
//  Copyright (c) 2014 Edgar González. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Declarations_States : NSObject

extern  NSMutableArray  *StateNames;
extern NSMutableArray   *StateImg;

extern  NSString        *strSelectedName;
extern  NSString        *strSelectedImg;

extern NSInteger StateSelected;
extern NSMutableArray  *CityImg;


extern NSMutableArray *NmbAmigo_escuela;
extern NSMutableArray *NmbAmigo_trabajo;

extern NSMutableArray *ApellidoAmigo_escuela;
extern NSMutableArray *ApellidoAmigo_trabajo;

extern NSMutableArray *EdadAmigo_escuela;
extern NSMutableArray *EdadAmigo_trabajo;

extern NSMutableArray *ImgAmigo_escuela;
extern NSMutableArray *ImgAmigo_trabajo;

@end
