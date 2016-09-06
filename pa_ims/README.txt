IMS -- Interactive Music Shell
Designed by: Jose Ramirez

The Interactive Music Shell allows a user to store their music collection
and access information about artists and tracks in the collection. 
It also allows user to keep track of tracks that they have played.

The IMS will allow the following commands.
Help
Add artist [john osborne] (as jo)
Info artist [jo]
Add track [watching the sky turn green] by [jo]
Info track [13]
Count tracks [artist]
Play track [13]
Info
Exit

At the moment, the program is composed of the following classes:
IMS : a class that will interact with the user and send user requests, as well as display information.
I decided to put the 'help' instructions here since it concerns
the IMS itself.

Artist: holds all the relevant info related to an individual artist

Track: holds all the relevant info related to an individual track

Playlist: holds 2 separate lists of artists and tracks and methods to add and extract information from them

Unfortunately, I was unable to create code to allow for
storage of the state of the shell on disk. I envision 
converting the Playlist class to store this information using
PStore.

Once I have a way to store the state of the shell, I would
also create a State class to hold information on the current
state of the shell and allow users to 'play' tracks.

----
At the moment, I am storing tracks and artists in separate arrays as objects.
While this makes retrieving and adding information about each easier, it also
adds a certain level of redundancy -- for example, when adding a track, I basically
need to update both the array with the Track objects, as well as the 'Track' 
attribute of the corresponding 'Artist' object. Ideally, I would like to find a way
to integrate tracks and artists more concisely.