// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

interface ILiquidityMining {

    event UnlockLPTokenRequest (
        address account, 
        uint currentBalance,
        uint amount,
        uint time,
        bytes32 tag
    );

    event UnlockLPToken (
        address account, 
        uint amount,
        bytes32 tag
    );

    event InstantUnlockLPToken (
        address account, 
        uint amount
    );

    event EmergencyWithdrawal (
        address account, 
        uint amount
    );

    event LockLPToken (
        address account, 
        uint amount
    );

    event NewWaitTime (
        uint oldMinWaitTime, 
        uint newMinWaitTime
    );

    event NewUnlockRequestDeadline (
        uint oldUnlockRequestDeadline, 
        uint newUnlockRequestDeadline
    );

    function interestPerDay() external view returns (uint);

    function LPToken() external view returns (address);

    function interestInInterval(uint start, uint end) external view returns (uint);
    
    function balanceOf(address account) external view returns (uint);

    function totalSupply() external view returns (uint);

    function setUnlockRequestDeadline(uint _unlockRequestDeadline) external;

    function setMinWaitTime(uint _minWaitTime) external;

    function pause() external;

    function unpause() external;

    function lockLPToken(uint amount) external;

    function unlockLPToken(uint amount, uint time, bytes32 tag) external;

    function instantUnlockLPToken(uint amount) external;

    function requestToUnlockLPToken(uint amount) external returns (bytes32);

    function emergencyWithdrawal(uint amount) external;

    function getInterest(address account) external view returns (uint);
}
