import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'widgets/Card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xFF181818),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Hey Joanthan',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              'welcome',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 18,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      'Total Balance',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '\$5,194,462',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Button(
                            text: 'Transfer',
                            bgColor: Colors.amber,
                            textColor: Colors.black),
                        Button(
                            text: 'Request',
                            bgColor: Colors.black,
                            textColor: Colors.white)
                      ],
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Wallets',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Card_com(
                      bgColor: Color.fromARGB(255, 49, 49, 49),
                      m_name: 'Euro',
                      m_icon: Icon(Icons.euro_rounded),
                      unit: 'EUR',
                      m_val: '6 428',
                    ),
                    Transform.translate(
                      offset: const Offset(0, -25),
                      child: const Card_com(
                          bgColor: Color.fromARGB(255, 190, 190, 190),
                          m_name: 'Bitcoin',
                          m_icon: Icon(Icons.currency_bitcoin),
                          m_val: '9 785',
                          unit: 'BTC'),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -50),
                      child: const Card_com(
                        bgColor: Color.fromARGB(255, 235, 206, 88),
                        m_name: 'Dallor',
                        m_icon: Icon(Icons.attach_money_rounded),
                        unit: 'USD',
                        m_val: '1 468',
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
