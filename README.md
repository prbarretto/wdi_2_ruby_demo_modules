## Modules & Mixins

**Objectives:**
Demonstrate the following using a code-along.

* Use a Ruby module to avoid name conflicts.
* Use a Ruby module to share common behavior.
  
  Use the Mixin patter to share behavior, *cross cutting concerns*, across classes.
  
  This keeps our code DRY (Don't Repeat Yourself).

** Demonstration **

* Look at the ruby_modules.rb file for a very simple example of the Mixin pattern.
  	
* Look thru the animal.rb and notice how it includes *climbing* behavior in the Monkey class.

* Look at the data.rb file. The Data class defined here conflicts with a class that is built in to ruby.
  * Namespace this class using a module.


* Show how Ruby doesn't implement multiple base classes.
  * Why this is good thing
    
    [Diamond Problem](http://www.programmerinterview.com/index.php/c-cplusplus/diamond-problem/).
    If a subclass, D, inherits from 2 classes, B & C, and B and C both have a method of the same
    name, sum. 
    
    Which method is used when we call the sum method on an instance class D?

* We cannot share code through multiple inheritance so we 'll use the Mixin pattern.

  This is where a Ruby module is created and it's methods, behavior, is shared across
  (*mixed in*) to  other classes.
  
  

> Caveat: These techinques are used to reduce technical debt and it's difficult to see how they help out with these small examples. 

** Lab **

* Create a module that will add the biting behavior and include this behavior in the Dog class, defined in the animal.rb file.

* Look at the lib/user.rb file. 
   A ruby gem or another ruby library could __also__ have a class named User.

  * Run the spec for this class, rspec -f s 
  * Namespace this User class to avoid naming conflicts.
  * Run the spec again and fix.

* Run ruby bin/create_user.rb . __fix it if needed__
* 
* Add Logger module that will print out to the command line every time a user is saved.


