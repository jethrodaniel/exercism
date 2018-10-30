module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

-- Seconds in an Earth year, assuming a year is 365.25 days
secondsInAnEarthYear :: Float
secondsInAnEarthYear = 60 * 60 * 24 * 365.25

-- The ratio of a planet's orbital period compared to Earth's orbital period
orbitalPeriod :: Planet -> Float
orbitalPeriod planet =
  case planet of
    Earth   ->  1
    Mercury ->  0.2408467
    Venus   ->  0.61519726
    Mars    ->  1.8808158
    Jupiter ->  11.862615
    Saturn  ->  29.447498
    Uranus  ->  84.016846
    Neptune ->  164.79132

-- Age on a particular planet, given seconds
ageOn :: Planet -> Float -> Float
ageOn planet seconds = seconds / (secondsInAnEarthYear * orbitalPeriod planet)
