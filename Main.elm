-- MAIN & IMPORTS


module Main exposing (..)

import Html exposing (..)


main : Program Never Model Msg
main =
    Html.program { init = init, view = view, update = update, subscriptions = subscriptions }



-- MODEL


type alias Model =
    { content : String
    }


init : ( Model, Cmd Msg )
init =
    ( Model "", Cmd.none )


type Msg
    = SetContent String



-- VIEW


view : Model -> Html Msg
view model =
    div [] []



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SetContent content ->
            ( { model | content = content }, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
