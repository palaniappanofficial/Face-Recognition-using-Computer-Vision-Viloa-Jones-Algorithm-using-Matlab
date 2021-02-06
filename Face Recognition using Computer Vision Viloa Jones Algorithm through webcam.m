% Construct a webcam object
clc;clear;
close all;
camObj = webcam();

% Preview a stream of image frames.
preview(camObj);

% Acquire and display a single image frame.
faceDetector = vision.CascadeObjectDetector; % Default: finds faces
while(1)
img = snapshot(camObj);
bboxes = step(faceDetector, img); % Detect faces
% Annotate detected faces
IFaces = insertObjectAnnotation(img, 'rectangle', bboxes, 'Face');
figure, imshow(IFaces), title('Detected faces');
end