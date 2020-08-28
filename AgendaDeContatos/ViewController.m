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


-(id) initWithCoder: (NSCoder *) aDecoder{
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        UIBarButtonItem *botao = [[UIBarButtonItem alloc] initWithTitle:@"Adicionar" style:UIBarButtonItemStylePlain target:self action:@selector(adiciona)];
          self.navigationItem.rightBarButtonItem = botao;
          self.navigationItem.title = @"Novo Contato";    
    }
    return self;
    
}

- (void) adiciona {
    
    Contato *contato = [Contato new];
    contato.nome = self.nome.text;
    contato.endereco = self.endereco.text;
    contato.email = self.email.text;
    contato.telefone = self.telefone.text;
    contato.site = self.site.text;
    
    [self.dao.contatos addObject:contato];
    
    NSLog(@"%@", self.dao.contatos);
    
    [self.navigationController popViewControllerAnimated:true];
    
}

@end
