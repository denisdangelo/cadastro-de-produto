/**
 * @param id 
 * */

function confirmar(id){
	let resposta = confirm("Confirme a exclusção deste Produto?")
	if(resposta === true){
		//alert(id)
		window.location.href = "delete?id=" + id
	}
}