(function(){
    const URL = "cart";
    fetch(URL)
    .then(result=>result.json())
    .then(cartItems => {
      displayCartItems(cartItems)
    })

    function displayCartItems(cartItems) {

      let appendChild = function(tagName, innerHTML, parentOb) {
        let child =  document.createElement(tagName);
        child.innerHTML = innerHTML;
        parentOb.appendChild(child);
      }
      let table = document.createElement("TABLE");
      document.getElementById("cartItems").appendChild(table);

      let tr = document.createElement("TR");
      appendChild("TH", "#", tr);
      appendChild("TH", "Pizza Type", tr);
      appendChild("TH", "Size", tr);
      appendChild("TH", "Pan", tr);
      appendChild("TH", "Quantity", tr);
      table.appendChild(tr);

      for (let item of cartItems) {
        tr = document.createElement("tr");
        appendChild("TD", "", tr);
        appendChild("TD", item.pizza.type, tr);
        appendChild("TD", item.size, tr);
        appendChild("TD", item.pan, tr);
        appendChild("TD", item.quantity, tr);
        appendChild("TD", "price", tr);
        table.appendChild(tr);
      }
    }


})();
