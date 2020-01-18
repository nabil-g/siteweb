module Main exposing (main)

import Browser exposing (Document)
import Http
import Task
import Time


type alias Model =
    { zone : Time.Zone
    , time : Time.Posix
    }


initialModel : Int -> ( Model, Cmd Msg )
initialModel time =
    ( Model Time.utc <| Time.millisToPosix time
    , Task.perform AdjustTimeZone Time.here
    )


type Msg
    = AdjustTimeZone Time.Zone
    | Tick Time.Posix


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        AdjustTimeZone zone ->
            ( { model | zone = zone }, Cmd.none )

        Tick posix ->
            ( { model | time = posix }, Cmd.none )


main : Program Int Model Msg
main =
    Browser.document
        { init = initialModel
        , update = update
        , view = view
        , subscriptions = subscriptions
        }


view : Model -> Document Msg
view model =
    { title = "Site de Nabil Ghedjati"
    , body = []
    }


subscriptions : Model -> Sub Msg
subscriptions model =
    Time.every 1000 Tick
