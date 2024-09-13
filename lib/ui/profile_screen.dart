import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/user_model.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SafeArea(
      child: Center(
        child: SizedBox(
          height: 500,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: Container(
                      width: 70,
                      height: 70,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                          UserModel.userModel[index].image ??
                              'assets/image/default image.png',
                          fit: BoxFit.fill),
                    ),
                    title: Text(
                        UserModel.userModel[index].name ?? 'Write your name'),
                    subtitle: Text(UserModel.userModel[index].titleJop ??
                        'Write your Job'),
                    trailing: Text('age ${UserModel.userModel[index].age}'),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                    height: 20,
                  ),
              itemCount: UserModel.userModel.length),
        ),
      ),
    ));
  }
}
