// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract FlowControl{
    function calcDozenDiscountIf(uint quantity) private pure returns(bool){
        bool isDozenPrice = false;
        if(quantity>=12){
            isDozenPrice = true;
        }
        else{
            isDozenPrice = false;
        }
        return isDozenPrice;
    }

    function calcDozenDiscountWhile(uint quantity) private pure returns(bool){
        bool isDozenPrice = false;
        uint numD = 1;
        while(numD<quantity){
            numD++;
            if(quantity>=12){
                isDozenPrice = true;
                break;
            }
        }
        return isDozenPrice;
    }

    function calcDozenDiscountDoWhile(uint quantity) private pure returns(bool){
        bool isDozenPrice = false;
        uint numD = 1;
        do{
            numD++;
            if(quantity>=12){
                isDozenPrice = true;
                break;
            }
        }
        while(numD<quantity);
        return isDozenPrice;
    }

    function calcDozenDiscountFor(uint quantity) private pure returns(bool){
        bool isDozenPrice = false;
        uint numD = 1;
        for(numD=1;numD<=quantity;numD++){
           if(quantity>=12){
                isDozenPrice = true;
                break;
            } 
        }
        return isDozenPrice;
    }


}