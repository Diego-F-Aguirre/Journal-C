//
//  EntryDetailViewController.m
//  Journal-C
//
//  Created by Diego Aguirre on 3/3/16.
//  Copyright © 2016 Diego Aguirre. All rights reserved.
//

#import "EntryDetailViewController.h"

@interface EntryDetailViewController ()

@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

@property (strong, nonatomic) Entry *entry;

@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleTextField.delegate = self;
    self.bodyTextView.delegate = self;
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    return YES;
}

//- (void)textViewDidBeginEditing:(UITextView *)textView {
//    
//    self.bodyTextView = textView;
//}
//
//- (BOOL)textViewShouldEndEditing:(UITextView *)textView {
//    
//    self.bodyTextView = textView;
//    
//    [self.bodyTextView resignFirstResponder];
//    
//    return YES;
//}


- (IBAction)clearButtonPressed:(id)sender {
    
    self.titleTextField.text = @"";
    self.bodyTextView.text = @"";
}


- (IBAction)saveButtonPressed:(id)sender {

    
    if (self.entry) {
        self.entry.title = self.titleTextField.text;
        self.entry.bodyText = self.bodyTextView.text;
        self.entry.timestamp = [NSDate date];
    } else {
        
        Entry *entry = [[Entry alloc] initWithTitle:self.titleTextField.text bodyText:self.bodyTextView.text timestamp:[NSDate date]];
        
        [[EntryController sharedInstance] addEntry: entry];
    }

    [self.navigationController popViewControllerAnimated:true];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
