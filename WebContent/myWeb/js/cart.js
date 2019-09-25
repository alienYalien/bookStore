
/**
 * 加入购物车
 */
function buy(goodid){
	alert("加入购物车!");
	$.post("myWeb/goodsBuy", {goodsid:goodid}, function(data){
		if(data=="ok"){
			layer.msg("添加到购物车!", {time:800}, function(){
				location.reload();
			});
		}else if(data=="fail"){
			layer.msg("库存不足，请购买其他商品!", {time:800}, function(){
			});
		}
	});
}

/**
 * 购物车减去
 */
function lessen(goodsid){
	alert("购物车减去!");
	$.post("goodsReduce", {goodsid:goodsid}, function(data){
		if(data=="ok"){
			layer.msg("操作成功!", {time:800}, function(){
				location.reload();
			});
		}
	});
}
/**
 * 购物车删除
 */
function deletes(goodid){
	alert(" 购物车删除!");
	$.post("delete.action", {goodid:goodid}, function(data){
		if(data=="ok"){
			layer.msg("删除成功!", {time:800}, function(){
				location.href="cart.action";
			});
		}else if(data=="login"){
			alert("请登录后操作!");
			location.href="/myWeb/userLogin.jsp";
		}else{
			alert("请求失败!");
		}
	});
}