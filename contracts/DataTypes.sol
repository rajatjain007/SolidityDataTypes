// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract DataTypes{
    uint x = 21345; // uint stores positive integers, 256 bits
    int y = -99; // int stores positive or negatives integers
    uint8 z = 18; // smaller uint 8 bits
    bool ethereumIsCool = true; // boolean, true or false
    address owner = msg.sender; // msg.sender is the Ethereum address of the account that sent this transaction
    bytes32 bMessage = "hello";
    string sMessage = "hello";

    function getStateVariables() public view returns(uint,int,uint8,bool,address,bytes32,string memory){
        return(x,y,z,ethereumIsCool,owner,bMessage,sMessage);
    }

    function setbMessage() private view returns(bytes32){ // cannot call this function since it's private
        return bMessage;
    }


}

