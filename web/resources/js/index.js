$(function(){
    $('.size').change(displayPrice);
    $('.addToCart').click(addToCart);
    function addToCart(event){
        var element = event.currentTarget;

    }
    function displayPrice(event){
        var element = event.currentTarget;
        console.log($(element).attr("price"));
        console.log($(element).val());
        var price = $(element).attr("price");
        var size = $(element).val();
        price = parseFloat(price);
        if(size==='M'){
            price = price +1;
        }
        if(size ==='L'){
            price = price + 2;
        }
        $(element).closest(".pizza").find(".price").text(price);

        // var arr = $('select.size').map(function(){
        //     return this.value
        // }).get()
        // console.log(arr);
        // $.post('custSize', {custSize:JSON.stringify(arr)}, processData, "json")
    }



    // function processData(data){
    //     //data = JSON.parse(data);
    //     var td0=$('<td>').text(data.id);
    //     var td1 = $('<td>').text(data.name);
    //     var td2 = $('<td>').text(data.price);
    //     var tr = $('<tr>').append(td0).append(td1).append(td2);
    //     $('#tbl_products>tbody').append(tr);
    // }
})

