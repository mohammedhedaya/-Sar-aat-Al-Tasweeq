import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class QRViewInContainer extends StatefulWidget {
  const QRViewInContainer({super.key});

  @override
  State<QRViewInContainer> createState() => _QRViewInContainerState();
}

class _QRViewInContainerState extends State<QRViewInContainer> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          "أمسح الباركود",
          style: AppStyles.style20W800,
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_forward_ios_sharp,
              color: AppColors.whiteColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 38.w, vertical: 25.h),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Expanded(
              flex: 1,
              child: Center(
                child: Container(
                  width: double.infinity,
                  height: 341.h,
                  decoration: BoxDecoration(
                    color: const Color(0xff949494),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: QRView(
                      key: qrKey,
                      onQRViewCreated: _onQRViewCreated,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: (result != null)
                    ? Text(
                        'Barcode Type: ${result!.format}\n\nData: ${result!.code}',
                        style: const TextStyle(
                          color: AppColors.whiteColor,
                        ),
                        textAlign: TextAlign.center,
                      )
                    : const Text(
                        'Scan a code',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
