// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IBaseline {
    error InvalidExpiry();
    error NoCreditAvailable();
    error NoCollateralAvailable();

    struct CreditAccount {
        uint256 principal; // Used to keep track of data in timeslots
        uint256 interest; // Total charged on the last borrow
        uint256 collateral; // bAsset collateral
        uint256 expiry; // Date when credit expires and collateral is defaulted
        uint256 lastFloor; // Floor price at last borrow
    }

    struct Position {
        PosType posType;
        int24 lower;
        int24 upper;
    }

    enum PosType {
        FLOOR,
        ANCHOR,
        DISCOVERY
    }
    function reserve() external view returns (address);
    function bAsset() external view returns (address);
    function pool() external view returns (address);

    function floorTick() external view returns (int24);
    function checkpointTick() external view returns (int24);

    function getFloorPrice() external view returns (uint256);
    function getPosition(PosType posType) external view returns (Position memory);
    function getBalancesForPosition(Position memory position) external view returns (uint256 bAsset, uint256 reserve);

    function FEE_TIER() external view returns (uint24);
    function REBALANCE_THRESHOLD() external view returns (int24);

    function totalBAssetCollateral() external view returns (uint256);
    function totalLentReserves() external view returns (uint256);

    function getCreditAccount(address user_) external view returns (CreditAccount memory);
    function getNumDays(uint256 seconds_) external view returns (uint256);
    function estimateBorrow(address user_, uint256 bAssetsIn_, uint256 numDays_)
        external
        returns (uint256 estPrincipal, uint256 interest, uint256 newExpiry);
    function borrow(address user_, uint256 bAssetsIn_, uint256 numDays_)
        external
        returns (uint256 principal, uint256 interest);
    function repay(address user_, uint256 reservesIn_) external returns (uint256 bAssetsReturned);

    function shift() external returns (bool);
    function slide() external returns (bool);
    function rebalance() external returns (bool);
}