<html>
<head>
    <title>Mule Current Date Example</title>
    <script type="text/javascript" src="js/mule.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
</head>
<body>
<input id="btnStart" type="button" value="Get Current Date">
<br>
<span id="currentDate"></span>

<script type="text/javascript">
    function subscribeToCurrentDateChannel() {
        mule.subscribe("/currentDateAjax", updateCurrentDateOnScreen);
        $('#btnStart').prop("disabled",true);
    }

    function updateCurrentDateOnScreen(response) {
        $('#currentDate').html(response.data.message);
    }
    $('#btnStart').one("click", function(){
        subscribeToCurrentDateChannel();
    });
</script>
</body>
</html>