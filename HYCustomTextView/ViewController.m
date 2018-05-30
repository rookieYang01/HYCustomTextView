//
//  ViewController.m
//  HYCustomTextView
//
//  Created by 杨泽 on 2017/5/30.
//  Copyright © 2017年 yangze. All rights reserved.
//

#import "ViewController.h"
#import "HYCustomTextView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 达到最大限制时提示的Label
    UILabel *noticeLabel = [[UILabel alloc] init];
    noticeLabel.font = [UIFont systemFontOfSize:14.f];
    noticeLabel.textColor = UIColor.redColor;
    [self.view addSubview:noticeLabel];
    
    // FSTextView
    HYCustomTextView *textView = [[HYCustomTextView alloc] initWithFrame:CGRectMake(15, 100, self.view.frame.size.width - 30, 30)];
    textView.needLayoutHeight = YES;
    textView.maxHeight = 100;
    textView.layer.borderColor = [UIColor blackColor].CGColor;
    textView.layer.borderWidth = 1.f;
    textView.placeholder = @"Placeholder";
    [self.view addSubview:textView];
    // 限制输入最大字符数.
//    textView.maxLength = 10;
    // 弱化引用, 以免造成内存泄露.
    __weak __typeof(&*noticeLabel)weakNoticeLabel = noticeLabel;
    // 添加输入改变Block回调.
    [textView addTextDidChangeHandler:^(HYCustomTextView *textView) {
        (textView.text.length < textView.maxLength) ? weakNoticeLabel.text = @"":NULL;
    }];
    // 添加到达最大限制Block回调.
    [textView addTextLengthDidMaxHandler:^(HYCustomTextView *textView) {
        weakNoticeLabel.text = [NSString stringWithFormat:@"最多限制输入%zi个字符", textView.maxLength];
    }];

    [textView addTextViewHeightDidChangeHandler:^(HYCustomTextView *textView) {
        NSLog(@"高度变化");
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    [self.view endEditing:YES];
}


@end
