import 'package:flutter/material.dart';

void main() {
  runApp(Navigation_and_Routing_24_demo());
}

/*class Navigation_and_Routing_24_demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeRoute(),
    );
  }
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stamasoft'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text('Click Me!'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondRoute()),
              );
            }),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Click Me Page"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Home!'),
        ),
      ),
    );
  }
}*/
//----3------Arguments in Named Routes example--------

class Navigation_and_Routing_24_demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Define named routes in the application
      routes: {
        '/': (context) => HomePage(),
        '/details': (context) => DetailsPage(),
      },
      initialRoute: '/',
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the DetailsPage with arguments
            Navigator.pushNamed(
              context,
              '/details',
              arguments: 'Hello from Home Page',
            );
          },
          child: Text('Go to Details Page'),
        ),
      ),
    );
  }
}

//--------

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Retrieve the arguments passed from the HomePage
    final String arguments =
        ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Details Page'),
      ),
      body: Center(
        child: Text(
          arguments,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
