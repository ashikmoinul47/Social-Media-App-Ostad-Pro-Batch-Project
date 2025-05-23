import 'package:social_media_app/resources/export.dart';

class FollowersList extends StatelessWidget {
  const FollowersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            width: 100,
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 80,
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.network(
                              'https://randomuser.me/api/portraits/men/1.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 4.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sagor Ahmed",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "@shagor.a",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        FilledButton(
                          onPressed: () {
                            Utils.unfollowBottomSheet();
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: const Size(59, 30),
                              backgroundColor: Color(0xff6993FF),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                          child: Text('Remove',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white)),
                        ),
                      ],
                    ),
                  ),
                  Divider()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
