module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Planet -> Float -> Float
ageOn planet seconds =
  let
    es = seconds / 31557600
  in
    case planet of
       Earth   -> es
       Mercury -> es / 0.2408467
       Venus   -> es / 0.61519726
       Mars    -> es / 1.8808158
       Jupiter -> es / 11.862615
       Saturn  -> es / 29.447498
       Uranus  -> es / 84.016846
       Neptune -> es / 164.79132

