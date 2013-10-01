//
//  Created by azu on 12/05/22.
//


#import <Foundation/Foundation.h>

@protocol UITextFieldWithDatePickerProtocol;

@interface UITextFieldWithDatePicker : UITextField {
}

@property(nonatomic, weak) NSObject <UITextFieldDelegate, UITextFieldWithDatePickerProtocol> *myDelegate;
@property(nonatomic, strong) UIDatePicker *datePicker;
@property(nonatomic, strong) NSDateFormatter *dateFormatter;

- (NSDate *)date;
- (void)setDate:(NSDate *)date;

- (UIDatePickerMode)datePickerMode;
- (void)setDatePickerMode:(UIDatePickerMode)datePickerMode;

- (NSInteger)minuteInterval;
- (void)setMinuteInterval:(NSInteger)minuteInterval;

- (void)updateText;


@end