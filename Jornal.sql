-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 20-Out-2020 às 23:34
-- Versão do servidor: 8.0.21-0ubuntu0.20.04.4
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `Jornal`
--
CREATE DATABASE IF NOT EXISTS `Jornal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `Jornal`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1950),
(1951),
(1952),
(1953),
(1954),
(1955),
(1956),
(1957),
(1958),
(1959),
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codcategoria` int NOT NULL,
  `categoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codcategoria`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Variedades'),
(3, 'Política'),
(4, 'Saúde'),
(5, 'Educação'),
(6, 'Infra Estrutura');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codnoticia` int NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `noticia` text,
  `dia` int DEFAULT NULL,
  `ano` int DEFAULT NULL,
  `mes` int DEFAULT NULL,
  `codredator` int DEFAULT NULL,
  `codcategoria` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codnoticia`, `titulo`, `noticia`, `dia`, `ano`, `mes`, `codredator`, `codcategoria`) VALUES
(1, 'Trump anuncia que ele e Melania testaram positivo para Covid-19; presidente tem \'sintomas leves\'.', 'O presidente dos Estados Unidos, Donald Trump, anunciou na madrugada desta sexta-feira (2) que ele e a primeira-dama, Melania, tiveram diagnóstico positivo para o coronavírus e entraram em isolamento.\r\n\r\nO chefe de gabinete da Casa Branca, Mark Meadows, informou na manhã desta sexta-feira (2), que Trump tem \"sintomas leves\" e deve permanecer trabalhando no cargo. \"O povo americano pode ficar tranquilo que temos um presidente que, não só está no trabalho, mas que permanecerá no trabalho. E estou otimista que ele terá uma recuperação bastante rápida\", afirmou a jornalistas na Casa Branca.\r\n\r\nTrump e Melania foram submetidos aos testes na quinta-feira (1º), após a assessora do presidente norte-americano Hope Hicks, de 31 anos, ter contraído o vírus.\r\n\r\nA assessora esteve a bordo do avião presidencial com Trump na última terça-feira (29), para acompanhar a ida do presidente a Cleveland, onde ele participou do primeiro debate eleitoral com o candidato do Partido Democrata, Joe Biden.\r\n\r\nPor conta do caso da assessora, Trump e Melania entraram em quarentena algumas horas antes de saber do resultado dos seus próprios testes.', 10, 2020, 9, 1, 4),
(2, 'Diego explica golaço contra o Corinthians e diz que Filipe Luís é \'nojento\'', 'Após marcar o gol que fechou a goleada do Flamengo sobre o Corinthians por 5 a 1, pelo Campeonato Brasileiro, no último domingo (18), Diego explicou o lance, dizendo que precisou tomar decisões rápidas e disse que a dança na comemoração foi um pedido do filho.\r\n\r\n\"Fiz um gol bonito, uma decisão rápida. Tinha pouco espaço e alguns jogadores do Corinthians na minha frente. Dei um drible, passando a bola de uma perna para outra. Fiquei muito contente de marcar um gol bonito como esse. Eu dancei na hora do gol, a pedido do meu filho Davi. Não é meu forte a dança, mas valeu a pena pelo pedido do meu filho\", disse o jogador em vídeo no seu próprio canal do YouTube.', 10, 2020, 10, 3, 1),
(3, 'Rafael Portugal surge com novo visual e surpreende seguidores', 'Nesta terça-feira, o humorista Rafael Portugal confundiu os seus seguidores ao aparecer de visual novo. Em uma publicação no Instagram, Rafael surgiu de barba e com os fios lisos.\r\n\"Deixei a barba crescer e fiz uma massagem no cabelo. Amanhã eu vou raspar e deixar voltar os cachos.\", escreveu na legenda da foto.', 20, 2020, 10, 6, 2),
(4, 'Pesquisa Ibope encomendada pela Rede Vanguarda: veja avaliação de Ortiz, Doria e Bolsonaro', 'Pesquisa Ibope divulgada pela TV Vanguarda nesta terça-feira (20) mostra os percentuais de avaliação das administrações do prefeito de Taubaté, Ortiz Junior (PSDB), do governador de São Paulo, João Doria (PSDB), e do presidente Jair Bolsonaro (sem partido).\r\n\r\nAlém da classificação em ótimo, bom, regular, ruim ou péssimo dos três governantes, o levantamento questionou ainda diretamente se os entrevistados aprovavam ou não a administração de Ortiz Junior. A pesquisa foi encomendada pela TV Vanguarda.', 18, 2020, 10, 1, 3),
(5, 'Brasil registra 662 novas mortes por covid-19 em 24 h; óbitos somam 154.888', 'Nas últimas 24 horas, o Brasil registrou 662 novas mortes por covid-19, chegando a um total de 154.888 óbitos causados pela doença desde o início da pandemia. As informações são do consórcio de veículos do qual o UOL faz parte. Foram notificados 23.690 novos casos desde ontem. No total, o país tem 5.274.817 diagnósticos pela doença provocada pelo novo corona vírus\r\n\r\nA média móvel de mortes, calculada com base no número de óbitos ocorridos nos últimos sete dias, é de 546, o que representa queda em relação à variação de 14 dias atrás. Conforme o levantamento feito pelo consórcio, 15 estados tiveram desaceleração na média móvel de mortes pela doença na variação de 14 dias, enquanto só o RN apresentou alta.', 20, 2020, 10, 4, 4),
(6, 'Abaixo-assinado pede que MEC suspenda clássicos infantis com histórias modificadas', 'Um abaixo-assinado organizado por cerca de 3 mil educadores, escritores e ilustradores pede que o Ministério da Educação (MEC) suspenda a adoção de livros infantis adaptados. No programa “Conta para Mim”, voltado a famílias vulneráveis, foram disponibilizadas versões modificadas de clássicos infantis, como “João e Maria”.\r\n\r\nAs histórias alteradas estão no site do programa e serão impressas e distribuídas, segundo o MEC, no ano que vem. O objetivo é oferecer apoio para a alfabetização das crianças.\r\n\r\nSegundo Pedro Bandeira, um dos maiores autores da literatura infantil do país, alguns elementos de clássicos não podem ser modificados. “Em ‘João e Maria’, por exemplo, é importante que os personagens sejam abandonados pelos pais na floresta. A criança, ouvindo a história no colo, treme de medo. Mas, se está no colinho, está vendo que não é de verdade”, diz.\r\n\r\nNa nova versão, João e Maria apenas saem para passear na floresta, e a mãe dá a eles pedrinhas coloridas, para que possam retornar à casa. “Já não é mais João e Maria, ponham outro nome”, protesta Bandeira.', 20, 2020, 10, 5, 5),
(7, 'MP estudada por Rogério Marinho agita setor de infraestrutura', 'O ministro do Desenvolvimento Regional, Rogério Marinho, tem recebido uma enxurrada de contatos do setor de infraestrutura. Todos os empresários que trabalham com saneamento, energia e construção estão querendo saber quando será publicada a Medida Provisória que liberará recursos para investimentos. Assessores do ministro falaram a líderes empresariais e políticos que os estudos estão prontos e que uma portaria e uma MP poderão ser publicada em breve. \r\n\r\nMarinho busca recursos para recursos para impulsionar investimentos em infraestrutura em áreas carentes. Há um pedido de liberação de empréstimos emergenciais de 10 bilhões de reais sem garantia do FGTS para entes subnacionais. Eles seriam utilizados da seguinte forma: 1 bilhão de reais para ações conduzidas por estados e municípios para urbanização de favelas; 1 bilhão de reais para investimentos em mobilidade urbana; 3 bilhões de reais para financiamento de ações de saneamento (obras de abastecimento de água, esgoto, resíduos sólidos), com recursos do FGTS E FAT, operados por agentes financeiros; 5 bilhões de reais de abertura de limite para que empresas públicas estaduais de saneamento possam captar recursos e fazer frente à inadimplência provocada pela crise econômica decorrente da pandemia, garantindo a continuidade da prestação do serviço à população. A medida seria adotada por meio de uma portaria do ministério. ', 12, 2020, 10, 2, 6),
(8, 'Bolsonaro quer direcionar recursos da educação para obras', '“Ninguém quer o bem público que não está de acordo com o seu”. A frase atribuída ao pensador suíço Jean-Jacques Rousseau (1712-1778) traz à tona um problema grave da administração pública brasileira. Desde que percebeu que gastos trazem popularidade, o presidente Jair Bolsonaro está em busca de recursos para garantir uma agenda mais afinada com promessas de ganhos eleitorais. \r\nEncaminhado ao Congresso Nacional pelos ministros da Economia, Paulo Guedes, e da Secretaria-Geral, Jorge Oliveira, como uma “mensagem do senhor presidente da República”, um projeto de lei pede o remanejo de mais de 6 bilhões de reais para, entre outros projetos, dar vazão a obras com dinheiro público. ', 19, 2020, 10, 6, 6),
(9, 'Organizadores do GP da Austrália garantem que corrida abrirá temporada da F1 em 2021', 'O Grande Prêmio da Austrália de Fórmula 1 deve retornar ano que vem como sede da abertura da temporada de 2021. Pelo menos é o que os organizadores da corrida garantiram nesta terça-feira, em declaração ao Wide World Sports da Austrália.\r\nCancelado em 2020 devido à pandemia do coronavírus, a prova já está confirmada para a próxima temporada, mas ainda não há uma definição sobre qual será a etapa de abertura. O calendário será anunciado nos próximos dias.\r\nGP da Austrália deve sediar abertura da F1 em 2021 \"O GP da Austrália está em constante diálogo com a Fórmula 1 a respeito do esboço do calendário 2021, que será publicado nas próximas semanas. Melbourne novamente sediará a abertura da temporada nas tradicionais datas de meio de março, que representará um papel importante na recuperação da indústria de esporte e eventos no estado de Vitória\", declarou Andrew Westacott, CEO do Australian Grand Prix Corporation.', 15, 2020, 10, 2, 1),
(10, 'Rodrigo Faro mostra vídeo que ganhou da família em aniversário: \'Surpresa\'', 'Rodrigo Faro, que completa 47 anos, mostrou uma das homenagens que recebeu. Ele publicou nas redes sociais o vídeo produzido pela família para comemorar a data.\r\n\"Surpresa de aniversário! Um vídeo especial com os momentos mais fofos e engraçados ao lado da minha família! Sou muito grato por todo o amor e por todas as mensagens que recebi hoje. Mais um ano abençoado\", escreveu o apresentador na legenda.\r\n', 20, 2020, 10, 3, 2),
(11, 'RETROSPECTIVA 2006: O ANO DAS CONTROVÉRSIAS CIENTÍFICAS', 'O ano de 2006 trouxe excelentes demonstrações de como o discurso científico, embora seja a melhor forma disponível à humanidade de entender e dominar a natureza, ainda pode ser frágil e cheio de armadilhas.\r\n\r\nO ano foi aberto com a revelação bombástica de que o sul-coreano Woo-suk Hwang, até então venerado por suas pesquisas, havia falsificado os resultados de sua suposta clonagem de embriões humanos. A apresentação da fraude trouxe constrangimento à revista científica americana \"Science\", responsável pela divulgação original dos resultados, e colocou a comunidade científica em alerta: é preciso tomar mais cuidado com o que pesquisadores afirmam ter feito por aí.\r\n\r\nA fraude dos clones de Woo-suk Hwang\r\n \r\nA lição foi bem sentida em agosto, quando Robert Lanza, da companhia ACT (Advanced Cell Technology), nos Estados Unidos, apresentou um novo método \"ético\" para a obtenção de células-tronco embrionárias -- um que não levaria necessariamente à morte do embrião.\r\n \r\nEmbora em tese isso fosse verdade, todos ficaram de sobreaviso quando foi revelado que, a despeito do potencial, Lanza e seus colegas haviam de fato destruído os embriões usados no estudo. O problema levou a \"Nature\" (rival britânica da \"Science\") a publicar um alerta quando o estudo saiu em sua revista.\r\n\r\nA criação das células-tronco \"éticas\"\r\n \r\nO mesmo mês de agosto mostrou que a controvérsia sobre o que é verdade científica não se restringe a campos relativamente novos como a biotecnologia. Na mais antiga das ciências, a astronomia, 2006 foi o ano em que seus praticantes definiram de uma vez por todas o que é um planeta. A decisão obrigou os astrônomos a rebaixarem o pequenino Plutão, que passou a ser tido apenas como um \"planeta anão\". ', 27, 2006, 12, 5, 4),
(12, '2018 FOI MOVIMENTADO: O QUE HOUVE NA EDUCAÇÃO DO BRASIL EM 10 PONTOS', 'Chegou aquela época em que as notas estão dadas, a última reunião de pais está para acontecer e os portões das escolas se fecharão para dar início ao merecido período de férias. Além de servir para recarregar as baterias, o tempo de parada também é estratégico para retrospectivas. Pensando nisso, o Todos preparou um resumão do que aconteceu de mais importante na Educação brasileira em 2018. Foram 12 meses de muitas mudanças e intensos debates em torno da escola, notícias novas com cara de que pareciam velhas e avanços para uma Educação de qualidade para todos. Vem com a gente lembrar o ano em dez pontos.\r\n\r\n1. Educação nas eleições\r\n\r\nParece que não, mas em 2018, o Brasil participou de um de seus campeonatos preferidos: a Copa Mundial de Futebol. Está lembrado/a? Se já havia esquecido, você não é o/a único/a. Diversos acontecimentos da agenda do País foram atropelados pelo início da corrida eleitoral, em agosto. O tema foi O assunto do ano e a Educação não ficou de fora dessa, pois, em 2018, o Brasil viu surgir uma articulação inédita em favor de um salto na qualidade do Ensino Público orientada para os futuros gestores do País: o EducaçãoJá!\r\n\r\nSuprapartidária e liderada pelo Todos Pela Educação, a iniciativa é formada por 60 especialistas e 19 organizações educacionais. Além de colocar para conversar sobre o futuro do Brasil gente de diferentes áreas e visão de mundo, o plano também é único na história nacional porque não apenas indica, a partir de estudos minuciosos, sete prioridades para a área educacional para serem implementadas já a partir do próximo mandato federal, como detalha medidas a serem colocadas em prática a médio e longo prazo (8 a 12 anos!).\r\n\r\nAlém da criação deste documento, reforçamos ainda mais a temática educacional, com a promoção dos Diálogos Educação Já!. um evento também inédito no País feito em parceira com o jornal Folha de São Paulo. O encontro foi uma série de sabatinas com os presidenciáveis mais bem colocados na pesquisa Datafolha de julho. Durante 1h20, os candidatos puderam colocar suas propostas para a área e foram questionados por especialistas.\r\n\r\n2.  Aprendizagens essenciais para todo mundo\r\n\r\nGarantir a todos alunos brasileiros direitos básicos de aprendizagem, esse é o propósito da Base Nacional Comum Curricular (BNCC). O documento detalha quais habilidades e competências devem ser trabalhados em cada ano escolar, da Educação Infantil ao Ensino Médio.', 17, 2018, 12, 1, 5),
(13, '7 coisas marcantes do ano 2000 para brasileiros nostálgicos', 'Enquanto se discute se a década termina em 2019 ou em 2020, há 20 anos o papo era bem mais sério. Ou você não se lembra do temido Bug do Milênio? Sabe de nada, inocente. \r\n\r\nO ano 2000 foi muito doido mesmo, mas é impossível não se recorar daquele tempo em que o futuro virou presente e nós só conseguíamos fazer uma coisa da vida: jogar o jogo da cobrinha em nosso Nokia tijolão.\r\n\r\nUma década que já começa com todo mundo achando que o mundo iria acabar só poderia ser muito legal, né? Se você acha o aquecimento global assustador, não sabe o pânico que foi o Bug do Milênio. Mas o que era isso? Desde os anos 1960, os computadores usavam calendários internos com dois dígitos e, por isso, achava-se que eles “entenderiam” a virada 99 para 00 como 1900, causando uma falha geral no sistema e, portanto, o caos absoluto. E sabe o que aconteceu? Nada. Muitos computadores da época já vinham com as datas em quatro dígitos.\r\n\r\nSabe aquela música do Nokia tijolão? Pois quem tinha um desses não fazia outra coisa na vida além de jogar o famigerado “Jogo da Cobrinha”.', 21, 2000, 8, 6, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codredator` int NOT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sobrenome` varchar(100) DEFAULT NULL,
  `ddd` char(3) DEFAULT NULL,
  `telefone` varchar(10) DEFAULT NULL,
  `cidade` varchar(80) DEFAULT NULL,
  `codturma` int DEFAULT NULL,
  `ano` int DEFAULT NULL,
  `dia` int DEFAULT NULL,
  `mes` int DEFAULT NULL,
  `ano_entrada` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codredator`, `nome`, `email`, `sobrenome`, `ddd`, `telefone`, `cidade`, `codturma`, `ano`, `dia`, `mes`, `ano_entrada`) VALUES
(1, 'Mateus', 'mateusmsouza@gmail.com', 'Martins Souza', '11', '934345672', 'Mauá', 4, 2005, 16, 5, 2018),
(2, 'Ana', 'analuiza@gmail.com', 'Luiza de Oliveira', '11', '942115787', 'Ribeirão Pires', 1, 2005, 16, 7, 2019),
(3, 'Andrey', 'andrey@gmail.com', 'Viana da Silva', '11', '952112287', 'Mauá', 1, 2005, 18, 2, 1994),
(4, 'Eduardo ', 'Eduardo@gmail.com', 'Matheus', '11', '923345672', 'Ribeirão Pires', 1, 2005, 27, 4, 2020),
(5, 'Thauane', 'Thauane@gmail.com', 'Ribeiro de Lima', '11', '934349953', 'Ribeirão Pires', 2, 2004, 8, 1, 2020),
(6, 'Gabryel', 'gabyellopes@gmail.com', 'Silva Lopes', '11', '911239898', 'Ribeirão Pires', 5, 2003, 10, 10, 2018);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codturma` int NOT NULL,
  `turma` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codturma`, `turma`) VALUES
(1, '1C'),
(2, '2C'),
(3, '3C'),
(4, '1F'),
(5, '2F'),
(6, '3F');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codcategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codnoticia`),
  ADD KEY `dia` (`dia`),
  ADD KEY `ano` (`ano`),
  ADD KEY `mes` (`mes`),
  ADD KEY `codredator` (`codredator`),
  ADD KEY `codcategoria` (`codcategoria`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codredator`),
  ADD KEY `codturma` (`codturma`),
  ADD KEY `ano` (`ano`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codturma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codcategoria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codnoticia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codredator` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codturma` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`codredator`) REFERENCES `redator` (`codredator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`codcategoria`) REFERENCES `categoria` (`codcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codturma`) REFERENCES `turma` (`codturma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
