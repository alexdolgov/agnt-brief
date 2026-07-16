// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "@openzeppelin/contracts/interfaces/IERC4626.sol";
import "./IBitFiStablecoin.sol";

interface IStakedBitFiStablecoin is IERC4626{
    function deposit(uint256 assets, address receiver) external returns (uint256 shares);
    function convertToSharesWithEpoch(uint256 _assets) external view returns (uint256 currentEpoch, uint256 shares);
    function setRatio(uint256 epoch, uint64 newRatio, uint256 endTime) external;
    function epochRatios(uint256 epoch) external view returns (uint64 startRatio, uint64 endRatio, uint64 startTime, uint64 endTime);
    function pendingWithdrawals() external view returns (uint256);
    function totalSupply() external view returns (uint256);
    function claimWithdrawalsFor(address user, uint256[] calldata _withdrawalIds) external;
}
