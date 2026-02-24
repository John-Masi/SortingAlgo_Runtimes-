# SortingAlgo_Runtimes-
Basic program that times sorting different sorting algorithms, based on an assignemnt in my ADV DSA class 

The goal here is to see why certain algorithms perform better then the others
The main benchmark is against Insertion sort, Merge sort, Quick sort. 

I use different sizes (1,000, 10,000, 50,000, 100,000) 
I have not decided on what kind of uniform distribution i want to use for my randomizer, as quicksort gets better with a higher distribution 
There is a file that has the binary of this that was compiled with the -O3 flag and it was the entire build compiled not just seperate functions or files.

TODO:
  We can actually replace std::vector with a std::span in merge sort for better runtimes because of better cache usage and not having to create a new vector for every recursive call.
