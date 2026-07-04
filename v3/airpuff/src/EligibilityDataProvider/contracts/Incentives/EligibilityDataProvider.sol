// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { ICollateralChecker } from "../interfaces/IIncentive/ICollateralChecker.sol";
import { IPriceProvider } from "../interfaces/IIncentive/IPriceProvider.sol";
import { IChefIncentivesController, IEDPUserDefinedTypes, IEligibilityDataProvider } from "../interfaces/IIncentive/IEligibilityDataProvider.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title Eligible Deposit Provider
/// @author 0xKMG
/// based on Radiant's EligibilityDataProvider
contract EligibilityDataProvider is IEligibilityDataProvider, IEDPUserDefinedTypes, OwnableUpgradeable {
    /********************** Common Info ***********************/
    /// @notice RATIO BASE equal to 100%
    uint256 public constant RATIO_DIVISOR = 10000;

    /// @notice Initial required ratio of TVL to get reward; in bips
    uint256 public constant INITIAL_REQUIRED_DEPOSIT_RATIO = 500;

    /// @notice Initial ratio of the required price to still allow without disqualification; in bips
    uint256 public constant INITIAL_PRICE_TOLERANCE_RATIO = 9000;

    /// @notice Minimum required ratio of TVL to get reward; in bips
    uint256 public constant MIN_PRICE_TOLERANCE_RATIO = 8000;

    /// @notice Address of collateralChecker (to be deployed)
    ICollateralChecker public collateralChecker;
    /// @notice Address of CIC
    IChefIncentivesController public chef;

    /// @notice APUFF + LP price provider
    IPriceProvider public priceProvider;

    /// @notice Required ratio of TVL to get reward; in bips
    uint256 public requiredDepositRatio;

    /// @notice Ratio of the required price to still allow without disqualification; in bips
    uint256 public priceToleranceRatio;

    /// @notice veToken
    address public veToken;

    /********************** Eligible info ***********************/

    /// @notice Last eligible status of the user
    mapping(address => bool) public lastEligibleStatus;

    /// @notice Disqualified time of the user
    mapping(address => uint256) public disqualifiedTime;

      uint256[50] private __gap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    modifier onlyCIC() {
        if (msg.sender != address(chef)) revert OnlyCIC();
        _;
    }

    /**
     * @param _collateralChecker Address of lending pool.
     * @param _priceProvider PriceProvider address.
     */
    function initialize(ICollateralChecker _collateralChecker, IPriceProvider _priceProvider) public initializer {
        if (address(_collateralChecker) == address(0)) revert AddressZero();
        if (address(_priceProvider) == address(0)) revert AddressZero();

        collateralChecker = _collateralChecker;
        priceProvider = _priceProvider;

        requiredDepositRatio = INITIAL_REQUIRED_DEPOSIT_RATIO;
        priceToleranceRatio = INITIAL_PRICE_TOLERANCE_RATIO;
        __Ownable_init(msg.sender);
    }

    /********************** Setters ***********************/
    /**
     * @notice Set CIC
     * @param _chef address.
     */
    function setChefIncentivesController(IChefIncentivesController _chef) external onlyOwner {
        if (address(_chef) == address(0)) revert AddressZero();
        chef = _chef;
        emit ChefIncentivesControllerUpdated(_chef);
    }

    /**
     * @notice Set LP token
     */
    function setVeToken(address _veToken) external onlyOwner {
        if (_veToken == address(0)) revert AddressZero();
        // if (veToken != address(0)) revert LPTokenSet(veToken);
        veToken = _veToken;

        emit VeTokenUpdated(_veToken);
    }

    /**
     * @notice Sets required tvl ratio. Can only be called by the owner.
     * @param _requiredDepositRatio Ratio in bips.
     */
    function setRequiredDepositRatio(uint256 _requiredDepositRatio) external onlyOwner {
        if (_requiredDepositRatio > RATIO_DIVISOR) revert InvalidRatio();
        requiredDepositRatio = _requiredDepositRatio;

        emit RequiredDepositRatioUpdated(_requiredDepositRatio);
    }

    /**
     * @notice Sets price tolerance ratio. Can only be called by the owner.
     * @param _priceToleranceRatio Ratio in bips.
     */
    function setPriceToleranceRatio(uint256 _priceToleranceRatio) external onlyOwner {
        if (_priceToleranceRatio < MIN_PRICE_TOLERANCE_RATIO || _priceToleranceRatio > RATIO_DIVISOR) revert InvalidRatio();
        priceToleranceRatio = _priceToleranceRatio;

        emit PriceToleranceRatioUpdated(_priceToleranceRatio);
    }

    /**
     * @notice Sets DQ time of the user
     * @dev Only callable by CIC
     * @param _user's address
     * @param _time for DQ
     */
    //@note use in CIC: stopEmissionsFor
    function setDqTime(address _user, uint256 _time) external onlyCIC {
        disqualifiedTime[_user] = _time;

        emit DqTimeUpdated(_user, _time);
    }

    /********************** View functions ***********************/
    /**
     * @notice Returns locked APUFF value in USDC
     * @param user's address
     */
    function lockedVeTokenUsdcValue(address user) public view returns (uint256) {
        uint256 price = priceProvider.getTokenPrice();
        uint256 veTokenAmount = IERC20(veToken).balanceOf(user);
        // @note 1e6 for 6 decimals of usdc; 1e18 for 18 decimals of veToken and price
        return ((veTokenAmount * price) * 1e6) / 1e18 / 1e18;
    }

    /**
     * @notice Returns USD value required to be locked
     * @param user's address
     * @return required USD value.
     */
    function requiredUsdcValue(address user) public view returns (uint256 required) {
        uint256 totalCollateralUSD = collateralChecker.getTotalCollateralInUsdc(user);
        required = (totalCollateralUSD * requiredDepositRatio) / RATIO_DIVISOR;
    }

    /**
     * @notice Returns if the user is eligible to receive rewards
     * @param _user's address
     */
    function isEligibleForRewards(address _user) public view returns (bool) {
        uint256 lockedValue = lockedVeTokenUsdcValue(_user);
        uint256 requiredValue = (requiredUsdcValue(_user) * priceToleranceRatio) / RATIO_DIVISOR;
        return requiredValue != 0 && lockedValue >= requiredValue;
    }

    /**
     * @notice Returns if the user is eligible to receive rewards, lockedVeToken Value and totalCollateralUSD, saved to backend before execution
     * @param _user's address
     */
    function getEligibilityData(address _user) public view returns (bool isEligible, uint256 lockedValue, uint256 totalCollateralUSD) {
        lockedValue = lockedVeTokenUsdcValue(_user);
        totalCollateralUSD = collateralChecker.getTotalCollateralInUsdc(_user);
        uint256 requiredBeforePT = (totalCollateralUSD * requiredDepositRatio) / RATIO_DIVISOR;
        uint256 requiredValue = (requiredBeforePT * priceToleranceRatio) / RATIO_DIVISOR;
        isEligible = requiredValue != 0 && lockedValue >= requiredValue;
    }

    /**
     * @notice Returns DQ time of the user
     * @param _user's address
     */
    function getDqTime(address _user) public view returns (uint256) {
        return disqualifiedTime[_user];
    }

    /**
     * @notice Refresh token amount for eligibility by Keeper
     * @param user The address of the user
     * @return currentEligibility The current eligibility status of the user
     */
    function refreshByKeeper(address user, bool isEligible) external onlyCIC returns (bool currentEligibility) {
        if (user == address(0)) revert AddressZero();

        currentEligibility = isEligible;
        if (currentEligibility && disqualifiedTime[user] != 0) {
            disqualifiedTime[user] = 0;
        }
        lastEligibleStatus[user] = currentEligibility;
    }

    /********************** Internal functions ***********************/
}
