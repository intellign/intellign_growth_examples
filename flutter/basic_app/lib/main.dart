import 'package:flutter/material.dart';
import 'package:intellign_growth/intellign_growth.dart';

const growthKey=String.fromEnvironment('GROWTH_KEY');
const growthAppId=String.fromEnvironment('GROWTH_APP_ID',defaultValue:'com.example.growthdemo');
final growth=Growth(clientKey:growthKey,appId:growthAppId);

void main()=>runApp(const DemoApp());
class DemoApp extends StatelessWidget{const DemoApp({super.key});@override Widget build(BuildContext context)=>MaterialApp(debugShowCheckedModeBanner:false,theme:ThemeData.dark(),home:const DemoHome());}
class DemoHome extends StatefulWidget{const DemoHome({super.key});@override State<DemoHome> createState()=>_DemoHomeState();}
class _DemoHomeState extends State<DemoHome>{String status='Ready.';
 Future<void> send(String event,Map<String,dynamic> properties)async{if(event=='signup')growth.identify('demo_customer_123');final ok=await growth.track(event,properties:properties);setState(()=>status=ok?'Sent $event to Growth.':'Growth did not accept $event.');}
 @override Widget build(BuildContext context)=>Scaffold(body:SafeArea(child:Padding(padding:const EdgeInsets.all(28),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[const Spacer(),Text('INTELLIGN GROWTH · FLUTTER',style:Theme.of(context).textTheme.labelSmall),const SizedBox(height:18),Text('Let the app tell Growth what is happening.',style:Theme.of(context).textTheme.headlineLarge),const SizedBox(height:14),const Text('Run a tiny commerce journey, then verify Flutter in Growth.'),const SizedBox(height:28),for(final e in ['product_view','add_to_cart','signup','purchase'])Padding(padding:const EdgeInsets.only(bottom:8),child:FilledButton(onPressed:()=>send(e,{'product':'Studio Lamp','value':79}),child:Text(e.replaceAll('_',' ')))),const SizedBox(height:12),Text(status),const Spacer()]))));}}
