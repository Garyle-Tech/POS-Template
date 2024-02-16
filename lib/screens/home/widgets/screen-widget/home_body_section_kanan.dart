import 'package:flutter/material.dart';

import '/path.dart';

class HomeBodySectionKanan extends StatelessWidget {
  const HomeBodySectionKanan({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: Column(
          // section kanan dibagi jadi beberapa bagian
          // yaitu header yang berisi add customer
          // pesanan yang berisi list pesanan, grand total, dan service charge
          // footer payment yang berisi button untuk save bill, print bill, split bill, dan charge
          children: [
            // header
            // ini bagian atas nya, berisi add customer
            CustomHeader(
              context: context,
              title: "+ Add Customer",
              style: null,
              backgroundColor: Colors.blue.shade200,
            ),
            // penggunaan sizedbox untuk memberi jarak antar widget
            const SizedBox(height: 16),
            // pesanan
            // ini bagian tengah nya, berisi list pesanan, grand total, dan service charge
            _pesanan(context),
            // penggunaan sizedbox untuk memberi jarak antar widget
            const SizedBox(height: 16),
            // custom button ini berguna untuk membuat button clear sale
            CustomButton(
              title: "Clear Sale",
              onPressed: () {},
            ),
            // ini footer untuk pembayaran
            // ini bagian bawah nya, berisi button untuk save bill, print bill, split bill, dan charge
            const Spacer(),
            _footerPayment(),
          ],
        ),
      ),
    );
  }

  Widget _footerPayment() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 32,
                ),
                color: Colors.grey.shade300,
                child: const Center(
                  child: Text(
                    "Save Bill",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 1),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 32,
                ),
                color: Colors.grey.shade300,
                child: const Center(
                  child: Text(
                    "Print Bill",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 32,
                ),
                child: const Center(
                  child: Text(
                    "Split Bill",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 1),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 32,
                ),
                child: const Center(
                  child: Text(
                    "Charge Rp 182.000",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Column _pesanan(BuildContext context) {
    return Column(
      children: [
        // dine in
        CustomHeader(
          context: context,
          title: "Dine In",
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: null,
        ),
        for (var item in dataPesanan)
          CustomTilePesanan(
            title: item['title'].toString(),
            amount: item['amount'].toString(),
            price: item['price'].toString(),
          ),
        const CustomTileOtherService(
          title: "Service Charge",
          amount: "(15%)",
          price: "15.000",
        ),
        const CustomTileOtherService(
          title: "Take Away Fee",
          amount: "(5%)",
          price: "5.000",
        ),
        const SizedBox(height: 16),
        // grand total
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Rp 50.000.000.000",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
