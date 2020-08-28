//
//  Contato.m
//  AgendaDeContatos
//
//  Created by Marcio Vinicius Campos da Silveira on 28/08/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

#import "Contato.h"

@implementation Contato

NSString *nome;

-(void) setNome:(NSString *)novoNome {
    nome = novoNome;
}

-(NSString *)nome{
    return nome;
}

@end
