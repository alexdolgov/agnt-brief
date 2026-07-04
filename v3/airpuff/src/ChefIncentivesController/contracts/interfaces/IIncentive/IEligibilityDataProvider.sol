// SPDX-License-Identifier: agpl-3.0
pragma solidity ^0.8.23;

import { IChefIncentivesController } from "./IChefIncentivesController.sol";

interface IEDPUserDefinedTypes {
    /********************** Events ***********************/
    /// @notice Emitted when CIC is set
    event ChefIncentivesControllerUpdated(IChefIncentivesController indexed _chef);

    /// @notice Emitted when LP token is set
    event VeTokenUpdated(address indexed _lpToken);

    /// @notice Emitted when required TVL ratio is updated
    event RequiredDepositRatioUpdated(uint256 indexed requiredDepositRatio);

    /// @notice Emitted when price tolerance ratio is updated
    event PriceToleranceRatioUpdated(uint256 indexed priceToleranceRatio);

    /// @notice Emitted when DQ time is set
    event DqTimeUpdated(address indexed _user, uint256 _time);

    /********************** Errors ***********************/
    error AddressZero();

    error LPTokenSet(address currentVeToken);

    error InvalidRatio();

    error OnlyCIC();
}

interface IEligibilityDataProvider {
    function refreshByKeeper(address user, bool isEligible) external returns (bool currentEligibility);

    function isEligibleForRewards(address _user) external view returns (bool isEligible);

    function lockedVeTokenUsdcValue(address user) external view returns (uint256);

    function requiredUsdcValue(address user) external view returns (uint256 required);

    function lastEligibleStatus(address user) external view returns (bool);

    function setDqTime(address _user, uint256 _time) external;

    function getDqTime(address _user) external view returns (uint256);

    function requiredDepositRatio() external view returns (uint256);

    function RATIO_DIVISOR() external view returns (uint256);
}
