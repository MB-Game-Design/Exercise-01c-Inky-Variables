/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
*/

VAR health = 5
VAR pet_name = ""
VAR torches = 4.5
VAR mousetoy = 0
VAR money = 0

== memory ==
Before you stands the cavern of Spunch Bob. You wish one of your kittens was with you right now. With them, you may be able to face the vavern better. What is your kitten's name?

* [Percy]
    ~ pet_name = "Percy"
    -> cave_mouth
* [Melia]
    ~pet_name= "Melia"
    ->cave_mouth
* [Smokey]
    ~pet_name= "Smokey"
    ->cave_mouth


-> cave_mouth

== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.

You made it to the cave. If only {pet_name} could see you now!

You have {torches} torches.


+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torches > 0} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west
{pet_name == "Smokey": Smokey would have loved the western cave because she loves the western direction.}
You spot a mouse toy and snag it for your cat.
~mousetoy = mousetoy + 1
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
~ torches = torches + 1
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
You grab some. 
~ money = money + 678
-> exit_tunnel

== exit_tunnel ==
You have exited the tunnel and now you are on your way home. {pet_name} comes to visit you as you walk and they want to play. If you had a toy, you could play with them.
* {mousetoy ==1 } [Throw the toy.] -> Another_Tunnel
* [Walk Home.] -> Walk

==Another_Tunnel==
You found another tunnel! Now you and {pet_name} can explore to your heart's content.
-> END

==Walk==
On your walk you find a penny! You are now 1 cent richer alongside your new treasure! What a joyous day!
You now have ${money + 0.01} 
* [I head home.] -> Home

==Home==
At home, you are too tired and decide to fall asleep. Today was a good day.