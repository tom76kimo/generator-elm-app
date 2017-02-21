module View exposing (..)

import Html exposing (Html, div, text)
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

mainPage : Html msg
mainPage =
  div []
      [ text "Welcome to Main page" ]

aboutPage : Html msg
aboutPage =
  div []
    [ text "About Page" ]

notFoundView : Html msg
notFoundView =
  div []
    [ text "Not Found" ]

