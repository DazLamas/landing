var sendButton = document.getElementById("button");

sendButton.onclick = function() {
  alert("moot!");
  remove(input);
};

function remove(id)
{
    return (elem=document.getElementById(id)).parentNode.removeChild(elem);
}