document.getElementById('button').onclick = function (){

  var jsonParticipantInfo ={
    "name" : document.getElementById('participant_name').value,
    "email" : document.getElementById('participant_email').value
  }

  $.ajax({
     type     : "POST",
     url      : "/participants",
     beforeSend : function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
     data     : jsonParticipantInfo
   })
}

// sendButton.onclick = function() {

//   document.getElementById("participantInvitation").style.display = 'none';

// };