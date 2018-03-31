//
//  ViewController.m
//  Assignment2
//
//  Created by Jean Jeon on 2/21/18.
//  Copyright © 2018 Jean Jeon. All rights reserved.
//

#import "ViewController.h"
#import "Item.h"
#import "customViewController.h"
#import "statsViewController.h"

@interface ViewController (){
    NSString *btn;
    NSMutableArray *numHand;
}

@property (weak, nonatomic) IBOutlet UITextField *product;
@property (weak, nonatomic) IBOutlet UITextField *desc;
@property (weak, nonatomic) IBOutlet UITextField *cost;
@property (strong, nonatomic) IBOutlet UIButton *backBtn;
@property (strong, nonatomic) IBOutlet UIButton *nextBtn;

@end

@implementation ViewController

@synthesize strProd, strImg, strCost, strDesc, pickerNum, pickerView, img, textProd, textCost, textDesc, Items, itemIndex, slider, sliderVal, addedItems;

- (IBAction)buttonPressed:(id)sender {
    btn = [sender titleForState:UIControlStateNormal];
}

- (IBAction)actionSlider:(id)sender {

    slider.maximumValue = Items.count-1;
    sliderVal = lroundf(slider.value);
    
    if(sliderVal != 0){
        [self.backBtn setBackgroundColor:[UIColor colorWithRed:206 green:250 blue:110 alpha:1]];
    }
    else{
        [self.backBtn setBackgroundColor:[UIColor grayColor]];
    }
    if(sliderVal == slider.maximumValue){
        [self.nextBtn setBackgroundColor:[UIColor grayColor]];
    }
    else{
        [self.nextBtn setBackgroundColor:[UIColor colorWithRed:206 green:250 blue:110 alpha:1]];
    }
    
    itemIndex = sliderVal;
    Item *ship = [[Item alloc]init];
    
    ship = [Items objectAtIndex:itemIndex];
    
    strProd = [ship getProd];
    [textProd setText:strProd];
    
    strDesc = [ship getDesc];
    [textDesc setText:strDesc];
    
    strCost = [ship getCost];
    [textCost setText:strCost];
    
    strImg = [ship getImg];
    UIImage *image = [UIImage imageNamed: strImg];
    [img setImage:image];
    
    pickerNum = [ship getNum_on_Hand];
    [self.pickerView selectRow:pickerNum inComponent:0 animated:YES];
}

- (IBAction)backButton:(id)sender {
    
    if(itemIndex != 0){
        [sender setBackgroundColor:[UIColor colorWithRed:206 green:250 blue:110 alpha:1]];
        itemIndex -=1;
        Item *ship = [[Item alloc]init];
        
        ship = [Items objectAtIndex:itemIndex];
        
        strProd = [ship getProd];
        [textProd setText:strProd];
        
        strDesc = [ship getDesc];
        [textDesc setText:strDesc];
        
        strCost = [ship getCost];
        [textCost setText:strCost];
        
        strImg = [ship getImg];
        UIImage *image = [UIImage imageNamed: strImg];
        [img setImage:image];
        
        pickerNum = [ship getNum_on_Hand];
        [self.pickerView selectRow:pickerNum inComponent:0 animated:YES];
    }
    
    else{
        [sender setBackgroundColor:[UIColor grayColor]];
    }
}

- (IBAction)fwdButton:(id)sender {
    
    if(itemIndex != Items.count-1){
        [sender setBackgroundColor:[UIColor colorWithRed:206 green:250 blue:110 alpha:1]];
        
        itemIndex +=1;
        Item *ship = [[Item alloc]init];
        
        ship = [Items objectAtIndex:itemIndex];
        
        strProd = [ship getProd];
        [textProd setText:strProd];
        
        strDesc = [ship getDesc];
        [textDesc setText:strDesc];
        
        strCost = [ship getCost];
        [textCost setText:strCost];
        
        pickerNum = [ship getNum_on_Hand];
        
        strImg = [ship getImg];
        UIImage *image = [UIImage imageNamed: strImg];
        [img setImage:image];
        
        [self.pickerView selectRow:pickerNum inComponent:0 animated:YES];
    }
    else{
        [sender setBackgroundColor:[UIColor grayColor]];
    }

}

- (void)viewDidLoad {

    [self.backBtn setBackgroundColor:[UIColor colorWithRed:206 green:250 blue:110 alpha:1]];
    [self.nextBtn setBackgroundColor:[UIColor colorWithRed:206 green:250 blue:110 alpha:1]];
    
    [textProd setText:strProd];
    [textDesc setText:strDesc];
    [textCost setText:strCost];
    UIImage *image = [UIImage imageNamed: strImg];
    [img setImage:image];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    numHand = [NSMutableArray array];
    
    for (int i = 0; i < 101; i++)
        [numHand addObject:[NSString stringWithFormat:@"%i",i]];
    
    self.pickerView.dataSource = self;
    self.pickerView.delegate = self;
    [self.pickerView selectRow:pickerNum inComponent:0 animated:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [numHand count];
}

- (NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [numHand objectAtIndex:row];
}

- (void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    customViewController *cvc;
    statsViewController *svc;

    if([btn isEqualToString:@"ADD RECORD"]){
        cvc = [segue destinationViewController];
        cvc.Items = Items;
        cvc.numAdded = addedItems;
    }
    if([btn isEqualToString:@"STATS"]){
        svc = [segue destinationViewController];
        svc.intCurrentNum = Items.count;
        svc.intNumAdded = addedItems;
        svc.Items = Items;
    }
}
@end
