import 'package:flutter/material.dart';

class PolicyFormSlider extends StatefulWidget {
  final VoidCallback onClose;
  final Function(String name, int time) onSave;
  final bool isVisible;

  const PolicyFormSlider({
    super.key,
    required this.onClose,
    required this.onSave,
    required this.isVisible,
  });

  @override
  State<PolicyFormSlider> createState() => _PolicyFormSliderState();
}

class _PolicyFormSliderState extends State<PolicyFormSlider> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
      top: 0,
      bottom: 0,
      right: widget.isVisible ? 0 : -screenWidth,
      width: screenWidth * 0.85,
      child: Material(
        elevation: 16,
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "New Policy",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: widget.onClose,
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Fields
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _timeController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Time (in seconds)",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                const Spacer(),

                // Save Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      final name = _nameController.text.trim();
                      final time = int.tryParse(_timeController.text.trim()) ?? 0;
                      if (name.isNotEmpty) {
                        widget.onSave(name, time);
                        widget.onClose();
                      }
                    },
                    child: const Text("Save"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
