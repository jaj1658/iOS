//
//  ViewController.h
//  Assignment2
//
//  Created by Jean Jeon on 2/21/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) NSString *strProd;
@property (strong, nonatomic) NSString *strDesc;
@property (strong, nonatomic) NSString *strCost;
@property (strong, nonatomic) NSString *strImg;
@property (nonatomic) int pickerNum;
@property (nonatomic) int sliderVal;
@property (nonatomic) int addedItems;

@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
@property (strong, nonatomic) IBOutlet UIImageView *img;
@property (strong, nonatomic) IBOutlet UITextField *textProd;
@property (strong, nonatomic) IBOutlet UITextField *textDesc;
@property (strong, nonatomic) IBOutlet UITextField *textCost;
@property (strong, nonatomic) NSMutableArray *Items;

@property (nonatomic) int itemIndex;

@property (strong, nonatomic) IBOutlet UISlider *slider;
- (IBAction)actionSlider:(id)sender;

@end

