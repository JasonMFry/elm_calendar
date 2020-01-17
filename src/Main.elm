module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)



-- MAIN


main =
  Browser.sandbox { init = init, update = update, view = view }


init = 
    { name = "frontend awesome meetup", description = "Great calendar!"}


type alias CalenderEvent = 
    { name :String , description :String }


view event =
    div [] [text event.name, text event.description]


update msg value = value
