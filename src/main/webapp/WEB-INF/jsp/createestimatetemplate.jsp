<%@ page language="java" contentType="text/html; charset=utf-8"%><%@ page pageEncoding="utf-8"%><%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%><tiles:insertDefinition name="defaultTemplate">	<tiles:putAttribute name="title">		Create Estimate	Template</tiles:putAttribute>    <tiles:putAttribute name="headerCss">    	
<link rel="stylesheet" type="text/css" href="/resources/css/createestimatetemplate.css"><link rel="stylesheet" type="text/css" href="/resources/css/style-confirmBox.css"><link rel="stylesheet" type="text/css" href="/resources/css/jquery.dataTables.css">	<link rel="stylesheet" type="text/css" href="/resources/css/msc-style.css">		<link rel="stylesheet" type="text/css" href="/resources/css/shCore.css">		<link rel="stylesheet" type="text/css" href="/resources/css/demo.css">		<link rel="stylesheet" type="text/css" href="/resources/css/createestimatetemplate.css">    	<link href="<c:url value="/resources/css/timeclock.css" />" rel="stylesheet">    </tiles:putAttribute>    <tiles:putAttribute name="headerScript">	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>	<script type="text/javascript" src="<c:url value="/resources/js/jquery.dataTables.js" />"></script>	<script type="text/javascript" src="<c:url value="/resources/js/templateprospect.js" />"></script>	<script type="text/javascript" src="/resources/js/shCore.js"></script>	<script type="text/javascript" src="/resources/js/demo.js"></script>    </tiles:putAttribute>    <tiles:putAttribute name="body">
        <div class="contentwrapperClass box-shadow">			<div class="title-1"><h2>Create Estimate Template</h2></div> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>

.contentwrapperClass {background: #fff;text-align: left; min-height: 1800px;}


</style><script>
var count = 0;
var count2 = 0;
function get_numbers(input) {
    return input.match(/[0-9]+/g);
}
	$(document).on('click', '.addButton',function(){
		var className = $(this).closest("tr.schedule").find('table.mw_hr tr.mw_hr_row input').last().attr('class');
		var categoryClassName = $(this).closest("tr.schedule").find('table.mw_hr tr.mw_hr_row:first-child input').last().attr('class');
/*   		alert(className);
 */		var categoryNo = Number(get_numbers(categoryClassName));
		var first_test = get_numbers(className);
		
       if(first_test!=null && className!="firstcategory0"){
    	   index1 = Number(first_test[0]);
    	   index2 = Number(first_test[1])+1;
    	   if(index1!=count2 && !className.includes("catagory")){count = 0;
    		   if(index2==" ") index2=count;
/*            	   alert("in first loop: className"+className+" index1="+index1+" | index2="+index2+" | count2="+count2+" | count="+count); 
 */     	   $(this).closest("tr.schedule").find('table.item_name tr.item_name_row').last().after('<tr class="item_name_row"><td><input  name="itemName" style="background-color:#e6e6e6;" class="itemName'+index1+'_'+index2+'" placeholder="Item Name" id="itemName" size="8"/></td></tr>');
 			   $(this).closest("tr.schedule").find('table.item_price tr.item_price_row').last().after('<tr class="item_price_row"><td><input  name="price" style="background-color:#e6e6e6;" class="price'+index1+'_'+index2+'" placeholder="Price" id="price" size="8"/></td></tr>');
               $(this).closest("tr.schedule").find('table.item_quantity tr.item_quantity_row').last().after('<tr class="item_quantity_row"><td><input  name="quantity" style="background-color:#e6e6e6;" class="quantity'+index1+'_'+index2+'" placeholder="Quantity" id="quantity'+index1+'_'+index2+'" size="8"/></td></tr>');
               $(this).closest("tr.schedule").find('table.item_package tr.item_package_row').last().after('<tr class="item_package_row"><td><input  name="package" style="background-color:#e6e6e6;" class="package'+index1+'_'+index2+'" id="package" size="8" placeholder="Packaging"/></td></tr>');
               $(this).closest("tr.schedule").find('table.mw tr.mw_row').last().after('<tr class="mw_row"><td><input  name="mw" class="mw" id="mw" value="" size="3%" style="background-color:#e6e6e6;" placeholder="Coverage"/></td></tr>');
               $(this).closest("tr.schedule").find('table.mw_hr tr.mw_hr_row').last().after('<tr class="mw_hr_row"><td><input  name="item" class="item'+index1+'_'+index2+'" id="item'+index1+'_'+index2+'" style="background-color:#e6e6e6;" placeholder="Total" size="3"/><br></td></tr>');
               count++;
    	   }else{
if(categoryNo==count2){count = 0;
/*  	   alert("in second catNo loop: className"+className+" index1="+index1+" | index2="+index2+" | count2="+count2+" | count="+count);
 */
 $(this).closest("tr.schedule").find('table.item_name tr.item_name_row').last().after('<tr class="item_name_row"><td><input  name="itemName" class="itemName'+count2+'_'+count+'" id="itemName" style="background-color:#e6e6e6;" placeholder="Item Name" size="8"/></td></tr>');
	 $(this).closest("tr.schedule").find('table.item_price tr.item_price_row').last().after('<tr class="item_price_row"><td><input  name="price" class="price'+count2+'_'+count+'" id="price" style="background-color:#e6e6e6;" placeholder="Price" size="8"/></td></tr>');
     $(this).closest("tr.schedule").find('table.item_quantity tr.item_quantity_row').last().after('<tr class="item_quantity_row"><td><input  name="quantity" class="quantity'+count2+'_'+count+'" style="background-color:#e6e6e6;" placeholder="Quantity" id="quantity'+count2+'_'+count+'" size="8"/></td></tr>');
     $(this).closest("tr.schedule").find('table.item_package tr.item_package_row').last().after('<tr class="item_package_row"><td><input  name="package" class="package'+count2+'_'+count+'" style="background-color:#e6e6e6;" id="package" size="8" placeholder="Packaging"/></td></tr>');
     $(this).closest("tr.schedule").find('table.mw tr.mw_row').last().after('<tr class="mw_row"><td><input  name="mw" class="mw" id="mw" value="" size="3%" style="background-color:#e6e6e6;" placeholder="Coverage"/></td></tr>');
     $(this).closest("tr.schedule").find('table.mw_hr tr.mw_hr_row').last().after('<tr class="mw_hr_row"><td><input  name="item" class="item'+count2+'_'+count+'" id="item'+count2+'_'+count+'" size="3" style="background-color:#e6e6e6;" placeholder="Total"/><br></td></tr>');
     count++;
}else{count = 0;
/*   	   alert("in second catNo else loop: className"+className+" index1="+index1+" | index2="+index2+" | count2="+count2+" | count="+count);
 */  

if(className.includes("catagory")){
/* 	 alert("In if "+className +" | temp "+ temp+" | category number "+categoryNo);
 */	 temp=0;
}else{
	var temp = Number(first_test[1])+Number(1);
/* 	 alert("In else "+className +" | temp "+ temp+" | category number "+categoryNo);
 */
}
 $(this).closest("tr.schedule").find('table.item_name tr.item_name_row').last().after('<tr class="item_name_row"><td><input  name="itemName" style="background-color:#e6e6e6;" class="itemName'+(categoryNo+1)+'_'+temp+'" placeholder="Item Name" id="itemName" size="8"/></td></tr>');
	$(this).closest("tr.schedule").find('table.item_price tr.item_price_row').last().after('<tr class="item_price_row"><td><input style="background-color:#e6e6e6;" name="price" class="price'+(categoryNo+1)+'_'+temp+'" id="price" placeholder="Price" size="8"/></td></tr>');
    $(this).closest("tr.schedule").find('table.item_quantity tr.item_quantity_row').last().after('<tr class="item_quantity_row"><td><input style="background-color:#e6e6e6;" name="quantity" class="quantity'+(categoryNo+1)+'_'+temp+'" placeholder="Quantity" id="quantity'+(categoryNo+1)+'_'+temp+'" size="8"/></td></tr>');
    $(this).closest("tr.schedule").find('table.item_package tr.item_package_row').last().after('<tr class="item_package_row"><td><input style="background-color:#e6e6e6;" name="package" class="package'+(categoryNo+1)+'_'+temp+'" id="package" size="8" placeholder="Packaging"/></td></tr>');
    $(this).closest("tr.schedule").find('table.mw tr.mw_row').last().after('<tr class="mw_row"><td><input  name="mw" class="mw" id="mw" style="background-color:#e6e6e6;" value="" size="3%" placeholder="Coverage"/></td></tr>');
    $(this).closest("tr.schedule").find('table.mw_hr tr.mw_hr_row').last().after('<tr class="mw_hr_row"><td><p class="removeItem"><input style="background-color:#e6e6e6;" name="item" class="item'+(categoryNo+1)+'_'+temp+'" id="item'+(categoryNo+1)+'_'+temp+'" size="3" placeholder="Total"/><br></td></tr>');
	temp++;
}
    		  
    	   }
       }else{
    	   $(this).closest("tr.schedule").find('table.item_name tr.item_name_row').last().after('<tr class="item_name_row"><td><input style="background-color:#e6e6e6;" name="itemName" class="itemName'+count2+'_'+count+'" placeholder="Item Name" id="itemName" size="8"/></td></tr>');
    	   $(this).closest("tr.schedule").find('table.item_price tr.item_price_row').last().after('<tr class="item_price_row"><td><input style="background-color:#e6e6e6;" name="price" class="price'+count2+'_'+count+'" id="price" placeholder="Price" size="8"/></td></tr>');
           $(this).closest("tr.schedule").find('table.item_quantity tr.item_quantity_row').last().after('<tr class="item_quantity_row"><td><input style="background-color:#e6e6e6;" name="quantity" class="quantity'+count2+'_'+count+'" placeholder="Quantity" id="quantity'+count2+'_'+count+'" size="8"/></td></tr>');
    	   $(this).closest("tr.schedule").find('table.item_package tr.item_package_row').last().after('<tr class="item_package_row"><td><input style="background-color:#e6e6e6;" name="package" class="package'+count2+'_'+count+'" id="package" size="8" placeholder="Packaging"/></td></tr>');
    	   $(this).closest("tr.schedule").find('table.mw tr.mw_row').last().after('<tr class="mw_row"><td><input  name="mw" class="mw" id="mw" style="background-color:#e6e6e6;" value="" size="3%" placeholder="Coverage"/></td></tr>');
           $(this).closest("tr.schedule").find('table.mw_hr tr.mw_hr_row').last().after('<tr class="mw_hr_row"><td><p class="removeItem"></p><input style="background-color:#e6e6e6;" name="item" class="item'+count2+'_'+count+'" id="item'+count2+'_'+count+'" placeholder="Total" size="3"/>'+count2+'_'+count+'<br></td></tr>');
           count++;
       }
	});
	var catagoryNameCount = 0;
	var categoryName = "Category";
	$(document).on('click', 'p.addCat',function(){
			count = 0;
			/* alert("Count-2 = "+count2); */
			
			if(catagoryNameCount==0)categoryName="Mobalization";
			if(catagoryNameCount==1)categoryName="Garbage";
			if(catagoryNameCount==2)categoryName="Material";
			if(catagoryNameCount==3)categoryName="Labor";
			if(catagoryNameCount==4)categoryName="WC-INS";
			if(catagoryNameCount==5)categoryName="Details";
			if(catagoryNameCount==6)categoryName="Sub Contractor";
			if(catagoryNameCount==7)categoryName="Main Category";
            $(this).closest("tbody.tbody").append('<tr class="schedule"><td><table class="item_name" width="100%"   bordercolor="#111111" border="0"><tr class="item_name_row"><td><input style=" border:2px solid #2196ce;" name="itemName" value="'+categoryName+'" class="itemName" id="itemName" placeholder="Category Name" size="8" /> <input style="border:2px solid #ff9999;" name="totalForCategory" placeholder="Total Price" class="totalForCategory'+count2+'" id="totalForCategory'+count2+'" size="2" value="" /></td></tr></table></td><td><table class="item_price" width="100%"   bordercolor="#111111" border="0"><tr class="item_price_row"><td><input style=" border:2px solid #2196ce;" value="0" name="price" class="price'+count2+'" placeholder="Price" readonly size="8"/></td></tr></table></td><td><table class="item_quantity" width="100%"   bordercolor="#111111" border="0"><tr class="item_quantity_row"><td><input style=" border:2px solid #2196ce;" placeholder="Quantity" readonly value="0" name="quantity" class="quantity'+count2+'" size="8" /></td></tr></table></td><td><table class="item_package" width="100%"   bordercolor="#111111" border="0"><tr class="item_package_row"><td><input style=" border:2px solid #2196ce;" value="Enter Package"  placeholder="Packaging" readonly name="package" class="package" id="package" size="8" /></td></tr></table></td><td><table class="mw" width="100%"   bordercolor="#111111" border="0"><tr class="mw_row"><td><input style=" border:2px solid #2196ce;"  name="mw" class="mw" value="Coverage" placeholder="Coverage" readonly size="1"/><p class="addCat">(C+)</p><p class="removebtn">(C-)</p></td></tr></table></td><td><table class="mw_hr" width="100%"   bordercolor="#111111" border="0"><tr class="mw_hr_row"><td><input style=" border:2px solid #2196ce;"  name="item" class="catagory'+count2+'" id="catagory'+count2+'" size="1" value="0" /><p class="addButton">(+)</p><p class="removeItem">(-)</p></td></tr></table></td></tr>');
			count2++;     
			catagoryNameCount++;
	});
	$(document).on("click", ".removebtn", function() {
		var x;
		var y;
	    if (mscConfirm("Delete?") == "Ok") {
	    	y = "You removed a category successfully"
	    	    document.getElementById("removedSuccessMessage").innerHTML = y;
	    	 document.getElementById("notRemovedErrorMessage").innerHTML = "";
	    	$(this).closest(".schedule").remove();
	    } else {
	    	mscConfirm("Delete?");

	    	$(this).closest(".schedule").remove();

	    	x = "Category and its item deleted...";
    	    document.getElementById("removedSuccessMessage").innerHTML = "";
	    	 document.getElementById("notRemovedErrorMessage").innerHTML = x;
	    }
	   
 	});
	$(document).on("click", ".removeItem", function() {

		$(this).closest("tr.schedule").find('table.item_name tr.item_name_row').last().remove();
		$(this).closest("tr.schedule").find('table.item_price tr.item_price_row').last().remove();
	    $(this).closest("tr.schedule").find('table.item_quantity tr.item_quantity_row').last().remove();
	    $(this).closest("tr.schedule").find('table.item_package tr.item_package_row').last().remove();
	    $(this).closest("tr.schedule").find('table.mw tr.mw_row').last().remove();
	    $(this).closest("tr.schedule").find('table.mw_hr tr.mw_hr_row').last().remove();
 	});
	$(document).ready(function(){
		$('tr.mw_row:last-child td input').click();
		$('p.addCat').click();
		$('p.addCat').click();
		$('p.addCat').click();
    	$(".firstcategory0").closest(".schedule").remove();

	});
	$(document).on("input", function() {
		document.getElementById("removedSuccessMessage").innerHTML = "";
		document.getElementById("notRemovedErrorMessage").innerHTML = "";
		var count3 = 0;var catTotal = 0;
		for (i = 0; i <= count2; i++) {
			var total = 0;
			var countRow = 0;
			var itemQuantity = 0;
			var itemPrice = 0;
			var two = 0;
			var CategoryPrice = 0;
			var CategoryQuantity = 0;
			for (j = 0; j <= 100; j++) {
				var tst = $('.item' + count3 + "_" + countRow).val();
				two = Number($('.item' + count3 + "_" + countRow).val());
				itemPrice = Number($('.price' + count3 + "_" + countRow).val());
				itemQuantity = Number($('.quantity' + count3 + "_" + countRow).val());
				$('.item' + count3 + "_" + countRow).val(itemPrice*itemQuantity);
				
				CategoryPrice = Number($('.price' + (i-1)).val());
				CategoryQuantity = Number($('.quantity' + (i-1) ).val());
				$(".catagory" + (i - 1)).val(catTotal);

				if(!isNaN(CategoryPrice)){
					catTotal = CategoryPrice*CategoryQuantity;
				}
				if (tst === undefined){
					
				}else{
					total += two;
					$(".totalForCategory" + (i - 1)).val(total);
					countRow++
				}
			}
			
			countRow = 0;
			if (i == 0) {
				$(".firstcategory0").val(total);
			} else {
				$(".totalForCategory" + (i - 1)).val(total+catTotal);
			}
			count3++;
		}
		var totalEstimate = 0;
		for (i = 0; i < count2; i++) {
			
			var categoryAmount = Number($('.totalForCategory' + i).val());
			if(!isNaN(categoryAmount)){

			totalEstimate += categoryAmount;
			}
			/* alert("categoryAmount: "+categoryAmount+" | totalEstimate: "+totalEstimate); */
		}
	    $("#totalItemCosts").val(totalEstimate);

	});
	
	function getTemplateItems(){
		var template = $("#templateList").val();
		//alert("Template "+template);
		var searchterm = $("#templateList").val();
		//alert(searchterm);
		var dataString = 'templatename='+ 'test';

			$.ajax({
			type: "GET",
			url: "/user/dashboard/estimate/"+template+"/search.json",
			data: dataString,
			cache: false,
		async: false,
		jsonpCallback: 'callback',
		contentType: "application/json",
		
			dataType: 'json',
			success: function(result){
			console.log(JSON.stringify(result));	 
			JSON.stringify(result);
			
			 $.each(result, function(index, element) {
				 var counttemplate=0;
				 if(element.status!='SI'){
					 count=0
						 $('.tbody').append('<tr class="schedule"><td><table class="item_name" width="100%"   bordercolor="#111111" border="0"><tr class="item_name_row"><td><input style=" border:2px solid #2196ce;" name="itemName" value="'+element.itemname+'" class="itemName" id="itemName" placeholder="Category Name" size="8" /> <input style="border:2px solid #ff9999;" name="totalForCategory" value="'+element.catagoryTotalAmount+'" placeholder="Total Price" class="totalForCategory'+count2+'" id="totalForCategory'+count2+'" size="2" value="" /></td></tr></table></td><td><table class="item_price" width="100%"   bordercolor="#111111" border="0"><tr class="item_price_row"><td><input style=" border:2px solid #2196ce;" value="0" name="price" class="price'+count2+'" placeholder="Price" readonly size="8"/></td></tr></table></td><td><table class="item_quantity" width="100%"   bordercolor="#111111" border="0"><tr class="item_quantity_row"><td><input style=" border:2px solid #2196ce;" placeholder="Quantity" readonly value="0" name="quantity" class="quantity'+count2+'" size="8" /></td></tr></table></td><td><table class="item_package" width="100%"   bordercolor="#111111" border="0"><tr class="item_package_row"><td><input style=" border:2px solid #2196ce;" value="Enter Package"  placeholder="Packaging" readonly name="package" class="package" id="package" size="8" /></td></tr></table></td><td><table class="mw" width="100%"   bordercolor="#111111" border="0"><tr class="mw_row"><td><input style=" border:2px solid #2196ce;"  name="mw" class="mw" value="Enter Coverage" placeholder="Coverage" readonly size="1"/><p class="addCat">(C+)</p><p class="removebtn">(C-)</p></td></tr></table></td><td><table class="mw_hr" width="100%"   bordercolor="#111111" border="0"><tr class="mw_hr_row"><td><input style=" border:2px solid #2196ce;"  name="item" class="catagory'+count2+'" id="catagory'+count2+'" size="1" value="0" /><p class="addButton">(+)</p><p class="removeItem">(-)</p></td></tr></table></td></tr>');
						count2++; 
						}else{
							$('tr.mw_row:last-child').closest("tr.schedule").find('table.item_name tr.item_name_row').last().after('<tr class="item_name_row"><td><input style="background-color:#e6e6e6;" name="itemName" value="'+element.itemname+'" class="itemName'+count2+'_'+count+'" placeholder="Item Name" id="itemName" size="8"/></td></tr>');
					    	   $('tr.mw_row:last-child').closest("tr.schedule").find('table.item_price tr.item_price_row').last().after('<tr class="item_price_row"><td><input style="background-color:#e6e6e6;" name="price" value="'+element.price+'" class="price'+count2+'_'+count+'" id="price" placeholder="Price" size="8"/></td></tr>');
					           $('tr.mw_row:last-child').closest("tr.schedule").find('table.item_quantity tr.item_quantity_row').last().after('<tr class="item_quantity_row"><td><input style="background-color:#e6e6e6;" name="quantity" value="'+element.quantity+'" class="quantity'+count2+'_'+count+'" placeholder="Quantity" id="quantity'+count2+'_'+count+'" size="8"/></td></tr>');
					    	   $('tr.mw_row:last-child').closest("tr.schedule").find('table.item_package tr.item_package_row').last().after('<tr class="item_package_row"><td><input style="background-color:#e6e6e6;" name="package" value="'+element.packages+'" class="package'+count2+'_'+count+'" id="package" size="8" placeholder="Packaging"/></td></tr>');
					    	   $('tr.mw_row:last-child').closest("tr.schedule").find('table.mw tr.mw_row').last().after('<tr class="mw_row"><td><input  name="mw" class="mw" id="mw" style="background-color:#e6e6e6;" value="'+element.coverage+'"" size="3%" placeholder="Coverage"/></td></tr>');
					           $('tr.mw_row:last-child').closest("tr.schedule").find('table.mw_hr tr.mw_hr_row').last().after('<tr class="mw_hr_row"><td><input style="background-color:#e6e6e6;" name="item" value="'+element.total+'" class="item'+count2+'_'+count+'" id="item'+count2+'_'+count+'" placeholder="Total" size="3"/><br></td></tr>');
					           count++;
						/* $('#result1').append('<tr class="schedule"><td><table class="item_name" width="100%"   bordercolor="#111111" border="0"><tr class="item_name_row"><td><input style="background-color:#e6e6e6;" name="price" value="'+element.itemname+'"  class="price'+count2+'_'+count+'" id="price" placeholder="Price" size="8"/> </td></tr></table></td><td><table class="item_price" width="100%"   bordercolor="#111111" border="0"><tr class="item_price_row"><td><input style="background-color:#e6e6e6;" name="price" value="'+element.price+'" class="price'+count2+'_'+count+'" id="price" placeholder="Price" size="8"/></td></tr></table></td><td><table class="item_quantity" width="100%" bordercolor="#111111" border="0"><tr class="item_quantity_row"><td><input style="background-color:#e6e6e6;" name="quantity" value="'+element.quantity+'" class="quantity'+count2+'_'+count+'" placeholder="Quantity" id="quantity'+count2+'_'+count+'" size="8"/></td></tr></table></td><td><table class="item_package" width="100%"   bordercolor="#111111" border="0"><tr class="item_package_row"><td><input style="background-color:#e6e6e6;" name="package" value="'+element.packages+'" class="package'+count2+'_'+count+'" id="package" size="8" placeholder="Packaging"/></td></tr></table></td><td><table class="mw" width="100%"   bordercolor="#111111" border="0"><tr class="mw_row"><td><input  name="mw" value="'+element.coverage+'" class="mw" id="mw" style="background-color:#e6e6e6;" value="" size="3%" placeholder="Coverage"/></td></tr></table></td><td><table class="mw_hr" width="100%"   bordercolor="#111111" border="0"><tr class="mw_hr_row"><td>'+count2+'_'+count+'<input style="background-color:#e6e6e6;" name="item" value="'+element.total+'" class="item'+count2+'_'+count+'" id="item'+count2+'_'+count+'" placeholder="Total" size="9"/></td></tr></table></td></tr>');
						count++; */
					}
		/* 				$('#result1').append('<tr><td><input  name="itemNames" value="'+element.itemname+'"></td><td><input  name="itemPrice" value="'+element.price+'"></td><td><input  name="itemQuantity" value="'+element.quantity+'"></td><td><input  name="itemCoverage" value="'+element.coverage+'"></td><td><input  name="itemPackages" value="'+element.packages+'"></td><td><input  name="itemTotal" value="'+element.total+'"></td></tr>');
		*/				counttemplate++;
					 				
			}); 

			}
			});
			getTemplateExtraExpenses(template);
	}
	
	function getTemplateExtraExpenses(template){
		var dataString = 'templatename='+ 'test';

			$.ajax({
			type: "GET",
			url: "/user/dashboard/estimateextraenpenses/"+template+"/search.json",
			data: dataString,
			cache: false,
		async: false,
		jsonpCallback: 'callback',
		contentType: "application/json",
		
			dataType: 'json',
			success: function(result){
			console.log(JSON.stringify(result));	 
			JSON.stringify(result);
			
			 $.each(result, function(index, element) {
				 var counttemplate=0;
				$('#result2').append('<tr><td><input  name="extraExpenseNames" value="'+element.extraexpense+'"></td><td><input  name="extraExpensePercentage" value="'+element.percentage+'"></td><td><input  name="extraExpenseTotal" value="'+element.total+'"></td></tr>');
				counttemplate++;
			}); 

			}
			});
	}
</script>
<script>
function proposalSelection(){
	alert("dd");
}
</script>
<style>
.addCat{
font-weight:bold;
font-size:1.5em;
color: #004d99;
}
.removeItem{
	color:red;
	font-weight:bold;
font-size:1.5em;
	}
.estimateGuidance{
color:#0088cc;
font-weight:bold;
font-size:12px;
padding: 0% 0% 2%
}
</style>
<div class="addpadding">
<p style="color: red; font-size:1em;" id="notRemovedErrorMessage"></p>
<p style="color: green; font-size:1em;" id="removedSuccessMessage"></p>
<br><br>
<div style="padding-left:2%;">
<p class="estimateGuidance">Save time by using checklists and estimate templates of items you created earlier. You can use multiple checklists and templates to create an estimate. Click the <span style="color: #004d99; font-size: 15px; font-weight:bold">“(+)”</span> button to add multiple items. Click any <span style="color: #004d99; font-size: 15px; font-weight:bold">“( C [ 0,1,2...] + )”</span> button to add more categories. Click the <span style="color: red; font-size: 15px; font-weight:bold">“(-)”</span> button to remove categories and its items. When you’re finished, select the proposal for which you wish to create an estimate and later refer it from the timeline on project description page.</p>
				
    	<form id="estimateForm" method="POST" name="estimateForm" action="/user/dashboard/saveestimateTemplate" >
		<input style="padding:1%;" size="14" name="estimateTitle" placeholder="Enter Estimate Title" required/><br><br><br>
		<hr><br><br>
		
		
					
<script>
function myFunction() {
	var template = $("#mySelect").val();

	$("#proposal").val(template);
}
</script>
		<table style="width: 900px; margin-top: 5px;" align="center">
  <thead>
    <tr>
      <th width="22%" class="cntr">
        Item Name
      </th>
      <th width="13.97%" class="cntr">
        Price
      </th>
      <th width="13.97%" class="cntr">
        Quantity
      </th>
      <th width="13.97%" class="cntr">
        Package
      </th>
      <th width="13.97%" class="cntr">
        Coverage
      </th>
      <th width="13.97%" class="cntr">
        Total
      </th>
    </tr>
  </thead></table>
<div class="FixedHeightArchiveContainer">
  <div class="ArchiveContent">
  <table id="result1" style="float:left;clear:left;"></table>
  
 <table class="bordered2" style="width: 900px; margin-top: 5px;" align="center">
  
  <tbody class="tbody">
    <tr class="schedule">
       <td>
        <table class="item_name" width="100%"   bordercolor="#111111" border="0">
          <tr class="item_name_row">
            <td>
              <input  name="itemName" class="itemName" id="itemName" placeholder="Item Name" style=" border:2px solid #2196ce;" value="Customize Category" size="3%" />
            </td>
          </tr>
        </table>
      </td>
      <td>
        <table class="item_price" width="100%"   bordercolor="#111111" border="0">
          <tr class="item_price_row">
            <td>
              <input  name="price" class="price" id="price" placeholder="Price" style=" border:2px solid #2196ce;" size="8" />
            </td>
          </tr>
        </table>
      </td>
      <td>
        <table class="item_quantity" width="100%"   bordercolor="#111111" border="0">
          <tr class="item_quantity_row">
            <td>
              <input  name="quantity" class="quantity" id="quantity" placeholder="Quantity" style=" border:2px solid #2196ce;" size="8" />
            </td>
          </tr>
        </table>
      </td>
      <td>
        <table class="item_package" width="100%"   bordercolor="#111111" border="0">
          <tr class="item_package_row">
            <td>
              <input  name="package" class="package" id="package" placeholder="Packaging" style=" border:2px solid #2196ce;" size="3%" />
            </td>
          </tr>
        </table>
      </td>
      <td>
        <table class="mw" width="100%"   bordercolor="#111111" border="0">
          <tr class="mw_row">
            <td>
              <input  name="mw" value="" size="3%" placeholder="Coverage" style="border:2px solid #2196ce;"/>
              <p class="addButton">(+)</p><p class="removebtn">(-)</p>
            </td>
          </tr>
        </table>
      </td>
      <td>
        <table class="mw_hr" width="100%"   bordercolor="#111111" border="0">
          <tr class="mw_hr_row">
            <td><p class="addCat">C+</p>
              <input  name="category" class="firstcategory0" id="item" placeholder="Total" style="border:2px solid #2196ce;" size="3%"/>
            </td>
          </tr>
        </table>
      </td>
    </tr>
    <tr class="sumtr" id="sumtr">
      <td id="sumtd" colspan="5">
      </td>
      <td name="totalitem" class="totalitem" id="totalitem">
      </td>
    </tr>
  </tbody>
</table>
		
</div>
Total Estimate Amount: <br><br><input name="income_sum"  id="totalItemCosts" placeholder="Total cost $US" class=""><br><br>

		
		<br><br><hr><br><br>
		
		<script>
		
		$(document).ready(function() {
			$("#ExpensesTable").on("change", "input", function () {  //use event delegation
				  var tableRow = $(this).closest("tr");  //from input find row
				  var one = Number(tableRow.find(".ExpensePercentage").val());  //get first textbox
				  var two = $("#totalItemCosts").val();  //get second textbox
				  var total = one * two/100;  //calculate total
				  tableRow.find(".totalExtraExpense").val(total);  //set value
				  var total = 0;
				    
				    $('.totalExtraExpense').each(function() {
				    	total += Number($(this).val());
				    });
				    total = total + Number($("#totalItemCosts").val());
				    $("#totalExtraExpense").val(total);
				});

				$("p.addExtraExpensesFields").on("click", function() {
				   var tbody = $("#ExpenseTableBody");
				   tbody.find("tr:eq(0)").clone().appendTo(tbody).find("input").val("");
				});
			});
		$(document).ready(function() {
			$("#profitTable").on("change", "input", function () {  //use event delegation
				  var tableRow = $(this).closest("tr");  //from input find row
				  var one = Number(tableRow.find(".profitPercentage").val());  //get first textbox
				  var two = $("#totalExtraExpense").val();  //get second textbox
				  var total = one * two/100;  //calculate total
				  tableRow.find(".totalExtraProfit").val(total);  //set value
				  var totalEstimateAmount = total + Number($("#totalExtraExpense").val());
				  tableRow.find(".totalExtraProfitAndSum").val(totalEstimateAmount);  //set value
				});

				$("p.addExtraProfitFields").on("click", function() {
				   var tbody = $("#ProfitTableBody");
				   tbody.find("tr:eq(0)").clone().appendTo(tbody).find("input").val("");
				});
			});

			$(document).ready(function() {

			$("#calculateTotalProfit").click(function() {
			    var total = 0;
			    
			    $('.totalExtraProfit').each(function() {
			    	total += Number($(this).val());
			    });
			    total = total + Number($("#totalExtraExpense").val());
			    $("#totalExtraProfit").val(total);
			});
			});

		</script>
		<!-- Extha Expenses -->
		
				<p class="addExtraExpensesFields button2" >Add More Expenses? + </p><br><br><br>
		
		
		<table id="ExpensesTable" style="width:100%">
			
			<tr><th>Extra Expense</th><th>Percentage</th><th>Total</th></tr>
			
			<!-- Overhead -->
			<tr>
      		<td><input style="padding:2%;" size="38" name="expenseName" value="Overhead" class="expenseName" placeholder="Expense"/></td>
      		<td><input style="padding:2%;" size="38" name="expensePercentage" class="ExpensePercentage" placeholder="Percentage %"   /></td>
			<td><input style="padding:2%;" size="38" name="expenseTotal" class="totalExtraExpense" placeholder="Total Expenses"/></td>			
			</tr>
			
			<!-- Insurance -->
			<tr>
      		<td><input style="padding:2%;" size="38" name="expenseName" value="Insurance" class="expenseName" placeholder="Expense"/></td>
      		<td><input style="padding:2%;" size="38" name="expensePercentage" class="ExpensePercentage" placeholder="Percentage %"   /></td>
			<td><input style="padding:2%;" size="38" name="expenseTotal" class="totalExtraExpense" placeholder="Total Expenses"/></td>			
			</tr>
		 	<tbody id="ExpenseTableBody">
  		 <tr>
      		<td><input style="padding:2%; background-color: #f2f2f2; color: #2196ce" size="38" name="expenseName" class="expenseName" placeholder="Expense"/></td>
      		<td><input style="padding:2%; background-color: #f2f2f2; color: #2196ce" size="38" name="expensePercentage" class="ExpensePercentage" placeholder="Percentage %"   /></td>
			<td><input style="padding:2%; background-color: #f2f2f2; color: #2196ce" size="38" name="expenseTotal" class="totalExtraExpense" placeholder="Total Expenses"/></td>
    	</tr>
<!--     	<table id="result2" style="float:left;clear:left;"></table>
 -->  		</tbody>
  		 <tr>
      		<td>Total:</td><td><p id="calculateTotalExtraExpense" class="ex2"><a class="ex2">Confirm...</a></p></td><td><input  style="padding:2%; background-color: #f2f2f2; color: #2196ce" size="38" id="totalExtraExpense" name="totalExtraExpense" placeholder="Total"/></td>
    	</tr>
		</table><br><br><hr><br><br>
		
		<!-- Profit of all Estimate -->
		
				<p class="addExtraProfitFields button2" >Add More Profit? + </p><br><br><br>
		
		
		<table id="profitTable" style="width:100%">
			
			<tr><th>Extra Expense</th><th>Percentage</th><th>Profit</th><th>Total</th></tr>
			
			<!-- Profit 1 -->
			<tr>
      		<td><input style="padding:2%;" size="26" name="profitName" value="Profit" class="profitName" placeholder="Profit Name"/></td>
      		<td><input style="padding:2%;" size="26" name="profitPercentage" class="profitPercentage" placeholder="Percentage %"   /></td>
			<td><input style="padding:2%;" size="26" name="profitTotal" class="totalExtraProfit" placeholder="Profitable Amount"/></td>			
			<td><input style="padding:2%;" size="26" name="profitTotalSummation" class="totalExtraProfitAndSum" placeholder="Chargable Amount"/></td>			
			</tr>
			
			<!-- Profit 2 -->
			<tr>
      		<td><input style="padding:2%;" size="26" name="profitName" value="Profit" class="profitName" placeholder="Profit Name"/></td>
      		<td><input style="padding:2%;" size="26" name="profitPercentage" class="profitPercentage" placeholder="Percentage %"   /></td>
			<td><input style="padding:2%;" size="26" name="profitTotal" class="totalExtraProfit" placeholder="Profitable Amount"/></td>			
			<td><input style="padding:2%;" size="26" name="profitTotalSummation" class="totalExtraProfitAndSum" placeholder="Chargable Amount"/></td>			
			</tr>
		 	<tbody id="ProfitTableBody">
  		 <tr>
      		<td><input style="padding:2%; background-color: #f2f2f2; color: #2196ce" size="26" name="profitName" class="profitName" placeholder="Profit Name"/></td>
      		<td><input style="padding:2%; background-color: #f2f2f2; color: #2196ce" size="26" name="profitPercentage" class="profitPercentage" placeholder="Percentage %"   /></td>
			<td><input style="padding:2%; background-color: #f2f2f2; color: #2196ce" size="26" name="profitTotal" class="totalExtraProfit" placeholder="Profitable Amount"/></td>
			<td><input style="padding:2%;" size="26" name="profitTotalSummation" class="totalExtraProfitAndSum" placeholder="Chargable Amount"/></td>			
			
    	</tr>
  		</tbody>
		</table>
		<div id="submitButtonDiv">
		<br><br><hr>
		<input type="submit" class="button button2" value="Save Template">
		<br><hr><br><br><br><br>
		<a href="https://www.youtube.com/watch?v=UA4oeNBHx6k" >Need Help?</a>
		
</form>
	</div>
	</div>
</div>
				</div>    </tiles:putAttribute>     <tiles:putAttribute name="footerScript">   <script type="text/javascript" src="<c:url value="/resources/js/msc-script.js" />"></script>	<script type="text/javascript" src="<c:url value="/resources/js/timeclockdesk_new.js" />"></script>    </tiles:putAttribute></tiles:insertDefinition>