import 'package:beauti_website/Color.dart';
import 'package:beauti_website/Constants.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/link.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool? isMobile;
  bool? isTablet;
  bool? isDesktop;
  final pageController = CarouselController();
  int currentPage = 0;
  final homeKey = GlobalKey();
  final serviceKey = GlobalKey();
  final galleryKey = GlobalKey();
  final aboutKey = GlobalKey();
  final contactKey = GlobalKey();

  List<String> sliderList = [
    "assets/images/slider_image0.png",
    "assets/images/slider_image1.jpg",
    "assets/images/slider_image2.jpg",
    "assets/images/slider_image3.jpg",
    "assets/images/slider_image5.png",
    "assets/images/slider_image8.jpg",
  ];

  List<String> galleryList = [
    "assets/images/gallery/gallery1.jpg",
    "assets/images/gallery/gallery2.jpg",
    "assets/images/gallery/gallery3.jpg",
    "assets/images/gallery/gallery4.png",
    "assets/images/gallery/gallery5.jpg",
    "assets/images/gallery/gallery6.png",
    "assets/images/gallery/gallery7.jpg",
  ];

  List<String> serviceList = [
    "Bridal Mackup",
    "Mehndi Service",
    "Facial",
    "Hair Color",
    "Hair Cutting",
    "Hair Straightening",
    "Waxing Facility",
    "Nail color",
    "Pedicure",
    "Manicure",
    "Eye Brow",
    "Eyebrow Tinting (color)",
    "Skin Treatment",
    "3D, HD Make UP",
    "Hair Wash",
    "Hair Style",
    "Hair Rebonding",
    "Hair Spa",
    "Hair Keratin Service",
  ];

  List<String> drawerItemNameList = [
    "Home",
    "Our Services",
    "Photo Gallery",
    "About Us",
    "Contact Us",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isDesktop = MediaQuery.of(context).size.width > 800;
    isMobile = MediaQuery.of(context).size.width < 600;
    isTablet = MediaQuery.of(context).size.width > 600 &&
        MediaQuery.of(context).size.width < 800;
    return SafeArea(
        child: Scaffold(
      endDrawer: isDesktop == true
          ? null
          : Drawer(
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemCount: drawerItemNameList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () async {
                            Navigator.pop(context);
                            if (drawerItemNameList[index] == "Home") {
                              final context = homeKey.currentContext!;
                              await Scrollable.ensureVisible(
                                context,
                                duration: const Duration(seconds: 1),
                              );
                            }
                            if (drawerItemNameList[index] == "Our Services") {
                              final context = serviceKey.currentContext!;
                              // ignore: use_build_context_synchronously
                              await Scrollable.ensureVisible(
                                context,
                                duration: const Duration(seconds: 1),
                              );
                            }
                            if (drawerItemNameList[index] == "Photo Gallery") {
                              final context = galleryKey.currentContext!;
                              // ignore: use_build_context_synchronously
                              await Scrollable.ensureVisible(
                                context,
                                duration: const Duration(seconds: 1),
                              );
                            }
                            if (drawerItemNameList[index] == "About Us") {
                              final context = aboutKey.currentContext!;
                              // ignore: use_build_context_synchronously
                              await Scrollable.ensureVisible(
                                context,
                                duration: const Duration(seconds: 1),
                              );
                            }
                            if (drawerItemNameList[index] == "Contact Us") {
                              final context = contactKey.currentContext!;
                              // ignore: use_build_context_synchronously
                              await Scrollable.ensureVisible(
                                context,
                                duration: const Duration(seconds: 1),
                              );
                            }
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 25, top: 8, bottom: 8, right: 10),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 1, left: 15),
                              child: Text(
                                drawerItemNameList[index],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(
                        height: 5,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        toolbarHeight: 45,
        backgroundColor: AppColor.defaultColor.withOpacity(0.04),
        // backgroundColor: Colors.red,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/main_logo.png",
                height: 50,
              ),
              isDesktop == false
                  ? Container()
                  : Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              focusColor: AppColor.effectColor,
                              splashColor: AppColor.effectColor,
                              highlightColor: AppColor.effectColor,
                              borderRadius: BorderRadius.circular(20),
                              onTap: () async {
                                final context = homeKey.currentContext!;
                                await Scrollable.ensureVisible(
                                  context,
                                  duration: const Duration(seconds: 1),
                                );
                              },
                              child: Constants.mainOption("Home"),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              focusColor: AppColor.effectColor,
                              splashColor: AppColor.effectColor,
                              highlightColor: AppColor.effectColor,
                              borderRadius: BorderRadius.circular(20),
                              onTap: () async {
                                final context = serviceKey.currentContext!;
                                await Scrollable.ensureVisible(
                                  context,
                                  duration: const Duration(seconds: 1),
                                );
                              },
                              child: Constants.mainOption("Our Services"),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              focusColor: AppColor.effectColor,
                              splashColor: AppColor.effectColor,
                              highlightColor: AppColor.effectColor,
                              borderRadius: BorderRadius.circular(20),
                              onTap: () async {
                                final context = galleryKey.currentContext!;
                                await Scrollable.ensureVisible(
                                  context,
                                  duration: const Duration(seconds: 1),
                                );
                              },
                              child: Constants.mainOption("Photo Gallery"),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              focusColor: AppColor.effectColor,
                              splashColor: AppColor.effectColor,
                              highlightColor: AppColor.effectColor,
                              borderRadius: BorderRadius.circular(20),
                              onTap: () async {
                                final context = aboutKey.currentContext!;
                                await Scrollable.ensureVisible(
                                  context,
                                  duration: const Duration(seconds: 1),
                                );
                              },
                              child: Constants.mainOption("About Us"),
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              focusColor: AppColor.effectColor,
                              splashColor: AppColor.effectColor,
                              highlightColor: AppColor.effectColor,
                              borderRadius: BorderRadius.circular(20),
                              onTap: () async {
                                final context = contactKey.currentContext!;
                                await Scrollable.ensureVisible(
                                  context,
                                  duration: const Duration(seconds: 1),
                                );
                              },
                              child: Constants.mainOption("Contact Us"),
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: AppColor.defaultColor.withOpacity(0.04),
        child: mainLayout(),
      ),
    ));
  }

  mainLayout() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            key: homeKey,
            child: mainSlider(),
          ),
          Container(
            key: serviceKey,
            child: serviceLayout(),
          ),
          Container(
            key: galleryKey,
            child: photoGallery(),
          ),
          Container(
            key: aboutKey,
            child: aboutUs(),
          ),
          Container(
            key: contactKey,
            child: contactUs(),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            width: MediaQuery.of(context).size.width,
            child: const Center(
                child: Text(
              "2022 \u00a9 Siya Bridal Studio",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )),
          ),
        ],
      ),
    );
  }

  mainSlider() {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: isMobile == true
              ? MediaQuery.of(context).size.height * (0.40)
              : isTablet == true
                  ? MediaQuery.of(context).size.height * (0.50)
                  : MediaQuery.of(context).size.height * (0.85),
          margin: const EdgeInsets.only(top: 15),
          child: CarouselSlider.builder(
            carouselController: pageController,
            itemCount: sliderList.length,
            itemBuilder: ((context, index, realIndex) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  sliderList[index],
                  fit: BoxFit.cover,
                ),
              );
            }),
            options: CarouselOptions(
              height: isMobile == true
                  ? MediaQuery.of(context).size.height * (0.40)
                  : isTablet == true
                      ? MediaQuery.of(context).size.height * (0.50)
                      : MediaQuery.of(context).size.height * (0.85),
              autoPlay: true,
              initialPage: 0,
              autoPlayInterval: const Duration(seconds: 4),
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              onPageChanged: (index, reason) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        AnimatedSmoothIndicator(
          activeIndex: currentPage,
          count: sliderList.length,
          axisDirection: Axis.horizontal,
          onDotClicked: (index) {
            pageController.animateToPage(index);
          },
          effect: ExpandingDotsEffect(
            spacing: 5,
            radius: 10,
            dotWidth: 10,
            dotHeight: 8,
            dotColor: AppColor.greyColor,
            activeDotColor: AppColor.defaultColor,
          ),
        )
      ],
    );
  }

  serviceLayout() {
    return Column(
      children: [
        Constants.mainContainer(isMobile, isTablet, "Our Services"),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: GridView.builder(
              scrollDirection: Axis.vertical,
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: serviceList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isMobile == true
                    ? 2
                    : isTablet == true
                        ? 3
                        : 5,
                crossAxisSpacing: isMobile == true
                    ? 10
                    : isTablet == true
                        ? 15
                        : 20,
                mainAxisSpacing: isMobile == true
                    ? 4
                    : isTablet == true
                        ? 6
                        : 8,
                childAspectRatio: isMobile == true
                    ? 4
                    : isTablet == true
                        ? 4
                        : 3,
              ),
              itemBuilder: ((context, index) {
                return Container(
                  width: 20,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      serviceList[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: isMobile == true
                            ? 14
                            : isTablet == true
                                ? 16
                                : 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                );
              })),
        )
      ],
    );
  }

  photoGallery() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Constants.mainContainer(isMobile, isTablet, "Photo Gallery"),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: StaggeredGridView.countBuilder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                itemCount: galleryList.length,
                itemBuilder: ((context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      galleryList[index],
                      fit: BoxFit.cover,
                    ),
                  );
                })),
          ),
        ],
      ),
    );
  }

  aboutUs() {
    return Column(
      children: [
        Constants.mainContainer(isMobile, isTablet, "About Us"),
        Container(
          margin: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
          width: MediaQuery.of(context).size.width,
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Constants.aboutHeadPara(
                  isMobile, isTablet, "About Siya Bridal Studio"),
              const SizedBox(
                height: 5,
              ),
              Constants.aboutPara(isMobile, isTablet,
                  "We are Siya Bridal Studio. We are located at  08 - Vinayak Society, Near Diamond Hospital, Chikuwadi, Nana Varachha, Surat, Gujarat- 395006. We don’t have any other branch in Surat."),
              const SizedBox(
                height: 10,
              ),
              Constants.aboutHeadPara(isMobile, isTablet,
                  "What facility you will get in our Bridal Studio?"),
              const SizedBox(
                height: 5,
              ),
              Constants.aboutPara(isMobile, isTablet,
                  "Well !! To be Honest with you Guys, it is the best ever designed and Luxurious Beauty salon. It is a truly luxurious facility you will get in our salon. Second, You will get Five-Star Service at our Bridal Studio. It is only for Ladies, no Gents allowed. We have a Hair-wash Bath Chair, we have a special waxing private room where you get more privacy in that. We have a separate nail counter, facial section, separate Bridal changing room and Mehndi Corner, Hair-wash Platform. All these are separated where you can enjoy 100% privacy Services."),
              const SizedBox(
                height: 10,
              ),
              Constants.aboutHeadPara(isMobile, isTablet, "How is our staff?"),
              const SizedBox(
                height: 5,
              ),
              Constants.aboutPara(isMobile, isTablet,
                  "Well, we have been in this business for 15 years now and we have all trained staff who  have the ability to give 100% satisfactory service to you and all have specialized skills in a special department. Second, you do not need to go anywhere for another service. You will get all the service under the one roof so that is a fantastic thing for you. Our makeup artist has worked in the UK and runs her own beauty salon and has huge experience. you will get the best bridal look from our make up artist."),
            ],
          ),
        ),
      ],
    );
  }

  contactUs() {
    return Column(
      children: [
        Constants.mainContainer(isMobile, isTablet, "Contact Us"),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(left: 20, right: 15, bottom: 20),
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: isDesktop == true
              ? IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      address(),
                      map(),
                    ],
                  ),
                )
              : IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      map(),
                      address(),
                    ],
                  ),
                ),
        ),
      ],
    );
  }

  address() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            "assets/images/main_logo.png",
            height: 80,
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text(
              "08 - Vinayak Society, Near Diamond Hospital, Chikuwadi, Nana Varachha, Surat, Gujarat- 395006",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/instagram.png",
                fit: BoxFit.cover,
                height: 24,
                width: 24,
              ),
              const SizedBox(
                width: 10,
              ),
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse("https://www.instagram.com/siyabridalstudio/"),
                builder: ((context, followLink) {
                  return Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      focusColor: AppColor.effectColor,
                      splashColor: AppColor.effectColor,
                      highlightColor: AppColor.effectColor,
                      hoverColor: AppColor.effectColor,
                      onTap: followLink,
                      child: const Padding(
                        padding: EdgeInsets.only(left: 5, right: 5),
                        child: Text(
                          "Follow on Instagram",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  map() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * (0.70),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: IntrinsicHeight(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/find_us.png"),
              ),
              Positioned.fill(
                child: Link(
                  target: LinkTarget.blank,
                  uri: Uri.parse("https://goo.gl/maps/vxbGWnohSziXLUp48"),
                  builder: ((context, followLink) {
                    return Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(10),
                        focusColor: AppColor.effectColor,
                        splashColor: AppColor.effectColor,
                        highlightColor: AppColor.effectColor,
                        hoverColor: AppColor.effectColor,
                        onTap: followLink,
                        child: Container(),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
