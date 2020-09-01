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
        self.dao = [ContatoDao contatoDaoInstance];
    }
    return self;
    
}

- (void) viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *botao = nil;
    if(self.contato){
        botao = [[UIBarButtonItem alloc] initWithTitle:@"Alterar" style:UIBarButtonItemStylePlain target:self action:@selector(altera)];
        self.navigationItem.title = @"Editar Contato";
    }else{
        botao = [[UIBarButtonItem alloc] initWithTitle:@"Adicionar" style:UIBarButtonItemStylePlain target:self action:@selector(adiciona)];
        self.navigationItem.title = @"Novo Contato";
    }
    self.navigationItem.rightBarButtonItem = botao;
    
    if(self.contato){
        self.nome.text = self.contato.nome;
        self.endereco.text = self.contato.endereco;
        self.email.text = self.contato.email;
        self.telefone.text = self.contato.telefone;
        self.site.text = self.contato.site;
    }
}

- (void) adiciona {
    self.contato = [Contato new];
    
    [self pegaDadosDoFormulario];
    [self.dao adicionaContato:self.contato];
    
    [self.navigationController popViewControllerAnimated:true];
    
}

- (void) altera {
    [self pegaDadosDoFormulario];
    
    [self.navigationController popViewControllerAnimated:true];
}

-(void) pegaDadosDoFormulario {
    self.contato.nome = self.nome.text;
    self.contato.endereco = self.endereco.text;
    self.contato.email = self.email.text;
    self.contato.telefone = self.telefone.text;
    self.contato.site = self.site.text;
}

@end
