-- CRIANDO QUERY (CONSULTA)

-- MOSTRA O CLIENTE E SEU STATUS (BOM, MED,RUIM)
SELECT c.nome,c.endereco,c.telefone,c.filiacao,c.limite_credito,s.status
FROM Cliente c, status s
WHERE c.id_status=s.id AND s.status="BOM";

-- MOSTRA OS PEDIDOS DA CAMILA PITANGA
SELECT  c.nome,p.data,p.total_pedido, s.status
from pedido p, cliente c, status s
where c.id = p.id_cliente and c.nome= "Camila Pitanga" and c.id_status= s.id;


-- MOSTRA OS PRODUTOS DE UM DOS PEDIDOS DA CAMILA PITANGA
SELECT cli.nome, ped.data, pro.produto, ip.quantidade,pro.preco,ip.subtotal,ped.total_pedido
from cliente cli, pedido ped, itens_pedido ip , produto pro
where cli.id = ped.id_cliente 
	AND pro.id=ip.id_prod
	AND PED.ID=ip.id_ped
	and cli.nome = "Camila Pitanga" 
  AND  ped.data = "2026-06-15";

