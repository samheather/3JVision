package vision;

import org.opencv.core.Core;
import org.opencv.core.Mat;
import org.opencv.core.MatOfRect;
import org.opencv.core.Rect;
import org.opencv.core.Size;
import org.opencv.highgui.VideoCapture;
import org.opencv.highgui.Highgui;
import org.opencv.objdetect.CascadeClassifier;

import java.io.File;

public class LocateFace {
	
	private VideoCapture vc;
	private CascadeClassifier cascaseFaceDetectorProfile;
	private MatOfRect faces;
	private Rect mainFace;
	private Size minSize;
	private Size maxSize;
	private int imgWidth;
	private int imgHeight;

	public LocateFace() {
		// TODO Auto-generated constructor stub
		System.loadLibrary(Core.NATIVE_LIBRARY_NAME);
		vc = new VideoCapture(0);
		
		File cascadeFile = new File("res/haarcascade_frontalface_default.xml");
		cascaseFaceDetectorProfile = new CascadeClassifier(cascadeFile.getAbsolutePath());
		
		minSize = new Size(150,150);
		maxSize = new Size(700,700);
	}
	
	public boolean getLocation() {
		Mat img = new Mat();
		if(!vc.read(img)) {
			System.out.println("Error capturing image from CameraCapture");
			imgWidth = img.width();
			imgHeight = img.height();
		}
		
		//ToDo(samheather) Convert image to gray+make smaller for ++er fps?
		faces = new MatOfRect();
		cascaseFaceDetectorProfile.detectMultiScale(img, faces, 1.2, 3, 0, minSize, maxSize);
		
		if (!faces.empty()) {
			mainFace = faces.toArray()[0];
			System.out.println(mainFace);
			return true;
		}
		else {
			return false;
		}
	}
	
	public float getDistance() {
		return (float)mainFace.height;
	}
	
	public float getHorizontalAngle() {
		return mainFace.x+(mainFace.width/2)-(imgWidth/2);
	}
	
	public float getVerticalAngle() {
		return mainFace.y+(mainFace.height/2)-(imgHeight/2);
	}

}
