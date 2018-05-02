var allpage = 10
var currentpage = 10
var page_length = 5
var downpage = currentpage
var uppage = currentpage

function createItem(pageCount){
	var newLi = document.createElement("li");
	var newLink = document.createElement("a");
	var newlinkdestination = "http://www.baidu.com"
	newLink.innerHTML = pageCount;
	newLink.href = newlinkdestination;
	newLink.id = pageCount;
	//newLi.innerHTML = "<a href='#' id = ('a'+downpage+'a')>"+ pageCount +"</a>";
	newLi.append(newLink);
	return newLi
}

$(document).ready(function(){
	$("#pagination").append("<li class='currentPage'>"+ (currentpage) +"</li>");
	  while ($("#pagination li").length < page_length){
		if ((downpage-1)>0){
			if((downpage-1)>=(currentpage-(page_length/2))){
				downpage--;
				$("#pagination").prepend(`
					<li>
						<a href='#' onclick="function(){targetFunc(${downpage})}">
							${downpage}
						</a>
					</li>`
				);
		}
			else{
			if (uppage == allpage){
				downpage--;
				//$("#pagination").prepend("<li><a href='#'>"+ downpage +"</a></li>");
				$("#pagination").prepend(createItem(downpage));
			}
		}
	}

		if ((uppage+1)<=allpage){
			if((uppage+1)<=(currentpage+(page_length/2))){
			uppage++;
			$("#pagination").append("<li><a href='#'>"+ uppage +"</a></li>");
		}
		else{
			if (downpage == 1){
				uppage++;
				$("#pagination").append("<li><a href='#'>"+ uppage +"</a></li>");
			}
		}
	}	
		if(page_length == $("#pagination li").length){
			break;
		}
		if(allpage == $("#pagination li").length){
			break;
		}
		}
	
	if($("#pagination li").last().text() != allpage){
		$("#pagination").append("<li class='nextButton'><a href='#'>"+ "Next" +"</a></li>");
	}
	if($("#pagination li").first().text() != 1){
		$("#pagination").prepend("<li class='previousButton'><a href='#'>"+ "Previous" +"</a></li>");
	}
});

var a = $("#pagination li").find('a');

$("#pagination li a").click(function(){
	alert("This is the "+$("#pagination li a").text()+"button");
});