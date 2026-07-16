// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.23;

import "../TToken.sol";
import "../ExponentialNoError.sol";
import "./MultiRewardDistributorCommon.sol";

interface IMultiRewardDistributor is MultiRewardDistributorCommon {
    // Public views
    function getAllMarketConfigs(TToken _tToken) external view returns (MarketConfig[] memory);
    function getConfigForMarket(TToken _tToken, address _emissionToken) external view returns (MarketConfig memory);
    function getOutstandingRewardsForUser(address _user) external view returns (RewardWithTToken[] memory);
    function getOutstandingRewardsForUser(TToken _tToken, address _user) external view returns (RewardInfo[] memory);
    function getCurrentEmissionCap() external view returns (uint256);

    // Administrative functions
    function _addEmissionConfig(
        TToken _tToken,
        address _owner,
        address _emissionToken,
        uint256 _supplyEmissionPerSec,
        uint256 _borrowEmissionsPerSec,
        uint256 _endTime
    ) external;
    function _rescueFunds(address _tokenAddress, uint256 _amount) external;
    function _setPauseGuardian(address _newPauseGuardian) external;
    function _setEmissionCap(uint256 _newEmissionCap) external;

    // Comptroller API
    function updateMarketSupplyIndex(TToken _tToken) external;
    function disburseSupplierRewards(TToken _tToken, address _supplier, bool _sendTokens) external;
    function updateMarketSupplyIndexAndDisburseSupplierRewards(TToken _tToken, address _supplier, bool _sendTokens)
        external;
    function updateMarketBorrowIndex(TToken _tToken) external;
    function disburseBorrowerRewards(TToken _tToken, address _borrower, bool _sendTokens) external;
    function updateMarketBorrowIndexAndDisburseBorrowerRewards(TToken _tToken, address _borrower, bool _sendTokens)
        external;

    // Pause guardian functions
    function _pauseRewards() external;
    function _unpauseRewards() external;

    // Emission schedule admin functions
    function _updateSupplySpeed(TToken _tToken, address _emissionToken, uint256 _newSupplySpeed) external;
    function _updateBorrowSpeed(TToken _tToken, address _emissionToken, uint256 _newBorrowSpeed) external;
    function _updateOwner(TToken _tToken, address _emissionToken, address _newOwner) external;
    function _updateEndTime(TToken _tToken, address _emissionToken, uint256 _newEndTime) external;

    function getGlobalSupplyIndex(address tToken, uint256 index) external view returns (uint256);
    function pauseGuardian() external view returns (address);
    function initialIndexConstant() external view returns (uint224);
    function emissionCap() external view returns (uint256);
    function getCurrentOwner(TToken _tToken, address _emissionToken) external view returns (address);
}
