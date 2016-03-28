#Holy Bible Ruby Rest

![alt text](http://cfdb.owmconsulting.netdna-cdn.com/wp-content/uploads/2013/01/Holy-Bible.jpg "Holy Bible")

This application returns Bible verses in json format.

The translation of the Holy Bible used in this application is the King James version.

The application is very simple and easy to perform.

This application was developed with the Ruby programming language with the micro framework Sinatra and SQLite database.

##Instructions

To start go to the directory where the application is through the console and run the 'bundle install' command to install the application dependencies.

Then use the 'ruby app.rb' command to run the application.

View the application in the browser at the address: 'http://localhost:4567'.

For some biblical verse format json enter the book abbreviation, chapter and verse number in the url number to get the desired passage.

###See the example:

**http://localhost:4567/book/Re/chapter/4/verse/10**

#### json Return
```javascript
{"book":"Revelation","chapter":"4","verse":"10","text":"The four and twenty elders fall down before him that sat on the throne, and worship him that liveth for ever and ever, and cast their crowns before the throne, saying,"}
```

##List of books with their respective abbreviations for you informed in the book the url parameter

###Old Testament

1. Genesis - Ge
2. Exodus - Ex
3. Leviticus - Le
4. Numbers - Nu
5. Deuteronomy - De
6. Joshua - Jos
7. Judges - Jg
8. Ruth - Ru
9. 1 Samuel - 1Sa
10. 2 Samuel - 2Sa
11. 1 Kings - 1Ki
12. 2 Kings - 2Ki
13. 1 Chronicles - 1Ch
14. 2 Chronicles - 2Ch
15. Ezra - Ezr
16. Nehemiah - Ne
17. Esther - Es
18. Job - Job
19. Psalms - Ps
20. Proverbs - Pr
21. Ecclesiastes - Ec
22. Song of Solomon - Song
23. Isaiah - Isa
24. Jeremiah - Jer
25. Lamentations - La
26. Ezekiel - Eze
27. Daniel - Da
28. Hosea - Ho
29. Joel - Joe
30. Amos - Am
31. Obadiah - Ob
32. Jonah - Jon
33. Micah - Mic
34. Nahum - Na
35. Habakkuk - Hab
36. Zephaniah - Zep
37. Haggai - Hag
38. Zechariah - Zec
39. Malachi - Mal

###New Testament

1. Matthew - Mt
2. Mark - Mr
3. Luke - Lu
4. John - Joh
5. Acts - Ac
6. Romans - Ro
7. 1 Corinthians - 1Co
8. 2 Corinthians - 2Co
9. Galatians - Ga
10. Ephesians - Eph
11. Philippians - Php
12. Colossians - Col
13. 1 Thessalonians - 1Th
14. 2 Thessalonians - 2Th
15. 1 Timothy - 1Ti
16. 2 Timothy - 2Ti
17. Titus - Tit
18. Philemon - Phm
19. Hebrews - Heb
20. James - Jas
21. 1 Peter - 1Pe
22. 2 Peter - 2Pe
23. 1 John - 1Jo
24. 2 John - 2Jo
25. 3 John - 3Jo
26. Jude - Jude
27. Revelation - Re
