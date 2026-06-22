// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import "../abstract/GNSAddressStore.sol";

import "../../interfaces/libraries/ITradingStateCopyUtils.sol";

import "../../libraries/TradingStateCopyUtils.sol";

/**
 * @custom:version 8
 * @dev Temporary facet for copying trading state from v7 to v8, to be removed in next version
 */
contract GNSTradingStateCopy is GNSAddressStore, ITradingStateCopyUtils {
    // Initialization

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    // Management Setters

    /// @inheritdoc ITradingStateCopyUtils
    function markAsDone(uint8 _collateralIndex) external virtual onlyRole(Role.MANAGER) {
        TradingStateCopyUtils.markAsDone(_collateralIndex);
    }

    // Interactions

    /// @inheritdoc ITradingStateCopyUtils
    function copyBorrowingFeesGroups(uint8 _collateralIndex) external virtual onlyRole(Role.MANAGER) {
        TradingStateCopyUtils.copyBorrowingFeesGroups(_collateralIndex);
    }

    /// @inheritdoc ITradingStateCopyUtils
    function copyBorrowingFeesPairs(uint8 _collateralIndex) external virtual onlyRole(Role.MANAGER) {
        TradingStateCopyUtils.copyBorrowingFeesPairs(_collateralIndex);
    }

    /// @inheritdoc ITradingStateCopyUtils
    function copyPairOis(uint8 _collateralIndex) external virtual onlyRole(Role.MANAGER) {
        TradingStateCopyUtils.copyPairOis(_collateralIndex);
    }

    /// @inheritdoc ITradingStateCopyUtils
    function copyLimits(uint8 _collateralIndex, uint256 _maxIndex) external virtual onlyRole(Role.MANAGER) {
        TradingStateCopyUtils.copyLimits(_collateralIndex, _maxIndex);
    }

    /// @inheritdoc ITradingStateCopyUtils
    function copyTrades(uint8 _collateralIndex, uint16 _maxPairIndex) external virtual onlyRole(Role.MANAGER) {
        TradingStateCopyUtils.copyTrades(_collateralIndex, _maxPairIndex);
    }

    /// @inheritdoc ITradingStateCopyUtils
    function copyTraderDelegations(
        uint8 _collateralIndex,
        address[] calldata _traders
    ) external virtual onlyRole(Role.MANAGER) {
        TradingStateCopyUtils.copyTraderDelegations(_collateralIndex, _traders);
    }

    /// @inheritdoc ITradingStateCopyUtils
    function transferBalance(uint8 _collateralIndex) external virtual onlyRole(Role.MANAGER) {
        TradingStateCopyUtils.transferBalance(_collateralIndex);
    }

    /// @inheritdoc ITradingStateCopyUtils
    function copyAllState(uint8 _collateralIndex, address[] calldata _traders) external virtual onlyRole(Role.MANAGER) {
        TradingStateCopyUtils.copyAllState(_collateralIndex, _traders);
    }

    // Getters

    /// @inheritdoc ITradingStateCopyUtils
    function getCollateralState(uint8 _collateralIndex) external view returns (COPY_STATE, uint256, uint16) {
        return TradingStateCopyUtils.getCollateralState(_collateralIndex);
    }

    /// @inheritdoc ITradingStateCopyUtils
    function getCollateralStageState(uint8 _collateralIndex, COPY_STAGE _stage) external view returns (bool) {
        return TradingStateCopyUtils.getCollateralStageState(_collateralIndex, _stage);
    }
}
