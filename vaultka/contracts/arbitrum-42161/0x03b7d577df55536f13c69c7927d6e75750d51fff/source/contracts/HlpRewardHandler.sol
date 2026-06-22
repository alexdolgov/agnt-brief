// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";
//import IWater
import "./interfaces/water/IWater.sol";

import { IRumVault } from "./interfaces/IRumVault.sol";
import { IHlpRewardHandler } from "./interfaces/IHlpRewardHandler.sol";

contract HlpRewardHandler is IHlpRewardHandler, OwnableUpgradeable, ReentrancyGuardUpgradeable, PausableUpgradeable {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    /* ========== STATE VARIABLES ========== */
    uint256 public constant MAX_BPS = 10_000;
    uint256 public accUSDCperTokens;
    uint256 public distributedUSDCRewards;
    uint256 public teamRewardBps;
    mapping(address => uint256) public debtRecordUSDC;

    uint256 public CEIL_SLOPE_1;
    uint256 public CEIL_SLOPE_2;

    uint256 public MAX_INTEREST_SLOPE_1;
    uint256 public MAX_INTEREST_SLOPE_2;
    address public waterVault;
    address public USDC;
    IERC20Upgradeable public podToken;

    uint256[50] private __gaps;

    /* ========== MODIFIERS ========== */
    //add a modifier that only allow the rum vault to call the function
    modifier onlyRumVault() {
        require(msg.sender == address(podToken), "Only rum vault");
        _;
    }

    modifier zeroAddress(address addr) {
        require(addr != address(0), "Zero address");
        _;
    }
    /* ========== EVENTS ========== */

    event Recovered(address token, uint256 amount);
    event RewardDistributionUpdated(uint256 teamBps);

    /* ========== CONSTRUCTOR ========== */

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address _podToken, address _waterVault, address _USDC) external initializer {
        podToken = IERC20Upgradeable(_podToken);
        waterVault = _waterVault;
        USDC = _USDC;
        __Ownable_init();
        __Pausable_init();
        // setSlopeParams(90 * 1e17, 95 * 1e17, 3_000, 7_000);
        // setTeamRewardBps(500);
    }

    // function to set teamRewardBps
    function setTeamRewardBps(uint256 _teamRewardBps) public onlyOwner {
        require(_teamRewardBps < MAX_BPS, "Invalid team reward bps");
        teamRewardBps = _teamRewardBps;
        emit RewardDistributionUpdated(teamRewardBps);
    }

    /* ========== SETTER BY OWNER ========== */

    function setSlopeParams(
        uint256 _ceilSlope1,
        uint256 _ceilSlope2,
        uint256 _max_interest_slope1,
        uint256 _max_interest_slope2
    ) public onlyOwner {
        CEIL_SLOPE_1 = _ceilSlope1;
        CEIL_SLOPE_2 = _ceilSlope2;
        MAX_INTEREST_SLOPE_1 = _max_interest_slope1;
        MAX_INTEREST_SLOPE_2 = _max_interest_slope2;
    }

    //function to set water vault to a new address
    function setWaterVault(address _waterVault) public onlyOwner zeroAddress(_waterVault) {
        waterVault = _waterVault;
    }

    //function setRumVault to a new address
    function setRumVault(address _rumVault) public onlyOwner zeroAddress(_rumVault) {
        podToken = IERC20Upgradeable(_rumVault);
    }

    /* ========== VIEWS ========== */

    function totalSupply() public view returns (uint256) {
        return IRumVault(address(podToken)).totalSupply();
    }

    function getTotalPosition(address account) public view returns (uint256) {
        return IRumVault(address(podToken)).getAggregatePosition(account);
    }

    function pendingRewardsUSDC(address account) public view returns (uint256) {
        if (totalSupply() == 0) {
            return 0;
        }
        uint256 UserTotalPODAmount = getTotalPosition(account);
        uint256 pendings = (UserTotalPODAmount * accUSDCperTokens) / 1e18 - debtRecordUSDC[account];
        return (pendings);
    }

    /* ========== CORE FUNCTIONS ========== */

    function getRumSplit(uint256 _amount) public view returns (uint256, uint256, uint256) {
        uint256 profit;
        uint256 ownerSplit = (_amount * teamRewardBps) / MAX_BPS;
        profit = _amount - ownerSplit;
        uint256 waterShare = _getProfitSplit();
        uint256 waterSplit = (profit * waterShare) / MAX_BPS;
        uint256 rumUserSplit = profit - waterSplit;

        return (ownerSplit, waterSplit, rumUserSplit);
    }

    function _getProfitSplit() internal view returns (uint256) {
        uint256 utilRate = IRumVault(address(podToken)).getUtilizationRate();
        uint256 waterSharePercent;
        if (utilRate <= CEIL_SLOPE_1) {
            waterSharePercent = MAX_INTEREST_SLOPE_1;
            //Between 90%-95% utilization - 30% -70%  rewards split to water
        } else if (utilRate <= CEIL_SLOPE_2) {
            waterSharePercent = (MAX_INTEREST_SLOPE_1 +
                ((utilRate - CEIL_SLOPE_1) * (MAX_INTEREST_SLOPE_2 - (MAX_INTEREST_SLOPE_1))) /
                (CEIL_SLOPE_2 - (CEIL_SLOPE_1)));
            //More then 95% utilization - 70%  rewards split to water
        } else {
            waterSharePercent = MAX_INTEREST_SLOPE_2;
        }
        return (waterSharePercent);
    }

    function distributeUSDC(uint256 _amount) public onlyRumVault {
        //split rewards to rum users
        if (totalSupply() > 0) {
            accUSDCperTokens += (_amount * 1e18) / totalSupply();
        }
    }

    function setDebtRecordUSDC(address _account) public onlyRumVault {
        uint256 currentUserTotalPODAmount = getTotalPosition(_account);
        debtRecordUSDC[_account] = (currentUserTotalPODAmount * accUSDCperTokens) / 1e18;
    }

    function distributeRewards(uint256 _teamAmount, uint256 _waterAmount) public onlyRumVault {
        IERC20Upgradeable(USDC).safeTransfer(owner(), _teamAmount);
        IWater(waterVault).increaseTotalUSDC(_waterAmount);
    }

    function claimUSDCRewards(address _account) public {
        address sender;
        if (msg.sender == address(podToken)) {
            sender = _account;
        } else {
            IRumVault(address(podToken)).handleAndCompoundRewards();
            sender = msg.sender;
        }
        // only rum vault can call this function
        uint256 USDCRewards = pendingRewardsUSDC(sender);
        if (USDCRewards > 0) {
            uint256 currentUserTotalPODAmount = getTotalPosition(sender);
            debtRecordUSDC[sender] = (currentUserTotalPODAmount * accUSDCperTokens) / 1e18;
            distributedUSDCRewards += USDCRewards;
            IERC20Upgradeable(USDC).safeTransfer(sender, USDCRewards);
        }
    }

    // Added to support recovering LP Rewards from other systems such as BAL to be distributed to holders
    function recoverERC20(address tokenAddress, uint256 tokenAmount) external onlyOwner {
        require(tokenAddress != address(podToken), "Cannot withdraw the staking token");
        IERC20Upgradeable(tokenAddress).safeTransfer(owner(), tokenAmount);
        emit Recovered(tokenAddress, tokenAmount);
    }

    //approve usdc.e to water
    function approveUSDC() public onlyOwner {
        IERC20Upgradeable(USDC).safeApprove(waterVault, type(uint256).max);
    }
}
