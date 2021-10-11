import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_store.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  late PageController pageController;

  ValueNotifier<int> selectedPage = ValueNotifier(DateTime.now().day - 1);
  ValueNotifier<DateTime> selectedDate = ValueNotifier(DateTime.now());

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: .14, initialPage: DateTime.now().day - 1);
    pageController.addListener(() {
      selectedPage.value = pageController.page?.round() ?? 0;
    });

    generateDays();
  }

  var items = <DateTime>[];
  generateDays() {
    var oldDay = DateTime.now().subtract(Duration(days: DateTime.now().day - 1));
    for (var i = 0; i < 5000; i++) {
      items.add(oldDay);
      oldDay = oldDay.add(const Duration(days: 1));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 180,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(1, 1),
                      blurRadius: 5,
                    ),
                  ]),
                  child: ValueListenableBuilder<DateTime>(
                      valueListenable: selectedDate,
                      builder: (context, value, child) {
                        var dateFormated = DateFormat('MMMM', 'pt').format(value);

                        return InkWell(
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.date_range_outlined),
                                const SizedBox(width: 8),
                                Text(
                                  '${dateFormated.substring(0, 1).toUpperCase()}${dateFormated.substring(1)}',
                                  style: const TextStyle(color: Color(0xff323232), fontSize: 24, fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(width: 8),
                                Icon(Icons.expand_more)
                              ],
                            ),
                          ),
                          onTap: () async {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return MonthCalendar(
                                    onSelected: (selectedDate) {
                                      print(selectedDate);
                                    },
                                  );
                                },
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent);
                          },
                        );
                      }),
                ),
                SizedBox(
                  height: 70,
                  child: ValueListenableBuilder<int>(
                      valueListenable: selectedPage,
                      builder: (context, selected, child) {
                        return PageView.builder(
                          controller: pageController,
                          itemCount: items.length,
                          itemBuilder: (context, index) {
                            var currentDay = items[index];
                            return GestureDetector(
                              onTap: () {
                                selectedPage.value = index;
                                pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);
                              },
                              child: AnimatedSwitcher(
                                duration: const Duration(milliseconds: 300),
                                reverseDuration: const Duration(milliseconds: 300),
                                child: selected == index
                                    ? SelectedDay(
                                        day: currentDay.day,
                                        weekday: DateFormat('EEEE', 'pt').format(currentDay).substring(0, 3),
                                      )
                                    : UnSelectedDay(
                                        day: currentDay.day,
                                        weekday: DateFormat('EEEE', 'pt').format(currentDay).substring(0, 3),
                                      ),
                              ),
                            );
                          },
                        );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          store.increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class SelectedDay extends StatelessWidget {
  final String weekday;
  final int day;
  const SelectedDay({Key? key, required this.weekday, required this.day}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(color: const Color(0xffFF7648), borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '  $weekday  ',
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
            const SizedBox(height: 2),
            Text(
              '$day',
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}

class UnSelectedDay extends StatelessWidget {
  final String weekday;
  final int day;
  const UnSelectedDay({Key? key, required this.weekday, required this.day}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              weekday,
              style: const TextStyle(color: Color(0xffBCC1CD), fontSize: 12),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              '$day',
              style: const TextStyle(
                color: Color(0xff212525),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MonthCalendar extends StatefulWidget {
  final Function(DateTime selectedDate) onSelected;

  const MonthCalendar({Key? key, required this.onSelected}) : super(key: key);

  @override
  State<MonthCalendar> createState() => _MonthCalendarState();
}

class _MonthCalendarState extends State<MonthCalendar> {
  final ValueNotifier<int> selectedYear = ValueNotifier(DateTime.now().year);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          )),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  ValueListenableBuilder<int>(
                      valueListenable: selectedYear,
                      builder: (context, value, child) {
                        return IconButton(
                          onPressed: selectedYear.value == DateTime.now().year
                              ? null
                              : () {
                                  selectedYear.value = selectedYear.value - 1;
                                },
                          icon: const Icon(Icons.chevron_left),
                        );
                      }),
                  ValueListenableBuilder<int>(
                      valueListenable: selectedYear,
                      builder: (context, value, child) {
                        return Expanded(child: Center(child: Text('$value')));
                      }),
                  IconButton(
                    onPressed: () {
                      selectedYear.value = selectedYear.value + 1;
                    },
                    icon: const Icon(Icons.chevron_right),
                  ),
                ],
              ),
              ValueListenableBuilder<int>(
                  valueListenable: selectedYear,
                  builder: (context, value, child) {
                    return GridView.builder(
                      shrinkWrap: true,
                      itemCount: 12,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 90 / 32),
                      itemBuilder: (context, index) {
                        var month = DateFormat('MMMM', 'pt').format(DateTime(value, index + 1));
                        var now = DateTime.now();
                        var isLowerThenToday = now.year == value && now.month > index + 1;
                        return InkWell(
                          onTap: isLowerThenToday
                              ? null
                              : () {
                                  widget.onSelected(DateTime(value, index + 1));
                                },
                          child: Center(
                            child: Text(
                              '${month.substring(0, 1).toUpperCase()}${month.substring(1, 3)}',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w600, color: isLowerThenToday ? Colors.black54 : Colors.black),
                            ),
                          ),
                        );
                      },
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
