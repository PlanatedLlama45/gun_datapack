execute if block ~ ~ ~ #guns:ricochet_types/rock run playsound guns:ricochet.rock block @a ~ ~ ~ 16
execute if block ~ ~ ~ #guns:ricochet_types/iron run playsound guns:ricochet.iron block @a ~ ~ ~ 16
execute unless block ~ ~ ~ #guns:shoot_through unless block ~ ~ ~ #guns:ricochet_types/rock unless block ~ ~ ~ #guns:ricochet_types/iron run playsound guns:ricochet.grass block @a ~ ~ ~ 16
function guns:show_particle
