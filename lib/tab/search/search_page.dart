import 'package:flutter/material.dart';

import '../../create/create_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  final List<String> _urls = const [
    'https://lh3.googleusercontent.com/pw/ADCreHfEfaJiLdPH47k54smYz0MOKKbZ8F7p1w4KUWF3wC3VHoxwCs6f_tfvZh1zeLCHMzqNGzaPETsA7H7qYGjkHyZx5N6-RaMR0jV_wr7QbWXDqGfDCEkdbm7-fTjr7H8lb4CpSzijeDMBZGLFRueraGQ6Hqc4Vmh7w8fLlSNf-lKZxbnGyMC9huJHS39dU_JXF8pHCqWgfphouVrcres7aTmREVSwxtn6gOzmv3fUn_L3zCtIvzlkI2-w66fu7soqhuXb9Mfj93PHla7PVJImh_CZI-ifelW7wxbcuszWRRCx5LwgktJMD6ziIvOsP1RG-PFQWk3Bjz2BI44cnVKSnBu-eBW45yiSdZ6ayZBxXWswj5Kopv0Rdx6ntop-ca_v_n2sR7etfNa71Rvnf8PVDi2t5DbII2JCsMP0Qo7jRXiRNFWBy3wpf-iQdvTMK85Q9T8e1_d_6XPST_KolhgwIlA71JTHiH-HvGpnYJnYGzaiTN7k11Z7ysdyE312ExwMQPhdnzJSv-d9oXvOkmAJo4ZCxo3Kag-eezFYj-uFw74uOwhNS6Eu5sm8WF2z8PSE3rT7qzxVa6eEYVIyTX02FMS29X9lhb1UvrKuFGLSZmIEqnHwqaiNV8O0X-_i6cmxXznIgbITfSqQeApwKMXwP4mxrc-gY7c9ji01B-Oy8n9aXTk_o7B5fXipx2OLGT1AQTeW3Mar2DQjLY1F1V67DIJ3wFZj94HqY9TRUYG0FwZ4XZUORpGOQUSXsX66liGZ6iSLps50Ur40IUD0LwNkSojGLqO1732-QQMals3cBfo2WNH3Ac2VQiOKBTwx0OPy5zD7QEzO1M-gUeXaTFylniTsb6K-QOfMa1G8uhtDTFMcj1eiKlGw9wQGTRc6Qd2BZxeGvyXZBwo1KkGdKLJyT9PwLw8=w1854-h1044-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/ADCreHfmDmqkhMsZ7G2HMhbf-2aF4S3YLZicW_PvF5dB3Xf1zhNKVBXTc8l55DunV84ELCp-HUfTWQGXjxvH-IZ-rA-ARS9RKHELx6Z_OdTeGuknQkW2o6Aadr4lm9ldQ-sYLqkZds0i4NL867fin1SiRicQAMrJM_Utph1poDh6FtF7U7yYswduIxXXFF9Q38zI9pcTdKNCEfjcmehUoKOsceMaac5E52Kjrb2OYjE9SSp6PRgJbFtYtvrwVOGhK8PWqPaW5W14D3Pt_Takju1gc6fhIqPpIXOyJfM1IdM1Z6PZmcCZoM28qGT4H4nHxVn1zmUzUZGxA38Tf4uVh78RbN27kPPHum6QRO6X4BKa9Gm06p2sv7Kr66ogF22usrZzObyMHwXuhKMFxXz5LL00XaKM7_LsccCOzwfVWqYfDe661wUZpxrj24B3v67O-Gztem1Bevz_2qranRImqtvIlUMg2RcSvQOcdV9bbGnpVCzZ3CYlM9sF7i2Tx_mgUGroknZBnS9yLaxXkWwPiEuhcaK1j1MGB4CrTvoJijyDmb2RcaiGSA3UTD5YgB_q4aNFQ0w1rPI3VgmO63IniwGtl00NYqhZrNeKtjqsgo8eygQno3gmOif_2mB_3kQAmLcIGLbL4g287Ex_UZPxgKQjTh3rmubgyM7XkhOEK53BGGrWn2DSC7E6YhyJVBWw4eJES53JQQ7sQG2BhEozcSNMfBIcWGcAbkoN2ijL_bgALX8nEGpMw5vE0_srAcW39etC4TXkWYEK4r6sh9lbVp2OHtoz4CHdxuL5yhxAJYq3XmYv0K1RVDpnqTzVtnBj0hD28cxz2bkK7PQzT5iixxxIkXQDIg_NEo9Pto7yZHDb3FLMVqvTcnBEIgHNFQxz9JXkhXVoS6gKZldOosdJmU_vg9wrSzM=w1854-h1044-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/ADCreHfhqnxYfgSV355wXs1cl6RuLYTsCYJd_P73KfZA6uIUEm6BwGUzgrb33Laz6cUsF1M9tz2kjC7-7LvnvOKkHZuQ-Ljw5fIFYVo7mfQG9am3ziHWmNJHwJnZMrpMWWb3EuknE8VT30EAwEC7B2kjFzbt-3eBbs6s73fnS7sH2Qgv9tdOJ2pjzwJbaq7MKvyXIAbyEi7I0Y7nY21xf4kXjObzYQPg9lK8u_cau_6h7L1grt-AqlknFh5SyTI9ngFvoJapzNljSSAad6lYQvcGKmlMfaVVPdctELJM3RxNSEY5Szi3DjPm55A9Bx_MaR7Y-ZKIYVOnSIO1mwsKKo8Gp0FnTCI_Ptk3j9EWhhKtwJEQCsS42fLNN5xzdVFUq_K5-LY7fHlEXpvNcW-CxWJ60tKg6wgyZ8arp0rOzpDWSqSsIxpw3a8Wksf5apV06mYNmDN3eAmqzou9dXq1zH9ZGK8ovSx3WSDZvjc5L4D7NA_y9cgH_3_NCGXHKMcfuGDnvYzr69fnVGVx6bSJGMs5uN13h-GDb9TNCGvCxNHf9U85IJ3CzJaU_XUwkkIFAn155ixmwMwP4SFtda0bLJwYU3McXmq3fL8QEEfVStntBRj6e5SXBFkMoNruoc_3K2OYkaA34sn93NI8K2tILGTcG0fTZueKIRzj2J8enSNv46A37_aoYVyFIlaVl3EDOT8Q1343fot4wlGr6KNSwb_2mniAvO1tLLGud854ebpq4d0bAt86fU3vNFNmMuRn4JHAdyDy6IwJKjWqdug-UVIhycHIj-qvBL47ZzZXEaerL3rKx7kGHgATwR0xJ052quDucgPJ45cqyOQApZFFMQlxcrYHLa4coegTs70r3kT0uuGYx2qnO8BDGRwN81jXHhEpLBTr94L4bCALq4mjzKiHZzc0JNY=w1391-h1044-s-no?authuser=0',
    'https://lh3.googleusercontent.com/pw/ADCreHf-zswj7UOXSK1hUCL4dfuP0auD9zz32THmqT-2Vd3HggPi6pigCoDHQzPMPHVY94cHB4PJukMNT-05K03OdBksF1d5O6EjcNZX5KLNqrYhwY6TCuaZ-FOzkIUHqr1M1A-jKtGCPK_XvbNwTV10W0_gWi4by7cYq5KoeejTZmdrQer98xyIkYcc1v5CZiexPXwJU5cXSbVj6jgiBcz-SStAcaLH5kmv8xs_3TFJSK4H77qRs08MSccXyrJQJuNaav66RDlJiBeCAsKvJ3nNEC1JV4rorB5c9PSjnpWbIiZo7twMSryqYryWA8-GjBWizOlt4Uop1iAssgq-JoRzizpxrTuKl6YYV9_zHbjomiaNSrUSGI4oKiwSMN2vGoN1m5P5YzBzUVxfgUEXbUevtZBcOCOBSAQtulIXQah1snygJEKpETvQ_XXZunAdyvjrfo8UPE4ArRoLW-5Xgb0INMsn4u5wOA5F2EL97JJgKHE-nA_gxGhNvbLHFVQvq6qbwu7lTmIWYPKbTjPVjJmQveT5b85ErbfnA3ISlGX9rD4Ulvd7KwGP64Av85iyGkrHmIKKfiz3e5VPSU3hHk8qJ81Qn1sh-7xPr81qf9SM99nxTza60OGaivW88qrn0pnepQ42PQYycW8sVu0LYIzm3_KDE_3ZK7q-TFoI5fS1CoI2yc3HfOojby9U3Fn7vI3RaxKSLLten3rqT_1Mf4dWPxLgzFUpw9iLysn1VMIzqaT6lIXGh1tvud-AcZM0n60Nw8Opwq4l4wuOkkVlTVLuuGooQMymes9kWX_hNIYb9wBkV6j6C_BZPPgPHp73c4rgj8usDT6QmxKjEkkQoh8G-pl3ZrLoo2MV9MLIaezHvu_vrE6nWWZUFEwfajbq4P0tzEx2OuNfkGl61yrbSXSFzZ8k9bk=w1391-h1044-s-no?authuser=0'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CreatePage()),
        );
      },
        child: const Icon(Icons.create),
      ),
      appBar: AppBar(
        title: const Text('Instagram clone'),
      ),
      body: GridView.builder(
        itemCount: _urls.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2),
          itemBuilder: (BuildContext context, int index) {
            final url = _urls[index];
            return Image.network(url,
            fit: BoxFit.cover);
          }),
    );
  }
}
