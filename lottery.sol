// SPDX-License-Identifier: MIT
pragma solidity 0.8;

// Lottery System//

contract Lottery
{
    enum user { allowed , not_allowed , wait}

    user public u1 = user.allowed;
    uint public lottery = 1000;

    //creating function to check user allowed to the u1//
    function owner() public 
    {
        if (u1==user.allowed)
        {
            lottery=0;
        }
    }

    //changing the value of owner//
    function changeOwner() public 
    {
        u1=user.not_allowed;

    }
}
