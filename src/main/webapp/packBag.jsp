<head>
	<link href="/resources/css/packBag.css" rel="stylesheet">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
  	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  	<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  	<style>
  		#selectedItemsList {list-style-type: none; margin: 0; padding: 0; width: 60%;}
  		#selectedItemsList li {margin: 0 3px 3px 3px; padding: 0.4em; padding-left: 1.5em; font-size: 1.4em; height: 18px;}
  		#selectedItemsList li span {position: absolute; margin-left: -1.3em;}
    </style>
    
  	<script>
  $(function() {
  	var selectedItems = [];
  	
    var availableItems = [
      "Jeffrey Campbell heels",
      "Neon yellow Zara dress", 
      "Pink flapper dress", 
      "Flip flops", 
      "Blue clutch", 
      "Black clutch", 
      "Green crossbody", 
      "Zara booties"
    ];
    $("#items").autocomplete({
      source: availableItems, 
      select: function(event,ui) {
      	var i = ui.item.value;
      	var alreadyAdded = $.inArray(i, selectedItems);
      	
      	if (alreadyAdded == -1) {
      		selectedItems.push(i);
      		addItem(ui.item.value);
      	}
      }
    });
    
    var addItem = function(item){
    	$("#selectedItemsList").append('<li class="selectedItemsListItem">' + item + '</li>');
	}
  });
  </script>
</head>
<body>
	<h3>Let's pack this bag.</h3>
	<div class="ui-widget">
	  <label for="items">Item: </label>
	  <input id="items">
	</div>
	<div id="selectedItemsDiv" data-role="content">
	    <ul data-role="listview" data-filter="true" data-theme="b" id="selectedItemsList"></ul>
	</div>
</body>