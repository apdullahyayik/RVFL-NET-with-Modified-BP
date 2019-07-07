function y=rvflmBPTest(input, outputlayerweights, hiddenlayerweights)
% rvflmBPTest: Random Vector Functional Link with Modified backpropagation
% (Test)
%
%
%Output Parameters
%         y: actul output
%
%Input Parameters
%         input: input data (each row represent different observations)
%         outputlayerweights: output weights that connect both enhancement
%         and direct inputs nodes to output (calculated after training)
%         hiddenlayerweights: hiddenlayer weights that connect inputs nodes
%         to enhancement nodes (calculated after training)
%
% Example Usage
%         input=rand(3,5);
%         target=rand(3,1);
%         enhancementnodesneuronnumber=5
%         [outputlayerweights, hiddenlayerweights]=...
%             rvflmBPTrain(input, target, enhancementnodesneuronnumber)
%         y=rvflmBPTest(input, outputlayerweights, hiddenlayerweights)
%        % check target and y values
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %                           TEST                               %
% %      Random Vector Functional Link with Modified BP          %
% %                                                              %
% %                    Apdullah Yay?k, 2019                      %
% %                    apdullahyayik@gmail.com                   %
% %                                                              %
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
y=zeros(size(input, 1),1);
samplenumber=size(input, 1);
enhancementnodesoutput=logsig(input*hiddenlayerweights);
hiddenlayerout=[input, enhancementnodesoutput]; % concatanation

for p=1:samplenumber
        y(p)=logsig(hiddenlayerout(p)*outputlayerweights(p));
end
end