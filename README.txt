
Here is my project. I finished the skeleton within 3 hours, and I spent a bit more time on the UI layout after. 

SomeNotes:

-SubwayData class to handle the JSON file - locate, parse. 
-SubwayLine class is the model to put JSON data into an easy access structure.
-SubwayViewController is the main view with tableView content - I put it this way incase the app needs other content in the main view later, as it is easier to move information around.
-LineTableViewCell is the customized cell - It makes the design dynamic.

I took a bit of time to find an icon set of the MTA subway icons. Designed by Massimo Vignelli, they are very uniquely New York and make it quick to find your train when glancing at the list.

ThingsToFix/add:
-Better way to unwrap optionals.
-The data is locally stored, I am not sure of a better way to pass it to the view.
-If the data is bigger, a threading method should be applied. 
-pull to refresh.
