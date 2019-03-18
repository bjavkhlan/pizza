$(function(){
    $('.size').change(displayPrice);
    $('.addToCart').click(addToCart);
    function addToCart(event){
        var element = event.currentTarget;
        var pizzaId = $(element).closest(".pizza").attr("pizzaId");
        var pizzaSize = $(element).closest(".pizza").find(".size").val();
        var pizzaPan = $(element).closest(".pizza").find(".pan").val();
        var pizzaQuantity = $(element).closest(".pizza").find(".quantity").val();
        var ret={
            pizzaId:pizzaId,
            pizzaSize:pizzaSize,
            pizzaPan:pizzaPan,
            pizzaQuantity:pizzaQuantity
        }
        console.log(ret);
        $.post('cart', {
            pizzaId:pizzaId,
            pizzaSize:pizzaSize,
            pizzaPan:pizzaPan,
            pizzaQuantity:pizzaQuantity
        }, function(){
            alert("Added to Cart");
        });
    }
    function displayPrice(event){
        var element = event.currentTarget;

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

