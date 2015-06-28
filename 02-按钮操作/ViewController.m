//
//  ViewController.m
//  02-按钮操作
//
//  Created by Jack on 15/6/28.
//  Copyright (c) 2015年 Jack. All rights reserved.
//

#import "ViewController.h"
#define deta 20;
typedef enum {
    kMovingDirTop=11,
    kMovingDirBottom,
    kMovingDirLeft,
    kMovingDirRight,
}kMovingDir;


@interface ViewController ()


@property (weak, nonatomic) IBOutlet UIButton *iconButton;
@end

@implementation ViewController

- (IBAction)move:(UIButton *)button {
    //    1.取出frame
    CGRect frame = self.iconButton.frame;
    //    2.修改结构体的成员
    switch (button.tag) {
        case kMovingDirTop:
            frame.origin.y -=deta;
            break;
        case kMovingDirBottom:
            frame.origin.y +=deta;
            break;
        case kMovingDirLeft:
            frame.origin.x -=deta;
            break;
        case kMovingDirRight:
            frame.origin.x +=deta;
            break;
            
        default:
            break;
    }
//    frame.origin.x -=2;
    self.iconButton.frame =frame;

}


- (IBAction)top {
//    self.iconButton.frame.origin.y -=20;
//    如果修改对象的结构体属性，需要三个步骤
//    1.取出frame
    CGRect frame = self.iconButton.frame;
//    2.修改结构体的成员
    frame.origin.x -=2;
//    3.重新为对象的结构体赋值。
    self.iconButton.frame =frame;
}

@end
