# rvflmBPTrain  
                Output Parameters
                         outputlayerweights: output weights that connect both enhancement
                         and direct inputs nodes to output
                         hiddenlayerweights: hiddenlayer weights that connect inputs nodes
                         to enhancement nodes

                Input Parameters
                         input: input data (each row represent different observations)
                         target: desired outputs
                         enhancementnodesneuronnumber: number of enhacement nodes (specific to RVFL nets)
# Explanatiom
               Structure of NET is described in "A comprehensive Evaluation of RVFLNs"
               Le Zhang, P.N. Suganthan, Information Sciences
               Learning system is described in "Modified BP Algorithm", Verma B.K. and
               Mulaka J.J., 1994
               These 2 approaches are married in these codes.

# Usage
                       input=rand(3,5);
                       target=rand(3,1);
                       enhancementnodesneuronnumber=5
                       [outputlayerweights, hiddenlayerweights]=...
                           rvflmBPTrain(input, target, enhancementnodesneuronnumber)
 
 
          -----------------------------------------------------------------------------------------------------
 
 
 
 # rvflmBPTest  
            Output Parameters
                     y: actul output

            Input Parameters
                     input: input data (each row represent different observations)
                     outputlayerweights: output weights that connect both enhancement
                     and direct inputs nodes to output (calculated after training)
                     hiddenlayerweights: hiddenlayer weights that connect inputs nodes
                     to enhancement nodes (calculated after training)
# Explanatiom
               Structure of NET is described in "A comprehensive Evaluation of RVFLNs"
               Le Zhang, P.N. Suganthan, Information Sciences
               Learning system is described in "Modified BP Algorithm", Verma B.K. and
               Mulaka J.J., 1994
               These 2 approaches are married in these codes.

# Usage
                       input=rand(3,5);
                       target=rand(3,1);
                       enhancementnodesneuronnumber=5
                       [outputlayerweights, hiddenlayerweights]=...
                           rvflmBPTrain(input, target, enhancementnodesneuronnumber)
                       y=rvflmBPTest(input, outputlayerweights, hiddenlayerweights)
                      %        % check target and y values
