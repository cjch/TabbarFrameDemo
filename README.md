# TabbarFrameDemo

使用tabbarController作为系统的根视图控制器，各个选项卡分别使用一个navigationController。  
self.window = tabbarController;  
tabbarController.viewControllers = @[navigationController1, navigationController2];
