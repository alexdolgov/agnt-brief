// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.9;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

import {Operator} from "./owner/Operator.sol";
import {IOracle} from "./interfaces/IOracle.sol";
import {IModernMasonry} from "./interfaces/IModernMasonry.sol";

/// @title Treasury which utilizes two ratios as a distribution deciding condition
/// @notice Whenever prices of two configured token are over the specified ratios, the reward tokens are distributed
contract ModernTreasury is ReentrancyGuard, AccessControl {
    using SafeERC20 for IERC20;

    /// Recoverer role
    bytes32 public constant RECOVERER_ROLE = keccak256("RECOVERER_ROLE");

    /// Reward token admin role
    bytes32 public constant REWARD_TOKEN_ADMIN_ROLE = keccak256("REWARD_TOKEN_ADMIN_ROLE");

    /// Oracle admin role
    bytes32 public constant ORACLE_ADMIN_ROLE = keccak256("ORACLE_ADMIN_ROLE");

    /// Pauser role
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

    /// DAO fund admin role
    bytes32 public constant DAO_FUND_ADMIN_ROLE = keccak256("DAO_FUND_ADMIN_ROLE");

    /// DEV fund admin role
    bytes32 public constant DEV_FUND_ADMIN_ROLE = keccak256("DEV_FUND_ADMIN_ROLE");

    /// Reward admin role
    bytes32 public constant REWARD_ADMIN_ROLE = keccak256("REWARD_ADMIN_ROLE");

    /// Length of an epoch
    uint256 public epochLength;

    /// When does the treasury start
    uint256 public firstEpochStartTime;
    /// Current epoch counter
    uint256 public currentEpoch;

    /// Ratio for the first token pair which needs to be met to distribute rewards
    uint256 public expectedRatioOne;
    /// Ratio for the second token pair which needs to be met to distribute rewards
    uint256 public expectedRatioTwo;

    /// Price of the main token in the first pair at the end of the previous epoch
    uint256 public previousEpochRatioOne;
    /// Price of the main token in the second pair at the end of the previous epoch
    uint256 public previousEpochRatioTwo;

    uint32 public secondsAgoTwap = 60 * 7;

    /// Amount of reward tokens distributed pair epoch if ratios are met
    uint256 public tokensPerEpoch;

    /// Percentage of rewards which are transferred to DAO fund
    uint256 public daoFundSharedPercent;
    /// Percentage of rewards which are transferred to DEV fund
    uint256 public devFundSharedPercent;

    /// Is printing rewards paused, regardless of ratios
    bool public rewardsPaused;

    /// Main token in the first pair
    address public ratioOneToken;
    /// Main token in the second pair
    address public ratioTwoToken;

    /// Address of DAO fund
    address public daoFund;
    /// Address of DEV fund
    address public devFund;

    /// Address of Masonry
    address public masonry;

    /// Token distributed as reward
    IERC20 public rewardToken;
    /// Oracle for the first pair, used to fetch average price
    IOracle public ratioOneOracle;
    /// Oracle for the second pair, used to fetch average price
    IOracle public ratioTwoOracle;

    /* EVENTS */

    event DaoFundFunded(address indexed triggeredBy, address daoFundAddress, uint256 amount);
    event DevFundFunded(address indexed triggeredBy, address devFundAddress, uint256 amount);
    event MasonryFunded(address indexed triggeredBy, uint256 rewardsAmount);
    event CalledAllocateRewards(address indexed triggeredBy, uint256 ratioOneTokenPrice, uint256 ratioTwoTokenPrice);
    event RecoveredUnsupported(address indexed triggeredBy, address token, uint256 amount);
    event TokensPerEpochUpdated(address indexed triggeredBy, uint256 oldTokensPerEpoch, uint256 newTokensPerEpoch);
    event ExpectedRatioOneUpdated(address indexed triggeredBy, uint256 oldRatioOne, uint256 newRatioOne);
    event ExpectedRatioTwoUpdated(address indexed triggeredBy, uint256 oldRatioTwo, uint256 newRatioTwo);
    event RewardsPaused(address indexed triggeredBy);
    event RewardsUnpaused(address indexed triggeredBy);
    event DaoFundUpdated(address indexed triggeredBy, address oldDaoFund, address newDaoFund);
    event DevFundUpdated(address indexed triggeredBy, address oldDevFund, address newDevFund);
    event DaoFundSharedPercentUpdated(
        address indexed triggeredBy,
        uint256 oldDaoFundSharedPercent,
        uint256 newDaoFundSharedPercent
    );
    event DevFundSharedPercentUpdated(
        address indexed triggeredBy,
        uint256 oldDevFundSharedPercent,
        uint256 newDevFundSharedPercent
    );
    event RatioOneOracleUpdated(address indexed triggeredBy, address oldRatioOneOracle, address newRatioOneOracle);
    event RatioTwoOracleUpdated(address indexed triggeredBy, address oldRatioTwoOracle, address newRatioTwoOracle);
    event MasonryUpdated(address indexed triggeredBy, address oldMasonry, address newMasonry);

    /// Verifies whether epoch is ready to be advanced
    modifier checkEpoch() {
        require(block.timestamp >= nextEpochPoint(), "Epoch not ready yet");

        _;

        currentEpoch = currentEpoch + 1;
    }

    /// Verifies whether the treasury is started
    modifier checkIfStarted() {
        require(block.timestamp >= firstEpochStartTime, "Treasury not started yet");

        _;
    }

    /// Default constructor of ModernTreasury
    /// @dev verrifies whether the chosen firstEpochStartTime is in the future, and whether the provided addresses are not 0
    /// @param _epochLength Length of an epoch in seconds
    /// @param _firstEpochStartTime Start time of the treasury epochs
    /// @param _expectedRatioOne Expected ratio for the main token in first pair, that needs to be met to emit rewards
    /// @param _expectedRatioTwo Expected ratio for the main token in second pair, that needs to be met to emit rewards
    /// @param _rewardToken Token distributed as reward
    /// @param _ratioOneOracle Oracle contract for the first token ratio
    /// @param _ratioOneToken Token to be used as the main one in calculating the first ratio
    /// @param _ratioTwoOracle Oracle contract for the second token ratio
    /// @param _ratioTwoToken Token to be used as the main one in calculating the second ratio
    constructor(
        uint256 _epochLength,
        uint256 _firstEpochStartTime,
        uint256 _expectedRatioOne,
        uint256 _expectedRatioTwo,
        address _rewardToken,
        address _ratioOneOracle,
        address _ratioOneToken,
        address _ratioTwoOracle,
        address _ratioTwoToken
    ) {
        require(_epochLength > 1 hours, "Epoch cannot be shorter than 1 hour");
        require(_firstEpochStartTime > block.timestamp, "Start time needs to be in future");
        require(_expectedRatioOne > 0, "Expected ratio one cannot be 0");
        require(_expectedRatioTwo > 0, "Expected ratio two cannot be 0");
        require(_rewardToken != address(0), "Reward token cannot be address 0");
        require(_ratioOneOracle != address(0), "Ratio one oracle cannot be address 0");
        require(_ratioOneToken != address(0), "Ratio one token cannot be address 0");
        require(_ratioTwoOracle != address(0), "Ratio two oracle cannot be address 0");
        require(_ratioTwoToken != address(0), "Ratio two token cannot be address 0");

        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);

        epochLength = _epochLength;

        firstEpochStartTime = _firstEpochStartTime;

        expectedRatioOne = _expectedRatioOne;
        expectedRatioTwo = _expectedRatioTwo;

        rewardToken = IERC20(_rewardToken);

        ratioOneOracle = IOracle(_ratioOneOracle);
        ratioOneToken = _ratioOneToken;

        ratioTwoOracle = IOracle(_ratioTwoOracle);
        ratioTwoToken = _ratioTwoToken;
    }

    /// Returns the next epoch timestamp
    function nextEpochPoint() public view returns (uint256) {
        return firstEpochStartTime + (currentEpoch * epochLength);
    }

    /// Returns a TWAP (Time Weighted Average Price) of the main token calculated since the last oracle update until now, for the first token ratio
    function getRatioOneMainTokenTwap() public view returns (uint256) {
        try ratioOneOracle.twap(ratioOneToken, 1e18) returns (uint144 price) {
            return uint256(price);
        } catch {
            revert("Treasury: failed to consult ratio one token twap from the oracle");
        }
    }

    /// Returns a TWAP (Time Weighted Average Price) of the main token calculated since the last oracle update until now, for the first token ratio
    function getRatioTwoMainTokenTwap() public view returns (uint256) {
        try ratioTwoOracle.twap(ratioTwoToken, 1e18) returns (uint144 price) {
            return uint256(price);
        } catch {
            revert("Treasury: failed to consult ratio two token twap from the oracle");
        }
    }

    /// Whenever both token price ratios are met, allocates rewards to the masonry
    /// @dev Uses configured oracles to fetch the token prices averaged over an epoch. Additionally allocates a configured percentage of rewards to the DAO fund and DEV fund.
    function allocateRewards() external nonReentrant checkIfStarted checkEpoch {
        require(masonry != address(0), "Masonry address cannot be 0");

        previousEpochRatioOne = getRatioOneMainTokenTwap();
        previousEpochRatioTwo = getRatioTwoMainTokenTwap();

        if (!rewardsPaused && tokensPerEpoch > 0) {
            if (previousEpochRatioOne > expectedRatioOne && previousEpochRatioTwo > expectedRatioTwo) {
                require(
                    rewardToken.balanceOf(address(this)) >= tokensPerEpoch,
                    "Not enough reward tokens in the contract"
                );

                uint256 _daoFundSharedAmount = 0;
                if (daoFundSharedPercent > 0) {
                    _daoFundSharedAmount = (tokensPerEpoch * daoFundSharedPercent) / 10000;
                    rewardToken.safeTransfer(daoFund, _daoFundSharedAmount);
                    emit DaoFundFunded(msg.sender, daoFund, _daoFundSharedAmount);
                }

                uint256 _devFundSharedAmount = 0;
                if (devFundSharedPercent > 0) {
                    _devFundSharedAmount = (tokensPerEpoch * devFundSharedPercent) / 10000;
                    rewardToken.safeTransfer(devFund, _devFundSharedAmount);
                    emit DevFundFunded(msg.sender, devFund, _devFundSharedAmount);
                }

                uint256 rewardsAmount = tokensPerEpoch - (_daoFundSharedAmount + _devFundSharedAmount);
                rewardToken.safeApprove(masonry, 0);
                rewardToken.safeApprove(masonry, rewardsAmount);

                IModernMasonry(masonry).allocateRewards(rewardsAmount);
                emit MasonryFunded(msg.sender, rewardsAmount);
            }
        }

        emit CalledAllocateRewards(msg.sender, previousEpochRatioOne, previousEpochRatioTwo);
    }

    /// Recovers tokens that are not planned to be used in the contract
    /// @dev Sends tokens to the operator
    function recoverUnsupportedTokens(IERC20 _token) external onlyRole(RECOVERER_ROLE) {
        require(address(_token) != address(rewardToken), "Cannot recover rewardToken");
        uint256 amountToRecover = _token.balanceOf(address(this));
        _token.safeTransfer(msg.sender, amountToRecover);
        emit RecoveredUnsupported(msg.sender, address(_token), amountToRecover);
    }

    /// Set tokensPerEpoch - the amount of reward tokens emitted each epoch when both ratios are met
    /// @param _newTokensPerEpoch New value of tokens per epoch
    function setTokensPerEpoch(uint256 _newTokensPerEpoch) external onlyRole(REWARD_ADMIN_ROLE) {
        uint256 oldTokensPerEpoch = tokensPerEpoch;
        tokensPerEpoch = _newTokensPerEpoch;
        emit TokensPerEpochUpdated(msg.sender, oldTokensPerEpoch, _newTokensPerEpoch);
    }

    /// Set price ratio for the main token in the first token pair, which needs to be met to emit rewards
    /// @param _newExpectedRatioOne New value for the price ratio in the first token pair
    function setExpectedRatioOne(uint256 _newExpectedRatioOne) external onlyRole(ORACLE_ADMIN_ROLE) {
        uint256 oldExpectedRatioOne = expectedRatioOne;
        expectedRatioOne = _newExpectedRatioOne;
        emit ExpectedRatioOneUpdated(msg.sender, oldExpectedRatioOne, _newExpectedRatioOne);
    }

    /// Set price ratio for the main token in the second token pair, which needs to be met to emit rewards
    /// @param _newExpectedRatioTwo New value for the price ratio in the second token pair
    function setExpectedRatioTwo(uint256 _newExpectedRatioTwo) external onlyRole(ORACLE_ADMIN_ROLE) {
        uint256 oldExpectedRatioTwo = expectedRatioTwo;
        expectedRatioTwo = _newExpectedRatioTwo;
        emit ExpectedRatioTwoUpdated(msg.sender, oldExpectedRatioTwo, _newExpectedRatioTwo);
    }

    /// Set how many seconds are used in twap calculation
    function setSecondsAgoTwap(uint32 _newSecondsAgoTwap) external onlyRole(ORACLE_ADMIN_ROLE) {
        secondsAgoTwap = _newSecondsAgoTwap;
    }

    /// Set new reward token address
    function setRewardToken(IERC20 _rewardToken) external onlyRole(REWARD_TOKEN_ADMIN_ROLE) {
        rewardToken = _rewardToken;
    }

    /// Pauses rewards from being emitted independent of the ratios
    function pauseRewards() external onlyRole(PAUSER_ROLE) {
        require(!rewardsPaused, "Rewards already paused");
        rewardsPaused = true;
        emit RewardsPaused(msg.sender);
    }

    /// Resumes rewards emissions
    function unpauseRewards() external onlyRole(PAUSER_ROLE) {
        require(rewardsPaused, "Rewards already unpaused");
        rewardsPaused = false;
        emit RewardsUnpaused(msg.sender);
    }

    /// Set new DAO fund address
    /// @param _newDaoFund New DAO fund address
    function setDaoFund(address _newDaoFund) external onlyRole(DAO_FUND_ADMIN_ROLE) {
        require(_newDaoFund != address(0), "Dao Fund cannot be 0 address");
        address oldDaoFund = daoFund;
        daoFund = _newDaoFund;
        emit DaoFundUpdated(msg.sender, oldDaoFund, _newDaoFund);
    }

    /// Set new DEV fund address
    /// @param _newDevFund New DEV fund address
    function setDevFund(address _newDevFund) external onlyRole(DEV_FUND_ADMIN_ROLE) {
        require(_newDevFund != address(0), "Dev Fund cannot be 0 address");
        address oldDevFund = devFund;
        devFund = _newDevFund;
        emit DevFundUpdated(msg.sender, oldDevFund, _newDevFund);
    }

    /// Set percentage of rewards which will be send to DAO fund
    /// @param _newDaoFundSharedPercent New percentage of rewards sent to DAO fund whenever rewards are emitted (1% == 100)
    function setDaoFundSharedPercent(uint256 _newDaoFundSharedPercent) external onlyRole(DAO_FUND_ADMIN_ROLE) {
        require(_newDaoFundSharedPercent < 3000, "Dao fund share cannot be higher than 30%");
        uint256 oldDaoFundSharedPercent = daoFundSharedPercent;
        daoFundSharedPercent = _newDaoFundSharedPercent;
        emit DaoFundSharedPercentUpdated(msg.sender, oldDaoFundSharedPercent, _newDaoFundSharedPercent);
    }

    /// Set percentage of rewards which will be send to DEV fund
    /// @param _newDevFundSharedPercent New percentage of rewards sent to DEV fund whenever rewards are emitted (1% == 100)
    function setDevFundSharedPercent(uint256 _newDevFundSharedPercent) external onlyRole(DEV_FUND_ADMIN_ROLE) {
        require(_newDevFundSharedPercent < 3000, "Dev fund share cannot be higher than 30%");
        uint256 oldDevFundSharedPercent = devFundSharedPercent;
        devFundSharedPercent = _newDevFundSharedPercent;
        emit DevFundSharedPercentUpdated(msg.sender, oldDevFundSharedPercent, _newDevFundSharedPercent);
    }

    /// Set address of oracle used for calculating ratio for the first pair
    /// @param _newRatioOneOracle New address of oracle for the first pair
    function setRatioOneOracle(address _newRatioOneOracle) external onlyRole(ORACLE_ADMIN_ROLE) {
        require(_newRatioOneOracle != address(0), "Ratio One oracle cannot be 0 address");
        address oldRatioOneOracle = address(ratioOneOracle);
        ratioOneOracle = IOracle(_newRatioOneOracle);
        emit RatioOneOracleUpdated(msg.sender, oldRatioOneOracle, _newRatioOneOracle);
    }

    /// Set address of oracle used for calculating ratio for the second pair
    /// @param _newRatioTwoOracle New address of oracle for the second pair
    function setRatioTwoOracle(address _newRatioTwoOracle) external onlyRole(ORACLE_ADMIN_ROLE) {
        require(_newRatioTwoOracle != address(0), "Ratio Two oracle cannot be 0 address");
        address oldRatioTwoOracle = address(ratioTwoOracle);
        ratioTwoOracle = IOracle(_newRatioTwoOracle);
        emit RatioTwoOracleUpdated(msg.sender, oldRatioTwoOracle, _newRatioTwoOracle);
    }

    /// Set address of masonry
    /// @param _newMasonry New address of masonry
    function setMasonry(address _newMasonry) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_newMasonry != address(0), "Masonry address cannot be 0");
        address oldMasonry = masonry;
        masonry = _newMasonry;
        emit MasonryUpdated(msg.sender, oldMasonry, _newMasonry);
    }
}
