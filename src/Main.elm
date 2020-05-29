module Main exposing (main)

import Browser exposing (Document)
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Events exposing (..)
import Element.Font as Font
import Element.Input as Input
import Html
import Html.Attributes as HA
import Html.Events as HE
import Http
import Task
import Time


type alias Model =
    { age : Int
    , pageState : PageState
    }


initialModel : Int -> ( Model, Cmd Msg )
initialModel year =
    ( { age = year - 1992
      , pageState = Landing
      }
    , Cmd.none
    )


type PageState
    = Landing
    | Page Page


type Page
    = Home
    | Skills
    | Xp
    | Education
    | About
    | Legal
    | Contact


type Msg
    = Enter
    | GoTo Page


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Enter ->
            ( { model | pageState = Page Home }, Cmd.none )

        GoTo page ->
            ( { model | pageState = Page page }, Cmd.none )


main : Program Int Model Msg
main =
    Browser.document
        { init = initialModel
        , update = update
        , view =
            \model ->
                { title = "Site de Nabil Ghedjati"
                , body = [ layout [ Font.family [ Font.typeface "Raleway", Font.sansSerif ] ] <| view model ]
                }
        , subscriptions = subscriptions
        }


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


view : Model -> Element Msg
view model =
    case model.pageState of
        Landing ->
            el [ width fill, height fill ] <|
                el [ centerX, centerY, onClick Enter, Font.size 80, Font.bold, pointer ] <|
                    text "Nabil.Ghedjati"

        Page currentPage ->
            column [ width fill, height fill ]
                [ viewHeader currentPage
                , el [] <|
                    case currentPage of
                        Home ->
                            column []
                                [ paragraph []
                                    [ text "Hello world."
                                    , el [ htmlAttribute <| HA.class "cursor" ] <| text "█"
                                    ]

                                --, paragraph [ htmlAttribute <| HA.class "hw",htmlAttribute <| HA.id"hwMobile" ] [ text "Hello world.", el [ htmlAttribute <| HA.class "cursor" ] [ text "█" ] ]
                                , paragraph []
                                    [ text "Bienvenue ! Je suis un jeune"
                                    , el [ Font.bold ] <| text "développeur Web"
                                    , text "de ans"
                                    , text "plein d'idées et de motivation. Consultez mon parcours et n'hésitez pas à me contacter."
                                    ]
                                , newTabLink []
                                    { url = "assets/cv_nabil_ghedjati_2017.pdf"
                                    , label = text "Télécharger le CV"
                                    }
                                ]

                        Skills ->
                            let
                                devicon title picto =
                                    el [ htmlAttribute <| HA.title title, htmlAttribute <| HA.class <| "colored devicon-" ++ picto ] none
                            in
                            column [ htmlAttribute <| HA.class "rubcolumn", htmlAttribute <| HA.id "one" ]
                                [ el [] <| text "Compétences"
                                , row []
                                    [ newTabLink [] { url = "https://www.w3.org/html/", label = devicon "HTML5" "html5-plain-wordmark" }
                                    , newTabLink [] { url = "https://www.w3.org/Style/CSS/", label = devicon "CSS3" "css3-plain-wordmark" }
                                    , newTabLink [] { url = "https://js.org/", label = devicon "JavaScript" "javascript-plain" }
                                    , newTabLink [] { url = "https://jquery.com/", label = devicon "jQuery" "jquery-plain-wordmark" }
                                    , newTabLink [] { url = "http://www.php.net/", label = devicon "PHP" "php-plain" }
                                    ]
                                , row []
                                    [ newTabLink [] { url = "https://git-scm.com/", label = devicon "Git" "git-plain" }
                                    , newTabLink [] { url = "https://www.mysql.fr/", label = devicon "MySQL" "mysql-plain" }
                                    , newTabLink [] { url = "https://www.linuxfoundation.org/", label = devicon "Linux" "linux-plain" }
                                    , newTabLink [] { url = "https://cordova.apache.org/", label = image [ htmlAttribute <| HA.title "Apache Cordova" ] { src = "assets/cordova_64.png", description = "Cordova Icon" } }
                                    , newTabLink [] { url = "http://elm-lang.org/", label = image [ htmlAttribute <| HA.title "Elm", width <| px 60 ] { src = "assets/elm_logo.png", description = "Elm Icon" } }
                                    ]
                                , row []
                                    [ newTabLink [] { url = "https://nodejs.org/en/", label = devicon "Node.JS" "nodejs-plain" }
                                    , newTabLink [] { url = "https://www.arduino.cc/", label = image [ htmlAttribute <| HA.title "Arduino", width <| px 58 ] { src = "assets/arduino.svg", description = "Arduino Icon" } }
                                    , newTabLink [] { url = "https://vuejs.org/", label = devicon "Vue.js" "vuejs-plain" }
                                    , newTabLink [] { url = "http://sass-lang.com/", label = devicon "Sass" "sass-original" }
                                    , newTabLink [] { url = "https://symfony.com/", label = devicon "Symfony" "symfony-original" }
                                    ]
                                ]

                        Xp ->
                            column []
                                [ el [] <| text "Expérience"
                                , column []
                                    [ row []
                                        [ el [] <| text "Depuis septembre 2017" ]
                                        , el [] <|  text "Développeur web"
                                        , el [] <|  text "Spottt"
                                        ]
                                    , row []
                                        [ el [] <|  text "Juillet 2014"
                                        , el [] <| text "Auxiliaire d'été"
                                        , el [] <| text "Société Générale, agence de Thiers"
                                        ]
                                    , row []
                                        [ el [] <|  text "Années scolaires 2012/2014"
                                        , el [] <|  text "Stagiaire (pendant 17 semaines non consécutives)"
                                        , el [] <|  text "Caisse d'Épargne Auvergne-Limousin, agence de Thiers"
                                        , el [] <| text "Société Générale, agences de Beaumont et Thiers"
                                        ]
                                    ]
                                ]

                        Education ->
                            column [ htmlAttribute <| HA.id "three", htmlAttribute <| HA.class "rubcolumn" ]
                                [el [] <|  text "Formation"
                                 column []
                                         [ row []
                                                                         [ el [] <| text "2017/2018"
                                         , td [] [ strong [] [ text "EPSI Lyon", br [] [], em [] [ text "Bachelor Informatique 3ème année" ] ] ]
                                         , tr [] [ td [ htmlAttribute <| HA.class "date" ] [ text "2016/2017" ], td [] [ strong [] [ text "Simplon.co", br [] [], em [] [ text "Labélisée Grande école du numérique" ] ] ] ]
                                         , tr [] [ td [ htmlAttribute <| HA.class "date" ] [ text "2014/2015" ], td [] [ strong [] [ text "Licence Pro Management des collectivités territoriales" ], br [] [], text "(formation uniquement)", br [] [], em [] [ text "Université d'Auvergne, CLERMONT-FERRAND" ] ] ]
                                         , tr [] [ td [ htmlAttribute <| HA.class "date" ] [ text "2012 / 2014" ], td [] [ strong [] [ text "BTS Banque Option Marché des Particuliers", br [] [], em [] [ text "Lycée Ambroise Brugière, CLERMONT-FERRAND" ] ] ] ]
                                         ]
                                     ]
                                ]

                        About ->
                            column [ htmlAttribute <| HA.id "four", htmlAttribute <| HA.class "rubcolumn" ]
                                [--paragraph [] [ text "À propos" ]
                                 --, br [] []
                                 --, table []
                                 --    [ tr []
                                 --        [ td [ htmlAttribute <| HA.class "date" ]
                                 --            [ text "Langues"
                                 --            ]
                                 --        , td []
                                 --            [ text "Français (langue maternelle)"
                                 --            , br [] []
                                 --            , text "Anglais (courant)"
                                 --            ]
                                 --        ]
                                 --    , tr []
                                 --        [ td [ htmlAttribute <| HA.class "date" ]
                                 --            [ text "Centres d'intérêts"
                                 --            ]
                                 --        , td []
                                 --            [ text "Cinéma, nouvelles technologies, sports de montagne,"
                                 --            , br [] []
                                 --            , text "tennis, photographie, musique"
                                 --            ]
                                 --        ]
                                 --    ]
                                 --, paragraph[ htmlAttribute <| HA.class "credits" ]
                                 --    [ text "&copy; "
                                 --    , el [htmlAttribute <| HA.id"aboutCredits" ] []
                                 --    , text "Nabil Ghedjati. "
                                 --    , newTabLink [htmlAttribute <| HA.id"legallink", url ="#" ]
                                 --        [ strong [] [ text "Mentions légales" ]
                                 --        ]
                                 --    ]
                                ]

                        Legal ->
                            column [ htmlAttribute <| HA.id "five", htmlAttribute <| HA.class "rubcolumn" ]
                                [-- paragraph [] [ text "Mentions légales" ]
                                 --, paragraph[ htmlAttribute <| HA.class "credits" ]
                                 --    [ text "Créateur et propriétiare : Nabil Ghedjati"
                                 --    , br [] []
                                 --    , text "Hébergé par "
                                 --    , newTabLink [ url ="https://www.netlify.com/", target "_blank" ] [ text "Unsplash.com" ]
                                 --    , br [] []
                                 --    , br [] []
                                 --    , text "&copy; "
                                 --    , el [htmlAttribute <| HA.id"legalCredits" ] []
                                 --    , text "Nabil Ghedjati."
                                 --    ]
                                ]

                        Contact ->
                            column [ htmlAttribute <| HA.id "six", htmlAttribute <| HA.class "rubcolumn" ]
                                [--paragraph [] [ text "Contact" ]
                                 --, paragraph[htmlAttribute <| HA.id"reponseMsg" ] []
                                 --, Html.form [htmlAttribute <| HA.id"form", name "contactForm" ]
                                 --    [ input
                                 --        [ type_ "text"
                                 --        , placeholder "Votre nom"
                                 --        , value ""
                                 --        ]
                                 --        []
                                 --    , input
                                 --        [ type_ "email"
                                 --        , placeholder "Votre adresse e-mail"
                                 --        , value ""
                                 --        ]
                                 --        []
                                 --    , textarea
                                 --        [ rows 6
                                 --        , placeholder "Votre message (entre 2 et 1500 caractères)"
                                 --        ]
                                 --        []
                                 --    , paragraph[htmlAttribute <| HA.id"erreurForm" ]
                                 --        [ text "Les champs marqués en rouge sont incomplets ou incorrects."
                                 --        ]
                                 --    , paragraph[htmlAttribute <| HA.id"okForm" ] []
                                 --    , button [htmlAttribute <| HA.id"sendbutton" ]
                                 --        [ text "Envoyer"
                                 --        ]
                                 --    ]
                                 --, paragraph[ htmlAttribute <| HA.class "credits",htmlAttribute <| HA.id"credits" ] []
                                ]
                ]


viewHeader : Page -> Element Msg
viewHeader currentPage =
    let
        btn =
            el [ paddingXY 14 12, Font.color black, pointer ]

        pictoBtn title picto =
            btn <| el [ htmlAttribute <| HA.class <| "fa fa-" ++ picto, htmlAttribute <| HA.title title ] none

        internalBtn page =
            el
                (if page == currentPage then
                    [ Border.roundEach { topLeft = 0, topRight = 0, bottomRight = 7, bottomLeft = 7 }
                    , Background.color <| rgba 0 0 0 0.5
                    , Font.color white
                    ]

                 else
                    [ onClick <| GoTo page, mouseOver [ Font.color white ] ]
                )

        link url title picto =
            newTabLink [] { url = url, label = pictoBtn title picto }
    in
    row [ width fill, spaceEvenly ]
        [ row []
            [ el [ onClick <| GoTo Home, Font.family [ Font.typeface "Raleway", Font.sansSerif ] ] <| btn <| text "Nabil.Ghedjati"
            , internalBtn Skills <| btn <| text "Compétences"
            , internalBtn Xp <| btn <| text "Expérience"
            , internalBtn Education <| btn <| text "Formation"
            ]
        , row []
            [ internalBtn About <| btn <| text "À propos"
            , link "https://github.com/nabil-g" "GitHub" "github"
            , link "https://www.linkedin.com/in/nabil-ghedjati-5051a2117" "LinkedIn" "linkedin"
            , link "https://www.instagram.com/nabil.ghedjati/" "Instagram" "instagram"
            , link "https://twitter.com/Nabil63" "Twitter" "twitter"
            , internalBtn Contact <| pictoBtn "Contact" "envelope"
            ]
        ]


white : Color
white =
    rgb255 255 255 255


black : Color
black =
    rgb255 0 0 0
