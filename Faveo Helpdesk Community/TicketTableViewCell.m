//
//  TicketTableViewCell.m
//  SideMEnuDemo
//
//  Created by Narendra on 19/08/16.
//  Copyright © 2016 Ladybird websolutions pvt ltd. All rights reserved.
//

#import "TicketTableViewCell.h"
#import "HexColors.h"
#import <SDWebImage/UIImageView+WebCache.h>

@implementation TicketTableViewCell

-(void)setUserProfileimage:(NSString*)imageUrl
{
    [self.profilePicView sd_setImageWithURL:[NSURL URLWithString:imageUrl]
                           placeholderImage:[UIImage imageNamed:@"default_pic.png"]];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.profilePicView.layer.cornerRadius = 25;
    self.profilePicView.clipsToBounds = YES;
    self.profilePicView.layer.borderWidth=1.25f;
    self.profilePicView.layer.borderColor=[[UIColor hx_colorWithHexRGBAString:@"#0288D1"] CGColor];
    self.selectionStyle=UITableViewCellSelectionStyleDefault;
    
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

//    if (selected) {
//       
//        UIView *backgroundView=[[UIView alloc]init];
//        [backgroundView setBackgroundColor:[UIColor hx_colorWithHexString:@"#87CEFA"]];
//        self.selectedBackgroundView=backgroundView;
//        
//    }else{
////        
////        UIView *backgroundView=[[UIView alloc]init];
////        [backgroundView setBackgroundColor:[UIColor whiteColor]];
////        self.selectedBackgroundView=backgroundView;
//    
//    }
//    // Configure the view for the selected state
}

//- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
//{
//    if (highlighted) {
//        self.ticketIdLabel.textColor = [UIColor whiteColor];
//    } else {
//        self.ticketIdLabel.textColor = [UIColor darkTextColor];
//    }
//}

@end
