class AnimatedBlogCard extends StatefulWidget {
  final String title;
  final String location;
  final String imageUrl;

  // const AnimatedBlogCard({
  //   Key? key,
  //   required this.title,
  //   required this.location,
  //   required this.imageUrl,
  // }) : super(key: key);
  const AnimatedBlogCard({super.key, required this.title, required this.location, required this.imageUrl});

  @override
  _AnimatedBlogCardState createState() => _AnimatedBlogCardState();
}

class _AnimatedBlogCardState extends State<AnimatedBlogCard> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 8),
      vsync: this,
    );

    // Define the animation with a delay at the beginning
    _animation = Tween<double>(begin: 0, end: -1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.2, 1.0, curve: Curves.linear), // 20% delay
      ),
    );
   _controller.repeat(); 
    // Future.delayed(Duration(seconds: 1), () {
    //   _controller.repeat(); // Loop the animation
    // });
  }

  //@override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  //@override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.4,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        runAlignment: WrapAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: NetworkImage(widget.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 5,
                  bottom: 25,
                  child: Text(
                    widget.location,
                    style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold),
                  ),
                ),
                AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) {
                    // Translate the position of the text based on the animation value
                    return Positioned(
                      left: (_animation.value * Get.width * 0.28 )+ 5,
                      bottom: 5,
                      //left: 5,
                      child: child!,
                    );
                  },
                  child: Text(
                    widget.title,
                    style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
