// Main Scaffold with navigation logic
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget _currentBody = FirstPageContent(); // Initial body content

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Persistent AppBar'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('Drawer Header')),
            ListTile(
              title: Text('First Page'),
              onTap: () {
                setState(() {
                  _currentBody = FirstPageContent(); // Change body
                });
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              title: Text('Second Page'),
              onTap: () {
                setState(() {
                  _currentBody = SecondPageContent(); // Change body
                });
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: _currentBody, // Dynamic body content
    );
  }
}

// Content of the first page
class FirstPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('First Page Content'));
  }
}

// Content of the second page
class SecondPageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Second Page Content'));
  }
}
