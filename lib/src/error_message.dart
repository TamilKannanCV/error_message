import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({
    Key? key,
    required this.icon,
    required this.title,
    this.description,
    this.buttonLabel,
    this.onPressed,
    this.themeColor,
  }) : super(key: key);

  /// An icon to display.
  final Widget icon;

  /// An error title.
  final String title;

  /// A description to explain the error
  final String? description;

  /// Text that describes the button.
  final String? buttonLabel;

  /// A callback after the user click the button.
  final void Function()? onPressed;

  ///Theme color that appears background of icons
  final Color? themeColor;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Center(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (themeColor != null) ? themeColor?.withOpacity(.1) : colorScheme.primary.withOpacity(.1),
                  ),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      iconTheme: IconThemeData(
                        size: 40,
                        color: (themeColor != null) ? themeColor : colorScheme.primary,
                      ),
                    ),
                    child: icon,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline6,
                ),
                if (description != null) ...[
                  const SizedBox(height: 5.0),
                  Text(
                    description!,
                    textAlign: TextAlign.center,
                  )
                ],
                if (onPressed != null) ...[
                  const SizedBox(height: 15.0),
                  MaterialButton(
                    elevation: 0.0,
                    highlightElevation: 0.0,
                    onPressed: onPressed,
                    child: Text(buttonLabel ?? "Try again"),
                    color: colorScheme.primary,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ),
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}
