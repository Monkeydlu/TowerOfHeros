//
//  PhysicalCharacter.h
//  Tower Of Heros
//
//  Created by MingYang Lu on 1/10/13.
//  Copyright (c) 2013 Vanderbilt University. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhysicalEquipment.h"

@interface PhysicalCharacter : NSObject
{
	//Character's basic info.
	NSString* characterName;
	NSNumber* Level;
	NSNumber* PartyPosition;
	NSNumber* SkillPoints;
	
	//Character's skill usage pools.
	NSNumber *S1cur, *S1max, *S1mod, *S2cur, *S2max, *S2mod; 
	NSNumber *S3cur, *S3max, *S3mod, *S4cur, *S4max, *S4mod;
	
	//Character's current stats and their modifiers.
	NSNumber* HPcur, *HPmax, *HPmod;
	NSNumber* STRcur, *STRmod;
	NSNumber* VITcur, *VITmod;
	NSNumber* AGIcur, *AGImod;
	NSNumber* INTcur, *INTmod;
	NSNumber* DEXcur, *DEXmod;
	
	//Character's ACT, ATK, and DEF
	NSNumber* ACTcur, *ACTmod;
	NSNumber* ATK, *DEF;
	
	//Character's color resistences. 
	NSNumber* REDcur, *REDmod;
	NSNumber* GREENcur, *GREENmod;
	NSNumber* YELLOWcur, *YELLOWmod;
	NSNumber* BLUEcur, *BLUEmod;
	NSNumber* PURPLEcur, *PURPLEmod;
	
	//Character's skills.	
	NSArray* Skills;
	
	//Character's equipments;
	PhysicalEquipment *Armor, *Weapon, *Acc1, *Acc2;
}
-(NSNumber*)getHPMAX;
-(NSNumber*)getHPCUR;

-(NSNumber*)getATK;
-(NSNumber*)getDEF;
-(NSNumber*)getSTR;
-(NSNumber*)getVIT;
-(NSNumber*)getDEX;
-(NSNumber*)getAGI;
-(NSNumber*)getACT;

-(NSNumber*)getS1;
-(NSNumber*)getS2;
-(NSNumber*)getS3;
-(NSNumber*)getS4;

-(NSArray*)getAffinity;
-(NSArray*)getSkillsLearned;
-(NSArray*)getSkillsAll;

-(PhysicalCharacter*)initCharacterWithClass:(NSNumber*)classTag 
				 WithPosition:(int)position 
					 WithName:(NSString*)name;

@end
