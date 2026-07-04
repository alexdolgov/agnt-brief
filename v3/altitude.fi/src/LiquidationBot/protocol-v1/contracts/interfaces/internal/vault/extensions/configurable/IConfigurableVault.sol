// SPDX-License-Identifier: AGPL-3.0.
pragma solidity ^0.8.0;

interface IConfigurableVaultV1 {
    // Configurable vault Errors
    error VCONF_V1_TARGET_THRESHOLD_OUT_OF_RANGE();
    error VCONF_V1_SUPPLY_THRESHOLD_OUT_OF_RANGE();
    error VCONF_V1_WITHDRAW_FEE_FACTOR_OUT_OF_RANGE();
    error VCONF_V1_LIQUIDATION_THRESHOLD_OUT_OF_RANGE();
    error VCONF_V1_AT_LEAST_ONE_FARM_STRATEGY_REQUIRED();
    error VCONF_V1_AT_LEAST_ONE_LENDER_STRATEGY_REQUIRED();

    function setBufferConfig(
        address bufferCreditor_,
        uint256 supplyBuffer,
        uint256 borrowBuffer
    ) external;

    function setVaultConfig(
        address confugrableManager_,
        address swapStrategy_,
        address accessControl_,
        address borrowVerifier_,
        uint256 withdrawFeeFactor_,
        uint256 withdrawFeePeriod_
    ) external;

    function setBorrowLimits(
        uint256 supplyThreshold_,
        uint256 liquidationThreshold_,
        uint256 targetThreshold_
    ) external;

    function setLenderStrategies(
        address[] memory newLenderStrategies,
        bool enabled
    ) external;

    function setFarmStrategies(
        address[] memory newFarmStrategies,
        bool enabled
    ) external;

    function allowOnBehalf(address[] memory allowees, bool toAllow) external;

    function disableOnBehalfValidation(
        bytes4[] memory functions,
        bool toDisable
    ) external;
}
