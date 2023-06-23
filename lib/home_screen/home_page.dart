import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      // body: Center(
      //   child: Column(
      //     children: [
      //       GetBuilder<HomeController>(
      //         id: "LoginUser",
      //         builder: (controller) => Padding(
      //           padding: const EdgeInsets.all(10.0),
      //           child: Container(
      //             height: 200,
      //             width: Get.width,
      //             decoration: BoxDecoration(
      //               color: Colors.pink,
      //               border: Border.all(color: Colors.yellow),
      //               borderRadius: BorderRadius.circular(20),
      //             ),
      //             child: Row(
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //               children: [
      //                 Padding(
      //                   padding: const EdgeInsets.all(8.0),
      //                   child: Container(
      //                     height: 100,
      //                     width: 100,
      //                     alignment: Alignment.center,
      //                     decoration: const BoxDecoration(
      //                       shape: BoxShape.circle,
      //                       color: Colors.green,
      //                     ),
      //                     child: Text(
      //                       "${controller.loginUser?.name1![0] ?? ""}",
      //                       style: const TextStyle(fontSize: 30),
      //                     ),
      //                   ),
      //                 ),
      //                 Column(
      //                   mainAxisAlignment: MainAxisAlignment.center,
      //                   children: [
      //                     Text(
      //                       "Name : ${controller.loginUser?.name1 ?? ""}",
      //                     ),
      //                     Text(
      //                       "Email : ${controller.loginUser?.email ?? ""}",
      //                     ),
      //                     Text(
      //                       "Phone : ${controller.loginUser?.number ?? ""}",
      //                     ),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //       Expanded(
      //           child: GetBuilder<HomeController>(
      //             id: "UserList",
      //         builder: (controller) => ListView.builder(
      //           itemCount: controller.userList?.length ?? 0,
      //           itemBuilder: (context, index) => ListTile(
      //             leading: Container(
      //               height: 50,
      //               width: 50,
      //               alignment: Alignment.center,
      //               decoration: const BoxDecoration(
      //                 shape: BoxShape.circle,
      //                 color: Colors.green,
      //               ),
      //               child: Text(
      //                 "${controller.userList?[index].name1![0] ?? ""}",
      //                 style: const TextStyle(fontSize: 20),
      //               ),
      //             ),
      //             title: Text(controller.userList?[index].name1 ?? ""),
      //             subtitle: Text(controller.userList?[index].email ?? ""),
      //           ),
      //         ),
      //       )),
      //     ],
      //   ),
      // ),
      // body: GetBuilder<HomeController>(
      //     id: 'UserList',
      //     builder: (controller) {
      //       return controller.imageList == null
      //           ? CircularProgressIndicator()
      //           : ListView.builder(
      //               itemBuilder: (context, index) => ListTile(
      //                 leading: Image.network(controller.imageList![index].url!),
      //                 title: Text(controller.imageList![index].url!),
      //               ),
      //             );
      //     }),
      body: GetBuilder<HomeController>(
          id: 'productList',
          builder: (controller) {
            return controller.productList == null
                ? const Center(child: CircularProgressIndicator())
                : GridView.builder(
                    itemCount: controller.productList!.products!.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) => Container(
                      height: 100,
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(controller.productList!
                                        .products![index].images!.first
                                        .toString()),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            controller.productList!.products![index].title!,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                '\$',
                                style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(
                                controller.productList!.products![index].price!
                                    .toString(),
                                style: const TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              const Icon(
                                Icons.star_sharp,
                                color: Colors.orange,
                                size: 15,
                              ),
                              Text(
                                controller.productList!.products![index].rating!
                                    .toString(),
                                style: const TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
