import 'package:app_digital_pricing/app/shared/config/border_custom.dart';
import 'package:app_digital_pricing/app/shared/config/color_custom.dart';
import 'package:app_digital_pricing/app/shared/config/padding_custom.dart';
import 'package:app_digital_pricing/app/shared/widgets/padding_container/padding_container_widget.dart';
import 'package:app_digital_pricing/app/shared/widgets/scroll/scroll_widget.dart';
import 'package:flutter/material.dart';

class TabItem {
  Icon icon;
  String label; 
  Widget children;

  TabItem({
    this.icon,
    this.label,
    this.children
  });
}

class TabWidget extends StatelessWidget {
  final Widget title;
  final Widget leading;
  final Color navBgColor;
  final Color navBottomBgColor;
  final Color contentContainerBgColor;
  final List<TabItem> tabs;

  const TabWidget(
    this.tabs,
    {
      this.title,
      this.leading,
      this.navBgColor,
      this.navBottomBgColor,
      this.contentContainerBgColor,
      Key key
    }
  ) : super(key: key);

  List<Widget> _buildTabs() {
    final List<Widget> result = List<Widget>.from(tabs.map((e) {
      return Tab(icon: e.icon, text: e.label);
    }));
    return result;
  }

  List<Widget> _buildChildren() {
    final List<Widget> result = List<Widget>.from(tabs.map((e) {
      return ScrollWidget(
        Container(
          child: PaddingContainerWidget(
            e.children,
            padding: PaddingCustom.normal
          ),
          color: this.contentContainerBgColor,
        )
      );
    }));
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: this.tabs.length,
      child: Scaffold(
        backgroundColor: this.contentContainerBgColor,
        appBar: AppBar(
          title: this.title,
          leading: this. leading,
          backgroundColor: this.navBgColor,
          flexibleSpace: Image(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
          shadowColor: Colors.transparent,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(70.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(BorderRadiusCustom.xLarge)),
                color: this.navBottomBgColor,
              ),
              padding: EdgeInsets.only(
                top: PaddingCustom.normal,
                right: PaddingCustom.normal,
                bottom: PaddingCustom.none,
                left: PaddingCustom.normal
              ),
              child: TabBar(
                labelColor: ColorCustom.tabLabelColor,
                unselectedLabelColor: ColorCustom.tabLabelUnSelectedColor,
                labelStyle: TextStyle(backgroundColor: this.navBottomBgColor),
                labelPadding:  EdgeInsets.only(
                  top: PaddingCustom.xxSmall,
                  right: PaddingCustom.xxSmall,
                  bottom: PaddingCustom.xxSmall,
                  left: PaddingCustom.xxSmall
                ),
                indicator: BoxDecoration(
                  color: this.navBottomBgColor,
                  borderRadius: BorderRadius.all(Radius.circular(BorderRadiusCustom.normal)),
                  border: Border.all(
                    width: 2,
                    color: ColorCustom.tabLabelColor, 
                    style: BorderStyle.solid
                  )
                ),
                tabs: this._buildTabs()
              )
            ),
          )
        ),
        body: TabBarView(
          children: _buildChildren()
        )
      )
    );
  }
}
