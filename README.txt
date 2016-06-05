Hi, Dave, Hannah and Natasha

Here is my project. I finished the skeleton within 3 hours, and I spent a bit more time on the UI layout after. 

SomeNotes:

-SubwayData class to handle the JSON file - locate, parse. 
-SubwayLine class is the model to put JSON data into an easy access structure.
-SubwayViewController is the main view with tableView content - I put it this way incase the app needs other content in the main view later, as it is easier to move information around.
-LineTableViewCell is the customized cell - It makes the design dynamic.

I took a bit of time to find an icon set of the MTA subway icons. Designed by Massimo Vignelli, they are very uniquely New York and make it quick to find your train when glancing at the list.

ThingsToFix/add:
-The data is locally stored, I am not sure of a better way to pass it to the view.
-If the data is bigger, a threading method should be applied. 
-It would be cool to add a train animation on the loading screen.
-DetailViewController class is not used yet, would be nice to have a map there. 
-When viewing the project in the Simulator, the TableView separator between each cell flickers due to a resolution rendering bug. However, it renders fine when viewed on a device.

Thanks for the opportunity! 
Look forward to hearing back from you.

Guang