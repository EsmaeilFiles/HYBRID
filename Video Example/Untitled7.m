dMax = 1000

VideoName = 'RBD'
obj = VideoReader(['./1000/' VideoName '.avi']);
vid = read(obj);

% read the total number of frames
frames = obj.NumFrames;


% saving inputs and outputs
dir_result = ['OutputsInputs/' VideoName '--framesRBDD=' num2str(frames) '--dMax=' num2str(dMax)];
mkdir(dir_result);
cd(dir_result); mkdir plots; mkdir videos; mkdir frames; mkdir mat
cd ..; cd ..;

% reading and writing the frames
cd(['./' dir_result '/frames'])
ST ='.jpg';
for x = 1 : frames
    
    % converting integer to string
    Sx = num2str(x);
    
    % concatenating 2 strings
    Strc = strcat(Sx, ST);
    Vid = vid(:, :, :, x);
    
    % exporting the frames
    imwrite(Vid, Strc);
end
