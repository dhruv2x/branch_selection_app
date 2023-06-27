import 'package:flutter/material.dart';

class ReadSection extends StatelessWidget {
  final List<String> careerBranches = [
    'Computer Engineering',
    'Mechanical Engineering',
    'Electrical Engineering',
    'Civil Engineering',
    'Chemical Engineering',
    'Aerospace Engineering',
    'Biomedical Engineering',
    'Environmental Engineering',
    'Software Development',
    'Data Science',
    'Digital Marketing',
    'Graphic Design',
    'Finance',
    'Healthcare',
    'Education',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Career Branches'),
      ),
      body: ListView.builder(
        itemCount: careerBranches.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(careerBranches[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BranchDetailPage(careerBranch: careerBranches[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class BranchDetailPage extends StatelessWidget {
  final String careerBranch;

  BranchDetailPage({required this.careerBranch});

  @override
  Widget build(BuildContext context) {
    String details;
    if (careerBranch == 'Computer Engineering') {
      details = '''
        Computer Engineering is a discipline that combines elements of electrical engineering and computer science to design, develop, and maintain computer systems and their components. It encompasses a wide range of topics, including computer hardware, software engineering, digital systems, computer architecture, and more. Here's an overview of different aspects of computer engineering:

1. **Job Opportunities**: Computer engineering offers a diverse range of job opportunities in various sectors, including:

   - **Hardware Engineering**: Involves designing and developing computer hardware components such as processors, memory systems, circuit boards, and peripherals.
   - **Software Engineering**: Focuses on developing software applications, operating systems, and embedded systems for various devices and platforms.
   - **Network Engineering**: Involves designing and managing computer networks, including routers, switches, and communication protocols.
   - **Systems Engineering**: Deals with integrating hardware and software components to create complex computer systems and architectures.
   - **Embedded Systems**: Involves designing and developing computer systems integrated into other devices, such as microcontrollers used in cars, appliances, and medical equipment.
   - **Data Science and Artificial Intelligence**: Involves utilizing data analysis, machine learning, and AI techniques to extract insights and develop intelligent systems.
   - **Cybersecurity**: Focuses on protecting computer systems and networks from unauthorized access, attacks, and data breaches.

2. **Colleges and Universities**: Several renowned institutions offer excellent computer engineering programs. Some of the top-ranked colleges for computer engineering include:

   - Massachusetts Institute of Technology (MIT)
   - Stanford University
   - University of California, Berkeley
   - Carnegie Mellon University
   - California Institute of Technology (Caltech)
   - University of Illinois at Urbana-Champaign
   - University of Michigan, Ann Arbor
   - Georgia Institute of Technology
   - Purdue University
   - University of Texas at Austin

   However, it's important to note that the "best" college depends on individual preferences, location, financial considerations, and other factors. It's recommended to research and consider multiple factors before making a decision.

3. **Skills and Knowledge**: Computer engineering requires a combination of technical and problem-solving skills. Some essential skills for computer engineers include:

   - Proficiency in programming languages such as C++, Java, Python, and others.
   - Knowledge of computer architecture, digital logic design, and operating systems.
   - Strong analytical and problem-solving abilities.
   - Understanding of software development methodologies and tools.
   - Familiarity with networking concepts and protocols.
   - Knowledge of electronics, integrated circuits, and microprocessors.
   - Awareness of cybersecurity principles and best practices.

4. **Salary and Career Growth**: Computer engineering offers excellent salary potential and career growth opportunities. Salaries can vary based on factors such as experience, location, industry, and job role. Generally, computer engineering professionals enjoy competitive salaries and the potential for advancement. As you gain experience and expertise, you can progress to roles such as software architect, systems engineer, network administrator, or technology consultant.

5. **Emerging Trends**: Computer engineering is a dynamic field with several emerging trends and areas of focus, including:

   - **Artificial Intelligence and Machine Learning**: Applying AI and ML techniques to various domains, including autonomous vehicles, healthcare, finance, and robotics.
   - **Internet of Things (IoT)**: Developing and managing interconnected systems of devices and sensors for smart homes, cities, and industries.
   - **Cloud Computing**: Utilizing remote servers and virtualized resources to store, process, and manage data and applications.
   - **Cybersecurity**: Protecting computer systems, networks, and data from cyber threats and attacks.
   - **Quantum Computing**: Exploring the potential of quantum mechanics to develop powerful computing technologies.

It's worth noting that computer engineering

 is a rapidly evolving field, and staying updated with the latest advancements and technologies is crucial for professionals in this domain.
      ''';
    }
    else if (careerBranch == 'Mechanical Engineering') {
      details = '''
        Mechanical engineering is a branch of engineering that involves the design, analysis, and manufacturing of mechanical systems. It encompasses a wide range of activities, including the development of machines, engines, thermal and fluid systems, robotics, automation, and more. Mechanical engineers work in various industries, such as automotive, aerospace, energy, manufacturing, and consulting.

Here are some key categories related to mechanical engineering:

1. Core Subjects:
   - Mechanics: Statics, dynamics, and strength of materials.
   - Thermodynamics: Study of energy transfer and conversion.
   - Fluid Mechanics: Study of fluid behavior and its applications.
   - Materials Science: Understanding the properties and behavior of different materials.
   - Heat Transfer: Study of thermal energy transfer and its applications.
   - Manufacturing Processes: Techniques for shaping, joining, and assembling materials.

2. Job Opportunities:
   - Design Engineer: Developing and designing mechanical components and systems.
   - Manufacturing Engineer: Overseeing the production process and optimizing manufacturing methods.
   - Energy Engineer: Designing and implementing energy-efficient systems.
   - Automotive Engineer: Working on the design and development of vehicles.
   - Robotics Engineer: Creating and programming robots for various applications.
   - HVAC Engineer: Designing heating, ventilation, and air conditioning systems.
   - Aerospace Engineer: Working on aircraft and spacecraft design and development.
   - Research and Development: Conducting research to innovate new technologies and improve existing ones.

3. Best Colleges:
   - Massachusetts Institute of Technology (MIT)
   - Stanford University
   - California Institute of Technology (Caltech)
   - University of California, Berkeley
   - University of Cambridge (UK)
   - Imperial College London (UK)
   - ETH Zurich (Switzerland)
   - National University of Singapore (NUS)
   - Tsinghua University (China)
   - Indian Institute of Technology (IIT) - Bombay, Delhi, Kanpur, and more.

4. Skills Required:
   - Strong mathematical and analytical abilities.
   - Proficiency in computer-aided design (CAD) and other engineering software.
   - Problem-solving and critical-thinking skills.
   - Knowledge of manufacturing processes and materials.
   - Effective communication and teamwork skills.
   - Continuous learning and adaptability to new technologies.

5. Professional Societies and Organizations:
   - American Society of Mechanical Engineers (ASME)
   - Institution of Mechanical Engineers (IMechE)
   - Society of Automotive Engineers (SAE)
   - American Society of Heating, Refrigerating and Air-Conditioning Engineers (ASHRAE)
   - Robotics Industries Association (RIA)

Remember, this is just a brief overview of mechanical engineering. The field is vast and diverse, offering numerous opportunities for specialization and growth. It's always advisable to research and explore specific areas of interest within mechanical engineering to gain a deeper understanding.
      ''';
    } 
    else {
      // Add details for other career branches as needed
      details = 'Details for $careerBranch';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Branch Details'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          details,
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
