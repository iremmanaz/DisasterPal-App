import 'package:flutter/material.dart';

class FireInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fire Information'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'FIRES\n',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Part 1: Introduction to Fires\n\n'
                  'Fires, both natural and man-made, are powerful forces that can lead to significant environmental and societal changes.'
                  'They occur under various conditions and can spread rapidly, causing destruction to wildlife, vegetation, and human structures. But what exactly are fires, and why do they happen?\n\n'
                  'What Are Fires?\n'
                  'At its core, a fire is a chemical reaction called combustion, which requires fuel, oxygen, and an ignition source to occur. This reaction releases heat, light, and various reaction products, often rapidly. Natural fires are typically triggered by lightning or volcanic activity, while human activities like unattended campfires, discarded cigarettes, and arson are common causes of man-made fires.\n'
                  '\nWhy Do Fires Occur?\n'
                  'Fires occur for many reasons and can be classified into natural and human-caused fires. In natural settings, fires play a crucial role in ecosystems by clearing dead trees and underbrush, thus fostering new growth. However, when uncontrolled, fires can cause extensive damage to homes, human lives, and natural resources.\n'
                  '\nThe Importance of Understanding Fires\n'
                  'Understanding fires and their behavior is crucial for developing effective prevention, management, and recovery strategies. This knowledge helps in minimizing fire-related losses and restoring affected ecosystems. Moreover, it aids firefighters and emergency services in combating fires more effectively, protecting both the environment and human populations.\n\n'
                  'Part 2: The Science Behind Fires\n\n'
                  'Understanding the science behind fires is essential for predicting their behavior and effectively managing fire-related disasters. This part explores the components of fire, types of fires, and how they spread.\n'
                  '\nComponents of Fire\n'
                  'The fire triangle consists of three essential elements: fuel, heat, and oxygen. Removing any of these elements can extinguish a fire. Additionally, the fire tetrahedron includes a fourth element, the chemical chain reaction, highlighting the role of chemical reactions in sustaining fires.\n\n'
                  'Types of Fires\n'
                  'Fires are classified based on the type of fuel that feeds them, including:\n\n'
                  'Class A: Fires involving ordinary combustibles like wood, paper, and cloth.\n'
                  'Class B: Fires involving flammable liquids like gasoline, oil, and grease.\n'
                  'Class C: Fires involving electrical equipment.\n'
                  'Class D: Fires involving combustible metals.\n'
                  'Class K: Fires involving cooking oils and fats.\n'
                  'How Fires Spread\n\n'
                  'Fires spread through conduction, convection, and radiation, affecting nearby combustible materials. Wind and topography can significantly influence a fire'
                  's spread, especially in outdoor environments.\n'
                  '\nPart 3: Measuring and Classifying Fires\n\n'
                  'Measuring and classifying fires is crucial for understanding their potential impact and for planning firefighting and evacuation efforts. This section discusses the scales used to measure fire intensity and the classification of wildfires.\n\n'
                  'Fire Intensity and Severity\n'
                  'Fire intensity refers to the energy output of a fire and is measured in terms of heat release per unit area. Fire severity, on the other hand, describes the fire'
                  's impact on the ecosystem, including soil damage and vegetation loss.\n'
                  'Wildfire Classification\n'
                  'Wildfires are classified based on their size, speed of spread, and the type of vegetation involved. This classification helps in determining the appropriate response strategies to effectively manage and contain the fire.\n'
                  'Fire Danger Ratings\n'
                  'Fire danger ratings provide information on the potential for a fire to start and spread, based on current and forecasted weather conditions. \n'
                  'Part 4: Fire Preparedness and Safety Measures\n\n'
                  'Being prepared for a fire can significantly reduce the risks to life and property. This section provides essential guidelines and safety measures to help individuals and communities prepare for, survive, and recover from fires.\n'
                  'Before a Fire: Preparation\n'
                  'Install smoke alarms on every level of your home, inside bedrooms and outside sleeping areas.\n'
                  'Test smoke alarms every month and replace batteries at least once a year.\n'
                  'Have a fire escape plan that includes two ways out of every room and an outside meeting place.\n'
                  'Keep fire extinguishers in key locations and ensure everyone knows how to use them.\n'
                  'During a Fire: Safety Actions\n'
                  'If a fire occurs, get out, stay out, and call for help. Do not go back inside for anything or anyone.\n'
                  'Crawl low under any smoke to your exit - heavy smoke and poisonous gases collect first along the ceiling.\n'
                  'If you encounter smoke when using your primary exit, use an alternative way out.\n'
                  'If you are trapped, seal the room and cover vents and cracks around doors with cloth or tape to keep smoke out.\n'
                  '\nAfter a Fire: Recovery and Safety\n'
                  'Once you are out, stay out. Firefighters will assist in saving your possessions.\n'
                  'If you are told to evacuate, do so immediately.\n'
                  'Check yourself and family members for injuries and get medical attention if necessary.\n'
                  'Listen to news updates for information about the fire and any evacuation orders.\n'
                  'Part 5: The Role of Technology in Fire Detection and Response\n\n'
                  'Advancements in technology have significantly impacted our ability to detect and respond to fires. From early warning systems to post-fire recovery efforts, technology plays a crucial role in minimizing the impact of fires on lives and property.\n'
                  'Fire Detection and Alarm Systems\n'
                  'Modern smoke detectors and fire alarm systems use advanced sensors to detect fire and smoke at the earliest stages, providing crucial time for evacuation.\n'
                  'Remote Sensing and Drones\n'
                  'Drones and satellite technology provide real-time imagery and data to monitor wildfire spread, helping to allocate firefighting resources more effectively.\n'
                  'Post-Fire Assessment and Recovery\n'
                  'Technology aids in assessing damage, identifying the fire'
                  's cause, and planning reconstruction. Mobile apps and online platforms facilitate aid distribution and community support.\n'
                  'Conclusion\n\n'
                  'This series has explored the critical aspects of fire safety, from understanding fire dynamics to implementing effective preparedness and safety measures. We'
                  've also examined how technology enhances our ability to predict, detect, and respond to fires, thereby safeguarding communities and reducing potential losses.\n'
                  'Understanding fire risks and adopting proactive safety measures are essential steps in protecting ourselves and our properties. While technology continues to advance our response capabilities, individual awareness and preparedness remain vital. By staying informed and prepared, we can significantly reduce the devastating impact of fires.\n'
                  'We encourage everyone to prioritize fire safety by installing detection systems, planning escape routes, and staying informed about fire management strategies. Together, we can build resilience against fires and protect our communities from harm.\n',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                SizedBox(height: 20),
                Text(
                  'Kaynakça:\n'
                  'Vikipedia',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
