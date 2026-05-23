// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "../IEsTokenUsage.sol";

interface IEsToken  {
    function usageAllocations(
        address userAddress,
        address usageAddress
    ) external view returns (uint256 allocation);

    function allocateFromUsage(address userAddress, uint256 amount) external;

    function convertTo(uint256 amount, address to) external;

    function deallocateFromUsage(address userAddress, uint256 amount) external;

    function isTransferWhitelisted(address account) external view returns (bool);
    
    function updateRedeemSettings(
        uint256 minRedeemRatio,
        uint256 maxRedeemRatio,
        uint256 minRedeemDuration,
        uint256 maxRedeemDuration,
        uint256 redeemDividendsAdjustment,
        uint256 freeRedeemPercentage,
        uint256 minFreeRedeem,
        uint256 freeRedeemCooldown,
        uint256 redemptionGracePeriod
    ) external;

    function updateDividendsAddress(IEsTokenUsage dividendsAddress_) external;

    function updateTreasuryAddress(address _newTreasuryAddress) external;

    function updateTransferWhitelist(address account, bool add) external;

    function dividendsAddress() external view returns (IEsTokenUsage);

    function treasuryAddress() external view returns (address);

    // Add view functions for the state variables we need
    function minRedeemRatio() external view returns (uint256);
    function maxRedeemRatio() external view returns (uint256);
    function minRedeemDuration() external view returns (uint256);
    function maxRedeemDuration() external view returns (uint256);
    function redeemDividendsAdjustment() external view returns (uint256);
    function freeRedeemPercentage() external view returns (uint256);
    function minFreeRedeem() external view returns (uint256);
    function freeRedeemCooldown() external view returns (uint256);
    function redemptionGracePeriod() external view returns (uint256);

    function approveUsage(IEsTokenUsage usage, uint256 amount) external;
    function allocate(address usageAddress, uint256 amount, bytes calldata usageData) external;
    function deallocate(address usageAddress, uint256 amount, bytes calldata usageData) external;
    
  

}