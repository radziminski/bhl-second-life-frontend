import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum ChatBubbleDirection { left, right }
const int kTextWrapBreakpoint = 28;

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: ListView(
        children: [
          _buildChatBubble(
            context,
            ChatBubbleDirection.left,
            'jakjakaś randmomowa wiadomoś',
          ),
          _buildChatBubble(
            context,
            ChatBubbleDirection.right,
            'jakaś randmomowa wiadomość',
          ),
          _buildChatBubble(
            context,
            ChatBubbleDirection.left,
            'jakaś randmomowa wiadomość',
          ),
        ],
      ),
    );
  }

  Widget _buildChatBubble(context, ChatBubbleDirection direction, String text) {
    return Row(
      mainAxisAlignment: direction == ChatBubbleDirection.left
          ? MainAxisAlignment.start
          : MainAxisAlignment.end,
      children: [
        Container(
          width: text.length > kTextWrapBreakpoint
              ? MediaQuery.of(context).size.width * 0.8
              : null,
          alignment: direction == ChatBubbleDirection.left
              ? Alignment.centerLeft
              : Alignment.centerRight,
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.only(bottom: 20.0),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: direction == ChatBubbleDirection.left
                  ? Radius.circular(0)
                  : Radius.circular(20),
              bottomRight: direction == ChatBubbleDirection.right
                  ? Radius.circular(0)
                  : Radius.circular(20),
            ),
          ),
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}
