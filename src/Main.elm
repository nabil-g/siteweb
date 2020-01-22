module Main exposing (main)

import Browser exposing (Document)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Http
import Task
import Time


type alias Model =
    ()


initialModel : Int -> ( Model, Cmd Msg )
initialModel time =
    ( ()
    , Cmd.none
    )


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


main : Program Int Model Msg
main =
    Browser.document
        { init = initialModel
        , update = update
        , view =
            \model ->
                { title = "Site de Nabil Ghedjati"
                , body = [ view model ]
                }
        , subscriptions = subscriptions
        }


view : Model -> Html Msg
view model =
    text "Ceci est un test"


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
