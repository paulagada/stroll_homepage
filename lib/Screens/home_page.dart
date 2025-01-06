import 'package:flutter/material.dart';
import 'package:stroll_interview/config/colors.dart';
import 'package:stroll_interview/model/answers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Answer> answers = [
    Answer(
      question: "The peace in the early mornings",
      num: "A",
    ),
    Answer(
      question: "The magical golden hours",
      num: "B",
    ),
    Answer(
      question: "Wind-down time after dinners",
      num: "C",
    ),
    Answer(
      question: "The serenity past midnight",
      num: "D",
    ),
  ];
  String isSelected = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/backgroundImage.png"),
          alignment: Alignment.topCenter,
          fit: BoxFit.fitWidth,
        )),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black26, Colors.transparent, Colors.black],
              stops: [0.2, 0.48, 0.62],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 10,
                right: 10,
                bottom: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Stroll Bonfire",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        shadows: [
                          Shadow(
                              color: Color(0x80000000),
                              offset: Offset(0, 0.3),
                              blurRadius: 0.3),
                        ],
                        color: lightPurple,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/alarm.png",
                        scale: 4,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        "22h 00m",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Image.asset("assets/icons/person.png"),
                      Text(
                        " 103",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 5,
                                  ),
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("assets/images/Joey.png"),
                                      fit: BoxFit.contain),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black,
                                      ),
                                      child: Text(
                                        "Angelina, 28",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        left: 10,
                                        bottom: 10,
                                        right: 5,
                                      ),
                                      child: Text(
                                        "What is your favorite time of the day?",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          "“Mine is definitely the peace in the morning.”",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: italicTextColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent:
                                MediaQuery.sizeOf(context).height / 11,
                          ),
                          itemCount: answers.length,
                          itemBuilder: (context, index) {
                            var item = answers[index];
                            return gridContainer(item);
                          },
                        ),
                        Row(
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pick your option.",
                                  style: TextStyle(color: boxTextColor),
                                ),
                                Text(
                                  "See who has a similar mind.",
                                  style: TextStyle(color: boxTextColor),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border.all(color: appColor, width: 2.5),
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset("assets/icons/mic.png"),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: appColor,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(Icons.arrow_forward),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget gridContainer(Answer ans) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = ans.num;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: isSelected == ans.num
              ? Border.all(color: appColor, width: 2.5)
              : null,
          color: conColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: isSelected == ans.num ? appColor : null,
                border: Border.all(
                    color: isSelected == ans.num ? appColor : boxTextColor),
                shape: BoxShape.circle,
              ),
              child: Text(
                ans.num,
                style: TextStyle(
                    fontSize: 12,
                    color: isSelected == ans.num ? Colors.white : boxTextColor),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: Text(
              ans.question,
              style: const TextStyle(fontSize: 14, color: boxTextColor),
            ))
          ],
        ),
      ),
    );
  }
}
