## Modules & Mixins

**Objectives:**
Demonstrate the following using a code-along.

* Use a Ruby module to avoid name conflicts.
* Use a Ruby module to share common behavior.
  
  Use the Mixin patter to share behavior, *cross cutting concerns*, across classes.
  
  This keeps our code DRY (Don't Repeat Yourself).

** Demonstration **

* Show how a class is having a naming conflict with a built-in Ruby class or a class defined in a library/gem.

* Namespace this name confliciting class to fix.

* Show how Ruby doesn't implement multiple base classes.
  * Why this is good thing
    
    [Diamond Problem](http://www.programmerinterview.com/index.php/c-cplusplus/diamond-problem/).
    If a subclass, D, inherits from 2 classes, B & C, and B and C both have a method of the same
    name, sum. 
    
    Which method is used when we call the sum method on an instance class D?

* We cannot share code through multiple inheritance so we 'll use the Mixin pattern.

  This is where a Ruby module is created and it's methods, behavior, is shared across
  (*mixed in*) to  other classes.
  
  * Look at the ruby_module.rb file for a very simple 
  	example of the Mixin pattern.
  	
  * Look thru the animal.rb and notice how it includes *climbing* behavior in the Monkey class.

> Caveat: These techinques are used to reduce technical debt and it's difficult to see how they help out with these small examples. 

** Lab **

* Create a module that will add the biting behavior and include this behavior in the Dog class.

* Namespace all the modules and classes.

* Create a main.rb file that will create objects from these classes and print to the terminal/command line.



