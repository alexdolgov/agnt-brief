// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {Ownable} from "./abstract/Ownable.sol";
import {Rebase, AuxRebase} from "./library/AuxRebase.sol";
import {IBaseContracts} from "./interface/IBaseContracts.sol";
import {IDynamicInterestRate} from "./interface/IDynamicInterestRate.sol";
import {IERC20Custom} from "./interface/IERC20Custom.sol";
import {ILender} from "./interface/ILender.sol";
import {IMarketLens} from "./interface/IMarketLens.sol";
import {IPSM} from "./interface/IPSM.sol";
import {IStakedDUSX} from "./interface/IStakedDUSX.sol";
import {ISupplyHangingCalculator} from "./interface/ISupplyHangingCalculator.sol";
import {IVault} from "./interface/IVault.sol";

/**
 * @title DynamicInterestRate
 * @dev Adaptive interest rate based on market metrics
 * @notice Manages protocol interest rates using system health indicators
 */
contract DynamicInterestRate is Ownable, IDynamicInterestRate {
    using AuxRebase for Rebase;
    // STATE VARIABLES
    bool public healthyState;
    uint256 public minPsmCapital;
    IMarketLens public marketLens;
    IStakedDUSX public immutable stDUSX;
    ISupplyHangingCalculator public supplyHangingCalculator;
    IPSM[] public pegStabilityModules;
    IVault public immutable vault;
    // CONFIGURATION
    uint256 public stakingRatioTrigger = 2500;
    uint256[] private _emergencyGradeArray;
    uint256[] private _interestRateArray;
    // STATE VARIABLES
    uint256 public maxStakingRatioMultiplier = 5000;
    uint256 public maxInterestRate = 10_000;
    uint256 public criticalEmergencyGrade = 9500;
    uint256 public constant TENK_PRECISION = 10_000;
    event MinPsmCapitalUpdated(uint256 newMinPsmCapital);
    event StakingRatioTriggerUpdated(uint256 newStakingRatioTrigger);
    event MaxStakingRatioMultiplierUpdated(
        uint256 newMaxStakingRatioMultiplier
    );
    event MaxInterestRateUpdated(uint256 newMaxInterestRate);
    event CriticalEmergencyGradeUpdated(uint256 newCriticalEmergencyGrade);
    // ERRORS
    error EmptyArray();
    error InvalidParameter();
    error ZeroAddress();
    error RateExceedsMaximum(uint256 rate);

    // CONSTRUCTOR
    constructor(
        IBaseContracts baseContracts_,
        uint256[] memory emergencyGradeArray_,
        uint256[] memory interestRateArray_
    ) {
        _ensureNonzeroAddress(address(baseContracts_));
        vault = baseContracts_.vault();
        stDUSX = baseContracts_.stDUSX();
        marketLens = baseContracts_.marketLens();
        supplyHangingCalculator = baseContracts_.supplyCalculator();
        _ensureNonzeroAddress(address(vault));
        _ensureNonzeroAddress(address(stDUSX));
        _ensureNonzeroAddress(address(marketLens));
        _ensureNonzeroAddress(address(supplyHangingCalculator));
        // Initialize PSMs
        IPSM[] memory psms_ = new IPSM[](2);
        psms_[0] = baseContracts_.psmCircle();
        psms_[1] = baseContracts_.psmTether();
        if (address(psms_[0]) == address(0) || address(psms_[1]) == address(0))
            revert ZeroAddress();
        pegStabilityModules = psms_;
        _emergencyGradeArray = emergencyGradeArray_;
        _interestRateArray = interestRateArray_;
    }

    // PUBLIC FUNCTIONS
    function setMinPsmCapital(uint256 newMinPsmCapital) external onlyOwner {
        minPsmCapital = newMinPsmCapital;
        emit MinPsmCapitalUpdated(newMinPsmCapital);
    }

    /**
     * @notice Updates the emergency grade array used for interest rate calculation
     * @dev Only callable by the contract owner
     * @param newEmergencyGradeArray The new array of emergency grade thresholds
     */
    function updateEmergencyGradeArray(
        uint256[] calldata newEmergencyGradeArray
    ) external onlyOwner {
        if (newEmergencyGradeArray.length == 0) revert EmptyArray();

        // Ensure the array is in ascending order
        for (uint256 i = 1; i < newEmergencyGradeArray.length; i++) {
            if (newEmergencyGradeArray[i] <= newEmergencyGradeArray[i - 1])
                revert InvalidParameter();
        }

        // Interest rate array must have exactly one more element than emergency grade array
        if (_interestRateArray.length != newEmergencyGradeArray.length + 1)
            revert InvalidParameter();

        _emergencyGradeArray = newEmergencyGradeArray;
    }

    /**
     * @notice Updates the interest rate array used for interest rate calculation
     * @dev Only callable by the contract owner
     * @param newInterestRateArray The new array of interest rates
     */
    function updateInterestRateArray(
        uint256[] calldata newInterestRateArray
    ) external onlyOwner {
        if (newInterestRateArray.length == 0) revert EmptyArray();

        // Ensure all interest rates are within permitted range
        for (uint256 i = 0; i < newInterestRateArray.length; i++) {
            if (newInterestRateArray[i] > maxInterestRate)
                revert RateExceedsMaximum(newInterestRateArray[i]);
        }

        // Interest rate array must have exactly one more element than emergency grade array
        if (newInterestRateArray.length != _emergencyGradeArray.length + 1)
            revert InvalidParameter();

        _interestRateArray = newInterestRateArray;
    }

    /**
     * @notice Updates both emergency grade and interest rate arrays simultaneously
     * @dev Only callable by the contract owner
     * @param newEmergencyGradeArray The new array of emergency grade thresholds
     * @param newInterestRateArray The new array of interest rates
     */
    function updateRateArrays(
        uint256[] calldata newEmergencyGradeArray,
        uint256[] calldata newInterestRateArray
    ) external onlyOwner {
        if (
            newEmergencyGradeArray.length == 0 ||
            newInterestRateArray.length == 0
        ) revert EmptyArray();

        // Interest rate array must have exactly one more element than emergency grade array
        if (newInterestRateArray.length != newEmergencyGradeArray.length + 1)
            revert InvalidParameter();

        // Ensure the emergency grade array is in ascending order
        for (uint256 i = 1; i < newEmergencyGradeArray.length; i++) {
            if (newEmergencyGradeArray[i] <= newEmergencyGradeArray[i - 1])
                revert InvalidParameter();
        }

        // Ensure all interest rates are within permitted range
        for (uint256 i = 0; i < newInterestRateArray.length; i++) {
            if (newInterestRateArray[i] > maxInterestRate)
                revert RateExceedsMaximum(newInterestRateArray[i]);
        }

        _emergencyGradeArray = newEmergencyGradeArray;
        _interestRateArray = newInterestRateArray;
    }

    /**
     * @notice Updates the staking ratio trigger value
     * @dev Only callable by the contract owner
     * @param newStakingRatioTrigger The new staking ratio trigger value
     */
    function updateStakingRatioTrigger(
        uint256 newStakingRatioTrigger
    ) external onlyOwner {
        stakingRatioTrigger = newStakingRatioTrigger;
        emit StakingRatioTriggerUpdated(newStakingRatioTrigger);
    }

    /**
     * @notice Updates the maximum staking ratio multiplier
     * @dev Only callable by the contract owner
     * @param newMaxStakingRatioMultiplier The new maximum staking ratio multiplier
     */
    function updateMaxStakingRatioMultiplier(
        uint256 newMaxStakingRatioMultiplier
    ) external onlyOwner {
        maxStakingRatioMultiplier = newMaxStakingRatioMultiplier;
        emit MaxStakingRatioMultiplierUpdated(newMaxStakingRatioMultiplier);
    }

    /**
     * @notice Updates the maximum interest rate
     * @dev Only callable by the contract owner
     * @param newMaxInterestRate The new maximum interest rate
     */
    function updateMaxInterestRate(
        uint256 newMaxInterestRate
    ) external onlyOwner {
        maxInterestRate = newMaxInterestRate;
        emit MaxInterestRateUpdated(newMaxInterestRate);
    }

    /**
     * @notice Updates the critical emergency grade
     * @dev Only callable by the contract owner
     * @param newCriticalEmergencyGrade The new critical emergency grade
     */
    function updateCriticalEmergencyGrade(
        uint256 newCriticalEmergencyGrade
    ) external onlyOwner {
        criticalEmergencyGrade = newCriticalEmergencyGrade;
        emit CriticalEmergencyGradeUpdated(newCriticalEmergencyGrade);
    }

    function getEmergencyGradeArray() external view returns (uint256[] memory) {
        return _emergencyGradeArray;
    }

    function getInterestRateArray() external view returns (uint256[] memory) {
        return _interestRateArray;
    }

    function getInterestPerSecond() external view returns (uint256) {
        return (getInterestRate() * 316880879) / 100;
    }

    function getInterestRate() public view returns (uint256) {
        if (pegStabilityModules.length == 0) revert EmptyArray();
        uint256 supplyHanging = supplyHangingCalculator
            .getSupplyHangingUnsafe();
        uint256 psmTotalCapital = _calculatePSMTotalCapital();
        uint256 rate;
        if (
            psmTotalCapital < minPsmCapital || supplyHanging >= psmTotalCapital
        ) {
            rate = _interestRateArray[_interestRateArray.length - 1];
        } else {
            uint256 emergencyGrade = (supplyHanging * TENK_PRECISION) /
                psmTotalCapital;
            rate = _findApplicableRate(emergencyGrade);
        }
        uint256 stakingRatio = _calculateStakingRatio();
        if (_shouldApplyStakingModifier(rate, stakingRatio)) {
            rate = _applyStakingModifier(rate, stakingRatio);
        }
        if (rate > maxInterestRate) revert RateExceedsMaximum(rate);
        return rate;
    }

    // PRIVATE FUNCTIONS
    function _calculatePSMTotalCapital() private view returns (uint256 total) {
        uint256 length = pegStabilityModules.length;
        for (uint256 i; i < length; ) {
            total += pegStabilityModules[i].dusxMinted();
            unchecked {
                ++i;
            }
        }
    }

    function _calculateTotalBorrowed() private view returns (uint256 total) {
        address[] memory lenders = vault.getControllers();
        uint256 length = lenders.length;
        for (uint256 i = 0; i < length; ) {
            total += marketLens.getTotalBorrowed(ILender(lenders[i]));
            unchecked {
                ++i;
            }
        }
    }

    function _calculateStakingRatio() private view returns (uint256) {
        uint256 totalBorrowed = _calculateTotalBorrowed();
        uint256 ratio = 0;
        if (totalBorrowed != 0) {
            ratio =
                (IERC20Custom(address(stDUSX)).totalSupply() * TENK_PRECISION) /
                totalBorrowed;
            if (ratio > maxStakingRatioMultiplier) {
                ratio = maxStakingRatioMultiplier;
            }
        }
        return ratio;
    }

    function _findApplicableRate(
        uint256 emergencyGrade
    ) private view returns (uint256) {
        uint256 length = _emergencyGradeArray.length;
        uint256 i = 0;
        for (i; i < length; ) {
            if (emergencyGrade < _emergencyGradeArray[i]) {
                break;
            }
            unchecked {
                ++i;
            }
        }
        return _interestRateArray[i];
    }

    function _shouldApplyStakingModifier(
        uint256 rate,
        uint256 stakingRatio
    ) private view returns (bool) {
        return
            stakingRatioTrigger > 0 &&
            stakingRatio > stakingRatioTrigger &&
            rate == _interestRateArray[0];
    }

    function _applyStakingModifier(
        uint256 rate,
        uint256 stakingRatio
    ) private view returns (uint256) {
        return (rate * stakingRatio) / stakingRatioTrigger;
    }

    // Validates that an address is not zero
    function _ensureNonzeroAddress(address addr) private pure {
        if (addr == address(0)) {
            revert ZeroAddress();
        }
    }
}
