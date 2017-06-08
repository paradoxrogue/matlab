Text recognition system for intelligent spam filtering
This project aims to develop a server-side spam filter system for use in chat apps that would automatically block spam messages from being 
sent.
This would work when users report spammy or otherwise offensive messages and the system analyses the text of such messages and compares 
them with the general messages being sent. Any words that appear more often within the pool than inthe general message pool get flagged and
the next time someone tries to send messages containing these words, the message is automatically blocked.
To get around the Scunthorpe problem, the system defines a word as a string of characters surrounded by a space for Western languages and 
