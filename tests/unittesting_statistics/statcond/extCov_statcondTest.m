classdef extCov_statcondTest < matlab.unittest.TestCase
    
    methods(Test, TestTags = {'ExtendingCoverage'})

        function testNoInputs(testCase)
            % test if calling statcond without inputs give the help text,
            % which should contains the phrase 
            % "compare two or more data conditions statistically using"

            txtOutput = evalc('statcond()');
            testCase.verifySubstring(txtOutput, 'compare two or more data conditions statistically using');

        end

        function testPairedOnToOff1(testCase)

            a = []; %#TODO

            [t, df, pvals] = statcond(a, 'mode', 'param', 'verbose', 'off', 'paired', 'on');


        end
        

    end
        
    
end
