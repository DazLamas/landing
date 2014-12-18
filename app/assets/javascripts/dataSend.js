// SENDING PARTICIPANT DATA -----------------------------------------------

document.getElementById('button').onclick = function (){

  var jsonParticipantInfo = {
    "name" : document.getElementById('participant_name').value,
    "email" : document.getElementById('participant_email').value
  }

  $.ajax({
     type       : "POST",
     url        : "/participants",
     beforeSend : function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
     data       : jsonParticipantInfo,
     success: getParticipantID()
  })
}

function getParticipantID() {

    $.getJSON(
      '/participants',
      function(data) {
        var formContainer = document.getElementById('formContainer');
        var p             = document.createElement('p');
        attribute         = document.createAttribute("data-participant-id");
        attribute.value   = data;
        id                = document.createAttribute("id");
        id.value          = "attributeContainer";


        p.setAttributeNode(attribute);
        p.setAttributeNode(id);
        formContainer.insertBefore(p, formContainer.firstChild);
      }
    )

    toggleInvitations();
};

function toggleInvitations(){

  document.getElementById('participantInvitation').style.display      = 'none';
  document.getElementById('formContainer').style.display              = 'block';

};

// SENDING FRIEND DATA -----------------------------------------------

document.getElementById('friendButton').onclick = function (){

  var attributeContainer  =  document.getElementById('attributeContainer');
  var route_number        =  attributeContainer.getAttribute("data-participant-id");

  var jsonFriendInfo = {
    "friend_name"     : document.getElementById('friend_name').value,
    "friend_email"    : document.getElementById('friend_email').value
  }

  $.ajax({
     type       : "POST",
     url        : "/participants/" + route_number +"/friends",
     beforeSend : function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
     data       : jsonFriendInfo,
     success: thanksMessage()
  })
}

function thanksMessage() {
    document.getElementById("formContainer").style.display = 'none';
    document.getElementById("thanks").style.display = 'block';
    document.getElementById('invitation_section').style.backgroundColor = '#32CD32';
};