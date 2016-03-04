//
//  EntryDetailViewController.h
//  Journal-C
//
//  Created by Diego Aguirre on 3/3/16.
//  Copyright © 2016 Diego Aguirre. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EntryController.h"

@interface EntryDetailViewController : UIViewController <UITextFieldDelegate, UITextViewDelegate>

@property (strong, nonatomic) Entry *entry;

- (void)updateWithEntry: (Entry *)entry;

@end
