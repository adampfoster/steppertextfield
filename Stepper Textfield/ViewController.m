//
//  ViewController.m
//  Stepper Textfield
//
//  Created by Adam Foster on 14/09/13.
//  Copyright (c) 2013 Adam Foster. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIStepper *testStepper;
@property (strong, nonatomic) IBOutlet UITextField *outputTextField;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.testStepper.wraps = NO;
    self.testStepper.autorepeat = NO;
    
    NSUInteger value = self.testStepper.value;
    self.outputTextField.text = [NSString stringWithFormat:@"%02d", value];
    
    self.testStepper.maximumValue = 100;
    self.testStepper.minimumValue = -100;
    self.testStepper.stepValue = 10;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)wotifStepperValueChanged:(UIStepper *)sender {
    NSUInteger value = sender.value;
    self.outputTextField.text = [NSString stringWithFormat: @"%02d", value];
}

// Experimenting with syncing text field value to stepper and vice versa

//- (IBAction)outputTextFieldValueChanged:(UITextField *)sender {
//    NSUInteger value = sender.value;
//    self.outputLabel.text = [NSString stringWithFormat: @"%02d", value];
//}

//- (void) textFieldDidChange:(id)sender {
//    UITextField *textField = (UITextField *)sender;
//    self.testStepper.stepValue = [textField.text doubleValue];
//}


@end
