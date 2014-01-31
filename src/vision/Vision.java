package vision;

import org.lwjgl.opengl.Display;
import org.lwjgl.opengl.DisplayMode;
import org.lwjgl.opengl.GL11;
import org.lwjgl.util.glu.GLU;
import org.lwjgl.input.Keyboard;

public class Vision {

	/**
	 * When exit indicated, done with window, stop rendering etc.
	 */
	private boolean done = false;
	/**
	 * Window title.
	 */
    private final String windowTitle = "3D Java Face Vision";

    /**
     * Rotation angle for the cube.
     */
    private static float cubeRotationX;
    private static float cubeRotationY;
    /**
     * Instance of LocateFace class.
     */
    private static LocateFace lf;
    private static float distance;
    private static float xRotateScaleFactor = (float) 0.3;
    private static float yRotateScaleFactor = (float) 0.3;

    /**
     * Main function - creates instance of vision and LocateFace, then runs.
     * @param args
     */
    public static void main(String args[]) {
        Vision v = new Vision();
        lf = new LocateFace();
        v.run();
    }
    
    /**
     * While done not indicated, updates the values for distance and angle of 
     * face.  Then calls the mainloop, render and updates the display.
     */
    public void run() {
        try {
            init();
            while (!done) {
        		if(lf.getLocation()) {
        			distance=lf.getDistance();
        			cubeRotationX=lf.getHorizontalAngle()*xRotateScaleFactor;
        			cubeRotationY=lf.getVerticalAngle()*yRotateScaleFactor;
        		}
                mainloop();
                render();
                Display.update();
            }
            // If done indicated, call clean up.
            cleanup();
        }
        catch (Exception e) {
            e.printStackTrace();
            System.exit(0);
        }
    }
    
    
    private void mainloop() {
        if(Keyboard.isKeyDown(Keyboard.KEY_ESCAPE)) {       // Exit if Escape is pressed
            done = true;
        }
        if(Display.isCloseRequested()) {                     // Exit if window is closed
            done = true;
        }
    }

    private boolean render() {
    	// Clear The Screen And The Depth Buffer
        GL11.glClear(GL11.GL_COLOR_BUFFER_BIT | GL11.GL_DEPTH_BUFFER_BIT);

        // Reset The Current Modelview Matrix
        GL11.glLoadIdentity();
        // Move Right 1.5 Units And Into The Screen 6.0
        GL11.glTranslatef(0.0f,0.0f,-9.0f+(distance/120));
        // Do X Rotation on the cube.
        GL11.glRotatef(cubeRotationX,0.0f,1.0f,0.0f);
        // Do Y Rotation on the cube.
        GL11.glRotatef(cubeRotationY,1.0f,0.0f,0.0f);
        // Copy pasted this block for the vertexe of the cube.
        GL11.glColor3f(0.5f,0.5f,1.0f);                 // Set The Color To Blue One Time Only
        GL11.glBegin(GL11.GL_QUADS);                        // Draw A Quad
            GL11.glColor3f(0.0f,1.0f,0.0f);             // Set The Color To Green
            GL11.glVertex3f( 1.0f, 1.0f,-1.0f);         // Top Right Of The Quad (Top)
            GL11.glVertex3f(-1.0f, 1.0f,-1.0f);         // Top Left Of The Quad (Top)
            GL11.glVertex3f(-1.0f, 1.0f, 1.0f);         // Bottom Left Of The Quad (Top)
            GL11.glVertex3f( 1.0f, 1.0f, 1.0f);         // Bottom Right Of The Quad (Top)
            GL11.glColor3f(1.0f,0.5f,0.0f);             // Set The Color To Orange
            GL11.glVertex3f( 1.0f,-1.0f, 1.0f);         // Top Right Of The Quad (Bottom)
            GL11.glVertex3f(-1.0f,-1.0f, 1.0f);         // Top Left Of The Quad (Bottom)
            GL11.glVertex3f(-1.0f,-1.0f,-1.0f);         // Bottom Left Of The Quad (Bottom)
            GL11.glVertex3f( 1.0f,-1.0f,-1.0f);         // Bottom Right Of The Quad (Bottom)
            GL11.glColor3f(1.0f,0.0f,0.0f);             // Set The Color To Red
            GL11.glVertex3f( 1.0f, 1.0f, 1.0f);         // Top Right Of The Quad (Front)
            GL11.glVertex3f(-1.0f, 1.0f, 1.0f);         // Top Left Of The Quad (Front)
            GL11.glVertex3f(-1.0f,-1.0f, 1.0f);         // Bottom Left Of The Quad (Front)
            GL11.glVertex3f( 1.0f,-1.0f, 1.0f);         // Bottom Right Of The Quad (Front)
            GL11.glColor3f(1.0f,1.0f,0.0f);             // Set The Color To Yellow
            GL11.glVertex3f( 1.0f,-1.0f,-1.0f);         // Bottom Left Of The Quad (Back)
            GL11.glVertex3f(-1.0f,-1.0f,-1.0f);         // Bottom Right Of The Quad (Back)
            GL11.glVertex3f(-1.0f, 1.0f,-1.0f);         // Top Right Of The Quad (Back)
            GL11.glVertex3f( 1.0f, 1.0f,-1.0f);         // Top Left Of The Quad (Back)
            GL11.glColor3f(0.0f,0.0f,1.0f);             // Set The Color To Blue
            GL11.glVertex3f(-1.0f, 1.0f, 1.0f);         // Top Right Of The Quad (Left)
            GL11.glVertex3f(-1.0f, 1.0f,-1.0f);         // Top Left Of The Quad (Left)
            GL11.glVertex3f(-1.0f,-1.0f,-1.0f);         // Bottom Left Of The Quad (Left)
            GL11.glVertex3f(-1.0f,-1.0f, 1.0f);         // Bottom Right Of The Quad (Left)
            GL11.glColor3f(1.0f,0.0f,1.0f);             // Set The Color To Violet
            GL11.glVertex3f( 1.0f, 1.0f,-1.0f);         // Top Right Of The Quad (Right)
            GL11.glVertex3f( 1.0f, 1.0f, 1.0f);         // Top Left Of The Quad (Right)
            GL11.glVertex3f( 1.0f,-1.0f, 1.0f);         // Bottom Left Of The Quad (Right)
            GL11.glVertex3f( 1.0f,-1.0f,-1.0f);         // Bottom Right Of The Quad (Right)
        GL11.glEnd();                                       // Done Drawing The Quad

        return true;
    }
    
    /**
     * Creates a window in which to display the cube.
     * @throws Exception
     */
    private void createWindow() throws Exception {
    	Display.setFullscreen(false);
        DisplayMode squareDisplayMode = new DisplayMode(640,640);
        Display.setDisplayMode(squareDisplayMode);
        Display.setTitle(windowTitle);
        Display.create();
    }
    
    /**
     * Calls create window and then starts OpenGL.
     * @throws Exception
     */
    private void init() throws Exception {
        createWindow();
        initGL();
    }

    /**
     * Setup the parameters of our OpenGL Instance.
     */
    private void initGL() {
        GL11.glEnable(GL11.GL_TEXTURE_2D); // Enable Texture Mapping
        GL11.glShadeModel(GL11.GL_SMOOTH); // Enable Smooth Shading
        GL11.glClearColor(0.0f, 0.0f, 0.0f, 0.0f); // Black Background
        GL11.glClearDepth(1.0); // Depth Buffer Setup
        GL11.glEnable(GL11.GL_DEPTH_TEST); // Enables Depth Testing
        GL11.glDepthFunc(GL11.GL_LEQUAL); // The Type Of Depth Testing To Do

        GL11.glMatrixMode(GL11.GL_PROJECTION); // Select The Projection Matrix
        GL11.glLoadIdentity(); // Reset The Projection Matrix
       
        // Calculate The Aspect Ratio Of The Window
        GLU.gluPerspective(
          45.0f,
          1.0f,
          0.1f,
          100.0f);
        
        GL11.glMatrixMode(GL11.GL_MODELVIEW); // Select The Modelview Matrix

        // Really Nice Perspective Calculations
        GL11.glHint(GL11.GL_PERSPECTIVE_CORRECTION_HINT, GL11.GL_NICEST);
    }
    
    /**
     * Called when exiting.
     */
    private static void cleanup() {
    	// Cleans up and exits gracefully.
        Display.destroy();
    }

}