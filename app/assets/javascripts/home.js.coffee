$ ->
  $(".connectedSortable").sortable
    connectWith: ".connectedSortable"
    receive: (ev, ui) ->
      ui.sender.sortable "cancel"  if @classList.contains("vip") and @children.length > 1
      localStorage.persons = $("#persons").html()
      localStorage.slot1 = $("#slot1").html()
      localStorage.slot2 = $("#slot2").html()
      localStorage.slot3 = $("#slot3").html()
      localStorage.others = $("#others").html()

  persons = localStorage.persons
  $("#persons").html persons  if persons isnt null
  $("#slot1").html localStorage.slot1
  $("#slot2").html localStorage.slot2
  $("#slot3").html localStorage.slot3
  $("#others").html localStorage.others
