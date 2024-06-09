import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_playlist/utils/color_config.dart';
import 'package:spotify_playlist/utils/text_style_config.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog(
      {super.key,
      required this.title,
      this.content,
      this.showConfirmButton = true,
      this.textConfirm = 'ตกลง',
      this.onConfirm,
      this.showCancelButton = false,
      this.textCancel = 'ยกเลิก',
      this.onCancel});

  final String? title, content;
  final bool showConfirmButton;
  final String textConfirm;
  final Function()? onConfirm;
  final bool showCancelButton;
  final String textCancel;
  final Function()? onCancel;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: ColorConfig.darkGreyThemeAppColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            title != null
                ? Text(
                    title!,
                    style: TextStyleConfig.largeWhiteStyle,
                    textAlign: TextAlign.center,
                  )
                : const SizedBox(),
            SizedBox(
              height: title != null ? 20 : 0,
            ),
            if (content != null)
              Text(
                content ?? '',
                style: TextStyleConfig.normalWhiteStyle,
                textAlign: TextAlign.center,
              ),
            SizedBox(
              height: content != null ? 20 : 0,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: showConfirmButton && showCancelButton
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.center,
              children: showConfirmButton && showCancelButton
                  ? [
                      Expanded(
                        child: GestureDetector(
                          onTap: onConfirm ?? () => Get.back(),
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: ColorConfig.black,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              textConfirm,
                              style: const TextStyle(
                                  fontSize: 20, color: ColorConfig.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: onCancel ?? () => Get.back(),
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: ColorConfig.grey,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              textCancel,
                              style: TextStyleConfig.normalWhiteStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ]
                  : [
                      GestureDetector(
                        onTap: (showConfirmButton ? onConfirm : onCancel) ??
                            () => Get.back(),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: showConfirmButton
                                ? ColorConfig.black
                                : ColorConfig.grey,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            showConfirmButton ? textConfirm : textCancel,
                            style: TextStyleConfig.normalWhiteStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
            )
          ],
        ),
      ),
    );
  }
}
