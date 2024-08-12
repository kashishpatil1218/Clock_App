# Clock Application

## Overview

The Clock Application is a versatile timekeeping tool that combines a range of features, including a digital and analog clock, alarms, timers, world clocks, and a stopwatch. Designed with a clean and intuitive interface, this app is perfect for everyday use.

## Features

- **Digital & Analog Clock**: Displays the current time in both digital and analog formats.
- **Alarm**: Set and manage multiple alarms with customizable settings.
- **Timer**: Simple and intuitive timer with start, pause, and reset functionalities.
- **World Clock**: Track the time in different cities across the world.
- **Stopwatch**: Accurate stopwatch for timing events with lap functionality.
- **Themes**: Choose from various themes to customize the look and feel of the app.
- **Notifications**: Receive notifications for alarms and timers even when the app is not open.

## Widgets

### 1. **ClockWidget**
   - **Description**: Displays the current time in either digital or analog format.
   - **Properties**:
     - `isAnalog`: `bool` - Determines whether the clock is in analog (`true`) or digital (`false`) mode.
     - `timeFormat`: `String` - Format for digital time (e.g., "HH:mm:ss").
     - `theme`: `ClockTheme` - Custom theme for the clock widget.

### 2. **AlarmWidget**
   - **Description**: Allows users to set and manage alarms.
   - **Properties**:
     - `alarms`: `List<Alarm>` - List of active alarms.
     - `onAddAlarm`: `Function(Alarm)` - Callback for adding a new alarm.
     - `onDeleteAlarm`: `Function(int)` - Callback for deleting an alarm.

### 3. **TimerWidget**
   - **Description**: A countdown timer with start, pause, and reset capabilities.
   - **Properties**:
     - `initialTime`: `Duration` - The initial duration for the timer.
     - `onTimerEnd`: `Function` - Callback triggered when the timer ends.
     - `onStart`: `Function` - Callback for starting the timer.
     - `onPause`: `Function` - Callback for pausing the timer.
     - `onReset`: `Function` - Callback for resetting the timer.
     - 
### 4. **StopwatchWidget**
   - **Description**: Tracks elapsed time with options to record laps.
   - **Properties**:
     - `onStart`: `Function` - Callback for starting the stopwatch.
     - `onPause`: `Function` - Callback for pausing the stopwatch.
     - `onReset`: `Function` - Callback for resetting the stopwatch.
     - `onLap`: `Function(Duration)` - Callback for recording a lap.

### 5. **ThemeSelectorWidget**
   - **Description**: Allows users to choose a theme for the app.
   - **Properties**:
     - `themes`: `List<ClockTheme>` - List of available themes.
     - `onThemeSelected`: `Function(ClockTheme)` - Callback when a theme is selected.

## Installation

To get started with the Clock Application:

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/clock-app.git
   ```
2. Navigate to the project directory:
   ```bash
   cd clock-app
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the application:
   ```bash
   flutter run
   ```

## Usage

- **Clock**: View the current time in digital or analog format.
- **Set Alarms**: Add, edit, or delete alarms from the Alarm tab.
- **Use Timer**: Start, pause, or reset the timer as needed.
- **World Clock**: Add cities to see the local time in different parts of the world.
- **Stopwatch**: Track time with the stopwatch, recording laps as necessary.
- **Change Themes**: Customize the app's appearance using the Theme Sele---
Here's a short README file for a Flutter project that showcases widgets like `ListView`, `Stack`, `OutlineButton`, `ListWheelScrollView`, and dynamic background changes based on time updates:

---
## Features

- **ListView**: A scrollable list of items, ideal for displaying long lists of data.
- **Stack**: A widget that allows for overlapping of child widgets, useful for creating layered UI designs.
- **OutlineButton**: A button with an outlined border, perfect for creating a distinct button style.
- **ListWheelScrollView**: A scrollable list that presents its children in a cylindrical wheel, creating a unique 3D scrolling effect.
- **Dynamic Background**: The background color of the app changes dynamically based on the time of day.

## Widgets and Properties

## Overview

This Flutter project demonstrates the usage of key widgets such as `ListView`, `Stack`, `OutlineButton`, `ListWheelScrollView`, and a dynamic background that changes based on time updates. The project provides examples to help developers understand how to implement and use these widgets effectively in a Flutter application.

## Features and Examples

### 1. **ListView**
   - **Description**: A scrollable list of items, suitable for displaying a large number of items in a single column or row.
   - **Example**:
     ```dart
     ListView(
       children: <Widget>[
         ListTile(title: Text('Item 1')),
         ListTile(title: Text('Item 2')),
         ListTile(title: Text('Item 3')),
       ],
     );
     ```
   - **Properties**:
     - `children`: List of widgets to be displayed in the list.
     - `scrollDirection`: Axis direction, either vertical (default) or horizontal.

### 2. **Stack**
   - **Description**: Overlays multiple widgets on top of each other, useful for creating complex layouts.
   - **Example**:
     ```dart
     Stack(
       children: <Widget>[
         Container(color: Colors.blue, height: 200, width: 200),
         Positioned(
           top: 50,
           left: 50,
           child: Container(color: Colors.red, height: 100, width: 100),
         ),
       ],
     );
     ```
   - **Properties**:
     - `children`: List of widgets to be stacked.
     - `alignment`: Aligns the children within the stack.

### 3. **OutlineButton**
   - **Description**: A button with a transparent background and an outlined border, offering a sleek and modern button style.
   - **Example**:
     ```dart
     OutlinedButton(
       onPressed: () {
         print('Button Pressed');
       },
       child: Text('Outline Button'),
     );
     ```
   - **Properties**:
     - `onPressed`: Callback function triggered when the button is pressed.
     - `child`: Widget inside the button, typically a `Text` widget.

### 4. **ListWheelScrollView**
   - **Description**: A scrollable list that displays its children in a cylindrical wheel format, creating a 3D-like scrolling effect.
   - **Example**:
     ```dart
     ListWheelScrollView(
       itemExtent: 50,
       children: <Widget>[
         Text('Item 1'),
         Text('Item 2'),
         Text('Item 3'),
       ],
     );
     ```
   - **Properties**:
     - `children`: List of widgets displayed in the wheel.
     - `itemExtent`: The height of each child in the scroll view.

### 5. **Dynamic Background Change**
   - **Description**: The background color of the app changes dynamically based on the current time, creating a visual indication of day and night.
   - **Example**:
     ```dart
     class DynamicBackground extends StatefulWidget {
       @override
       _DynamicBackgroundState createState() => _DynamicBackgroundState();
     }

     class _DynamicBackgroundState extends State<DynamicBackground> {
       Color backgroundColor = Colors.blue;

       @override
       void initState() {
         super.initState();
         updateBackground();
       }

       void updateBackground() {
         Timer.periodic(Duration(minutes: 1), (timer) {
           setState(() {
             var hour = DateTime.now().hour;
             backgroundColor = (hour >= 6 && hour < 18) ? Colors.blue : Colors.black;
           });
         });
       }

       @override
       Widget build(BuildContext context) {
         return Container(
           color: backgroundColor,
           child: Center(child: Text('Time-Based Background')),
         );
       }
     }
     ```
   - **Implementation**:
     - A `Timer` periodically checks the current time and updates the background color accordingly.

## Installation

To get started with the project:

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/flutter-widget-showcase.git
   ```
2. Navigate to the project directory:
   ```bash
   cd flutter-widget-showcase
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the application:
   ```bash
   flutter run
   ```

## Usage

- **ListView**: Scroll through a list of items in either a vertical or horizontal direction.
- **Stack**: Experiment with overlapping widgets to create complex UI designs.
- **OutlineButton**: Use outlined buttons for a modern, minimalistic UI.
- **ListWheelScrollView**: Explore the 3D scrolling effect with the ListWheelScrollView.
- **Dynamic Background**: Watch the background color change based on the time of day.


 <h2 align="center"> 🔶🔸Digital Clock🔸🔶</h2>
 <div>
<img src="https://github.com/user-attachments/assets/319dc70b-26cf-4d86-a659-6862301c4580"height=500px>
<img src="https://github.com/user-attachments/assets/ba3b536f-633f-4e75-8aca-c7d1afa729c7"height=500px>
<img src="https://github.com/user-attachments/assets/e53ddf16-8f9c-45fb-b0a5-5b7f2bd80a55"height=500px>
<img src="https://github.com/user-attachments/assets/d609b3bf-1aca-494e-8528-d3de28a26e6a"height=500px>
<img src="https://github.com/user-attachments/assets/5bead3fe-5ec6-4dc5-a8a7-d85a243df9ed"height=500px>
<img src="https://github.com/user-attachments/assets/17b24075-3247-495a-b702-bb4e340c97cf"height=500px>
<img src="https://github.com/user-attachments/assets/1e1a980c-0121-4383-9acb-f1dec2aa194d"height=500px>
</div>

<h2 align="center"> 🔶🔸Analogue Clock🔸🔶</h2> 
<div>
  <img src="https://github.com/user-attachments/assets/aa582d10-58b4-4a62-9389-b6e6ce076e81"height=500px>
   <img src="https://github.com/user-attachments/assets/eeb02d27-8353-408e-9729-99f8e8c86ec1"height=500px>
   <img src="https://github.com/user-attachments/assets/bf8b0e7f-f020-4040-aa2f-e02e5a1d3cd9"height=500px>
   <img src="https://github.com/user-attachments/assets/a1ab067b-08c3-4731-9cd6-564d106098c7"height=500px>
   <img src="https://github.com/user-attachments/assets/c16954a6-13cc-49b1-9b95-ba2155458223"height=500px>
   <img src="https://github.com/user-attachments/assets/010bb445-1c2f-4237-a6cf-af3ee6122fe8"height=500px>
</div>

<h2 align="center"> 🔶🔸Strap Clock🔸🔶</h2>
<div>
  <img src="https://github.com/user-attachments/assets/7e027139-c690-4ac5-b8a4-e392744580fa"height=500px>
  </div>
 
<h2 align="center"> 🔶🔸Timer Clock🔸🔶</h2>
<div>
  <img src="https://github.com/user-attachments/assets/62fe84c7-6bf5-4bbc-8834-380b5fd7504b"height=500px>
  </div>
<h2 align="center"> 🔶🔸Video🔸🔶</h2>


https://github.com/user-attachments/assets/45b046ea-7f2e-4fa0-a082-b88cf23709c1

