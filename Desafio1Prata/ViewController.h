//
//  ViewController.h
//  Desafio1Prata
//
//  Created by Lidia Chou on 2/23/15.
//  Copyright (c) 2015 Lidia Chou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSArray *perguntas;
    NSArray *respostas;
    NSArray *imagens;
    int index;
    BOOL shake;
}

@property (weak, nonatomic) IBOutlet UILabel *Pergunta;

- (IBAction)mostraPergunta:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *botaoPergunta;

@property (weak, nonatomic) IBOutlet UILabel *Resposta;

- (IBAction)mostraResposta:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *botaoResposta;

@property (weak, nonatomic) IBOutlet UIImageView *Imagem;

@end

