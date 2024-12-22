import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dashboard_screen.dart';
import 'attendance_history_screen.dart';

class ActivityTrackingScreen extends StatelessWidget {
  const ActivityTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 1,
        title: Row(
          children: [
            Icon(LucideIcons.dumbbell, 
                color: Theme.of(context).colorScheme.primary, size: 24),
            const SizedBox(width: 8),
            Text('Activity Tracker',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 18,
                    fontWeight: FontWeight.w600)),
          ],
        ),
        actions: [
          Icon(LucideIcons.bell, 
              color: Theme.of(context).colorScheme.onSecondary, size: 24),
          const SizedBox(width: 12),
          Icon(LucideIcons.settings, 
              color: Theme.of(context).colorScheme.onSecondary, size: 24),
          const SizedBox(width: 16),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 80),
        children: [
          // Today's Progress
          Card(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Today\'s Progress',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.onSurface)),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              Icon(LucideIcons.activity,
                                  color: Theme.of(context).colorScheme.primary),
                              const SizedBox(height: 4),
                              Text('Calories',
                                  style: TextStyle(
                                      color: Theme.of(context).colorScheme.onSecondary,
                                      fontSize: 14)),
                              Text('456',
                                  style: TextStyle(
                                      color: Theme.of(context).colorScheme.primary,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              Icon(LucideIcons.clock,
                                  color: Theme.of(context).colorScheme.secondary),
                              const SizedBox(height: 4),
                              Text('Duration',
                                  style: TextStyle(
                                      color: Theme.of(context).colorScheme.onSecondary,
                                      fontSize: 14)),
                              Text('45m',
                                  style: TextStyle(
                                      color: Theme.of(context).colorScheme.secondary,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: const Color(0xFF06B6D4).withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              Icon(LucideIcons.target,
                                  color: const Color(0xFF06B6D4)),
                              const SizedBox(height: 4),
                              Text('Goals',
                                  style: TextStyle(
                                      color: Theme.of(context).colorScheme.onSecondary,
                                      fontSize: 14)),
                              Text('2/3',
                                  style: TextStyle(
                                      color: const Color(0xFF06B6D4),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),

          // Current Workout
          Card(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Current Workout',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.onSurface)),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(LucideIcons.plus, size: 16),
                        label: const Text('Add Exercise'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).colorScheme.primary,
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            'https://storage.googleapis.com/cades-dev.appspot.com/projects/ZDynC6XpoSqxroubbmbn/assets/0_13cf247d-cc3d-4b78-bc2f-072c75f1bb63.webp',
                            width: 64,
                            height: 64,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Bench Press',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color:
                                          Theme.of(context).colorScheme.onSurface)),
                              Text('3 sets • 12 reps',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondary,
                                      fontSize: 14)),
                              Row(
                                children: [
                                  Icon(LucideIcons.weight,
                                      size: 16,
                                      color: Theme.of(context).colorScheme.primary),
                                  const SizedBox(width: 8),
                                  Text('65 kg',
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontSize: 14)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Icon(LucideIcons.checkCircle,
                            color: const Color(0xFF10B981)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          decoration: BoxDecoration(
                            color: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(LucideIcons.dumbbell,
                              size: 32,
                              color: Theme.of(context).colorScheme.secondary),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Shoulder Press',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color:
                                          Theme.of(context).colorScheme.onSurface)),
                              Text('4 sets • 10 reps',
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondary,
                                      fontSize: 14)),
                              Row(
                                children: [
                                  Icon(LucideIcons.weight,
                                      size: 16,
                                      color: Theme.of(context).colorScheme.primary),
                                  const SizedBox(width: 8),
                                  Text('40 kg',
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          fontSize: 14)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Icon(LucideIcons.circle,
                            color: const Color(0xFFCBD5E1)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),

          // Weekly Progress
          Card(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Weekly Progress',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.onSurface)),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        _buildProgressBar(context, 0.6, 80),
                        _buildProgressBar(context, 0.8, 128),
                        _buildProgressBar(context, 0.4, 96),
                        _buildProgressBar(context, 0.9, 144),
                        _buildProgressBar(context, 0.7, 112),
                        _buildProgressBar(context, 0.3, 64),
                        Container(
                          width: 32,
                          height: 96,
                          decoration: BoxDecoration(
                            color: const Color(0xFF06B6D4),
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(8)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildDayLabel('M'),
                      _buildDayLabel('T'),
                      _buildDayLabel('W'),
                      _buildDayLabel('T'),
                      _buildDayLabel('F'),
                      _buildDayLabel('S'),
                      _buildDayLabel('S'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.surface,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(context).colorScheme.onSecondary,
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.activity),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.calendar),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(LucideIcons.user),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const DashboardScreen()),
            );
          } else if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const AttendanceHistoryScreen()),
            );
          }
        },
      ),
    );
  }

  Widget _buildProgressBar(BuildContext context, double progress, double height) {
    return Container(
      width: 32,
      height: height,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 32,
            height: height * progress,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDayLabel(String day) {
    return SizedBox(
      width: 32,
      child: Text(
        day,
        style: const TextStyle(
          fontSize: 14,
          color: Color(0xFF475569),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}