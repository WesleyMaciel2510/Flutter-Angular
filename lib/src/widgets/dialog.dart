import 'package:flutter/material.dart';
import 'package:flutter_angular/src/components/calendar_popup_view.dart';

void showDemoDialog({
  required BuildContext context,
  required DateTime startDate,
  required DateTime endDate,
  required Function(DateTime startDate, DateTime endDate) onDatesSelected,
}) {
  showDialog<dynamic>(
    context: context,
    builder: (BuildContext dialogContext) => CalendarPopupView(
      barrierDismissible: true,
      minimumDate: DateTime.now(),
      initialEndDate: endDate,
      initialStartDate: startDate,
      onApplyClick: (DateTime startData, DateTime endData) {
        onDatesSelected(startData, endData);
      },
      onCancelClick: () {},
    ),
  );
}
