// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

interface IAirpuff1x {
    struct UserInfo {
        address user;
        uint256 deposit;
        uint256 positionId;
        uint256 openTimestamp;
        uint256 closeTimestamp;
        bool closed;
    }
    
    function getTotalNumbersOfOpenPositionBy(address _user) external view returns (uint256);
    function userInfo(address _user, uint256 _positionID) external view returns (UserInfo memory);

}