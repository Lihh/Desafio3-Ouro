//
//  ViewController.m
//  Desafio1Prata
//
//  Created by Lidia Chou on 2/23/15.
//  Copyright (c) 2015 Lidia Chou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize Pergunta;
@synthesize Resposta;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor clearColor];
    
    perguntas = [[NSArray alloc] init];
    respostas = [[NSArray alloc] init];
    imagens = [NSArray arrayWithObjects:
               [UIImage imageNamed:@"14.jpg"],
               [UIImage imageNamed:@"bc.jpg"],
               [UIImage imageNamed:@"m.png"],
               nil];
    
    perguntas = @[@"Quanto é 7 + 7?",
                  @"Qual é a raça mais inteligente (cachorro)?",
                  @"Qual é a principal cor do Mackenzie?"];
    
    respostas = @[@"14",
                  @"Border Collie",
                  @"Vermelho"];
    
    index = 0;
    shake = true;
    
    self.Pergunta.textColor = [UIColor whiteColor];
    self.Resposta.textColor = [UIColor whiteColor];
    
    self.botaoPergunta.tintColor = [UIColor redColor];
    self.botaoResposta.tintColor = [UIColor redColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark AcoesBotoes

-(void) mudaPergunta{
    [Pergunta setText: [perguntas objectAtIndex: index]];
    [Resposta setText: @"????"];
    [_Imagem setImage: nil];
}

-(void) mudaResposta{
    [Resposta setText: [respostas objectAtIndex: index]];
    [_Imagem setImage: [imagens objectAtIndex: index]];
    if (index <2)
        index++;
    else
        index = 0;
}


- (IBAction)mostraPergunta:(id)sender {
    [self mudaPergunta];
}

- (IBAction)mostraResposta:(id)sender {
    [self mudaResposta];
}


-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    if (shake == true){
        [self mudaPergunta];
        shake = false;
    } else {
        [self mudaResposta];
        shake = true;
    }
}




@end
