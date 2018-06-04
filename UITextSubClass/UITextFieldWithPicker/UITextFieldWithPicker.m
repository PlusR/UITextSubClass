//
//  Created by azu on 12/07/06.
//


#import "UITextFieldWithPicker.h"
#import "UITextFieldWithPickerProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@implementation UITextFieldWithPicker

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *) pickerView {
    // Components is single
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *) pickerView numberOfRowsInComponent:(NSInteger) component; {
    return [self.dataSource count];
}

- (NSString * _Nullable)pickerView:(UIPickerView *) picker titleForRow:(NSInteger) row forComponent:(NSInteger) component {
    return [self.dataSource objectAtIndex:(NSUInteger)row];
}

- (UIView * _Nullable)inputView {
    return self.pickerView;
}

- (UIPickerView *)pickerView {
    if (_pickerView == nil) {
        _pickerView = [[UIPickerView alloc] init];
        [_pickerView setFrame:[self pickerFrame]];
        [(UIPickerView *)_pickerView setDelegate:self];
        [(UIPickerView *)_pickerView setShowsSelectionIndicator:YES];
    }
    return _pickerView;
}

- (NSString *)selectedValue {
    NSInteger selected = [self.pickerView selectedRowInComponent:0];
    return [self.dataSource objectAtIndex:(NSUInteger)selected];
}

- (BOOL)hasValue {
    return [self selectedValue] != nil;
}

- (NSInteger)selectedIndex {
    return [self.pickerView selectedRowInComponent:0];
}

- (void)setSelectedIndex:(NSInteger)index {
    [self.pickerView selectRow:index inComponent:0 animated:NO];
    self.text = [self selectedValue];
}

@end

NS_ASSUME_NONNULL_END
