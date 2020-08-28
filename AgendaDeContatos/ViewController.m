//
//  ViewController.m
//  AgendaDeContatos
//
//  Created by Marcio Vinicius Campos da Silveira on 27/08/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

#import "ViewController.h"
#import "Contato.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction) adiciona {
    
    Contato *contato = [Contato new];
    [contato setNome:self.nome.text];
    
    NSString *nome = self.nome.text;
    NSString *endereco = self.endereco.text;
    NSString *email = self.email.text;
    NSString *telefone = self.telefone.text;
    NSString *site = self.site.text;
    NSLog(@"Dados do Contato %@ - %@ - %@ - %@ - %@", [contato nome], endereco, email, telefone, site);
    
}

@end
