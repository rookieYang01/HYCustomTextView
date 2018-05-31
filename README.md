# HYCustomTextView
## 自定义textView （继承自UITextView）实现随着文字输入可自适应文本高度，同时可限制输入的字符数以及设置占位符

- /* 最大字符数 **/

      textView.maxLength = 10;

- /* 占位字符颜色 **/

      textView.placeholderColor = [UIColor redColor];

- /* 占位字符 **/

      textView.placeholder = @"占位符";

- /* 占位符大小 **/

      textView.placeholderFont = [UIFont systemFontOfSize:15];

- /* 是否允许首字符为空 默认允许 **/

      textView.allowFirstStringEmpt = YES;

- /* 返回去除了首位的空格的内容. **/

        NSString *textViewText = textView.formatText;

- /* 添加文本改变Block回调 **/

```

      [textView addTextDidChangeHandler:^(HYCustomTextView *textView) {
            NSLog(@"文本输入改变回调");
      }];
```

- /* 添加达到最大长度Block回调 **/

```

    [textView addTextLengthDidMaxHandler:^(HYCustomTextView *textView) {
        NSLog(@"文本输入达到最大值回调");
    }];

```

- /* 添加文字高度发生改变时回调 **/

```

    [textView addTextViewHeightDidChangeHandler:^(HYCustomTextView *textView) {
        NSLog(@"高度变化回调");
    }];

```

- /* 最小高度(最小设置需大于单行文字高度) **/

        textView.minHeight = 100;

- /* 是否需要自适应高度 **/

        textView.needAutoLayout = YES;

- /* 最大高度 **/

        textView.maxHeight = 100;
