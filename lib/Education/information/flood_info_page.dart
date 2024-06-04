import 'package:flutter/material.dart';

class FloodInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flood Information',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        backgroundColor: const Color.fromARGB(255, 49, 49, 49),
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
                  'FLOODS\n',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Part 1: Introduction to Floods\n\n'
                  'Floods are among the most common and widespread of all natural disasters. They can occur with little to no warning and can cause extensive damage to landscapes, communities, and economies. But what exactly are floods, and why do they happen?\n\n'
                  'What Are Floods?\n'
                  'A flood is an overflow of water that submerges land that is usually dry. This can happen in a multitude of ways: through heavy rainfall overwhelming natural and artificial drainage systems, rivers overflowing their banks, storm surges pushing sea water inland, or dams and levees breaking. The impact of floods can vary greatly depending on the area'
                  's geography, climate, and human infrastructure.\n\n'
                  'Why Do Floods Occur?\n'
                  'Floods occur due to a variety of reasons, including intense rainfall, rapid melting of a large amount of snow, tsunami, or a high storm surge from a tropical cyclone. Human factors such as deforestation, urban development in floodplains, and poor drainage systems can exacerbate the natural causes and increase the flood risk.\n\n'
                  'The Importance of Understanding Floods\n'
                  'Understanding floods and their causes is crucial for disaster preparedness and mitigation. Knowledge about flood risks can help in planning effective flood defense systems, managing water resources, and developing flood warning systems. It also aids in the planning of settlements and infrastructure to minimize flood damage and ensure the safety of communities.\n\n'
                  'Part 2: The Science Behind Floods\n\n'
                  'The science behind floods is complex, involving hydrological and meteorological factors. Understanding these can help predict floods and mitigate their impact. This part delves into the mechanisms of flood generation and the factors contributing to flood events.\n\n'
                  'Hydrological Cycle and Floods\n'
                  'The hydrological cycle plays a key role in flood dynamics. Excessive rainfall or snowmelt exceeds the land'
                  's absorption capacity or the capacity of rivers and lakes, leading to floods. The cycle'
                  's components—evaporation, condensation, precipitation, and runoff—interact in ways that can exacerbate or mitigate flooding.\n\n'
                  'Types of Floods\n'
                  'Floods can be categorized into several types, including:\n'
                  'River floods, caused by prolonged rainfall over a large area.Flash floods, resulting from intense rainfall over a short duration.Coastal floods, caused by storm surges associated with tropical cyclones.\n'
                  'Urban floods, resulting from runoff exceeding drainage capacity in urban areas.\n'
                  'Contributing Factors to Floods\n'
                  'Several factors contribute to flooding, including topography, soil saturation levels, snowpack conditions, and human activities such as land use changes and construction in flood-prone areas.\n\n'
                  'Part 3: Measuring and Classifying Floods\n\n'
                  'Measuring and classifying floods are essential for assessing their potential impact and implementing appropriate response measures. This section explores the tools and scales used to measure and classify flood events.\n\n'
                  'Flood Measurement Techniques\n'
                  'Floods are measured using gauges along rivers and coastlines that monitor water levels. Remote sensing technologies, such as satellites and radar, provide data on rainfall amounts, flood extent, and affected areas.\n\n'
                  'Flood Risk Assessment\n'
                  'Flood risk assessment involves analyzing flood frequency, magnitude, and potential impacts to identify areas at risk of flooding. This information is crucial for urban planning, emergency preparedness, and flood insurance.\n\n'
                  'Part 4: Flood Preparedness and Safety Measures\n\n'
                  'Being prepared for a flood can significantly reduce the risks to life and property. This section provides essential guidelines and safety measures to help individuals and communities prepare for, survive, and recover from floods.\n\n'
                  'Before a Flood: Preparation\n'
                  'Create an emergency kit with essential items such as water, non-perishable food, medications, and important documents.\n'
                  'Know your area'
                  's flood risk and understand the local flood warning systems.\n'
                  'Develop a family emergency plan that includes evacuation routes and meeting points.\n'
                  'Elevate electrical panels, sockets, and appliances in areas prone to flooding.\n\n'
                  'During a Flood: Safety Actions\n'
                  'Follow evacuation orders from local authorities and evacuate early if possible.\n'
                  'Avoid walking or driving through floodwaters. Just 6 inches of moving water can knock you down, and one foot of moving water can sweep your vehicle away.\n'
                  'Stay away from downed power lines and electrical wires.\n'
                  'Listen to the radio or check online for emergency updates and instructions.\n'
                  '\nAfter a Flood: Recovery and Safety\n'
                  'Return home only when authorities say it is safe to do so.\n'
                  'Inspect your home for damage carefully. Wear protective clothing and be cautious of waterborne diseases.\n'
                  'Document any property damage with photographs for insurance purposes.\n'
                  'Clean and disinfect everything that got wet to prevent health hazards.\n\n'
                  'Part 5: The Role of Technology in Flood Prediction and Response\n\n'
                  'Advancements in technology have significantly impacted our ability to predict and respond to floods. From early warning systems to post-flood recovery efforts, technology plays a crucial role in minimizing the impact of floods on lives and property.\n\n'
                  'Flood Prediction and Monitoring\n'
                  'Modern technology allows for accurate flood forecasting through the use of hydrological models, weather prediction data, and satellite imagery. Real-time monitoring systems provide vital information on water levels and flood progression.\n\n'
                  'Early Warning Systems\n'
                  'Early warning systems utilize sophisticated forecasting models and real-time data to alert communities of impending floods, allowing for timely evacuations and preparations.\n\n'
                  'Post-Flood Response and Recovery\n'
                  'Technology aids in the aftermath of a flood through the use of drones for rapid damage assessment, mobile applications for coordinating aid distribution, and social media platforms for communication among affected communities and responders.\n\n'
                  'Conclusion\n\n'
                  'This series has explored the critical aspects of flood risks, from understanding how and why floods occur to implementing effective preparedness and safety measures. We'
                  've also examined how technology enhances our ability to predict, detect, and respond to floods, thereby safeguarding communities and reducing potential losses.\n\n'
                  'Understanding flood risks and adopting proactive safety measures are essential steps in protecting ourselves and our properties. While technology continues to advance our response capabilities, individual awareness and preparedness remain vital. By staying informed and prepared, we can significantly reduce the devastating impact of floods.\n\n'
                  'We encourage everyone to prioritize flood safety by understanding local flood risks, preparing emergency kits and plans, and staying informed about the latest developments in flood management strategies. Together, we can enhance our resilience against floods and protect our communities from harm.\n\n',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                SizedBox(height: 20),
                Text(
                  'Reference:\n'
                  'Wikipedia',
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
