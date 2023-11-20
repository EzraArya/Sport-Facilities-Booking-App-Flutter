import 'package:ease_booking_app/component/background.dart';
import 'package:ease_booking_app/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class chatBoxScreen extends StatefulWidget {
  const chatBoxScreen({super.key});

  @override
  State<chatBoxScreen> createState() => _chatBoxScreenState();
}

class ChatMessage{
  String messageContent;
  String messageType;
  ChatMessage({required this.messageContent, required this.messageType});
}

List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(messageContent: "Hey Kriss, I am doing fine dude. wbu?", messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];

class _chatBoxScreenState extends State<chatBoxScreen> {
  final TextEditingController messageController = TextEditingController();

  void sendMessage() {
    if (messageController.text.isNotEmpty) {
      setState(() {
        messages.add(ChatMessage(messageContent: messageController.text, messageType: "sender"));
      });
      messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
  Size size = MediaQuery.of(context).size;    
    return Scaffold(
      body: Background(
        child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        }, 
                        icon: Icon(Icons.arrow_back_ios)
                      ),
                      Text(
                        "Nama Lapangan",
                        style : GoogleFonts.montserratAlternates(
                          color: tdBlack,
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        )
                      ),
                      SizedBox(width: 50,)
                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        height: 700,
                        child: ListView.builder(
                          itemCount: messages.length,
                          itemBuilder: (context, index) {
                              return ListTile(
                              title: Align(
                                alignment: (messages[index].messageType == "sender"?Alignment.centerRight:Alignment.centerLeft),
                                child: Container(
                                      width: 250,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: tdLightBlue,
                                        border: Border.all(color: tdBlack, width: 1),
                                        borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top : 8.0, left: 10.0, bottom: 2.0),
                                            child: Text(
                                              messages[index].messageContent,
                                              style: GoogleFonts.montserratAlternates(
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                          
                                          Padding(
                                            padding: const EdgeInsets.only(bottom : 8.0, right: 8.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "00.00",
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w300
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.check,
                                                  size: 24,
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                              ),
                              );
                            },
                          ),
                      ),
                      
                       Container(
                          width: 350,
                          child: TextField(
                            controller: messageController,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(Icons.send),
                                onPressed: sendMessage,
                              ),
                              filled: true, 
                              fillColor: tdLightBlue,
                              labelText: 'Say something',
                              labelStyle: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color : const Color.fromARGB(53, 0, 0, 0)
                              ),
                              floatingLabelStyle: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                color :  Colors.black
                              ),
                              border: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.black, width: 1), 
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.black, width: 1), 
                              ),
                            ),
                            onSubmitted: (_) => sendMessage(),
                          ),
                      )
                      
                    ],
                  ),
                  
                ],
              ),
            ),
          ),
        ),
    );
  }
}