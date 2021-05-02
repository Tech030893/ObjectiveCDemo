#import "ViewController.h"
#import "CustomTVC.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *sectionArr;
    NSArray *rowArr;
}

@property (weak, nonatomic) IBOutlet UITableView *custTabV;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    sectionArr = [NSArray arrayWithObjects:@"Hello Title",@"Chao Title",@"Bonjour Title",@"Hola Title",@"Namaste Title", nil];
    rowArr = [NSArray arrayWithObjects:@[@"Hello1",@"Hello2",@"Hello3"],@[@"Chao1",@"Chao2",@"Chao3",@"Chao4",@"Chao5",@"Chao6"],@[@"Bonjour1",@"Bonjour2",@"Bonjour3",@"Bonjour4"],@[@"Hola1",@"Hola2"],@[@"Namaste1",@"Namaste2",@"Namaste3",@"Namaste4",@"Namaste5"], nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [sectionArr count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [rowArr[section] count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return sectionArr[section];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTVC *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomTVC"];
    cell.custLbl.text = rowArr[indexPath.section][indexPath.row];
    return cell;
}

@end
