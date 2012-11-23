jQuery ($) ->
  $('#start_demo').click ->
    sata = $("#get_sata").val()
    alert (sata)

    $("#sweets_base").css("display","inline")
    $("#sweets_base").animate {
      top: 300
    }, {
      duration: 120
    }

    setTimeout ()->
      $("#choco").css("display","inline")
      $("#choco").animate {
        top: 300
      }, {
        duration: 120
      }
      setTimeout ()->
        $("#arazan").css("display","inline")
        $("#arazan").animate {
          top: 300
        }, {
          duration: 120
        }
        setTimeout ()->
          $("#cream").css("display","inline")
          $("#cream").animate {
            top: 100
          }, {
            duration: 120
          }
          setTimeout ()->
            $("#berry").css("display","inline")
            $("#berry").animate {
              top: 100
            }, {
              duration: 120
            }
            setTimeout ()->
              $("#candle_b").css("display","inline")
              $("#candle_b").animate {
                top: 100
              }, {
                duration: 120
              }
              setTimeout ()->
                $("#candle_r").css("display","inline")
                $("#candle_r").animate {
                  top: 130
                }, {
                  duration: 120
                }
                setTimeout ()->
                  $("#orange").css("display","inline")
                  $("#orange").animate {
                    top: 630
                  }, {
                    duration: 120
                  }
                  setTimeout ()->
                    $("#apple").css("display","inline")
                    $("#apple").animate {
                      top: 590
                    }, {
                      duration: 120
                    }
                  , 200
                , 200
              , 200
            , 200
          , 200
        , 200
      , 200
    , 200

