# DrawRoundView

用 UIBezierPath绘制简单不规则图形

## Usage

```objective-c

//初始化
_drawView = [[DrawRoundView alloc] init];
_drawView.frame = CGRectMake(0, KSCREEN_HEIGHT - 72, KSCREEN_WIDTH, 72);
_drawView.backgroundColor = [UIColor clearColor];
_drawView.fillColor = BARANDOM_COLOR;//填充颜色
[self.view addSubview:_drawView];

```

效果图：
![image](https://github.com/haolizi/IrregularButton/blob/master/example.png)

