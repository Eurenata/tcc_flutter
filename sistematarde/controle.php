<?php

include 'aluno.php';
include 'alunoDao.php';

$cpf = $_GET['cpf'];
$nome = $_GET['nome'];
$telefone = $_GET['telefone'];
$botao = $_GET['botao'];

$aluno = new Aluno();
$alunoDao = new AlunoDao();

$aluno->setCpf($cpf);
$aluno->setNome($nome);
$aluno->setTelefone($telefone);

if($botao=="Cadastrar"){
	$alunoDao->cadastrar($aluno);

	}else if($botao =="Buscar"){
		$alunoDao->buscar();
		
		foreach ($alunoDao->buscar() as $resultado) {
			echo $resultado['cpf']."<br>";
			echo $resultado['nome']."<br>";
			echo $resultado['telefone']."<hr>";
		}
	}else if($botao=="Atualizar"){
		$alunoDao->atualizar($aluno);
	}else if($botao=="Apagar"){
		$alunoDao->apagar($cpf);
	}
