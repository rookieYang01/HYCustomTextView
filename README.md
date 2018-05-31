# HYCustomTextView
## 自定义textView （继承自UITextView）

- /* 最大字符数 **/
@property (nonatomic, assign) NSUInteger     maxLength;

- /* 占位字符颜色 **/
@property (nonatomic, strong) UIColor      *placeholderColor;

- /* 占位字符 **/
@property (nonatomic, strong) NSString      *placeholder;

- /* 占位符大小 **/
@property (nonatomic, strong) UIFont        *placeholderFont;

- /* 是否允许首字符为空 默认允许 **/
@property (nonatomic, assign) BOOL          allowFirstStringEmpt;

- /* 返回去除了首位的空格的内容. **/
@property (nonatomic, readonly,copy)        NSString *formatText;

- /* 添加文本改变Block回调 **/
- (void)addTextDidChangeHandler:(HYCustomTextViewHandler)eventHandler;

- /* 添加达到最大长度Block回调 **/
- (void)addTextLengthDidMaxHandler:(HYCustomTextViewHandler)maxHandler;

- /* 添加文字高度发生改变时回调 **/
- (void)addTextViewHeightDidChangeHandler:(HYCustomTextViewHandler)changeHandler;

- /* 最小高度(最小设置需大于单行文字高度) **/
@property (nonatomic, assign) CGFloat minHeight;

- /* 是否需要自适应高度 **/
@property (nonatomic, assign) BOOL      needAutoLayout;

- /* 最大高度 **/
@property (nonatomic, assign) CGFloat maxHeight;
