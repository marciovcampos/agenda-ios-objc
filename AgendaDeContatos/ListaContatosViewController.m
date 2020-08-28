//
//  ListaContatosViewController.m
//  AgendaDeContatos
//
//  Created by Marcio Vinicius Campos da Silveira on 28/08/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

#import "ListaContatosViewController.h"

@implementation ListaContatosViewController

-(ListaContatosViewController *) init {
    self = [super init];
    
    UIBarButtonItem *botaoForm = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:(UIBarButtonSystemItemAdd) target:self action:nil];
    
    self.navigationItem.rightBarButtonItem = botaoForm;
    
    return self;
}

@end
