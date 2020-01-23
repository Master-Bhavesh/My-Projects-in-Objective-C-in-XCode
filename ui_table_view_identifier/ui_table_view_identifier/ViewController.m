//
//  ViewController.m
//  ui_table_view_identifier
//
//  Created by Mac on 22/05/18.
//  Copyright © 2018 Mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end
@implementation ViewController;
@synthesize arr_mut_names;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self Get_mutArray];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)Get_mutArray
{
    arr_mut_names = [[NSMutableArray alloc]init ];
    NSDictionary *dict_student_info;
    dict_student_info=@
    {
        @"First_name":@"XYZ",
        @"Last_name":@"PQR",
        @"Rollnumber":[NSNumber numberWithInt:2],
        @"Percentage":[NSNumber numberWithFloat:70],
    };
    NSDictionary *dict_stud_one;
    dict_stud_one = @
    {
        @"First_name":@"abc",
        @"Last_name":@"lmn",
        @"Rollnumber":[NSNumber numberWithInt:3],
        @"Percentage":[NSNumber numberWithFloat:80],
    };
    [arr_mut_names addObject:dict_student_info];
    [arr_mut_names addObject:dict_stud_one];
    [_tbl_stud_info reloadData];
    NSLog(@"Student info=%@",arr_mut_names);
    
    NSArray *Arr_first_name =[[NSArray alloc]init];
    Arr_first_name=[arr_mut_names valueForKey:@"First_name"];
    NSLog(@"First_name =%@",Arr_first_name);
    NSString *str_first_name=[Arr_first_name objectAtIndex:0];
    NSLog(@"object at index = %@",str_first_name);
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [arr_mut_names count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [_tbl_stud_info dequeueReusableCellWithIdentifier:@"stud_info"];
    if (cell == nil) {
        
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"stud_info"];
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }
    //first_name
    cell.textLabel.text = [[arr_mut_names valueForKey:@"First_name" ] objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [[arr_mut_names valueForKey:@"First_name" ] objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:@"index"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}
@end
