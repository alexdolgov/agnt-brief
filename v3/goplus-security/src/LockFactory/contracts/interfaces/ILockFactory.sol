// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface ILockFactory {
    struct FeeConfig {
        uint256 lockedTokenPercentage;
        address feeTokenAddress;
        uint256 feeTokenAmount;
    }

    struct CustomFee {
        address user;
        uint256 lockedTokenPercentage;
        address feeTokenAddress;
        uint256 feeTokenAmount;
    }

    function feeCollector() external view returns (address);

    function feeSigner() external view returns (address);

    function twapInterval() external view returns (uint16);
    
    function getTwapIntervals(address pool) external view returns (uint16);

    function getFeeConfig(string memory feeType) external view returns (FeeConfig memory);

    function setFeeConfig(
        string memory feeType,
        uint256 lockedTokenPercentage,
        address feeTokenAddress,
        uint256 feeTokenAmount
    ) external;

    function createLock(
        address token, 
        address pool, 
        address operator, 
        uint256 unlockTime, 
        uint256 unlockPriceMultiplier,
        string memory feeType
    ) external payable returns (address lockAddress);

    function createLockWithCustomFee(
        address token,
        address pool,
        address operator,
        uint256 unlockTime, 
        uint256 unlockPriceMultiplier,
        CustomFee memory customFee,
        bytes memory signature 
    ) external payable returns (address lockAddress);

    event FeeCollected(
        address indexed user,
        address feeTokenAddress,
        uint256 feeTokenAmount
    );

    event LockCreated(
        address indexed lockAddress,
        address indexed token,
        address[] pools,
        address operator,
        uint256 unlockTime,
        uint256 unlockPriceMultiplier,
        address owner
    );

    event CustomFeeRevoked(
        address indexed user,
        uint256 lockedTokenPercentage,
        address feeTokenAddress,
        uint256 feeTokenAmount
    );
}