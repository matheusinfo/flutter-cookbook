import './route.dart';
import 'components/app-bar.dart';
import 'components/drawer.dart';
import 'components/dropdown.dart';
import 'package:flutter/material.dart';
import 'components/bottom-navigation-bar.dart';
import 'components/floating-action-button.dart';
import 'package:flutter_docs/components/card.dart';
import 'package:flutter_docs/components/icon.dart';
import 'package:flutter_docs/components/slider.dart';
import 'package:flutter_docs/components/switch.dart';
import 'package:flutter_docs/components/datable.dart';
import 'package:flutter_docs/components/gridview.dart';
import 'package:flutter_docs/components/checkbox.dart';
import 'package:flutter_docs/components/snackbar.dart';
import 'package:flutter_docs/components/popup-menu.dart';
import 'package:flutter_docs/components/date-picker.dart';
import 'package:flutter_docs/components/text-button.dart';
import 'package:flutter_docs/components/icon-button.dart';
import 'package:flutter_docs/components/radio-button.dart';
import 'package:flutter_docs/components/alert-dialog.dart';
import 'package:flutter_docs/components/outlined-button.dart';
import 'package:flutter_docs/components/expansion-panel.dart';
import 'package:flutter_docs/components/elevated-button.dart';
import 'package:flutter_docs/components/linear-progress-bar.dart';

class Painel extends StatelessWidget {
  const Painel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RouteComponent(
          title: '01 - AppBar',
          sourceFilePath: 'lib/components/app-bar.dart',
          child: AppBarComponent(),
        ),
        RouteComponent(
          title: '02 - BottomNavigationBar',
          sourceFilePath: 'lib/components/bottom-navigation-bar.dart',
          child: BottomNavigationComponent(),
        ),
        RouteComponent(
          title: '03 - Drawer',
          sourceFilePath: 'lib/components/drawer.dart',
          child: DrawerComponent(),
        ),
        RouteComponent(
          title: '04 - DropdownButton',
          sourceFilePath: 'lib/components/drawer.dart',
          child: DropDownComponent(),
        ),
        RouteComponent(
          title: '05 - ElevatedButton',
          sourceFilePath: 'lib/components/elevated-button.dart',
          child: ElevatedButtonComponent(),
        ),
        RouteComponent(
          title: '06 - FloattingActionButton',
          sourceFilePath: 'lib/components/floating-action-button.dart',
          child: FloatingActionButtonComponent(),
        ),
        RouteComponent(
          title: '07 - IconButton',
          sourceFilePath: 'lib/components/icon-button.dart',
          child: IconButtonComponent(),
        ),
        RouteComponent(
          title: '08 - OutlinedButton',
          sourceFilePath: 'lib/components/outlined-button.dart',
          child: OutlinedButtonComponent(),
        ),
        RouteComponent(
          title: '09 - PopupMenuButton',
          sourceFilePath: 'lib/components/popup-menu.dart',
          child: PopupMenuComponent(),
        ),
        RouteComponent(
          title: '10 - TexButton',
          sourceFilePath: 'lib/components/text-button.dart',
          child: TextButtonComponent(),
        ),
        RouteComponent(
          title: '11 - Checkbox',
          sourceFilePath: 'lib/components/checkbox.dart',
          child: CheckboxComponent(),
        ),
        RouteComponent(
          title: '12 - Date & Time',
          sourceFilePath: 'lib/components/date-picker.dart',
          child: DatePickerComponent(),
        ),
        RouteComponent(
          title: '13 - Radio',
          sourceFilePath: 'lib/components/radio-button.dart',
          child: RadioButtonComponent(),
        ),
        RouteComponent(
          title: '14 - Slider',
          sourceFilePath: 'lib/components/slider.dart',
          child: SliderComponent(),
        ),
        RouteComponent(
          title: '15 - Switch',
          sourceFilePath: 'lib/components/switch.dart',
          child: SwitchComponent(),
        ),
        RouteComponent(
          title: '16 - AlertDialog',
          sourceFilePath: 'lib/components/alert-dialog.dart',
          child: AlerDialogComponent(),
        ),
        RouteComponent(
          title: '17 - ExpansionPanel',
          sourceFilePath: 'lib/components/expansion-panel.dart',
          child: ExpansionPanelComponent(),
        ),
        RouteComponent(
          title: '18 - SnackBar',
          sourceFilePath: 'lib/components/snackbar.dart',
          child: SnackBarComponent(),
        ),
        RouteComponent(
          title: '19 - Card',
          sourceFilePath: 'lib/components/card.dart',
          child: CardComponent(),
        ),
        RouteComponent(
          title: '20 - DataTable',
          sourceFilePath: 'lib/components/datable.dart',
          child: DatableComponent(),
        ),
        RouteComponent(
          title: '21 - GridView',
          sourceFilePath: 'lib/components/gridview.dart',
          child: GridViewComponent(),
        ),
        RouteComponent(
          title: '22 - Icon',
          sourceFilePath: 'lib/components/icon.dart',
          child: IconComponent(),
        ),
        RouteComponent(
          title: '23 - LinearProgressIndicator',
          sourceFilePath: 'lib/components/linear-progress-bar.dart',
          child: LinearProgressBarComponent(),
        ),
      ],
    );
  }
}
