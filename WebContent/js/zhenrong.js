$(document).ready(function(){
	
	$(".header_bottom li").hover(
	   function(){
		$(this).css("color","#00a9fa");
	},
       function(){
		$(this).css("color","");
	}
	);
	
	$(".content_top li:not(.zhen)").hover(
	   function(){
		$(this).css("color","#e11647");
	},
	   function(){
		$(this).css("color","");
	}
	);
	
	/* 浮现隐藏 */
	$(".header_bottom li:eq(4)").hover(
		function(){
			$(".ballteam").toggle();
		}
	);
	$(".header_bottom li:eq(5)").hover(
		function(){
			$(".player").toggle();
		}
	);
	$(".header_bottom li:eq(6)").hover(
		function(){
			$(".time").toggle();
		}
	);
	$(".header_bottom li:eq(7)").hover(
		function(){
			$(".paiming").toggle();
		}
	);
	$(".header_bottom li:eq(8)").hover(
		function(){
			$(".data").toggle();
		}
	);
	$(".header_bottom li:eq(9)").hover(
		function(){
			$(".topic").toggle();
		}
	);
	$(".header_bottom li:eq(11)").hover(
		function(){
			$(".more").toggle();
		}
	);
	
	/* 浮动窗口的关闭 */
	$(".fudong img:eq(0)").click(function(){
		$(".fudong").hide();
	})
	
	/* 表格颜色*/
	$("td:odd").css("bgcolor","red");
	
})