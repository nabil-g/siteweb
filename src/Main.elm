module Main exposing (main)

import Browser exposing (Document)
import Html exposing (..)
import Html.Attributes as HA exposing (..)
import Html.Events as HE exposing (..)
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
    = NoOp
    | Enter
    | GoTo Page


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

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
                , body = view model
                }
        , subscriptions = subscriptions
        }


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


view : Model -> List (Html Msg)
view model =
    case model.pageState of
        Landing ->
            [ section [ id "entrance" ]
                [ h1 [ id "grandTitre", onClick Enter ]
                    [ text "Nabil.Ghedjati"
                    ]
                ]
            ]

        Page currentPage ->
            let
                btnAttr page =
                    if page == currentPage then
                        class "actif"

                    else
                        onClick <| GoTo page
            in
            [ header []
                [ ul [ class "navbar" ]
                    [ span [ class "leftLinks" ]
                        [ li []
                            [ a
                                [ href "#"
                                , id "button0"
                                , title "Accueil"
                                , onClick <| GoTo Home
                                ]
                                [ text "Nabil.Ghedjati" ]
                            ]
                        , li [] [ a [ href "#", id "button1", btnAttr Skills ] [ text "Compétences" ] ]
                        , li [] [ a [ href "#", id "button2", btnAttr Xp ] [ text "Expérience" ] ]
                        , li [] [ a [ href "#", id "button3", btnAttr Education ] [ text "Formation" ] ]
                        ]
                    , span [ class "rightLinks" ]
                        [ li [ class "right", id "about", btnAttr About ] [ a [ href "#", id "button4" ] [ text "À propos" ] ]
                        , li [ class "right", id "github" ] [ a [ class "fa fa-github", href "https://github.com/nabil-g", target "_blank", title "GitHub" ] [] ]
                        , li [ class "right", id "linkedin" ] [ a [ class "fa fa-linkedin", href "https://www.linkedin.com/in/nabil-ghedjati-5051a2117", target "_blank", title "LinkedIn" ] [] ]
                        , li [ class "right", id "insta" ] [ a [ class "fa fa-instagram", href "https://www.instagram.com/nabil.ghedjati/", target "_blank", title "Instagram" ] [] ]
                        , li [ class "right", id "twitter" ] [ a [ class "fa fa-twitter", href "https://twitter.com/Nabil63", target "_blank", title "Twitter" ] [] ]
                        , li [ class "right", id "mail" ] [ a [ class "fa fa-envelope", href "#", title "Contact", btnAttr Contact ] [] ]
                        ]
                    ]
                ]
            , section [ id "rubrique" ]
                [ case currentPage of
                    Home ->
                        div [ class "rubDiv", id "welcome" ]
                            [ h2 [ class "hw", id "hwDesktop" ] [ text "Hello world.", span [ class "cursor" ] [ text "█" ] ]
                            , h2 [ class "hw", id "hwMobile" ] [ text "Hello world.", span [ class "cursor" ] [ text "█" ] ]
                            , p [ id "msg" ] [ text "Bienvenue ! Je suis un jeune", strong [] [ text "développeur Web" ], text "de ans", br [] [], text "plein d'idées et de motivation. Consultez mon parcours et n'hésitez pas à me contacter." ]
                            , p [] [ a [ class "downloadlink", href "assets/cv_nabil_ghedjati_2017.pdf", type_ "application/pdf", target "_blank" ] [ text "Télécharger le CV" ] ]
                            ]

                    Skills ->
                        div [ class "rubDiv", id "one" ]
                            [ h2 [] [ text "Compétences" ]
                            , div [ class "logoSkills", id "skills1" ] [ a [ class "devicon-html5-plain-wordmark colored", href "https://www.w3.org/html/", target "_blank", title "HTML5" ] [], a [ class "devicon-css3-plain-wordmark colored", href "https://www.w3.org/Style/CSS/", target "_blank", title "CSS3" ] [], a [ class "devicon-javascript-plain colored", href "https://js.org/", target "_blank", title "JavaScript" ] [], a [ class "devicon-jquery-plain-wordmark colored", href "https://jquery.com/", target "_blank", title "jQuery" ] [], a [ class "devicon-php-plain colored", href "http://www.php.net/", target "_blank", title "PHP" ] [] ]
                            , div [ class "logoSkills" ]
                                [ a [ class "devicon-git-plain colored", href "https://git-scm.com/", target "_blank", title "Git" ] []
                                , a [ class "devicon-mysql-plain colored", href "https://www.mysql.fr/", target "_blank", title "MySQL" ] []
                                , a [ class "devicon-linux-plain colored", href "https://www.linuxfoundation.org/", target "_blank", title "Linux" ] []
                                , a [ href "https://cordova.apache.org/", target "_blank", title "Apache Cordova" ] [ img [ alt "Cordova Icon", src "assets/cordova_64.png" ] [] ]
                                , a [ href "http://elm-lang.org/", target "_blank", title "Elm" ] [ img [ alt "Elm Icon", src "assets/elm_logo.png", attribute "style" "width:60px;" ] [] ]
                                ]
                            , div [ class "logoSkills" ]
                                [ a [ class "devicon-nodejs-plain colored", href "https://nodejs.org/en/", target "_blank", title "Node.JS" ] []
                                , a [ href "https://www.arduino.cc/", target "_blank", title "Arduino" ] [ img [ alt "Arduino Icon", src "assets/arduino.svg", attribute "style" "width:58px" ] [] ]
                                , a [ class "devicon-vuejs-plain colored", href "https://vuejs.org/", target "_blank", title "Vue.js" ] []
                                , a [ class "devicon-sass-original colored", href "http://sass-lang.com/", target "_blank", title "Sass" ] []
                                , a [ class "devicon-symfony-original colored", href "https://symfony.com/", target "_blank", title "Symfony" ] []
                                ]
                            ]

                    Xp ->
                        div [ class "rubDiv", id "two" ]
                            [ h2 [] [ text "Expérience" ]
                            , table [] [ tr [] [ td [ class "date" ] [ text "Depuis septembre 2017" ], td [] [ text "Développeur web" ], em [] [ text "Spottt" ] ], tr [] [ td [ class "date" ] [ text "Juillet 2014" ], td [] [ text "Auxiliaire d'été" ], em [] [ text "Société Générale, agence de Thiers" ] ], tr [] [ td [ class "date" ] [ text "Années scolaires 2012/2014" ], td [] [ text "Stagiaire (pendant 17 semaines non consécutives)" ], em [] [ text "Caisse d'Épargne Auvergne-Limousin, agence de Thiers" ], text "Société Générale, agences de Beaumont et Thiers" ] ]
                            ]

                    Education ->
                        div [ id "three", class "rubDiv" ]
                            [ h2 [] [ text "Formation" ]
                            , table []
                                [ tr []
                                    [ td [ class "date" ] [ text "2017/2018" ]
                                    , td [] [ strong [] [ text "EPSI Lyon", br [] [], em [] [ text "Bachelor Informatique 3ème année" ] ] ]
                                    , tr [] [ td [ class "date" ] [ text "2016/2017" ], td [] [ strong [] [ text "Simplon.co", br [] [], em [] [ text "Labélisée Grande école du numérique" ] ] ] ]
                                    , tr [] [ td [ class "date" ] [ text "2014/2015" ], td [] [ strong [] [ text "Licence Pro Management des collectivités territoriales" ], br [] [], text "(formation uniquement)", br [] [], em [] [ text "Université d'Auvergne, CLERMONT-FERRAND" ] ] ]
                                    , tr [] [ td [ class "date" ] [ text "2012 / 2014" ], td [] [ strong [] [ text "BTS Banque Option Marché des Particuliers", br [] [], em [] [ text "Lycée Ambroise Brugière, CLERMONT-FERRAND" ] ] ] ]
                                    ]
                                ]
                            ]

                    About ->
                        div [ id "four", class "rubDiv" ]
                            [ h2 [] [ text "À propos" ]
                            , br [] []
                            , table []
                                [ tr []
                                    [ td [ class "date" ]
                                        [ text "Langues"
                                        ]
                                    , td []
                                        [ text "Français (langue maternelle)"
                                        , br [] []
                                        , text "Anglais (courant)"
                                        ]
                                    ]
                                , tr []
                                    [ td [ class "date" ]
                                        [ text "Centres d'intérêts"
                                        ]
                                    , td []
                                        [ text "Cinéma, nouvelles technologies, sports de montagne,"
                                        , br [] []
                                        , text "tennis, photographie, musique"
                                        ]
                                    ]
                                ]
                            , p [ class "credits" ]
                                [ text "&copy; "
                                , span [ id "aboutCredits" ] []
                                , text "Nabil Ghedjati. "
                                , a [ id "legallink", href "#" ]
                                    [ strong [] [ text "Mentions légales" ]
                                    ]
                                ]
                            ]

                    Legal ->
                        div [ id "five", class "rubDiv" ]
                            [ h2 [] [ text "Mentions légales" ]
                            , p [ class "credits" ]
                                [ text "Créateur et propriétiare : Nabil Ghedjati"
                                , br [] []
                                , text "Hébergé par "
                                , a [ href "https://www.netlify.com/", target "_blank" ] [ text "Unsplash.com" ]
                                , br [] []
                                , br [] []
                                , text "&copy; "
                                , span [ id "legalCredits" ] []
                                , text "Nabil Ghedjati."
                                ]
                            ]

                    Contact ->
                        div [ id "six", class "rubDiv" ]
                            [ h2 [] [ text "Contact" ]
                            , p [ id "reponseMsg" ] []
                            , Html.form [ id "form", name "contactForm" ]
                                [ input
                                    [ type_ "text"
                                    , placeholder "Votre nom"
                                    , value ""
                                    ]
                                    []
                                , input
                                    [ type_ "email"
                                    , placeholder "Votre adresse e-mail"
                                    , value ""
                                    ]
                                    []
                                , textarea
                                    [ rows 6
                                    , placeholder "Votre message (entre 2 et 1500 caractères)"
                                    ]
                                    []
                                , p [ id "erreurForm" ]
                                    [ text "Les champs marqués en rouge sont incomplets ou incorrects."
                                    ]
                                , p [ id "okForm" ] []
                                , button [ id "sendbutton" ]
                                    [ text "Envoyer"
                                    ]
                                ]
                            , p [ class "credits", id "credits" ] []
                            ]
                ]
            ]
