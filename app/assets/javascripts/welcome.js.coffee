jQuery ($) ->
  $('#start_demo').on "click", ->

    sum = $("#get_number").val()

    $("#sweets_base").css("display","inline")
    $("#sweets_base").animate {
      top: 300
    }, {
      duration: 120
    }

    if sum < 5
      text_up = 200

    if 5 <= sum
      text_up = 400
      setTimeout ()->
        $("#choco").css("display","inline")
        $("#choco").animate {
          top: 300
        }, {
          duration: 120
        }
      , 200

    if 10 <= sum
      text_up = 600
      setTimeout ()->
        $("#arazan").css("display","inline")
        $("#arazan").animate {
          top: 300
        }, {
          duration: 120
        }
      , 400

    if 20 <= sum
      text_up = 800
      setTimeout ()->
        $("#orange").css("display","inline")
        $("#orange").animate {
          top: 630
        }, {
          duration: 120
        }
      , 600

    if 30 <= sum
      text_up = 1000
      setTimeout ()->
        $("#apple").css("display","inline")
        $("#apple").animate {
          top: 590
        }, {
          duration: 120
        }
      , 800

    if 35 <= sum
      text_up = 1200
      setTimeout ()->
        $("#cream").css("display","inline")
        $("#cream").animate {
          top: 100
        }, {
          duration: 120
        }
      , 1000

    if 40 <= sum
      text_up = 1400
      setTimeout ()->
        $("#berry").css("display","inline")
        $("#berry").animate {
          top: 130
        }, {
          duration: 120
        }
      , 1200

    if 50 <= sum
      text_up = 1600
      setTimeout ()->
        $("#candle_b").css("display","inline")
        $("#candle_b").animate {
          top: 100
        }, {
          duration: 120
        }
      , 1400

    if 60 <= sum
      text_up = 1800
      setTimeout ()->
        $("#candle_r").css("display","inline")
        $("#candle_r").animate {
          top: 130
        }, {
          duration: 120
        }
      , 1600

    setTimeout ()->
      $("#sum_sata").css("display", "inline")
    , text_up

    setTimeout ()->
      $("#sum_number").html(sum)
    , text_up
