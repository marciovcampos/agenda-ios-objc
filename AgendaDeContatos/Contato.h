//
//  Contato.h
//  AgendaDeContatos
//
//  Created by Marcio Vinicius Campos da Silveira on 28/08/20.
//  Copyright © 2020 MarcioVCampos. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contato : NSObject

@property NSString *nome;
@property NSString *endereco;
@property NSString *telefone;
@property NSString *site;
@property NSString *email;

@end

NS_ASSUME_NONNULL_END
