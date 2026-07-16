// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";

import "./interfaces/IRewardRegistry.sol";
import "./interfaces/IAlgebraPool.sol";

contract RewarderV4 is Initializable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;
    // structs
    struct MerkleTree {
        bytes32 merkleRoot;
        string ipfsHash;
    }

    struct Claim {
        uint256 amount;
        uint48 timestamp;
    }

    struct RewardInfo {
        IERC20 token;
        bool isNative;
        uint32 startTimestamp;
        uint32 endTimestamp;
        uint256 rewardPerSec;
    }

    struct TokenData {
        address addr;
        uint8 decimals;
        string symbol;
        uint256 poolBalance;
    }

    struct ExtensiveRewardInfo {
        RewardInfo rewardInfo;
        TokenData token0;
        TokenData token1;
        // rewardToken data
        string rewardTokenSymbol;
        uint8 rewardTokenDecimals;
    }

    struct ClaimData {
        address user;
        uint256 position;
        address token;
        uint256 amount;
        bool isNative;
        bytes32[] proof;
    }

    // variables
    MerkleTree public tree;
    MerkleTree public lastTree;
    IRewardRegistry public REWARD_REGISTRY;
    uint48 public lastTreeUpdate;
    mapping(address => mapping(uint256 => mapping(address => Claim))) public claimed; // user -> position id -> token
    RewardInfo[] public rewardInfo;

    uint32 public rewardStartTime; // the start time of first rewards.
    uint32 public lastRewardUpdateTime; // last reported update time
    uint32 public constant EPOCH_DURATION = 3600; // the amount of seconds after lastUpdate to report rewards for. (default 1 hour)

    // events
    event Claimed(address user, uint256 positionId, address token, uint256 amount);
    event TreeUpdated(bytes32 merkleRoot, string ipfsHash, uint256 rewardTime);
    event Recovered(address indexed token, address indexed to, uint256 amount);
    event AddRewardInfo(
        address indexed token,
        bool isNative,
        uint256 startTimestamp,
        uint256 endTimestamp,
        uint256 rewardPerSec
    );
    // modifiers
    modifier onlyTrustedUpdater() {
        require(REWARD_REGISTRY.isTrutedUpdater(msg.sender), "REWARDER: NOT_TRUSTED_SENDER");
        _;
    }

    modifier onlyOperator() {
       require(REWARD_REGISTRY.isOperator(msg.sender), "REWARDER: NOT_OPERATOR");
        _;
    }

    modifier onlyRewardAdder() {
       require(REWARD_REGISTRY.isOperator(msg.sender) || msg.sender == address(REWARD_REGISTRY), "REWARDER: NOT_REWARD_ADDER");
        _;
    }

    // errors
    error InvalidLengths();

    function initialize(IRewardRegistry _registry) public initializer {
        require(address(_registry) != address(0), "Rewarder: registry is zero address");
        REWARD_REGISTRY = _registry;
    }

    function updateTree(bytes32 _merkleRoot, string calldata _ipfsHash) public onlyTrustedUpdater {
        require(_merkleRoot != bytes32(0), "Rewarder: merkle root is zero");
        require(keccak256(abi.encodePacked(_ipfsHash)) != keccak256(abi.encodePacked("")), "Rewarder: ipfs hash is zero");
        require(_merkleRoot != tree.merkleRoot, "Rewarder: merkle root is same");
        require(keccak256(abi.encodePacked(_ipfsHash)) != keccak256(abi.encodePacked(tree.ipfsHash)), "Rewarder: ipfs hash is same");

        require(reportPeriodElapsed(), "Rewarder: wait until reported Epoch is elapsed");

        lastTree = tree;
        tree = MerkleTree(_merkleRoot, _ipfsHash);
        lastTreeUpdate = uint48(block.timestamp);
        lastRewardUpdateTime = lastRewardTimestamp() + EPOCH_DURATION;
        emit TreeUpdated(_merkleRoot, _ipfsHash, lastRewardUpdateTime);
    }

    function claim(
        ClaimData[] calldata claims
    ) public nonReentrant {
        require(tree.merkleRoot != bytes32(0), "Rewarder: merkle root is zero");

        uint256 claimsLength = claims.length;
        for (uint256 i; i < claimsLength; ) {
            ClaimData calldata claimData = claims[i];

            // Accessing data from struct
            address user = claimData.user;
            uint256 position = claimData.position;
            address token = claimData.token;
            uint256 amount = claimData.amount;
            bool isNative = claimData.isNative;
            bytes32[] calldata proof = claimData.proof;

            // Verifying proof
            require(_verify(_leaf(user, position, token, amount, isNative), proof), "Rewarder: invalid proof");

            uint256 amountToSend = amount - claimed[user][position][token].amount;
            claimed[user][position][token] = Claim(amount, uint48(block.timestamp));
            if (isNative) {
                (bool success, ) = user.call{value: amountToSend}("");
                require(success, "Transfer failed");
            } else {
                IERC20(token).safeTransfer(user, amountToSend);
            }
            emit Claimed(user, position, token, amountToSend);
            unchecked {
                ++i;
            }
        }
    }

    function recover(address _token, address _to, uint256 _amount, bool isNative) public onlyOperator {
        require(_token != address(0), "Rewarder: token is zero address");
        require(_to != address(0), "Rewarder: to is zero address");
        require(_amount > 0, "Rewarder: amount is zero");
        
        if (isNative) {
            (bool success, ) = _to.call{value: _amount}("");
            require(success, "Transfer failed");
        } else {
            IERC20(_token).safeTransfer(_to, _amount);
        }
        emit Recovered(_token, _to, _amount);
    }

    function getMerkleRoot() public view returns (bytes32) {
        return tree.merkleRoot;
    }

    function _leaf(address user, uint256 position, address token, uint256 amount, bool isNative) internal pure returns (bytes32)
    {
        return keccak256(abi.encodePacked(user, position, token, amount, isNative));
    }

    function _verify(bytes32 leaf, bytes32[] memory proof) internal view returns (bool)
    {
        return MerkleProof.verify(proof, getMerkleRoot(), leaf);
    }

    // Reward Operations

    function addRewardInfo(
        IERC20 token,
        bool _isNative,
        uint32 _startTimestamp,
        uint32 _endTimestamp,
        uint256 _rewardPerSec
    ) external payable onlyRewardAdder {
        _startTimestamp = getRoundedTimestamp(_startTimestamp);
        _endTimestamp = getRoundedTimestamp(_endTimestamp);
        require(_endTimestamp > _startTimestamp, "Rewarder: invalid end timestamp");
        require(_rewardPerSec > 0, "Rewarder: invalid reward per sec");

        uint256 timeRange = _endTimestamp - _startTimestamp;
        uint256 totalRewards = timeRange * _rewardPerSec;

        if (!_isNative) {
            token.safeTransferFrom(
                msg.sender,
                address(this),
                totalRewards
            );
        } else {
            require(
                msg.value >= totalRewards,
                "add reward info: not enough funds to transfer"
            );
        }

        rewardInfo.push(
            RewardInfo({
                token: token,
                isNative: _isNative,
                startTimestamp: _startTimestamp,
                endTimestamp: _endTimestamp,
                rewardPerSec: _rewardPerSec
            })
        );

        if(rewardStartTime == 0 ) { // set the first reward time
            rewardStartTime = _startTimestamp;
        }

        emit AddRewardInfo(address(token), _isNative, _startTimestamp, _endTimestamp, _rewardPerSec);
    }

    function setLastReportedTimestamp(uint32 _newLastReportedTimestamp) external onlyOperator {
        lastRewardUpdateTime = getRoundedTimestamp(_newLastReportedTimestamp);
    }

    function reportPeriodElapsed() public view returns (bool) {
        if (getRoundedTimestamp(uint32(block.timestamp)) >= lastRewardUpdateTime + EPOCH_DURATION ) {
            return true;
        }
    }

    function rewardInfoLength() public view returns (uint256) {
        return rewardInfo.length;
    }

    function lastRewardTimestamp() public view returns (uint32) {
        if (lastRewardUpdateTime == 0 ) {
            return rewardStartTime;
        } else {
            return lastRewardUpdateTime;
        }
    }

    function getRoundedTimestamp(uint32 timestamp) public pure returns (uint32) {
        return (timestamp / EPOCH_DURATION) * EPOCH_DURATION;
    }

    function _isRewardLiveBetweenTimestamps(
        RewardInfo storage reward,
        uint32 roundedStartTimestamp,
        uint32 roundedEndTimestamp
    ) internal view returns (bool) {
        uint256 rewardEpochStart = reward.startTimestamp;
        return (reward.endTimestamp > roundedStartTimestamp &&
            rewardEpochStart < roundedEndTimestamp);
    }

    function getRewardForNextEpoch() external view returns (RewardInfo[] memory) {
        uint32 roundedTimestamp = getRoundedTimestamp(lastRewardTimestamp());
        return _getRewardsBetweenTimestamps(roundedTimestamp, roundedTimestamp + EPOCH_DURATION);
    }

    function getActiveRewards() external view returns (RewardInfo[] memory) {
        uint32 roundedTimestamp = getRoundedTimestamp(uint32(block.timestamp));
        return _getRewardsBetweenTimestamps(roundedTimestamp, roundedTimestamp + EPOCH_DURATION);
    }

    function getRewardForTimestamp(
        uint32 epoch
    ) external view returns (RewardInfo[] memory) {
        uint32 roundedTimestamp = getRoundedTimestamp(epoch);
        return _getRewardsBetweenTimestamps(roundedTimestamp, roundedTimestamp + EPOCH_DURATION);
    }

    function getRewardsBetweenEpochs(
        uint32 startTimestamp,
        uint32 endTimestamp
    ) external view returns (RewardInfo[] memory) {
        return _getRewardsBetweenTimestamps(getRoundedTimestamp(startTimestamp), getRoundedTimestamp(endTimestamp));
    }

    function getRewardsAfterEpoch(
        uint32 startTimestamp
    ) external view returns (RewardInfo[] memory) {
        return _getRewardsBetweenTimestamps(getRoundedTimestamp(startTimestamp), type(uint32).max);
    }

    function _getRewardsBetweenTimestamps(
        uint32 startTimestamp,
        uint32 endTimestamp
    ) public view returns (RewardInfo[] memory) {
        uint256 length;
        uint256 rewardLength = rewardInfo.length;
        RewardInfo[] memory activeRewards = new RewardInfo[](rewardLength);
        for (uint32 i; i < rewardLength; ) {
            RewardInfo storage reward = rewardInfo[i];
            if (
                _isRewardLiveBetweenTimestamps(reward, startTimestamp, endTimestamp)
            ) {
                activeRewards[length] = reward;
                length += 1;
            }
            unchecked {
                ++i;
            }
        }

        RewardInfo[] memory activeRewardsFinal = new RewardInfo[](length);
        for (uint32 i; i < length; ) {
            activeRewardsFinal[i] = activeRewards[i];
            unchecked {
                ++i;
            }
        }
        return activeRewardsFinal;
    }

    function _getTokenData(
        IERC20Metadata token,
        address pool
    ) internal view returns (TokenData memory data) {
        data.addr = address(token);
        data.decimals = token.decimals();
        data.symbol = token.symbol();
        data.poolBalance = token.balanceOf(pool);
    }

    function version() external view virtual returns (uint8) {
        return 5;
    }

    function addTokens(
        IERC20 token,
        bool _isNative,
        uint256 _amount
    ) external payable onlyRewardAdder {
        if (!_isNative) {
            token.safeTransferFrom(
                msg.sender,
                address(this),
                _amount
            );
        } else {
            require(
                msg.value >= _amount,
                "add reward info: not enough funds to transfer"
            );
        }

    }
} 