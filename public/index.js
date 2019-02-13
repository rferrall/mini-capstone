/* global axios */

console.log("index.js loaded");

axios.get("https://frozen-springs-96240.herokuapp.com/api/products").then(function(response) {
  var products = response.data;
  console.log(products);
})