clc;
faceDetector = vision.CascadeObjectDetector; % Default: finds faces
I = imread('visionteam.jpg');
bboxes = step(faceDetector, I); % Detect faces
% Annotate detected faces
IFaces = insertObjectAnnotation(I, 'rectangle', bboxes, 'Face');
figure, imshow(IFaces), title('Detected faces');