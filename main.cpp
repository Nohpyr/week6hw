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
	vector<vector<Point> > contours;
	findContours(cann, contours, CV_RETR_LIST, CV_CHAIN_APPROX_SIMPLE, Point(0, 0) );

	/*Mat draw = Mat::zeros(img.rows, img.cols, CV_8UC3);
	Scalar col = Scalar(255,255,255);
	drawContours(draw,contours, -1, col);
	imshow("Cont", draw);
	waitKey(0);*/

	//Rect detect
	vector<Point> apxcont;
	vector<Point> Max;
	double epsilon;
	//double areas [4];

	for(int i = 0; i<contours.size(); i++)
	{
		std::cout << "got here" << std::endl;		
		//setting value of epsilon
		epsilon = arcLength(cv::Mat(contours.at(i)), true) * 0.02;
		//detecting Polys		
		cv::approxPolyDP(contours[i], apxcont, epsilon, true);
		if (apxcont.size() >= 4 && contourArea(apxcont) > 100)
		{
			std::cout << contourArea(apxcont);
			/*maxCosine = 0;

			for(int j = 2; j <= 4; j++)
			{
			cosine = fabs(angle(apxcont[j%4], apxcont[j-2], apxcont[j-1]));
			maxCosine = MAX(maxCosine, cosine);
			}

			if(maxCosine < 0.3)
			{
				areas[i] = contourArea(apxcont);
			}*/
			
			//setting biggest area
			if(contourArea(Max) <= contourArea(apxcont))
			{
				Max = apxcont;
			}

		}
	}

	drawContours(img, Max, -1, Scalar(152, 245, 255), 3, 8);
	imshow("Biggest", img);
	waitKey(0);	

}
