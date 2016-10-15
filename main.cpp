#include <opencv2/opencv.hpp>
using namespace cv;

int main()
{
	std::string fileLoc = "mlghw.png";
	Mat img = imread(fileLoc);
	imshow("OG", img);
	waitKey(0);
	
	//CV conversion
	Mat imsv;
	cvtColor(img,imsv, CV_BGR2HSV);
	//imshow("HSV", imsv);

	//splitting
	vector<Mat> channels;
	split(imsv, channels);
	
	//thresholding
	Mat hueOg = channels.at(0).clone();
	Mat lower, upper;
	Mat result;
	
	threshold(hueOg, lower, 0, 255, CV_THRESH_BINARY);
	//imshow("L", lower);
	//waitKey(0);
	threshold(hueOg, upper, 20, 255, CV_THRESH_BINARY_INV);
	//imshow("U", upper);
	//waitKey(0);
	result = lower & upper;
	imshow("Thresh", result);
	waitKey(0);
	
	//canny
	Mat cann;
	Canny(img, cann, 100, 200);
	imshow("Cannied", cann);
	waitKey(0);

	//contours
	std::vector<vector<Point> > contours;
	std::findContours(cann, contours, CV_RETR_LIST, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );

	/*Mat draw = Mat::zeros(img.rows, img.cols, CV_8UC3);
	Scalar col = Scalar(255,255,255);
	drawContours(draw,contours, -1, col);
	imshow("Cont", draw);
	waitKey(0);*/

	//Rect detect
	vector<Point> apxcont;
	double epsilon;
	//double areas [4];

	for(int i = 0; i<contours.size(); i++)
	{
		std::cout << "got here" << std::endl;		
		//setting value of epsilon
		epsilon = arcLength(cv::Mat(contours.at(i)), true) * 0.02;
		//detecting Polys		
		cv::approxPolyDP(contours[i], apxcont, epsilon, true);
		if (apxcont.size() == 8 && contourArea(apxcont, false) > 10000)
		{	
			cv::drawContours(img, contours, i, Scalar(255, 255, 255), 5);
			std::cout << cv::contourArea(apxcont, false);
		}
	}
	imshow("Biggest", img);
	waitKey(0);	

}
