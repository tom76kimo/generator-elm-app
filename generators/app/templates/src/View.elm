module View exposing (..)

import Html exposing (Html, div, text, button)
import Html.Events exposing (onClick)
import Messages exposing (Msg(..))
import Models exposing (Model)
import Routing exposing (Route(..))

view : Model -> Html Msg
view model =
    div []
        [ page model ]

page : Model -> Html Msg
page model =
  case model.route of
    MainPage ->
      mainPage

    AboutPage ->
      aboutPage

    NotFoundRoute ->
      notFoundView

mainPage : Html Msg
mainPage =
  div []
      [ div [] [ text "Welcome to Main page" ]
      , button [onClick GoToAboutPage] [ text "Go To About Page" ]
      ]

aboutPage : Html Msg
aboutPage =
  div []
      [ div [] [ text "About Page" ]
      , button [onClick GoToMainPage] [ text "Go To About Page" ]
      ]

notFoundView : Html msg
notFoundView =
  div []
    [ text "Not Found" ]

