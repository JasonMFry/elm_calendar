module Main exposing (main)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)
import Time



-- MAIN


main =
    Browser.sandbox { init = init, update = update, view = view }


type alias CalenderEvent =
    { name : String, description : String, start : Time.Posix, end : Time.Posix }


init : CalenderEvent
init =
    { name = "frontend awesome meetup", description = "Great calendar!", start = Time.millisToPosix 0 }


view : CalenderEvent -> Html msg
view event =
    div [] [ text event.name, text event.description, text <| posixToString event.start ]


update msg value =
    value


posixToString : Time.Posix -> String
posixToString =
    String.fromInt << Time.posixToMillis
