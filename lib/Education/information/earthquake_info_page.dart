import 'package:flutter/material.dart';

class EarthquakeInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Earthquake Information',
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
                  'EARTHQUAKES\n',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Part 1: Introduction to Earthquakes\n\n'
                  'Earthquakes represent one of nature'
                  's most powerful and awe-inspiring phenomena. They occur without warning, causing the ground to shake, sometimes with devastating force. But what exactly are earthquakes, and why do they happen?\n\n'
                  'What Are Earthquakes?\n'
                  'At its core, an earthquake is the result of the sudden release of energy in the Earth\'s crust that creates seismic waves. '
                  'This energy release is most often caused by the movement of tectonic plates, vast pieces of the Earth\'s surface that move very slowly over its semi-fluid upper mantle. '
                  'The boundaries where these plates meet are prone to accumulating stress over time. '
                  'When the stress exceeds the strength of rocks making up the Earth\'s crust, it results in a fracture or a slip along a fault line, thereby releasing energy in the form of an earthquake.\n\n'
                  'Why Do Earthquakes Occur?\n'
                  'The Earth\'s lithosphere, which includes the crust and the uppermost mantle, is divided into several large and small tectonic plates. '
                  'These plates are constantly moving, but not always smoothly. '
                  'The energy that accumulates from the moving plates or as a result of volcanic activity can lead to earthquakes. '
                  'The interaction of these plates can occur in several ways:\n\n'
                  '- Convergent boundaries, where plates move toward each other, often leading to powerful, destructive earthquakes.\n'
                  '- Divergent boundaries, where plates move apart, usually causing less severe earthquakes.\n'
                  '- Transform boundaries, where plates slide past one another horizontally, which can also lead to significant seismic activity.\n\n'
                  'The Importance of Studying Earthquakes\n'
                  'Understanding earthquakes and their causes is crucial for several reasons. '
                  'First, it allows scientists to develop better methods for predicting potential earthquakes, aiming to reduce the impact on human life and property. '
                  'Additionally, studying earthquakes helps in designing buildings and infrastructure that can withstand the shaking, especially in regions that are most vulnerable to seismic activity. '
                  'Moreover, earthquake research contributes to our overall understanding of the Earth\'s geology and tectonic processes, offering insights into the dynamic nature of our planet.\n\n'
                  'Part 2: The Science Behind Earthquakes\n'
                  'Earthquakes are fascinating natural events with complex causes and effects. '
                  'This part explores the scientific principles that explain how and why earthquakes occur, focusing on tectonic plates, fault lines, and seismic waves.\n\n'
                  'Tectonic Plates and Fault Lines\n'
                  'The Earth\'s lithosphere is divided into several large and a number of smaller tectonic plates. '
                  'These plates float on the semi-fluid asthenosphere beneath them. '
                  'Tectonic plates move very slowly, driven by convection currents within the Earth\'s mantle. '
                  'The edges of these plates, where they meet, are known as fault lines. '
                  'It\'s along these fault lines that most earthquakes occur. '
                  'The movement of these plates can cause them to collide (convergent boundary), pull apart (divergent boundary), or slide past each other (transform boundary).\n\n'
                  'The Process of Energy Release\n'
                  'When stress along a fault line overcomes the friction holding the plates in place, it causes an earthquake. '
                  'This stress can build up over many years, even centuries. '
                  'When it\'s released, it happens very rapidly, sending shockwaves through the Earth\'s crust. '
                  'These shockwaves are what we feel as the shaking of the ground during an earthquake.\n\n'
                  'Types of Seismic Waves\n'
                  'Seismic waves are the waves of energy caused by the sudden breaking of rock within the Earth or an explosion. '
                  'They are the energy that travels through the Earth and is recorded on seismographs. '
                  'There are three main types of seismic waves:\n\n'
                  '- P-waves (Primary waves) are the fastest seismic waves and can move through solid, liquid, or gas. '
                  'They cause particles in the material to move in the same direction as the wave is traveling.\n'
                  '- S-waves (Secondary waves) are slower than P-waves and can only move through solids. '
                  'They cause particles to move perpendicular to the direction of the wave.\n'
                  '- Surface waves travel along the Earth\'s surface and cause most of the damage during an earthquake. '
                  'They are slower than P and S waves but can be much larger in amplitude.\n\n'
                  'Part 3: Measuring Earthquakes\n'
                  'Understanding the magnitude and epicenter of an earthquake is crucial for assessing its potential impact. '
                  'This section explores the tools and scales used to measure and classify earthquakes.\n\n'
                  'Richter Scale and Moment Magnitude Scale\n'
                  'The Richter Scale was developed in 1935 by Charles F. Richter and is used to quantify the energy released by an earthquake. '
                  'It\'s a logarithmic scale, meaning each whole number increase represents a tenfold increase in measured amplitude and roughly 31.6 times more energy release. '
                  'However, for large earthquakes, the Moment Magnitude Scale (Mw) is now more commonly used as it provides a more accurate measure of an earthquake\'s total energy release.\n\n'
                  'Seismographs and Seismometers\n'
                  'Seismographs, or seismometers, are instruments that detect and record the vibrations caused by earthquakes. '
                  'By measuring the amplitude and frequency of ground motion, they help determine the magnitude and location of an earthquake. '
                  'Modern seismographs are highly sensitive, capable of detecting movements of the Earth\'s surface as small as a nanometer.\n\n'
                  'Earthquake Epicenters and Hypocenters\n'
                  'The epicenter is the point on the Earth\'s surface directly above where an earthquake originates, known as the hypocenter or focus. '
                  'Determining the epicenter is crucial for understanding the potential impact area and for issuing warnings to affected regions. '
                  'The depth of the hypocenter can significantly influence the intensity of the earthquake\'s surface shaking.\n\n'
                  'Part 4: Earthquake Preparedness and Safety Measures\n'
                  'Being prepared for an earthquake can significantly reduce the risks to life and property. '
                  'This section provides essential guidelines and safety measures to help individuals and communities prepare for, survive, and recover from fires.\n\n'
                  'Before a Fire: Preparation\n'
                  'Install smoke alarms on every level of your home, inside bedrooms and outside sleeping areas.\n'
                  'Test smoke alarms every month and replace batteries at least once a year.\n'
                  'Have a fire escape plan that includes two ways out of every room and an outside meeting place.\n'
                  'Keep fire extinguishers in key locations and ensure everyone knows how to use them.\n\n'
                  'During a Fire: Safety Actions\n'
                  'If a fire occurs, get out, stay out, and call for help. Do not go back inside for anything or anyone.\n'
                  'Crawl low under any smoke to your exit - heavy smoke and poisonous gases collect first along the ceiling.\n'
                  'If you encounter smoke when using your primary exit, use an alternative way out.\n'
                  'If you are trapped, seal the room and cover vents and cracks around doors with cloth or tape to keep smoke out.\n\n'
                  'After a Fire: Recovery and Safety\n'
                  'Once you are out, stay out. Firefighters will assist in saving your possessions.\n'
                  'If you are told to evacuate, do so immediately.\n'
                  'Check yourself and family members for injuries and get medical attention if necessary.\n'
                  'Listen to news updates for information about the fire and any evacuation orders.\n'
                  'Part 5: The Role of Technology in Fire Detection and Response\n'
                  'Advancements in technology have significantly impacted our ability to detect and respond to fires. '
                  'From early warning systems to post-fire recovery efforts, technology plays a crucial role in minimizing the impact of fires on lives and property.\n\n'
                  'Fire Detection and Alarm Systems\n'
                  'Modern smoke detectors and fire alarm systems use advanced sensors to detect fire and smoke at the earliest stages, providing crucial time for evacuation.\n\n'
                  'Remote Sensing and Drones\n'
                  'Drones and satellite technology provide real-time imagery and data to monitor wildfire spread, helping to allocate firefighting resources more effectively.\n\n'
                  'Post-Fire Assessment and Recovery\n'
                  'Technology aids in assessing damage, identifying the fire\'s cause, and planning reconstruction. '
                  'Mobile apps and online platforms facilitate aid distribution and community support.\n\n'
                  'Conclusion\n'
                  'This series has explored the critical aspects of fire safety, from understanding fire dynamics to implementing effective preparedness and safety measures. '
                  'We\'ve also examined how technology enhances our ability to predict, detect, and respond to fires, thereby safeguarding communities and reducing potential losses.\n\n'
                  'Understanding fire risks and adopting proactive safety measures are essential steps in protecting ourselves and our properties. '
                  'While technology continues to advance our response capabilities, individual awareness and preparedness remain vital. '
                  'By staying informed and prepared, we can significantly reduce the devastating impact of fires.\n\n'
                  'We encourage everyone to prioritize fire safety by installing detection systems, planning escape routes, and staying informed about fire management strategies. '
                  'Together, we can build resilience against fires and protect our communities from harm.'
                  'Conclusion\n'
                  'This series has explored the critical aspects of fire safety, from understanding fire dynamics to implementing effective preparedness and safety measures. '
                  'We\'ve also examined how technology enhances our ability to predict, detect, and respond to fires, thereby safeguarding communities and reducing potential losses.\n\n'
                  'Understanding fire risks and adopting proactive safety measures are essential steps in protecting ourselves and our properties. '
                  'While technology continues to advance our response capabilities, individual awareness and preparedness remain vital. '
                  'By staying informed and prepared, we can significantly reduce the devastating impact of fires.\n\n'
                  'We encourage everyone to prioritize fire safety by installing detection systems, planning escape routes, and staying informed about fire management strategies. '
                  'Together, we can build resilience against fires and protect our communities from harm.',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                SizedBox(height: 20),
                Text(
                  'Kaynakça:\n'
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
