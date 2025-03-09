import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:digital_ghar/config/color/app_color.dart';
import 'package:digital_ghar/config/extenshion/extenshion.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class DeleteConfirmationDialog {
  static void showDeleteConfirmationDialog(
    BuildContext context,
    final Function(int)? onDelete,
    int index,
  ) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          width: context.mw * 0.9,
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Header
              Container(
                padding: EdgeInsets.all(context.mw * 0.04),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      IconlyBold.delete,
                      color: Colors.redAccent,
                      size: context.mw * 0.06,
                    ),
                    SizedBox(width: context.mw * 0.03),
                    Text(
                      'Confirm Deletion',
                      style: GoogleFonts.aBeeZee(
                        fontSize: context.mh * 0.022,
                        fontWeight: FontWeight.w600,
                        color: Colors.redAccent,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.close,
                        color: Colors.redAccent,
                        size: context.mw * 0.05,
                      ),
                    ),
                  ],
                ),
              ),

              // Content
              Padding(
                padding: EdgeInsets.all(context.mw * 0.04),
                child: Text(
                  'Are you sure you want to delete this property? This action cannot be undone.',
                  style: GoogleFonts.aBeeZee(
                    fontSize: context.mh * 0.016,
                    color: Colors.black87,
                  ),
                ),
              ),

              // Footer
              Container(
                padding: EdgeInsets.all(context.mw * 0.04),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.05),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        'Cancel',
                        style: GoogleFonts.aBeeZee(
                          color: AppColor.greyColor,
                          fontSize: context.mh * 0.016,
                        ),
                      ),
                    ),
                    SizedBox(width: context.mw * 0.02),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        onDelete.call(index);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: AppColor.whiteColor,
                        elevation: 0,
                        padding: EdgeInsets.symmetric(
                          horizontal: context.mw * 0.04,
                          vertical: context.mh * 0.015,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Delete',
                        style: GoogleFonts.aBeeZee(
                          fontSize: context.mh * 0.016,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
