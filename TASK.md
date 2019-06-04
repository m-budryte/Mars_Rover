**Note:**

- For the solution, we request that you use Java, JavaScript, Python, Clojure, Ruby or C#.
- The problem below requires some kind of input. You are free to implement any mechanism for feeding input into your solution(e.g hard coded data within the unit test). You should provide sufficient evidence that your solution is complete by, as a minimum, indicating that it would work correctly against the supplied test data.
- The application must run
- You should provide sufficient evidence that your solution is complete by indicating that it works correctly against the supplied test data

**Rules:**

1. You may not use any external libraries to solve this problem, but you may use external libraries or tools for building or testing purposes. Specifically, you may use unit-testing libraries or build tools available for your chosen language (e.g., JUnit, Ant, NUnit, Rspec, Rake, etc.).
2. System security is very important to us and certain file extensions will be blocked for security purposes, resulting in delays to your application. You should NOT include any executable attachments, including those with .exe or .lib extensions. We need to be able to run and build your code ourselves, so please submit your code as a zipped file of source code and supporting files, without any compiled code. If you're submitting in C#, please do not submit your code as a .msi file.
3. Please include a brief explanation of your design and assumptions, along with your code, as well as detailed instructions to run your application.
4. We assess a number of things including the design aspect of your solution and your object oriented programming skills. While these are small problems, we expect you to submit what you believe is production-quality code; code that you’d be able to run, maintain, and evolve. You don’t need to gold plate your solution, however we are looking for something more than a bare-bones algorithm.
5. We want our hiring process to be fair, and for everyone to start from the same place. To enable this, we request that you do not share or publish these problems.
Please DO NOT write your name on your submission, as we want to ensure that we have an unbiased assessment process.
6. Please compress your files into a single .zip file before upload. Kindly ensure there are no executables in your submission. Our system blocks executable files for security purposes, and we want to avoid any delays in your process.

**Executables include asp, bat, class, cmd, com, cpl, dll, exe, fon, hta, ini, ins, iw, jar, jsp, jse, pif, scr, shs, sh, vb, vbe, vbs, ws, wsc, wsf, wsh & msi**

**Problem: Mars Rover**

A squad of robotic rovers are to be landed by NASA on a plateau on Mars. This plateau, which is curiously rectangular, must be navigated by the rovers so that their on-board cameras can get a complete view of the surrounding terrain to send back to Earth.

A rover’s position and location is represented by a combination of x and y co-ordinates and a letter representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North.

In order to control a rover, NASA sends a simple string of letters. The possible letters are ‘L’, ‘R’ and ‘M’. ‘L’ and ‘R’ makes the rover spin 90 degrees left or right respectively, without moving from its current spot. ‘M’ means move forward one grid point, and maintain the same heading.

Assume that the square directly North from (x, y) is (x, y+1).

**Input**
- The first line of input is the upper-right coordinates of the plateau, the lower-left coordinates are assumed to be 0,0.
- The rest of the input is information pertaining to the rovers that have been deployed. Each rover has two lines of input. The first line gives the rover’s position, and the second line is a series of instructions telling the rover how to explore the plateau.
- The position is made up of two integers and a letter separated by spaces, corresponding to the x and y co-ordinates and the rover’s orientation.
- Each rover will be finished sequentially, which means that the second rover won’t start to move until the first one has finished moving.

 **Output**
 - The output for each rover should be its final co-ordinates and heading.
