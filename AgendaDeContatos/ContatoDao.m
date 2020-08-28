//
//  ContatoDao.m
//  AgendaDeContatos
//
//  Created by Marcio Vinicius Campos da Silveira on 28/08/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

#import "ContatoDao.h"

@implementation ContatoDao

-(id) init {
    self =  [super init];
    if(self){
        self.contatos = [NSMutableArray new];
    }
    return self;
}

@end
