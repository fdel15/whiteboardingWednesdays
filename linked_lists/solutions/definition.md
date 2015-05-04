It's easier to store data of different sizes in a linked list. An array assumes everything is exactly the same size.

It's easier for a linked list to grow organizcally. An array's size needs to be known ahead of time, or re-created when it needs to grow.

Shuffling a linked list is just a matter of changing what points to what. Shuffling an array is more complicated and/or takes more memory.

As longa s your iterations all happen in foreach context, you don't lose any performance in iteration.

Arrays allow random access, while linked lists allow only sequential access to elements.

Singly-linked lists, can only be traversed in one direction. This makes linked lists unsuitable for applications where it's useful to look up an element by its index quickly.

Sequential access on arrays is also faster than on linked lists on many machines due to locality of reference and data caches.

Linked lists need extra storage for references which often makes them impractical for lists of small data items such as characters or boolean values.