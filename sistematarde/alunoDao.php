<?php 

include 'conexao.php';

class AlunoDao{
	public function cadastrar(Aluno $aluno){
		$sql = "insert into aluno values(?, ?, ?)";

		$banco = new Conexao();
		$conexao = $banco->getConexao();

		$stm = $conexao->prepare($sql);
		$stm->bindValue(1, $aluno->getCpf());
		$stm->bindValue(2, $aluno->getNome());
		$stm->bindValue(3, $aluno->getTelefone());

		$result = $stm->execute();

		if($result){
			echo "cadastrado";
		}else{
			echo "não cadastrado";
		}
	}

	public function atualizar(Aluno $aluno){
		$sql = "update aluno set nome=?, telefone=? where cpf=?";

		$banco = new Conexao();
		$conexao = $banco->getConexao();

		$stm = $conexao->prepare($sql);
		$stm->bindValue(1, $aluno->getNome());
		$stm->bindValue(2, $aluno->getTelefone());
		$stm->bindValue(3, $aluno->getCpf());

		$result = $stm->execute();

		if($result){
			echo "atualizar";
		}else{
			echo "não atualizar";
		}
	}

	public function apagar($cpf){
		$sql = "delete from aluno where cpf=?";

		$banco = new Conexao();
		$conexao = $banco->getConexao();

		$stm = $conexao->prepare($sql);
		$stm->bindValue(1, $cpf);
		
		$result = $stm->execute();

		if($result){
			echo "apagado";
		}else{
			echo "não apagado";
		}
	}

	public function buscar(){
		$sql = "select * from aluno";
		
		$banco= new Conexao();
		$con = $banco->getConexao();
		
		$stm = $con->prepare($sql);
		$stm->execute();

		if($stm->rowCount()>0){
			$result = $stm->fetchAll(\PDO::FETCH_ASSOC);
			return $result;
		}

	}


}