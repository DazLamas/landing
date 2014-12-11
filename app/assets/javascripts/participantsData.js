// 'use strict';
// //Send data to the server

// document.getElementById('buttonSend').onclick = function (){

//   var participantData ={
//     "name" : document.getElementById('participant_name').value,
//     "email" : document.getElementById('participant_email').value
//   }

//   $.ajax({
//      type     : "POST",
//      url      : "/participants",
//      beforeSend : function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
//      data     : JSON.stringify(participantData)
//    })
// }