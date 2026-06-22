// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

interface IAirpuff {
    struct UserInfo {
        address user;
        uint256 deposit;
        uint256 leverage;
        uint256 position;
        uint256 originalPositionValue;
        bool liquidated;
        uint256 closedPositionValue;
        address liquidator;
        uint256 positionSwappedBorrowedAmount;
        uint256 leverageAmount;
        uint256 positionId;
        bool    closed;
    }

    struct PositionInfo {
        address user;
        uint256 deposit;
        uint256 leverage;
        uint256 position;
        uint256 originalPositionValue;
        bool liquidated;
        uint256 closedPositionValue;
        address liquidator;
        uint256 positionSwappedBorrowedAmount;
        uint256 leverageAmount;
        uint256 positionId;
        bool    closed;
        address depositAsset;
        address borrowAsset;
    }

    struct Dtv {
        uint256 currentDTV;
        uint256 currentPositionValue;
        uint256 currentPosValueBorrowedAsset;
        uint256 leverageWithInterests;
        uint256 totalInterests;
    }

    function getTotalNumbersOfOpenPositionBy(address _user) external view returns (uint256);

    function getUpdatedDebt(uint256 _positionID, address _user) external view returns (uint256, uint256, uint256, uint256, uint256);
    function userInfo(address _user, uint256 _positionID) external view returns (UserInfo memory);
    function getCurrentPositionValue(uint256 _positionID, address _user) external view returns (uint256);
    function positionDepositAsset(address _user, uint256 _positionID) external view returns (address);
    function positionBorrowAsset(address _user, uint256 _positionID) external view returns (address);
}