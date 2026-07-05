// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

import "./interfaces/ITradingFeeClaimedRecord.sol";
import "./interfaces/IPancakeProfile.sol";

interface IVeCake {
    function getUserInfo(address _user) external view returns (
        int128 amount,
        uint256 end,
        address cakePoolProxy,
        uint128 cakeAmount,
        uint48 lockEndTime,
        uint48 migrationTime,
        uint16 cakePoolType,
        uint16 withdrawFlag
    );

    function balanceOfAt(address _user, uint256 _blockNumber) external view returns (uint256);

    function balanceOfAtTime(address _user, uint256 _timestamp) external view returns (uint256);
}

contract TradingFeeRebate is Ownable, Pausable {
    using SafeERC20 for IERC20;

    /// @dev veCake address
    address public immutable veCakeAddress;

    uint256 public ratio;
    uint256 public constant RATION_PRECISION = 1000;

    /// @dev pancakeProfile address
    address public immutable pancakeProfileAddress;

    /// @dev previous TradingFeeRebate contract
    address public immutable prevTradingFeeRebateAddress;

    /// @dev the maximum value between start and claim time in a campaign
    uint256 public maxCampaignPeriod;

    /// @dev the minimum value between claim and claim end time in a campaign
    uint256 public minCampaignClaimPeriod;

    /// @dev the maximum value between claim and claim end time in a campaign
    uint256 public maxCampaignClaimPeriod;

    /// @dev this is the threshold of user's CAKE period in CakePool
    uint256 thresholdLockTime;

    /// @dev this is the threshold of user's CAKE amount in CakePool
    uint256 thresholdLockAmount;

    /// @dev this is the flag whether user's profile activated is needed
    bool needProfileIsActivated;

    /// @dev this is the minimum value of trading fee, lower than this value will not count into totalTradingFee
    uint256 public minAmountUSD;

    /// @notice Represents an incentive
    struct Incentive {
        uint256 totalRewardUnclaimed;
        uint256 totalReward;
        uint256 totalTradingFee;
        bytes32 proofRoot;
        uint256 campaignStart;
        uint256 campaignClaimTime;
        uint256 campaignClaimEndTime;
        bool isActivated;
        bool isDynamicReward;
    }

    /// @notice Represents an incentive reward
    struct IncentiveReward {
        address rewardToken;
        uint256 rewardPrice;
        uint256 rewardToLockRatio;
        uint256 rewardFeeRatio;
    }

    uint256 internal constant REWARD_RATIO_DENOMINATOR = 1e12;

    /// @dev string refers to the value of campaignId
    mapping(string => Incentive) public incentives;

    /// @dev string refers to the value of campaignId
    mapping(string => IncentiveReward) public incentiveRewards;

    /// @dev array of campaign Ids of all incentives
    string[] private incentiveCampaignIds;

    /// @dev mapping [user][token][claimed]
    mapping(address => mapping(address => uint256)) public userClaimedRecords;

    /// @dev mapping [incentive][user][bool]
    mapping(string => mapping(address => bool)) public userClaimedIncentives;

    /// @dev address of tradingFeeClaimedRecord
    address public tradingFeeClaimedRecord;

    /// @dev mapping [incentive][blockNumber]
    mapping(string => uint256) public incentiveEndBlockNumber;

    event IncentiveCreated(string campaignId, address rewardToken, uint256 campaignStart, uint256 campaignClaimTime, uint256 campaignClaimEndTime);
    event IncentivePrepared(string campaignId, uint256 totalTradingFee);
    event IncentiveRewardDeposited(string campaignId, uint256 amount, bool isDynamicReward);
    event IncentiveActivated(string campaignId);
    event RewardClaimed(string campaignId, address indexed sender, uint256 amount);
    event WithdrawAll(string campaignId, uint256 amount);
    event CampaignPeriodParamsUpdated(uint256 maxPeriod, uint256 minClaimPeriod, uint256 maxClaimPeriod);
    event UserQualificationUpdated(uint256 thresholdLockTime, uint256 thresholdLockAmount, bool needProfileIsActivated, uint256 minAmountUSD);
    event RewardTokenParamsUpdated(string campaignId, address indexed rewardToken, uint256 price, uint256 toLockRatio, uint256 feeRatio);
    event Pause();
    event Unpause();
    event TradingFeeClaimedRecordContractUpdated(address indexed topTradersExternal);
    event UpdateRatio(uint256 ratio);
    event UpdateEndBlockNumber(uint256 blockNumber);

    constructor(
        address _veCakeAddress,
        address _pancakeProfileAddress,
        address _prevTradingFeeRebateAddress
    ) {
        veCakeAddress = _veCakeAddress;
        pancakeProfileAddress = _pancakeProfileAddress;
        prevTradingFeeRebateAddress = _prevTradingFeeRebateAddress;

        ratio = 1000;

        // init max period
        maxCampaignPeriod = 30 days;
        // init min claim period
        minCampaignClaimPeriod = 10 minutes;
        // init max claim period
        maxCampaignClaimPeriod = 30 days;
    }

    /// @dev Create an incentive, can be called by owner only
    /// @param _campaignId the campaignId of the incentive
    /// @param _rewardToken the reward token of the incentive
    /// @param _rewardPrice the reward price of the incentive
    /// @param _rewardToLockRatio the reward to lock ratio of the incentive
    /// @param _rewardFeeRatio the reward fee ratio of the incentive
    /// @param _campaignStart the incentive start time
    /// @param _campaignClaimTime the incentive end time
    /// @param _campaignClaimEndTime the incentive end claim time, after this time user can't reward this incentive
    /// @param _emergency the flag if it is special situation
    function createIncentive(
        string calldata _campaignId,
        address _rewardToken,
        uint256 _rewardPrice,
        uint256 _rewardToLockRatio,
        uint256 _rewardFeeRatio,
        uint256 _campaignStart,
        uint256 _campaignClaimTime,
        uint256 _campaignClaimEndTime,
        bool _emergency
    ) external onlyOwner {
        require(_emergency || _campaignStart > block.timestamp, "campaignStart must be exceed than now");
        require(_emergency || _campaignClaimTime > _campaignStart, "campaignClaimTime must be exceed than campaignStart");
        require(_campaignStart < maxCampaignPeriod+block.timestamp, "period too long");
        require(_campaignClaimTime - _campaignStart < maxCampaignPeriod, "period too long");
        if (_campaignClaimEndTime > 0) {
            require(_campaignClaimEndTime - _campaignClaimTime > minCampaignClaimPeriod, "claim period too short");
            require(_campaignClaimEndTime - _campaignClaimTime < maxCampaignClaimPeriod, "claim period too long");
        }
        Incentive storage incentiveInstance = incentives[_campaignId];
        require(incentiveInstance.campaignClaimTime == 0, "incentive exists");
        incentiveInstance.totalRewardUnclaimed = 0;
        incentiveInstance.totalReward = 0;
        incentiveInstance.totalTradingFee = 0;
        incentiveInstance.proofRoot = bytes32(0);
        incentiveInstance.campaignStart = _campaignStart;
        incentiveInstance.campaignClaimTime = _campaignClaimTime;
        incentiveInstance.campaignClaimEndTime = _campaignClaimEndTime;
        incentiveInstance.isActivated = false;
        incentiveInstance.isDynamicReward = false;
        require(_rewardToken != address(0), "reward token address non-exist");
        require(_rewardPrice > 0, "reward price has to exceeds than 0");
        require(_rewardToLockRatio > 0 && _rewardToLockRatio <= REWARD_RATIO_DENOMINATOR, "ratio should less than the max value");
        require(_rewardFeeRatio > 0 && _rewardFeeRatio <= REWARD_RATIO_DENOMINATOR, "ratio should less than the max value");
        IncentiveReward storage incentiveRewardInstance = incentiveRewards[_campaignId];
        incentiveRewardInstance.rewardToken = _rewardToken;
        incentiveRewardInstance.rewardPrice = _rewardPrice;
        incentiveRewardInstance.rewardToLockRatio = _rewardToLockRatio;
        incentiveRewardInstance.rewardFeeRatio = _rewardFeeRatio;

        // push into Id array
        incentiveCampaignIds.push(_campaignId);

        emit IncentiveCreated(_campaignId, _rewardToken, _campaignStart, _campaignClaimTime, _campaignClaimEndTime);
    }

    /// @dev Prepare a created incentive, can be called by owner only
    /// @param _campaignId the campaignId of the incentive
    /// @param _totalTradingFee the total amountFeeUSD from swap transactions in this period of incentive
    /// @param _proofRoot the proof root of the merkle tree
    function prepareIncentive(
        string calldata _campaignId,
        uint256 _totalTradingFee,
        bytes32 _proofRoot
    ) external onlyOwner {
        Incentive storage incentiveInstance = incentives[_campaignId];
        require(incentiveInstance.campaignClaimTime != 0, "incentive non-exist");
        require(!incentiveInstance.isActivated, "incentive activated");
        require(_totalTradingFee > 0, "total volume should exceeds 0");
        incentiveInstance.totalTradingFee = _totalTradingFee;
        incentiveInstance.proofRoot = _proofRoot;

        emit IncentivePrepared(_campaignId, _totalTradingFee);
    }

    /// @dev Deposit reward token into a created incentive, can be called by owner only
    /// @param _campaignId the campaignId of the incentive
    /// @param _amount the total number of reward transfer into this contract
    /// @param _isDynamicReward the flag of dynamic incentive or not
    function depositIncentiveReward(string calldata _campaignId, uint256 _amount, bool _isDynamicReward) external onlyOwner {
        Incentive storage incentiveInstance = incentives[_campaignId];
        IncentiveReward memory incentiveRewardInstance = incentiveRewards[_campaignId];
        require(incentiveInstance.campaignClaimTime != 0, "incentive non-exist");
        require(!incentiveInstance.isActivated || incentiveInstance.isDynamicReward, "incentive activated");
        if (_isDynamicReward) {
            require(block.timestamp >= incentiveInstance.campaignClaimTime, "incentive non-ended");
            require(incentiveInstance.totalReward + _amount <= incentiveInstance.totalTradingFee * incentiveRewardInstance.rewardFeeRatio / REWARD_RATIO_DENOMINATOR, "dynamic reward too much");
            incentiveInstance.isDynamicReward = _isDynamicReward;
        }
        incentiveInstance.totalRewardUnclaimed = incentiveInstance.totalRewardUnclaimed + _amount;
        incentiveInstance.totalReward = incentiveInstance.totalReward + _amount;

        // reward transfer
        IERC20(incentiveRewardInstance.rewardToken).safeTransferFrom(msg.sender, address(this), _amount);

        emit IncentiveRewardDeposited(_campaignId, _amount, _isDynamicReward);
    }

    /// @dev Activate a created incentive, can be called by owner only
    /// @param _campaignId the campaignId of the incentive
    function activateIncentive(string calldata _campaignId) external onlyOwner {
        Incentive storage incentiveInstance = incentives[_campaignId];
        require(incentiveInstance.proofRoot != bytes32(0), "incentive proof empty");
        require(incentiveInstance.campaignClaimTime != 0, "incentive non-exist");
        require(incentiveInstance.totalReward > 0, "incentive reward empty");
        require(!incentiveInstance.isActivated, "incentive activated");

        // activate incentive
        incentiveInstance.isActivated = true;

        // check if the blockNumber is null
        if (incentiveEndBlockNumber[_campaignId] == 0) {
            incentiveEndBlockNumber[_campaignId] = block.number;
        }

        emit IncentiveActivated(_campaignId);
    }

    /// @dev Calculate a user can claim reward base on input volume, not practical he can claim in number.
    /// This is not going to verify with merkle proof.
    /// @param _campaignId the campaignId of the incentive
    /// @param _sender the reward claimer address
    /// @param _selfTradingFee the volume in the period of the incentive
    /// @return amount calculate by totalReward * selfTradingFee / totalTradingFee
    function canClaim(string calldata _campaignId, address _sender, uint256 _selfTradingFee) public view returns (uint256 amount) {
        if (ITradingFeeClaimedRecord(tradingFeeClaimedRecord).hasClaimedTopTraders(_sender)) {
            amount = 0;
        } else if (minAmountUSD > 0 && _selfTradingFee < minAmountUSD) {
            amount = 0;
        } else if (prevTradingFeeRebateAddress != address(0) && TradingFeeRebate(prevTradingFeeRebateAddress).userClaimedIncentives(_campaignId, _sender)) {
            amount = 0;
        } else {
            if (_checkQualified(_campaignId, _sender) && !userClaimedIncentives[_campaignId][_sender]) {
                Incentive memory incentiveInstance = incentives[_campaignId];

                if (incentiveInstance.totalTradingFee > 0) {
                    if (incentiveInstance.campaignClaimEndTime == 0 || incentiveInstance.campaignClaimEndTime > block.timestamp ) {

                        IncentiveReward memory incentiveRewardInstance = incentiveRewards[_campaignId];

                        uint256 amountUSD;
                        uint8 rewardTokenDecimal = IERC20Metadata(incentiveRewardInstance.rewardToken).decimals();

                        // calculate the reward
                        if (!incentiveInstance.isDynamicReward) {
                            amountUSD = _selfTradingFee * incentiveInstance.totalReward  / incentiveInstance.totalTradingFee;
                        } else {
                            amountUSD = _selfTradingFee * incentiveRewardInstance.rewardFeeRatio / REWARD_RATIO_DENOMINATOR;
                        }

                        amount = amountUSD * (10 ** rewardTokenDecimal) / incentiveRewardInstance.rewardPrice;

                        uint256 lockAmount = _getUserLockedAmount(_campaignId, _sender, incentiveInstance.campaignClaimTime);

                        if (amount > lockAmount * incentiveRewardInstance.rewardToLockRatio / REWARD_RATIO_DENOMINATOR) {
                            amount = lockAmount * incentiveRewardInstance.rewardToLockRatio / REWARD_RATIO_DENOMINATOR;
                        }
                    }
                }
            }
        }
    }

    /// @dev Return array of all the reward user can claim base on input volumes, not practical he can claim in number.
    /// @param _campaignIds the array of campaignId of the incentive
    /// @param _selfAddresses the reward claimer addresses
    /// @param _selfTradingFees the array of trading fee in the period of the incentive
    function canClaimMulti(string[] calldata _campaignIds, address[] calldata _selfAddresses, uint256[] calldata _selfTradingFees) external view returns (uint256[] memory amounts) {
        require(_campaignIds.length == _selfTradingFees.length, "parameters length not same");

        // calculate each amount in array
        uint256 len = _campaignIds.length;
        amounts = new uint256[](len);
        for (uint256 i = 0; i < len; i++) {
            amounts[i] = canClaim(_campaignIds[i], _selfAddresses[i], _selfTradingFees[i]);
        }
    }

    /// @dev A user can claim reward when the incentive is ended
    /// @param _campaignId the campaignId of the incentive
    /// @param _merkleProof the merkle proof from user's address and volume
    /// @param _selfTradingFee the trading fee in the period of the incentive
    function claimReward(string calldata _campaignId, bytes32[] calldata _merkleProof, uint256 _selfTradingFee) public whenNotPaused {
        require(_selfTradingFee > 0, "volume can't be negative");
        Incentive storage incentiveInstance = incentives[_campaignId];
        require(incentiveInstance.campaignClaimTime < block.timestamp, "too early");
        require(incentiveInstance.isActivated, "incentive not activated");
        require(incentiveInstance.totalReward > 0, "incentive is non-exist");
        if (incentiveInstance.campaignClaimEndTime > 0) {
            require(incentiveInstance.campaignClaimEndTime > block.timestamp, "incentive has over claim end time");
        }
        require(!userClaimedIncentives[_campaignId][msg.sender], "user already claimed this incentive");
        bytes32 leaf = _encodedHash(msg.sender, _selfTradingFee);
        require(MerkleProof.verify(_merkleProof, incentiveInstance.proofRoot, leaf), "invalid merkle proof");

        // calculate the reward
        uint256 amount = canClaim(_campaignId, msg.sender, _selfTradingFee);
        require(amount > 0, "incentive reward should exceed than 0");
        require(incentiveInstance.totalRewardUnclaimed >= amount, "incentive balance is not enough");

        // update incentive mapping
        incentiveInstance.totalRewardUnclaimed = incentiveInstance.totalRewardUnclaimed - amount;

        IncentiveReward memory incentiveRewardInstance = incentiveRewards[_campaignId];

        address rewardToken = incentiveRewardInstance.rewardToken;

        // update record mapping
        userClaimedRecords[msg.sender][rewardToken] += amount;

        // update user claimed incentives
        userClaimedIncentives[_campaignId][msg.sender] = true;

        // update hasClaimed
        ITradingFeeClaimedRecord(tradingFeeClaimedRecord).updateHasClaimedRebate(msg.sender);

        // reward transfer
        IERC20(rewardToken).safeTransfer(msg.sender, amount);

        emit RewardClaimed(_campaignId, msg.sender, amount);
    }

    /// @dev A user can claim reward from incentive array when they are all ended
    /// @param _campaignIds the array of campaignId of the incentive
    /// @param _merkleProofs the array of merkle proof from user's address and volume
    /// @param _selfTradingFees the array of trading fee in the period of the incentive
    function claimRewardMulti(string[] calldata _campaignIds, bytes32[][] calldata _merkleProofs, uint256[] calldata _selfTradingFees) external {
        uint256 len = _campaignIds.length;
        require(len == _merkleProofs.length, "parameters length not same");
        require(len == _selfTradingFees.length, "parameters length not same");

        for (uint256 i = 0; i < len; i++) {
            claimReward(_campaignIds[i], _merkleProofs[i], _selfTradingFees[i]);
        }
    }

    /// @dev Withdraw all the reward in some cases, can be called by owner only
    /// @param _campaignId the campaignId of the incentive
    function withdrawAll(string calldata _campaignId) external onlyOwner {
        Incentive storage incentiveInstance = incentives[_campaignId];
        require(incentiveInstance.totalRewardUnclaimed > 0, "incentive balance is empty");
        uint256 amount = incentiveInstance.totalRewardUnclaimed;
        incentiveInstance.totalRewardUnclaimed = 0;
        incentiveInstance.totalReward -= amount;
        incentiveInstance.isActivated = false;
        require(amount >= 0, "incentive unclaimed reward empty");
        IncentiveReward memory incentiveRewardInstance = incentiveRewards[_campaignId];

        // reward transfer
        IERC20(incentiveRewardInstance.rewardToken).safeTransfer(msg.sender, amount);

        emit WithdrawAll(_campaignId, amount);
    }

    /// @dev Update the period of campaign between start and claim time.
    /// @param _maxPeriod the value of maxCampaignPeriod
    function updateCampaignPeriodParams(uint256 _maxPeriod, uint256 _minClaimPeriod, uint256 _maxClaimPeriod) external onlyOwner {
        require(_maxClaimPeriod > _minClaimPeriod, "max claim period should larger than min claim period");
        maxCampaignPeriod = _maxPeriod;
        minCampaignClaimPeriod = _minClaimPeriod;
        maxCampaignClaimPeriod = _maxClaimPeriod;

        emit CampaignPeriodParamsUpdated(_maxPeriod, _minClaimPeriod, _maxClaimPeriod);
    }

    /// @dev Update the user qualification conditions of each incentive.
    /// @param _thresholdLockTime the threshold of CAKE locked period
    /// @param _thresholdLockAmount the threshold of CAKE locked amount
    /// @param _needProfileIsActivated the flag whether profile activated is needed
    /// @param _minAmountUSD the minimum volume that user can claim reward
    function updateUserQualification(
        uint256 _thresholdLockTime,
        uint256 _thresholdLockAmount,
        bool _needProfileIsActivated,
        uint256 _minAmountUSD
    ) external onlyOwner {
        thresholdLockTime = _thresholdLockTime;
        thresholdLockAmount = _thresholdLockAmount;
        needProfileIsActivated = _needProfileIsActivated;
        minAmountUSD = _minAmountUSD;
        emit UserQualificationUpdated(_thresholdLockTime, _thresholdLockAmount, _needProfileIsActivated, _minAmountUSD);
    }

    /// @dev Update the price of reward token, only called by the owner.
    /// @param _rewardToken the address of reward token
    /// @param _rewardPrice the reward price of the incentive
    /// @param _rewardToLockRatio the reward to lock ratio of the incentive
    /// @param _rewardFeeRatio the reward fee ratio of the incentive
    function updateRewardTokenParams(string memory _campaignId, address _rewardToken, uint256 _rewardPrice, uint256 _rewardToLockRatio, uint256 _rewardFeeRatio) external onlyOwner {
        Incentive storage incentiveInstance = incentives[_campaignId];
        require(incentiveInstance.campaignClaimTime > block.timestamp, "too late to update reward token parameters");
        require(_rewardToken != address(0), "reward token address non-exist");
        uint8 rewardTokenDecimal = IERC20Metadata(_rewardToken).decimals();
        require(_rewardPrice > 0 && _rewardPrice < 1000000*10**rewardTokenDecimal, "reward price should not be too crazy");
        require(_rewardToLockRatio > 0 && _rewardToLockRatio <= REWARD_RATIO_DENOMINATOR, "ratio should less than the max value");
        require(_rewardFeeRatio > 0 && _rewardFeeRatio <= REWARD_RATIO_DENOMINATOR, "ratio should less than the max value");
        IncentiveReward storage incentiveRewardInstance = incentiveRewards[_campaignId];
        incentiveRewardInstance.rewardToken = _rewardToken;
        incentiveRewardInstance.rewardPrice = _rewardPrice;
        incentiveRewardInstance.rewardToLockRatio = _rewardToLockRatio;
        incentiveRewardInstance.rewardFeeRatio = _rewardFeeRatio;
        emit RewardTokenParamsUpdated(_campaignId, _rewardToken, _rewardPrice, _rewardToLockRatio, _rewardFeeRatio);
    }

    /// @dev Update the tradingFeeClaimedRecord address
    /// @param _tradingFeeClaimedRecord the address of tradingFeeClaimedRecord contract
    function updateTradingFeeClaimedRecordContract(address _tradingFeeClaimedRecord) external onlyOwner {
        require(_tradingFeeClaimedRecord != address(0), "tradingFeeClaimedRecord contract address should not be 0");
        tradingFeeClaimedRecord = _tradingFeeClaimedRecord;
        emit TradingFeeClaimedRecordContractUpdated(_tradingFeeClaimedRecord);
    }

    /**
     * @notice update ratio for veCake calculation.
     * @param _newRatio: new ratio
     */
    function updateRatio(uint256 _newRatio) external onlyOwner {
        require(_newRatio <= RATION_PRECISION, "updateRatio: Invalid ratio");
        require(ratio != _newRatio, "updateRatio: Ratio not changed");
        ratio = _newRatio;
        emit UpdateRatio(ratio);
    }

    /**
     * @notice update end block number for veCake calculation.
     * @param _newBlockNumber: new block number
     */
    function updateEndBlockNumber(string memory _campaignId, uint256 _newBlockNumber) external onlyOwner {
        Incentive storage incentiveInstance = incentives[_campaignId];
        require(incentiveInstance.campaignClaimTime < block.timestamp, "too early to update end block number parameters");
        incentiveEndBlockNumber[_campaignId] = _newBlockNumber;
        emit UpdateEndBlockNumber(_newBlockNumber);
    }

    /**
     * @notice Triggers stopped state
     * @dev Only possible when contract not paused.
     */
    function pause() external onlyOwner whenNotPaused {
        _pause();
        emit Pause();
    }

    /**
     * @notice Returns to normal state
     * @dev Only possible when contract is paused.
     */
    function unpause() external onlyOwner whenPaused {
        _unpause();
        emit Unpause();
    }

    /// @dev CleanUp incentiveCampaignIds, erase test data, can be called by owner only
    function cleanUpIncentiveCampaignIds() external onlyOwner {
        // delete it
        delete incentiveCampaignIds;
    }

    /// @dev return all incentive campaign Id array
    function getIncentiveCampaignIds() external view returns (string[] memory) {
        return incentiveCampaignIds;
    }

    /// @dev return user total claimed reward by sender
    function getTotalClaimedReward(address _token, address _sender) external view returns (uint256) {
        return userClaimedRecords[_sender][_token];
    }

    /// @dev return threshold and minAmountUSD
    function getUserQualification() external view returns (uint256, uint256, bool, uint256) {
        return (thresholdLockTime, thresholdLockAmount, needProfileIsActivated, minAmountUSD);
    }

    /// @dev return encode bytes32 hash from sender address and volume
    function getEncodedHash(address _sender, uint256 _volume) external pure returns (bytes32) {
        return _encodedHash(_sender, _volume);
    }

    /// @dev return user and proxy locked amount from veCake contract
    function getUserLockedAmount(string calldata _campaignId, address _sender) external view returns (uint256) {
        Incentive memory incentiveInstance = incentives[_campaignId];
        uint256 lockAmount = _getUserLockedAmount(_campaignId, _sender, incentiveInstance.campaignClaimTime);
        return lockAmount;
    }

    /// @dev return if user's locked amount is eligible with threshold
    function isEligibleLockAmount(string calldata _campaignId, address _sender) external view returns (bool) {
        return _checkQualified(_campaignId, _sender);
    }

    // @dev Check if the user is qualified to claim reward
    function _checkQualified(string calldata _campaignId, address _sender) internal view returns (bool) {
        if (needProfileIsActivated) {
            bool isActive = IPancakeProfile(pancakeProfileAddress).getUserStatus(_sender);
            if (!isActive) {
                return false;
            }
        }
        Incentive memory incentiveInstance = incentives[_campaignId];
        uint256 lockAmount = _getUserLockedAmount(_campaignId, _sender, incentiveInstance.campaignClaimTime);
        if (lockAmount >= thresholdLockAmount) {
            return true;
        }
        return false;
    }

    /// @dev Encoded bytes32 hash from sender address and volume
    function _encodedHash(address _sender, uint256 _volume) internal pure returns (bytes32 hash) {
        hash = keccak256(bytes.concat(keccak256(abi.encodePacked(_sender, _volume))));
    }

    /**
     * @notice get user and proxy locked amount from veCake contract
     * @param _user user's address
     * @param _endTime timestamp to calculate user's veCake amount
     */
    function _getUserLockedAmount(string calldata _campaignId, address _user, uint256 _endTime) internal view returns (uint256) {
        uint256 lockedAmount;

        if (block.timestamp < _endTime) {
            // get native
            uint256 veNative = IVeCake(veCakeAddress).balanceOfAtTime(_user, _endTime);

            // get proxy/migrated
            uint256 veMigrate = 0;
            ( , ,address cakePoolProxy, , , , , )  = IVeCake(veCakeAddress).getUserInfo(_user);
            if (cakePoolProxy != address(0)) {
                veMigrate = IVeCake(veCakeAddress).balanceOfAtTime(cakePoolProxy, _endTime);
            }

            lockedAmount = (veNative + veMigrate) * ratio / RATION_PRECISION;
        } else {
            // get native
            uint256 veNative = IVeCake(veCakeAddress).balanceOfAt(_user, incentiveEndBlockNumber[_campaignId]);

            // get proxy/migrated
            uint256 veMigrate = 0;
            ( , ,address cakePoolProxy, , , , , )  = IVeCake(veCakeAddress).getUserInfo(_user);
            if (cakePoolProxy != address(0)) {
                veMigrate = IVeCake(veCakeAddress).balanceOfAt(cakePoolProxy, incentiveEndBlockNumber[_campaignId]);
            }

            lockedAmount = (veNative + veMigrate) * ratio / RATION_PRECISION;
        }

        return lockedAmount;
    }
}