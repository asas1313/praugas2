import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:praugas2/styles/styles.dart';
import 'package:spaces/spaces.dart';

class ServicesPage extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: (constraints.maxWidth / 3) * 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Space.extraSmall(),
                SelectableText(
                  'I can do for you ',
                  textAlign: TextAlign.center,
                  style: textStyleTitle,
                ),
                Space.extraSmall(),
                SelectableText(
                  'Manufacturing improvement',
                  style: textStyleSubtitle,
                  textAlign: TextAlign.start,
                ),
                SelectableText(
                  '\u2022 Process analysis focusing on added value: eliminate waste, bottleneck, ...\n' +
                      '\u2022 Change-over time - SMED analysis & training\n' +
                      '\u2022 Equipment downtime analyses and improvement\n' +
                      '\u2022 Quality and productivity improvement\n' +
                      '\u2022 Capacity vs. demand: takt-time improvement\n' +
                      '\u2022 Workflow and stock improvement (data analyses, MRP , kanban, value stream)\n' +
                      '\u2022 ERP deployment and optimization\n' +
                      '\u2022 Capacity vs. demand, flexible adaptation\n',
                  style: textStyleNormalSmall,
                ),
                Space.extraSmall(),
                SelectableText(
                  'Process and equipment expertise',
                  style: textStyleSubtitle,
                  textAlign: TextAlign.start,
                ),
                SelectableText(
                  '\u2022 Machining, assembly, plastic molding, composite, stamping, blanking, debarring, cleansing, packaging, welding,...\n' +
                      '\u2022 Cycle time & throughput time improvement\n' +
                      '\u2022 Cooling fluid expertise\n',
                  style: textStyleNormalSmall,
                ),
                Space.extraSmall(),
                SelectableText(
                  'Investment preparation',
                  style: textStyleSubtitle,
                  textAlign: TextAlign.start,
                ),
                SelectableText(
                  '\u2022 Analysis investment vs. improvement options\n' +
                      '\u2022 Purchasing and technical specifications\n' +
                      '\u2022 Market tender, negotiation, contracting\n',
                  style: textStyleNormalSmall,
                ),
                Space.extraSmall(),
                SelectableText(
                  'LEAN and CIP expertise​',
                  style: textStyleSubtitle,
                  textAlign: TextAlign.start,
                ),
                SelectableText(
                  '\u2022 Lean process design to save time, € and m2​\n' +
                      '\u2022 SMED training and solutions\n' +
                      '\u2022 5S training and workshop\n' +
                      '\u2022 Continuous improvement process deployment\n' +
                      '\u2022 Functional value analysis\n',
                  style: textStyleNormalSmall,
                ),
                Space.extraSmall(),
                SelectableText(
                  'Business',
                  style: textStyleSubtitle,
                  textAlign: TextAlign.start,
                ),
                SelectableText(
                  '\u2022 Sales development to/from French speaking countries\n' +
                      '\u2022 International relationship development\n' +
                      '\u2022 Purchasing strategy and process (how to buy, prepare RfQ and negotiation)\n',
                  style: textStyleNormalSmall,
                ),
                Space.extraSmall(),
                SelectableText(
                  'EFQM',
                  style: textStyleSubtitle,
                  textAlign: TextAlign.start,
                ),
                SelectableText(
                  '\u2022 Pre-acquisition industrial & organisational evaluation, excellence model deployment, management training, change management\n' +
                      '\u2022 Strategy and KPI design and rollout\n',
                  style: textStyleNormalSmall,
                ),
                Space.extraSmall(),
              ],
            ),
          ),
        ),
      );
    });
  }
}
