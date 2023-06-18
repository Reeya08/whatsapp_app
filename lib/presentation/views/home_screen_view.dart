import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(
                  Icons.people_sharp,
                ),
              ),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls')),
            ],
          ),
          actions: [
            const Icon(
              Icons.search,
            ),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              icon: const Icon(
                Icons.more_vert,
              ),
              itemBuilder: (
                  context,
                  ) =>
              [
                const PopupMenuItem(
                  value: '1',
                  child: Text('New Group'),
                ),
                const PopupMenuItem(
                  value: '2',
                  child: Text('Settings'),
                ),
                const PopupMenuItem(
                  value: '3',
                  child: Text('Logout'),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Text(
              'Community',
            ),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, i) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.gannett-cdn.com/-mm-/025da5d33f554533979852a692d73b2a05509846/c=17-0-467-600/local/-/media/2017/05/05/CNYGroup/Binghamton/636295882472121450-koban.jpg?width=450&height=600&fit=crop&format=pjpg&auto=webp'),
                    ),
                    title: Text('Jhon Wick'),
                    subtitle: Text('Whare are u?'),
                    trailing: Text('6:45 PM'),
                  );
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, i) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 3,
                          color: Colors.green,
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://www.gannett-cdn.com/-mm-/025da5d33f554533979852a692d73b2a05509846/c=17-0-467-600/local/-/media/2017/05/05/CNYGroup/Binghamton/636295882472121450-koban.jpg?width=450&height=600&fit=crop&format=pjpg&auto=webp'),
                      ),
                    ),
                    title: Text('Jhon Wick'),
                    subtitle: Text('35m ago'),
                  );
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, i) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.gannett-cdn.com/-mm-/025da5d33f554533979852a692d73b2a05509846/c=17-0-467-600/local/-/media/2017/05/05/CNYGroup/Binghamton/636295882472121450-koban.jpg?width=450&height=600&fit=crop&format=pjpg&auto=webp'),
                    ),
                    title: Text('Jhon Wick'),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.call_missed,
                          color: Colors.red,
                        ),
                        Text('Today,6:45 PM'),
                      ],
                    ),
                    trailing: Icon(
                        color: Colors.teal,
                        i / 2 == 0
                            ? Icons.phone
                            : Icons.video_call
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}