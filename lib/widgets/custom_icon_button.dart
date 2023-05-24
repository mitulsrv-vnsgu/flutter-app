import 'package:flutter/material.dart';
import 'package:mitul_s_application188/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      case IconButtonPadding.PaddingAll11:
        return getPadding(
          all: 11,
        );
      default:
        return getPadding(
          all: 8,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillIndigo50:
        return ColorConstant.indigo50;
      case IconButtonVariant.OutlineRed50:
        return ColorConstant.whiteA700;
      case IconButtonVariant.OutlineDeeppurple5003:
        return ColorConstant.deepPurpleA200;
      case IconButtonVariant.OutlineBlue50:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillBlack900b2:
        return ColorConstant.black900B2;
      case IconButtonVariant.FillWhiteA700cc:
        return ColorConstant.whiteA700Cc;
      case IconButtonVariant.FillGray10003:
        return ColorConstant.gray10003;
      case IconButtonVariant.FillGray50:
        return ColorConstant.gray50;
      default:
        return ColorConstant.gray100;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineRed50:
        return Border.all(
          color: ColorConstant.red50,
          width: getHorizontalSize(
            4.00,
          ),
        );
      case IconButtonVariant.OutlineDeeppurple5003:
        return Border.all(
          color: ColorConstant.deepPurple5003,
          width: getHorizontalSize(
            5.00,
          ),
        );
      case IconButtonVariant.OutlineBlue50:
        return Border.all(
          color: ColorConstant.blue50,
          width: getHorizontalSize(
            4.00,
          ),
        );
      case IconButtonVariant.FillGray100:
      case IconButtonVariant.FillIndigo50:
      case IconButtonVariant.FillBlack900b2:
      case IconButtonVariant.FillWhiteA700cc:
      case IconButtonVariant.FillGray10003:
      case IconButtonVariant.FillGray50:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.RoundedBorder8:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
      case IconButtonShape.RoundedBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      case IconButtonShape.RoundedBorder29:
        return BorderRadius.circular(
          getHorizontalSize(
            29.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
    }
  }
}

enum IconButtonShape {
  RoundedBorder8,
  CircleBorder20,
  RoundedBorder16,
  RoundedBorder29,
}

enum IconButtonPadding {
  PaddingAll8,
  PaddingAll15,
  PaddingAll11,
}

enum IconButtonVariant {
  FillGray100,
  FillIndigo50,
  OutlineRed50,
  OutlineDeeppurple5003,
  OutlineBlue50,
  FillBlack900b2,
  FillWhiteA700cc,
  FillGray10003,
  FillGray50,
}
