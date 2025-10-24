import 'package:flutter/material.dart';
import '../widgets/policy_form_slider.dart';

class PoliciesPage extends StatefulWidget {
  const PoliciesPage({super.key});

  @override
  State<PoliciesPage> createState() => _PoliciesPageState();
}

class _PoliciesPageState extends State<PoliciesPage> {
  bool _showPanel = false;

  void _handleSave(String name, int time) {
    debugPrint("Saved policy: $name ($time seconds)");
    // TODO: Add Isar save logic here
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(title: const Text('Wellbeing')),
          body: const Center(child: Text('No policies defined yet.')),
          floatingActionButton: FloatingActionButton(
            onPressed: () => setState(() => _showPanel = true),
            child: const Icon(Icons.add),
          ),
        ),

        // Optional: Dim background
        if (_showPanel)
          Positioned.fill(
            child: GestureDetector(
              onTap: () => setState(() => _showPanel = false),
              child: Container(color: Colors.black45),
            ),
          ),

        // Slide-in form
        PolicyFormSlider(
          isVisible: _showPanel,
          onClose: () => setState(() => _showPanel = false),
          onSave: _handleSave,
        ),
      ],
    );
  }
}
