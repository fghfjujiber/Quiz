//
//  QuizViewController.m
//  Quiz
//
//  Created by Xiaoming Chen on 15/10/5.
//  Copyright © 2015年 Jackchenxm. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@property(nonatomic,copy)NSArray *questionArray;
@property(nonatomic,copy)NSArray *answerArray;

@property(nonatomic)int currentQuestionIndex;

@end

@implementation QuizViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.questionArray = @[@"Who you?",
                           @"Loser...",
                           @"How old is GD?"];
        self.answerArray = @[@"Not me.",
                             @"Victory",
                             @"27."];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [NSThread sleepForTimeInterval:10.0];
}

-(IBAction)showQuestion:(id)sender{
    
    self.currentQuestionIndex++;
    
    if (self.currentQuestionIndex == [self.questionArray count]) {
        self.currentQuestionIndex = 0;
    }
    
    self.questionLabel.text = self.questionArray[self.currentQuestionIndex];
    self.answerLabel.text = @"???";
    
}

-(IBAction)showAnswer:(id)sender{
    self.answerLabel.text = self.answerArray[self.currentQuestionIndex];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
