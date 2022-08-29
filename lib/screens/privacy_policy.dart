import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Privacy Policy",
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(width * 0.06),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Privacy Policy\n",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: width * 0.05,
                    fontFamily: 'Montserrat-r',
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "No Profit Apps built the Perception app as a Free app. This SERVICE is provided by No Profit Apps at no cost and is intended for use as is.\nThis page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.\nIf you choose to use my Service, then you agree to the collection and use of information in relation to this policy. At the date 2022-08-28 the App collects NO personal information of individuals of any kind. However in the future this behaviour will not change whatsoever. If In Future I collect Personal Information of any kind, then The Personal Information that I will collect will be used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.\nThe terms used in this Privacy Policy will have the same meanings as in our Terms and Conditions, which would be accessible at Perception unless otherwise defined in this Privacy Policy.\n",
                style: TextStyle(fontSize: 20, fontFamily: 'montserrat-r'),
                textAlign: TextAlign.start,
              ),
              Text(
                "Information Collection and Use\n",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Montserrat-r',
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.start,
              ),
              Text(
                "If In Future I collect Personal Information of any kind, then, for a better experience, while using our Service, I may require you to provide us with certain personally identifiable information, including but not limited to Nothing. The information that I request will be retained on your device and is not collected by me in any way.\nThe app does Not use third-party services that may collect information used to identify you.\n",
                style: TextStyle(fontSize: 20, fontFamily: 'Montserrat-r'),
                textAlign: TextAlign.start,
              ),
              Text(
                "Log Data\n",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: width * 0.05,
                    fontFamily: 'Montserrat-r',
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "I want to inform you that, In Future If I collect Personal Information of any kind, then whenever you use my Service, in the case of an error in the app I might collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilising my Service, the time and date of your use of the Service, and other statistics.\n",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: width * 0.05,
                  fontFamily: 'Montserrat-r',
                ),
              ),
              
              Text(
                "Cookies\n",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: width * 0.05,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat-r',
                ),
              ),
              Text(
                "Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.\nThis Service does not use these “cookies” explicitly. However, the app may use third-party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.\n",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: width * 0.05,
                  fontFamily: 'Montserrat-r',
                ),
              ),
              Text(
                "Service Providers\n",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: width * 0.05,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Montserrat-r',
                ),
              ),
              Text(
                "If In Future I collect Personal Information of any kind, then I may employ third-party companies and individuals due to the following reasons:\n1. To facilitate our Service;\n2. To provide the Service on our behalf;\n3. To perform Service-related services; or\n4. To assist us in analysing how our Service is used.If In Future I collect Personal Information of any kind, I want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.\n",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: width * 0.05,
                  fontFamily: 'Montserrat-r',
                ),
              ),
              Text(
                "Security\n",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: width * 0.05,
                  fontFamily: 'Montserrat-r',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "If In Future I collect Personal Information of any kind, then I will value your trust in providing us your Personal Information, thus we will strive to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security.\n",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: width * 0.05, fontFamily: 'Montserrat-r'),
              ),
              Text(
                "Links to Other Sites\n",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: width * 0.05,
                  fontFamily: 'Montserrat-r',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "If In Future I collect Personal Information of any kind, then This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.\n",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: width * 0.05,
                  fontFamily: 'Montserrat-r',
                ),
              ),
              Text(
                "Children’s Privacy\n",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: width * 0.05,
                  fontFamily: 'Montserrat-r',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13 years of age. If In Future I collect Personal Information of any kind, In case I discover that a child under 13 has provided me with personal information, I will immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do the necessary actions.\n",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: width * 0.05,
                  fontFamily: 'Montserrat-r',
                ),
              ),
              Text(
                "Changes to This Privacy Policy\n",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: width * 0.05,
                  fontFamily: 'Montserrat-r',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.\n",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: width * 0.05,
                  fontFamily: 'Montserrat-r',
                ),
              ),
              Text(
                "This policy is effective as of 2022-08-28\n",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: width * 0.05,
                  fontFamily: 'Montserrat-r',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
