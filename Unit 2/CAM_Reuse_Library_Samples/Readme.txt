CAM Reuse Library Samples: Setup Hardware and Work-Holding Devices
 
Works with NX Version:  NX 8
CAM Reuse Library Samples Version: Workholding_8.a.1
 
Description:
This zip file (CAM Reuse Library Samples.zip) contains the files (prt, xls, krx, bmp) needed to define a sample set of reusable setup hardware and work-holding devices useful to NC programmers using NX CAM.  Follow the instructions below to add this sample library to your NX Reuse Library.
 
Sample Library Contents:
+Setup hardware (angle plates, bushing, cap screws, c-clamp, clamp strap block, clamp straps, I-parallels,  modular-plates, parallels, pull stud, rectangular blocks, round standoffs, T-bolt and nut, threaded studs, v-blocks)
+Work-holding (3 jaw chucks, air chuck, collet adapters, milling vise, tomb stones) 
+All parts in the sample library are English units (inch) parts. 
 
Installation Instructions:
+Extract the contents of CAM Reuse Library Samples.zip into an accessible folder on your computer (example:  D:/CAM Reuse Library). Note that you if you want to share this library with your group, you can extract the contents to a shared folder on your network).
+Start the NX 8 application.
+Click File -> Utilities -> Customer Defaults. 
+In the Customer Defaults dialog under the Gateway section, click Reuse Library.
+In the General tab, under Native NX in the Libraries Organized by Native Folder section, enter the path to the top folder of the extracted files (example: CAM Reuse Library Samples | D:/CAM Reuse Library). Each line in this field defines a library.  The string before the "|" is the library name, the string after is the path. Note that the path in NX uses a forward-slash "/" to separate the folders in the file structure. Click OK.
+Exit NX.
+The next time you start NX, CAM Reuse Library Samples will be loaded in your Resource Bar under the Reuse Library.
 
Instructions for Using the Components in the Reuse Library:
+Start the NX 8 application.
+Open an existing CAM setup. Start the Modeling application and turn on Assemblies. 
+Access the Reuse Library from the Resource Bar.
+Expand CAM Reuse Library Samples then expand Hardware. Click the For Setups folder.  Expand the Member Select pane.  
+Drag and drop the C-Clamp into the graphics window.
+In the Add Reusable Component dialog, specify the Primary Parameters. (You can also change the Values in the Details area by double-clicking the value and entering a new value.) Assemble the component into your CAM setup as necessary. Click OK.
+Repeat for any other required setup components.
+Start the Manufacturing application. Proceed to create your NC program and setup documentation.


You can find more information about the Reuse Library in NX Help under Data Reuse -> Reuse Library.

If you have any questions or comments about this library, please feel free to post them to the NX for Manufacturing Webinars forum (https://bbs.industrysoftware.automation.siemens.com/vbulletin/forumdisplay.php?f=243).
