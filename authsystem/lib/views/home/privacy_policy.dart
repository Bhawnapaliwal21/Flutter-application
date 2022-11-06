import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicy> createState() => PrivacyPolicyState();
}

class PrivacyPolicyState extends State<PrivacyPolicy> {
  static const htmlData=''' 
  <html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<h1>Privacy Policy</h1>
<p>authsystem,respects the privacy of people who use authsystem services. This privacy statement ("policy") reflects the current information practices of authsystem. Should there be any future changes to our privacy policy, we will continue to post them on this page.</p>
<h2>Information We Collect</h2>
<p>We collect the following categories of personal information:

<p>1.Identifiers, such as your name, email address, IP address, or account name.</p> 
<p>2.Personal information, such as your educational information.</p> 
<p>3.Professional or employment-related information.</p>
<p>4.Non-public education information (school attended and date of graduation).</p>
<p>5.Classification characteristics, e.g., your age, race, national origin, or sex.</p> 
<p>6.Commercial information, such as the products or services you’ve purchased, obtained or considered, and other purchasing or consumer histories or tendencies.</p> 
<p>7.Internet activity, such as your browsing history, your search history, and information on your interaction with our website, our other services, and advertisements. </p>
<p>8.Geolocation data, e.g., your physical location or movements. </p>
<p>9. Inferences drawn from other personal information listed above, to create a profile reflecting your preferences, characteristics, psychological trends, predispositions, behavior, attitudes, intelligence, abilities and aptitudes.</p>
<p>Information could be collected in any/all of the following ways.</p>
<h2>Information You Provide</h2>
<p>When you register as a member or request information, we will use our registration and online enrollment forms to collect personally identifying information such as your full name, mailing address, email address, telephone number, educational background, professional information and credit card information ("personal data"). In addition, if you contact us via email or offline, we may collect the personal data that you voluntarily provide us at that time.</p>
<p>You may choose to voluntarily submit other information to us through our services that we do not request and, in such instances, you are solely responsible for such information.</p>
</body>
</html>

  
  
   ''';
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      
      body: SafeArea(child: SingleChildScrollView(
        child: Html(data: htmlData)
      ),),
    );
  }
}
