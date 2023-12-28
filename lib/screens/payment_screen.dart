import 'package:flutter/material.dart';
import 'package:veranco/screens/Homepage.dart';
import 'package:veranco/utils/colors.dart';
import 'package:lottie/lottie.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: darkWhiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      'Payment Options',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order Summary',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Product Design Course',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey,
                            ),
                            Text(
                              '2972 Westheimer Rd. Santa Ana, Illinois 85486',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              'Total Amount',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text(
                              '₹ 1500.00',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.local_offer_outlined,
                          color: primaryColor,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Offers',
                          style: TextStyle(fontSize: 17),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    'Credit and Debit Cards',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Mastercard_2019_logo.svg/300px-Mastercard_2019_logo.svg.png',
                                ),
                                height: 20,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Axis Bank **** **** **** 8395',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Spacer(),
                              Icon(
                                Icons.circle_outlined,
                                color: primaryColor,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Image(
                                image: NetworkImage(
                                  'https://cdn.visa.com/v2/assets/images/logos/visa/blue/logo.png',
                                ),
                                height: 20,
                                width: 40,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'HDFC Bank **** **** **** 6246',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Spacer(),
                              Icon(
                                Icons.circle_outlined,
                                color: primaryColor,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.add_box,
                                color: primaryColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Add a new Card',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    'UPI',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: NetworkImage(
                                  'https://seeklogo.com/images/G/google-pay-logo-BFDEA14F81-seeklogo.com.png',
                                ),
                                height: 20,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Google Pay',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Spacer(),
                              Icon(
                                Icons.circle_outlined,
                                color: primaryColor,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Image(
                                image: NetworkImage(
                                  'https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/phonepe-logo-icon.png',
                                ),
                                height: 24,
                                width: 40,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'PhonePe',
                                style: TextStyle(color: Colors.grey),
                              ),
                              Spacer(),
                              Icon(
                                Icons.circle_outlined,
                                color: primaryColor,
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '₹ 1500.00',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'View detailed view',
                              style: TextStyle(color: primaryColor),
                            )
                          ],
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () async{
                            await showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  content: Lottie.asset(
                                    'animations/Animation - 1703750623901.json',
                                    width: 300,
                                    height: 300,
                                    fit: BoxFit.fill,
                                  ),
                                );
                              },
                            );
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()),
                            );
                          },
                          child: Container(
                            height: 50,
                            color: ctaColor,
                            width: 200,
                            child: Center(
                                child: Text(
                              'Proceed to Pay',
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
