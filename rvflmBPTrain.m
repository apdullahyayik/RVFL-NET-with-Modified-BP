function [outputlayerweights, hiddenlayerweights] = rvflmBPTrain(input, target, enhancementnodesneuronnumber)
% rvflmBPTrain: Random Vector Functional Link with Modified backpropagation
% (Train)
% Structure of NET is described in "A comprehensive Evaluation of RVFLNs"
% Le Zhang, P.N. Suganthan, Information Sciences
% Learning system is described in "Modified BP Algorithm", Verma B.K. and
% Mulaka J.J., 1994
% These 2 approaches are married in these codes.
%
%Output Parameters
%         outputlayerweights: output weights that connect both enhancement
%         and direct inputs nodes to output
%         hiddenlayerweights: hiddenlayer weights that connect inputs nodes
%         to enhancement nodes
%
%Input Parameters
%         input: input data (each row represent different observations)
%         target: desired outputs
%         enhancementnodesneuronnumber: number of enhacement nodes (specific to RVFL nets)
%
% Example Usage
%         input=rand(3,5);
%         target=rand(3,1);
%         enhancementnodesneuronnumber=5
%         [outputlayerweights, hiddenlayerweights]=...
%             rvflmBPTrain(input, target, enhancementnodesneuronnumber)
%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %                           TRAIN                              %
% %      Random Vector Functional Link with Modified BP          %
% %                                                              %
% %                    Apdullah Yay?k, 2019                      %
% %                    apdullahyayik@gmail.com                   %
% %                                                              %
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if isequal(size(target,1), size(input,1))==0
    error('Error: input and target sizes dismatch')
else
    outputlayerweights=zeros(size(target));
    [samplenumber, inputneuronnumber]=size(input);
    hiddenlayerweights=rand(inputneuronnumber,enhancementnodesneuronnumber);
    enhancementnodesoutput=logsig(input*hiddenlayerweights);
    hiddenlayerout=[input, enhancementnodesoutput]; % direct and enhacement nodes
  
    for i=1:samplenumber
        NET(i)=log(target(i)/(1-target(i)));
    end
    NET=NET';
    
    for j=1:samplenumber
        outputlayerweights(j)=pinv(hiddenlayerout(j))*NET(j);
    end
end    
end
