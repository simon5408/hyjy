	<div id="gkFooter" class="gkWrap" style="border-top:1px solid #909090;">
		<div id="gkFooterWrap">
      		<div id="gkCopyrights">
            	<div id="gkFooterNav">
					<ul class="menu">
						<li class="item-443"><a href="index.htm">首页</a></li>
						<li class="item-475"><a href="contactus.asp">关于我们</a></li>
						<li class="item-476"><a href="">招生简章</a></li>
						<li class="item-487"><a href="login.asp">管理登陆</a></li>
					</ul>
            	</div>
            	<span> Copyright 2010-2014 版权所有：慧源自考教育咨询有限公司(www.gzhyedu.cn)</span>
			</div>
		</div>
 	</div>
	
	<script type="text/javascript">
		//var jq = jQuery.noConflict(); 
		jQuery(document).ready(function(){
			jQuery("#floatShow").bind("click",function(){
				jQuery("#onlineService").animate({width:"show", opacity:"show"}, "normal" ,function(){
					jQuery("#onlineService").show();
				});
				jQuery("#floatShow").attr("style","display:none");
				jQuery("#floatHide").attr("style","display:block");
				return false;
			});
			jQuery("#floatHide").bind("click",function(){
				jQuery("#onlineService").animate({width:"hide", opacity:"hide"}, "normal" ,function(){
					jQuery("#onlineService").hide();
				});
				jQuery("#floatShow").attr("style","display:block");
				jQuery("#floatHide").attr("style","display:none");
		
				return false;
			});
			
			jQuery('#gkIs-gk-is-228').slideBox({
				direction : 'left',//left,top
				duration : 0.3,//
				easing : 'linear',//swing,linear
				delay : 10,//
				startIndex : 1,//
				hideClickBar : false,//
				hideBottomBar : true//
			});
			
			moveFun("tickerDiv");
			moveFun("tickerDiv1");
		});
		
		function moveFun(id){
			//cache the tickerDiv
			var tickerDiv = jQuery("#"+id);
			
			if(tickerDiv.children().filter("dt").size() < 6){
				return;
			}
		  	
			//wrap dt:dd pairs in divs
			tickerDiv.children().filter("dt").each(function() {
				var dt = jQuery(this), container = jQuery("<div>");
		  
		  		dt.next().appendTo(container);
		  		dt.prependTo(container);
		  
		  		container.appendTo(tickerDiv);
			});
				
			//hide the scrollbar
			tickerDiv.css("overflow", "hidden");
		
			//animator function
			function animator(currentItem) {
		    
		 		//work out new anim duration
		  		var distance = currentItem.height();
				duration = (distance + parseInt(currentItem.css("marginTop"))) / 0.02;

		  		//animate the first child of the tickerDiv
		  		currentItem.animate({ marginTop: -distance }, duration, "linear", function() {
		    
					//move current item to the bottom
					currentItem.appendTo(currentItem.parent()).css("marginTop", 0);

					//recurse
					animator(currentItem.parent().children(":first"));
		  		}); 
			};
		
			//start the tickerDiv
			animator(tickerDiv.children(":first"));
				
			//set mouseenter
			tickerDiv.mouseenter(function() {
		  		//stop current animation
		  		tickerDiv.children().stop();
			});
		
			//set mouseleave
			tickerDiv.mouseleave(function() {
          		//resume animation
		  		animator(tickerDiv.children(":first"));
			});
			
			
		}
	</script>

	<div id="online_qq_layer">
		<div id="online_qq_tab">
			<a id="floatShow" style="display:none;" href="javascript:void(0);">收缩</a> 
			<a id="floatHide" style="display:block;" href="javascript:void(0);">展开</a>
		</div>
		<div id="onlineService">
			<div class="onlineMenu">
				<ul>
					<li class="tli zixun tQQ">在线咨询</li>
					<li><a href="http://wpa.qq.com/msgrd?V=1&Uin=737099789&Site=%E6%85%A7%E6%BA%90%E6%95%99%E8%82%B2&Menu=yes" target="_blank"><img src="images/pa" border="0" alt="QQ">专升本科</a></li>
					<li><a href="http://wpa.qq.com/msgrd?V=1&Uin=737099789&Site=%E6%85%A7%E6%BA%90%E6%95%99%E8%82%B2&Menu=yes" target="_blank"><img src="images/pa" border="0" alt="QQ">高起本科</a></li>
					<li><a href="http://wpa.qq.com/msgrd?V=1&Uin=737099789&Site=%E6%85%A7%E6%BA%90%E6%95%99%E8%82%B2&Menu=yes" target="_blank"><img src="images/pa" border="0" alt="QQ">高起专科</a></li>
					<li><a href="http://wpa.qq.com/msgrd?V=1&Uin=737099789&Site=%E6%85%A7%E6%BA%90%E6%95%99%E8%82%B2&Menu=yes" target="_blank"><img src="images/pa" border="0" alt="QQ">专本套读</a></li>
					<li><a href="http://wpa.qq.com/msgrd?V=1&Uin=737099789&Site=%E6%85%A7%E6%BA%90%E6%95%99%E8%82%B2&Menu=yes" target="_blank"><img src="images/pa" border="0" alt="QQ">南京地区</a></li>
					<li><a href="http://wpa.qq.com/msgrd?V=1&Uin=737099789&Site=%E6%85%A7%E6%BA%90%E6%95%99%E8%82%B2&Menu=yes" target="_blank"><img src="images/pa" border="0" alt="QQ">上海地区</a></li>
					<li><a href="http://wpa.qq.com/msgrd?V=1&Uin=737099789&Site=%E6%85%A7%E6%BA%90%E6%95%99%E8%82%B2&Menu=yes" target="_blank"><img src="images/pa" border="0" alt="QQ">广州地区</a></li>
					<li><a href="http://wpa.qq.com/msgrd?V=1&Uin=737099789&Site=%E6%85%A7%E6%BA%90%E6%95%99%E8%82%B2&Menu=yes" target="_blank"><img src="images/pa" border="0" alt="QQ">深证地区</a></li>
				</ul>
			</div>
			<div class="onlineMenu">
				<h3 class="tele">QQ在线客服</h3>
				<ul>
					<li>400-6565-800</li>
				</ul>
			</div>
			<div class="btmbg"></div>
		</div>
	</div>