import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class StarRating extends StatelessWidget {
  final int starCount;
  final num rating;
  final Color? color;
  final MainAxisAlignment rowAlignment;

  const StarRating({super.key,
    this.starCount = 5,
    this.rating = .0,
    this.color,
    this.rowAlignment = MainAxisAlignment.center,
  });

  Widget buildStar(
      BuildContext context, int rank, MainAxisAlignment rowAlignment) {
    Icon icon;
    if (rank >= rating) {
      return icon = Icon(
        Icons.star_border,
        color: Theme.of(context).buttonColor,
      );
    } else if (rank > rating - 1 && rank < rating) {
      return icon = Icon(
        Icons.star_half,
        color: color ?? Theme.of(context).primaryColor,
      );
    } else {
      return icon =  Icon(
        Icons.star,
        color: color ?? Theme.of(context).primaryColor,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: rowAlignment,
      children:  List.generate(
        starCount,
            (rank) => buildStar(context, rank, rowAlignment),
      ),
    );
  }
}
String titleCase(String text) {
  if (text.length <= 1) return text.toUpperCase();
  var words = text.split(' ');
  var capitalized = words.map((word) {
    var first = word.substring(0, 1).toUpperCase();
    var rest = word.substring(1);
    return '$first$rest';
  });
  return capitalized.join(' ');
}

Widget imageDialog(context, imageUrl) {
  return Dialog(
    child: Container(
      width: MediaQuery
          .of(context)
          .size
          .width * 1.0,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: ExactAssetImage(imageUrl), fit: BoxFit.cover)),
    ),
  );
}

Widget myHealthScore(double userHealthScore, context) {
  return Container(
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      color: Color(0xFFe9f0f3),
    ),
    child: Center(
        child: Container()
    ),
  );
}

Widget sectionTitle(context, String title) {
  return Container(
    margin: const EdgeInsets.only(
      top: 20.0,
      left: 20.0,
      right: 20.0,
      bottom: 20.0,
    ),
    child: Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Theme
                  .of(context)
                  .primaryColor,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: Divider(
            color: Colors.black12,
            height: 1,
            thickness: 1,
          ),
        ),
      ],
    ),
  );
}

Widget defaultFormField({required TextEditingController controller,
  required TextInputType type,
  Function? onSubmit,
  Function? onChange,
  bool isPassword = false,
  required String? Function(String? val)? validate,
  double radius = 0.0,
  required String label,
  IconData? prefix,
  IconData? suffix,
  Function? suffixPressed,
  bool isClickable = true,
  double width = double.infinity}) =>
    Container(
      width: width,
      height: 56,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2),
        borderRadius: BorderRadius.circular(
          radius,
        ),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: type,
        obscureText: isPassword,
        enabled: isClickable,
        onFieldSubmitted: (e) {
          if (onSubmit != null) onSubmit(e);
        },
        onChanged: (s) {
          if (onChange != null) onChange(s);
        },
        validator: validate,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          errorStyle: const TextStyle(
            color: Colors.amber,
          ),
          border: InputBorder.none,
          labelText: label,
          hintText: label,
          prefixIcon: Icon(
            prefix,
          ),
          hintStyle: const TextStyle(
              fontFamily: 'Metropolis-Regular',
              fontSize: 16,
              color: Colors.blue),
          suffixIcon: suffix != null
              ? IconButton(
            onPressed: () {
              suffixPressed!();
            },
            icon: Icon(
              suffix,
            ),
          )
              : null,
        ),
      ),
    );

void navigateTo(context, widget) =>
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinsh(context, widget) =>
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
          (route) => false,
    );

Widget mySeparator() =>
    Container(
      width: double.infinity,
      height: 1,
      color: Colors.grey[500],
    );


void showToast({
  required String msg,
  Color backgroundColor=Colors.black87,
  Color textColor=Colors.white,
  double fontSize=16.0,
  Toast toastLength=Toast.LENGTH_SHORT,
  ToastGravity toastGravity=ToastGravity.CENTER,
}) async =>
    await Fluttertoast.showToast(
        msg: msg,
        toastLength: toastLength,
        gravity: toastGravity,
        timeInSecForIosWeb: 1,
        backgroundColor: backgroundColor,
        textColor: textColor,
        fontSize: fontSize);
