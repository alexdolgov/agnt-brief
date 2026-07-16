// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

// import {AccessManaged, Context} from "@openzeppelin/contracts/access/manager/AccessManaged.sol";
import {AccessManagedUpgradeable, ContextUpgradeable} from "@openzeppelin-upgradeable/contracts/access/manager/AccessManagedUpgradeable.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IReward} from "../interfaces/IReward.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ERC2771ContextUpgradeable} from "@openzeppelin-upgradeable/contracts/metatx/ERC2771ContextUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin-upgradeable/contracts/utils/ReentrancyGuardUpgradeable.sol";
import {VelodromeTimeLibrary} from "../libraries/VelodromeTimeLibrary.sol";
import {IGovernanceRegistry} from "../interfaces/IGovernanceRegistry.sol";

/// @title Reward
/// @author spectra.finance
/// @author Modified from velodrome.finance (https://github.com/velodrome-finance/contracts)
/// @notice Base reward contract for distribution of rewards
abstract contract Reward is IReward, AccessManagedUpgradeable, ERC2771ContextUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;

    /// @inheritdoc IReward
    uint256 public constant DURATION = 7 days;

    /// @inheritdoc IReward
    address public governanceRegistry;
    /// @inheritdoc IReward
    mapping(address => uint256) public totalSupply;
    /// @inheritdoc IReward
    mapping(address => mapping(uint256 => uint256)) public balanceOf;
    /// @inheritdoc IReward
    mapping(address => mapping(address => mapping(uint256 => uint256))) public tokenRewardsPerEpoch;
    /// @inheritdoc IReward
    mapping(address => mapping(address => mapping(uint256 => uint256))) public lastEarn;

    address[] public rewards;
    /// @inheritdoc IReward
    mapping(address => bool) public isReward;

    /// @inheritdoc IReward
    mapping(address => mapping(uint256 => mapping(uint256 => Checkpoint))) public checkpoints;
    /// @inheritdoc IReward
    mapping(address => mapping(uint256 => uint256)) public numCheckpoints;
    /// @notice A record of balance checkpoints for each token, by index
    mapping(address => mapping(uint256 => SupplyCheckpoint)) public supplyCheckpoints;
    /// @inheritdoc IReward
    mapping(address => uint256) public supplyNumCheckpoints;

    /// @custom:storage-gap 50 slots for upgrade safety
    uint256[50] private __gap;

    constructor(address _forwarder) ERC2771ContextUpgradeable(_forwarder) {
        _disableInitializers();
    }

    function __Reward_init(address _initialAuthority, address _governanceRegistry) public onlyInitializing {
        __AccessManaged_init(_initialAuthority);
        governanceRegistry = _governanceRegistry;
    }

    /// @inheritdoc IReward
    function getPriorBalanceIndex(address ve, uint256 tokenId, uint256 timestamp) public view returns (uint256) {
        uint256 nCheckpoints = numCheckpoints[ve][tokenId];
        if (nCheckpoints == 0) {
            return 0;
        }

        // First check most recent balance
        if (checkpoints[ve][tokenId][nCheckpoints - 1].timestamp <= timestamp) {
            return (nCheckpoints - 1);
        }

        // Next check implicit zero balance
        if (checkpoints[ve][tokenId][0].timestamp > timestamp) {
            return 0;
        }

        uint256 lower = 0;
        uint256 upper = nCheckpoints - 1;
        while (upper > lower) {
            uint256 center = upper - (upper - lower) / 2; // ceil, avoiding overflow
            Checkpoint memory cp = checkpoints[ve][tokenId][center];
            if (cp.timestamp == timestamp) {
                return center;
            } else if (cp.timestamp < timestamp) {
                lower = center;
            } else {
                upper = center - 1;
            }
        }
        return lower;
    }

    /// @inheritdoc IReward
    function getPriorSupplyIndex(address ve, uint256 timestamp) public view returns (uint256) {
        uint256 nCheckpoints = supplyNumCheckpoints[ve];
        if (nCheckpoints == 0) {
            return 0;
        }

        // First check most recent balance
        if (supplyCheckpoints[ve][nCheckpoints - 1].timestamp <= timestamp) {
            return (nCheckpoints - 1);
        }

        // Next check implicit zero balance
        if (supplyCheckpoints[ve][0].timestamp > timestamp) {
            return 0;
        }

        uint256 lower = 0;
        uint256 upper = nCheckpoints - 1;
        while (upper > lower) {
            uint256 center = upper - (upper - lower) / 2; // ceil, avoiding overflow
            SupplyCheckpoint memory cp = supplyCheckpoints[ve][center];
            if (cp.timestamp == timestamp) {
                return center;
            } else if (cp.timestamp < timestamp) {
                lower = center;
            } else {
                upper = center - 1;
            }
        }
        return lower;
    }

    /// @inheritdoc IReward
    function rewardsListLength() external view returns (uint256) {
        return rewards.length;
    }

    /// @inheritdoc IReward
    function earned(address ve, address token, uint256 tokenId) public view returns (uint256) {
        if (numCheckpoints[ve][tokenId] == 0) {
            return 0;
        }

        uint256 reward = 0;
        uint256 _supply = 1;
        uint256 _currTs = VelodromeTimeLibrary.epochStart(lastEarn[ve][token][tokenId]); // take epoch last claimed in as starting point
        uint256 _index = getPriorBalanceIndex(ve, tokenId, _currTs);
        Checkpoint memory cp0 = checkpoints[ve][tokenId][_index];

        // accounts for case where lastEarn is before first checkpoint
        _currTs = Math.max(_currTs, VelodromeTimeLibrary.epochStart(cp0.timestamp));

        // get epochs between current epoch and first checkpoint in same epoch as last claim
        uint256 numEpochs = (VelodromeTimeLibrary.epochStart(block.timestamp) - _currTs) / DURATION;

        if (numEpochs > 0) {
            for (uint256 i = 0; i < numEpochs; i++) {
                // get index of last checkpoint in this epoch
                _index = getPriorBalanceIndex(ve, tokenId, _currTs + DURATION - 1);
                // get checkpoint in this epoch
                cp0 = checkpoints[ve][tokenId][_index];
                // get supply of last checkpoint in this epoch
                _supply = Math.max(supplyCheckpoints[ve][getPriorSupplyIndex(ve, _currTs + DURATION - 1)].supply, 1);
                reward += (cp0.balanceOf * tokenRewardsPerEpoch[ve][token][_currTs]) / _supply;
                _currTs += DURATION;
            }
        }

        return reward;
    }

    /// @inheritdoc IReward
    function voter() public view returns (address) {
        return IGovernanceRegistry(governanceRegistry).voter();
    }

    /// @inheritdoc IReward
    function setGovernanceRegistry(address _governanceRegistry) external restricted {
        emit GovernanceRegistryChange(governanceRegistry, _governanceRegistry);
        governanceRegistry = _governanceRegistry;
    }

    /// @inheritdoc IReward
    function _deposit(address ve, uint256 amount, uint256 tokenId) public restricted {
        totalSupply[ve] += amount;
        balanceOf[ve][tokenId] += amount;

        _writeCheckpoint(ve, tokenId, balanceOf[ve][tokenId]);
        _writeSupplyCheckpoint(ve);

        emit Deposit(ve, tokenId, amount, _msgSender());
    }

    /// @inheritdoc IReward
    function _withdraw(address ve, uint256 amount, uint256 tokenId) public restricted {
        totalSupply[ve] -= amount;
        balanceOf[ve][tokenId] -= amount;

        _writeCheckpoint(ve, tokenId, balanceOf[ve][tokenId]);
        _writeSupplyCheckpoint(ve);

        emit Withdraw(ve, tokenId, amount, _msgSender());
    }

    /// @inheritdoc IReward
    function getReward(address ve, uint256 tokenId, address[] memory tokens) public virtual nonReentrant {}

    /// @inheritdoc IReward
    function notifyRewardAmount(address token, uint256 amount) external virtual nonReentrant {}

    function _writeCheckpoint(address ve, uint256 tokenId, uint256 balance) internal {
        uint256 _nCheckPoints = numCheckpoints[ve][tokenId];
        uint256 _timestamp = block.timestamp;

        if (
            _nCheckPoints > 0 &&
            VelodromeTimeLibrary.epochStart(checkpoints[ve][tokenId][_nCheckPoints - 1].timestamp) ==
            VelodromeTimeLibrary.epochStart(_timestamp)
        ) {
            checkpoints[ve][tokenId][_nCheckPoints - 1] = Checkpoint(_timestamp, balance);
        } else {
            checkpoints[ve][tokenId][_nCheckPoints] = Checkpoint(_timestamp, balance);
            numCheckpoints[ve][tokenId] = _nCheckPoints + 1;
        }
    }

    function _writeSupplyCheckpoint(address ve) internal {
        uint256 _nCheckPoints = supplyNumCheckpoints[ve];
        uint256 _timestamp = block.timestamp;

        if (
            _nCheckPoints > 0 &&
            VelodromeTimeLibrary.epochStart(supplyCheckpoints[ve][_nCheckPoints - 1].timestamp) ==
            VelodromeTimeLibrary.epochStart(_timestamp)
        ) {
            supplyCheckpoints[ve][_nCheckPoints - 1] = SupplyCheckpoint(_timestamp, totalSupply[ve]);
        } else {
            supplyCheckpoints[ve][_nCheckPoints] = SupplyCheckpoint(_timestamp, totalSupply[ve]);
            supplyNumCheckpoints[ve] = _nCheckPoints + 1;
        }
    }

    /// @dev used with all getReward implementations
    function _getReward(address recipient, address ve, uint256 tokenId, address[] memory tokens) internal {
        uint256 _length = tokens.length;
        for (uint256 i = 0; i < _length; i++) {
            uint256 _reward = earned(ve, tokens[i], tokenId);
            lastEarn[ve][tokens[i]][tokenId] = block.timestamp;
            if (_reward > 0) IERC20(tokens[i]).safeTransfer(recipient, _reward);

            emit ClaimRewards(recipient, tokens[i], _reward);
        }
    }

    function _msgSender()
        internal
        view
        virtual
        override(ContextUpgradeable, ERC2771ContextUpgradeable)
        returns (address)
    {
        return ERC2771ContextUpgradeable._msgSender();
    }

    function _msgData()
        internal
        view
        virtual
        override(ContextUpgradeable, ERC2771ContextUpgradeable)
        returns (bytes calldata)
    {
        return ERC2771ContextUpgradeable._msgData();
    }

    function _contextSuffixLength()
        internal
        view
        virtual
        override(ContextUpgradeable, ERC2771ContextUpgradeable)
        returns (uint256)
    {
        return ERC2771ContextUpgradeable._contextSuffixLength();
    }
}
