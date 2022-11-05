##A Portfolio Application built with Flutter:

###HNGi9 Task 2
##Description:
The Portfolio Application is a compilation of my Professional Summary, Work Experience, Skills, Recent Projects and Social Accounts.

##Description of the App and Features
##App Bar
The application is a single page application, has an app bar that keeps a title and some other icons.
The menu icon helps for seamless navigation and there's a toggle icon to change the app's theme.
##The Header
The header represents an introductory content, a random header picture and my personal picture.
My name and what I do is just below the header picture
##FloatingActionButton
It implements a scroll controller that takes us back to the top of the screen when clicked on
##Work Experience Section
##Professional Experience
##Skills
##Recent Projects
##Socials



##Description of Codebase:

The folders in Codebase are components, constants, models, provider, screens, widgets, shared preferences, utils.

The Components folder houses the reusable widgets and the files are in there to keep bogus code out such as reusable cards and containers.
##Components: 
The App drawer in the folder is a drawer feature I added to make the application easier to navigate, was not very necessary, did it for the bonus points.
The Experience Card is a container I created for my work experience section.
The Project Card is a container I created for recent Projects.
The Skill Component is a reusable container for skills acquired.
##Constants:
I created text constant that I called everytime I needed the Text Widget
I created a recent project constant to create the data for each card so the application dynamically adapts whatever data I have defined.
##Model:
The application houses various types of data, the Models folder helps structure data and to make the screen dynamic.
I created a model to display recent projects as it'd keep lots of information like an image, a description, a title and random urls.
##Screens:
The Screen folder contains only one dart file, the main page screen. It is a single page application. Hence, the main_page.dart file.
##Provider:
The Provider was specifically created for the light and dark theme feature. Listens to the change and helps update the interface.
##Shared Preferences:
The Shared Preferences syncs the app theme to the current state with Provider.
The Shared Preferences also persists the current app theme and load the preferences from the disk before the app starts.
##Utils:
I created a Utils folder because I needed a bool value to check the device's orientation.
##Widgets
The Widgets folder keeps the main widgets in the app.

##Description of the design and how it works

I couldn't very helpful designs on Figma, looked at a bunch of them and just got inspired by various designs.

##Description of the features I would like to add if I had more time
I would have loved to add animation, alert dialogs, bottom modal bottom sheets to make the app more interactive and i'd have loved to refactor.

##Packages
google_fonts: To change default font
url_launcher: To launch url
provider: To and listen for changes
shared_preferences: To persist data

##APK Link
https://drive.google.com/file/d/1tmy7gg8FqOdvURn3VTwb6ar-H-jBRfAY/view?usp=share_link

##Description of challenges and how I solved them
Coming up with a design was definitely hard. Implementing the dark theme feature took some time too because I didn't wrap the UI I had to rebuild with provider in a consumer
I had to implement a different design for the landscape mode. That was also new to me. I found resources online that helped.


##Appetize.io link

