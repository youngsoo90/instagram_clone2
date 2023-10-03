import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('pr_ysooo'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.exit_to_app,
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    const SizedBox(
                      width: 80,
                      height: 80,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://lh3.googleusercontent.com/pw/ADCreHf-zswj7UOXSK1hUCL4dfuP0auD9zz32THmqT-2Vd3HggPi6pigCoDHQzPMPHVY94cHB4PJukMNT-05K03OdBksF1d5O6EjcNZX5KLNqrYhwY6TCuaZ-FOzkIUHqr1M1A-jKtGCPK_XvbNwTV10W0_gWi4by7cYq5KoeejTZmdrQer98xyIkYcc1v5CZiexPXwJU5cXSbVj6jgiBcz-SStAcaLH5kmv8xs_3TFJSK4H77qRs08MSccXyrJQJuNaav66RDlJiBeCAsKvJ3nNEC1JV4rorB5c9PSjnpWbIiZo7twMSryqYryWA8-GjBWizOlt4Uop1iAssgq-JoRzizpxrTuKl6YYV9_zHbjomiaNSrUSGI4oKiwSMN2vGoN1m5P5YzBzUVxfgUEXbUevtZBcOCOBSAQtulIXQah1snygJEKpETvQ_XXZunAdyvjrfo8UPE4ArRoLW-5Xgb0INMsn4u5wOA5F2EL97JJgKHE-nA_gxGhNvbLHFVQvq6qbwu7lTmIWYPKbTjPVjJmQveT5b85ErbfnA3ISlGX9rD4Ulvd7KwGP64Av85iyGkrHmIKKfiz3e5VPSU3hHk8qJ81Qn1sh-7xPr81qf9SM99nxTza60OGaivW88qrn0pnepQ42PQYycW8sVu0LYIzm3_KDE_3ZK7q-TFoI5fS1CoI2yc3HfOojby9U3Fn7vI3RaxKSLLten3rqT_1Mf4dWPxLgzFUpw9iLysn1VMIzqaT6lIXGh1tvud-AcZM0n60Nw8Opwq4l4wuOkkVlTVLuuGooQMymes9kWX_hNIYb9wBkV6j6C_BZPPgPHp73c4rgj8usDT6QmxKjEkkQoh8G-pl3ZrLoo2MV9MLIaezHvu_vrE6nWWZUFEwfajbq4P0tzEx2OuNfkGl61yrbSXSFzZ8k9bk=w1391-h1044-s-no?authuser=0'),
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        width: 25,
                        height: 25,
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: const Icon(Icons.add),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                const Text(
                  '박영수',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              children: const [
                Text('3', style: TextStyle(fontSize: 18),),
                Text('게시물', style: TextStyle(fontSize: 18)),
              ],
            ),
            Column(
              children: const [
                Text('0', style: TextStyle(fontSize: 18)),
                Text('팔로워', style: TextStyle(fontSize: 18)),
              ],
            ),
            Column(
              children: const [
                Text('0', style: TextStyle(fontSize: 18)),
                Text('팔로잉', style: TextStyle(fontSize: 18)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
