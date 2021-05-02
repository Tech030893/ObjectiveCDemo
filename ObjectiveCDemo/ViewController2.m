#import "ViewController2.h"
#import "CustomCVC.h"

@interface ViewController2 ()<UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource>
{
    NSArray *titleArr;
    NSArray *imageArr;
}

@property (weak, nonatomic) IBOutlet UICollectionView *custCollV;

@end

@implementation ViewController2

- (void)viewDidLoad
{
    [super viewDidLoad];
    titleArr = [NSArray arrayWithObjects:@"Wonder Woman 1984",@"Godzilla vs Kong",@"F9",@"Dolittle",@"6 underground",@"Black Widow",@"Bad Boys For Life",@"Birds Of Prey",@"Bloodshot",@"Justice League", nil];
    imageArr = [NSArray arrayWithObjects:@"Wonder Woman 1984",@"Godzilla vs Kong",@"F9",@"Dolittle",@"6 underground",@"Black Widow",@"Bad Boys For Life",@"Birds Of Prey",@"Bloodshot",@"Justice League", nil];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return titleArr.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCVC *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CustomCVC" forIndexPath:indexPath];
    cell.custImgV.image = [UIImage imageNamed: imageArr[indexPath.row]];
    //cell.custImgV.image = imageArr[indexPath.row];
    cell.custLbl.text = titleArr[indexPath.row];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(floor(collectionView.frame.size.width-20)/2, 270);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(5, 5, 5, 5);
}

@end
