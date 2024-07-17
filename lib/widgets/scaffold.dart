/*
 * @Author: iptoday wangdong1221@outlook.com
 * @Date: 2024-07-17 19:23:07
 * @LastEditors: iptoday wangdong1221@outlook.com
 * @LastEditTime: 2024-07-17 19:23:33
 * @FilePath: /iasc/lib/widgets/scaffold.dart
 * 
 * Copyright (c) 2024 by iptoday wangdong1221@outlook.com, All Rights Reserved.
 */

import 'package:flutter/material.dart';

export 'package:flutter/material.dart';

class IScaffold extends StatefulWidget {
  const IScaffold({
    super.key,
    this.appBar,
    required this.body,
    this.resizeToAvoidBottomInset = true,
    this.backgroundColor,
    this.keepAliveWrapper = true,
    this.onInit,
    this.dispose,
  });

  final PreferredSizeWidget? appBar;

  final Widget body;

  final bool resizeToAvoidBottomInset;

  final Color? backgroundColor;

  final bool keepAliveWrapper;

  final VoidCallback? onInit;

  final VoidCallback? dispose;

  @override
  State<StatefulWidget> createState() => _IScaffoldState();
}

class _IScaffoldState extends State<IScaffold>
    with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    if (widget.onInit != null) {
      widget.onInit!();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
      appBar: widget.appBar,
      body: widget.body,
    );
  }

  @override
  void dispose() {
    if (widget.dispose != null) {
      widget.dispose!();
    }
    super.dispose();
  }

  @override
  bool get wantKeepAlive => widget.keepAliveWrapper;
}
