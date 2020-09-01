//
//  ViewController.h
//  AgendaDeContatos
//
//  Created by Marcio Vinicius Campos da Silveira on 27/08/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContatoDao.h"

@protocol ViewControllerDelegate <NSObject>

-(void) contatoAdicionado: (Contato *)contato;
-(void) contatoAtualizado: (Contato *)contato;

@end

@interface ViewController : UIViewController

@property IBOutlet UITextField *nome;
@property IBOutlet UITextField *telefone;
@property IBOutlet UITextField *endereco;
@property IBOutlet UITextField *site;
@property IBOutlet UITextField *email;

@property ContatoDao *dao;
@property Contato *contato;

@property id<ViewControllerDelegate> delegate;

@end

