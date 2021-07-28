import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:htd_consume_firebase/app/modules/home/domain/entities/event_entity.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        actions: [
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                store.reloadData();
              })
        ],
      ),
      body: ScopedBuilder<HomeStore, Exception, List<EventEntity>>.transition(
        store: store,
        onLoading: (context) => Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        onState: (_, events) {
          if (events.isEmpty) {
            return Container();
          }
          return ListView.builder(
            itemCount: events.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: PhysicalModel(
                  color: Colors.white,
                  elevation: 2,
                  child: ListTile(
                    selected: events[index].completed,
                    selectedTileColor: Colors.green[700]?.withOpacity(.6),
                    title: Text(events[index].name),
                    subtitle: Text(
                        "${events[index].addresses.length} ${events[index].dateEvent.day}-${events[index].dateEvent.month}-${events[index].dateEvent.year}"),
                    trailing: IconButton(
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        store.removeEvent(events[index].id);
                      },
                    ),
                    onTap: () {
                      store.updateEvent(events[index]);
                    },
                  ),
                ),
              );
            },
          );
        },
        onError: (context, error) => Center(
          child: Text(
            'Can`t get the Data',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          store.addEvent();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
