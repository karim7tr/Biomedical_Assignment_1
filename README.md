# Biomedical_Assignment_1

# EMG Signal Processing and Control using MATLAB and Simulink

This repository focuses on the preprocessing of Electromyography (EMG) signals and the development of EMG-based control systems using MATLAB and Simulink. The primary objectives are:

### 1. MATLAB Exercise: Preprocessing EMG Signals
- **Band-Pass Filtering:** Employ a 30-450 Hz band-pass filter to eliminate unwanted frequencies, emphasizing muscle-related information.
  
- **Rectification:** Transform the filtered EMG signal into a full-wave signal by removing negative values through absolute value computation.

- **Envelope Computation:** Compute the envelope of the rectified signal using a low-pass filter with a cutoff frequency of 5 Hz, providing a smoother representation of muscle activity.

- **Downsampling:** Reduce data size by downsampling the envelope, enhancing efficiency and storage capabilities.

- **Analysis Questions:**
  - Explore the significance of down-sampling after envelope computation.
  - Investigate the temporal relationship between muscle activation and movement by synchronizing EMG signals and motion data.

### 2. Simulink Exercise: Cursor Control with EMG Signals
#### Case Studies:
- **Case 1:** Cursor movement to horizontal and vertical target points based on threshold comparison of processed EMG signals.
  
- **Case 2:** Cursor movement to diagonal target points by combining signals from two muscles.

- **Case 3:** Configuration for reaching 8 target points using a step block for system transitions.

#### Further Methods Explored:
- **Linear Assignment:** Directly assign muscle signals to X and Y coordinates for cursor control.
  
- **Velocity-Based Control:** Map EMG signals to cursor vertical and horizontal velocity, limiting movement by predefined thresholds.

The Simulink models incorporate essential components such as workspace import, threshold comparison, filtering for noise reduction, and downsampling. The overall goal is to demonstrate the feasibility of controlling a cursor through EMG signals, laying the foundation for potential applications in robotic systems and assistive devices.
