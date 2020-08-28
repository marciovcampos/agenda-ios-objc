//
//  Contato.m
//  AgendaDeContatos
//
//  Created by Marcio Vinicius Campos da Silveira on 28/08/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

#import "Contato.h"

@implementation Contato

- (NSString *)description {
    
    NSString *dados = [NSString stringWithFormat:@"Nome: %@ - Endereço: %@ - E-mail: %@ - Telefone: %@ - Site: %@", self.nome, self.endereco, self.email, self.telefone, self.site];
    return dados;
    
}

@end
