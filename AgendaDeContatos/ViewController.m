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
    contato.nome = self.nome.text;
    contato.endereco = self.endereco.text;
    contato.email = self.email.text;
    contato.telefone = self.telefone.text;
    contato.site = self.site.text;
    
    NSLog(@"Dados do Contato %@ - %@ - %@ - %@ - %@", contato.nome, contato.endereco, contato.email, contato.telefone, contato.site);
    
    [self.navigationController popViewControllerAnimated:true];
    
}

@end
