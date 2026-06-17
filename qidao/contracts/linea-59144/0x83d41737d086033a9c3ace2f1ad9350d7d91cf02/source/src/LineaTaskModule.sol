// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./IGnosisSafe.sol";

interface ILineaVoter {
    function vote(address[] calldata pools, uint256[] calldata weights) external;
    function gauges(address pool) external view returns (address);
    function external_bribes(address gauge) external view returns (address);
    function _ve() external view returns (address);
}

interface IBribeV2 {
    function getReward(uint256 tokenId, address[] calldata tokens) external;
    function earned(uint256 tokenId, address token) external view returns (uint256);
}

interface ILineaVotingEscrow {
    function tokenOfOwnerByIndex(address owner, uint256 index) external view returns (uint256);
    function balanceOf(address owner) external view returns (uint256);
    function balanceOfNFT(uint256 tokenId) external view returns (uint256);
    function ownerOf(uint256 tokenId) external view returns (address);
}

/// @title LineaTaskModule
/// @notice Immutable task module for Linea veToken flow: claim bribes, vote
/// @dev Extends ImmutableTaskModule pattern with Linea-specific state
/// @dev Key difference from Thena/Velodrome: Linea voter operates via Voter Proxy,
///      and voting does not require tokenId in the vote call (operates on msg.sender's veToken)
contract LineaTaskModule {
    // ============ Immutable Core State ============

    /// @notice The Safe this module is bound to (1:1 relationship)
    address public immutable safe;

    // ============ Immutable Linea-Specific State ============

    /// @notice The veToken ID this module manages
    uint256 public immutable tokenId;

    /// @notice Voter Proxy contract (used for voting on behalf of Safe)
    address public immutable voterProxy;

    /// @notice BribeV2 contract for claiming rewards
    address public immutable bribeContract;

    /// @notice Cooldown duration between pokes (4 days)
    uint256 public constant POKE_COOLDOWN = 4 days;

    // ============ Constructor-Set Arrays ============

    /// @dev Pools to vote on (set at deployment, cannot be modified)
    address[] private _pools;

    /// @dev Vote weights for each pool (set at deployment, cannot be modified)
    uint256[] private _weights;

    /// @dev Reward tokens to claim from bribe contract
    address[] private _rewardTokens;

    // ============ Mutable State ============

    /// @notice Kill switch - only Safe signers can toggle
    bool public paused;

    /// @notice Timestamp of last poke execution
    uint256 public lastPokeTimestamp;

    // ============ Events ============

    event TaskExecuted(uint256 indexed taskId, string taskName);
    event TaskFailed(uint256 indexed taskId, string taskName, bytes reason);
    event Poked(address indexed caller);
    event ForcePoked(address indexed caller);
    event PausedChanged(bool paused);

    // ============ Errors ============

    error InvalidSafe();
    error InvalidVoterProxy();
    error InvalidBribeContract();
    error InvalidTokenId();
    error LengthMismatch();
    error NoPools();
    error NoRewardTokens();
    error NotASigner();
    error ModulePaused();
    error CooldownNotExpired(uint256 remainingTime);

    // ============ Modifiers ============

    /// @notice Only allows Safe signers to call
    modifier onlySigner() {
        if (!IGnosisSafe(safe).isOwner(msg.sender)) revert NotASigner();
        _;
    }

    // ============ Constructor ============

    /// @param _safe The Gnosis Safe this module will execute transactions for
    /// @param _voterProxy Voter Proxy contract address
    /// @param _bribeContract BribeV2 contract address for claiming rewards
    /// @param _tokenId The veToken ID to manage
    /// @param pools_ Array of pool addresses to vote on
    /// @param weights_ Array of vote weights (must match pools length)
    /// @param rewardTokens_ Array of reward token addresses to claim
    constructor(
        address _safe,
        address _voterProxy,
        address _bribeContract,
        uint256 _tokenId,
        address[] memory pools_,
        uint256[] memory weights_,
        address[] memory rewardTokens_
    ) {
        if (_safe == address(0)) revert InvalidSafe();
        if (_voterProxy == address(0)) revert InvalidVoterProxy();
        if (_bribeContract == address(0)) revert InvalidBribeContract();
        if (_tokenId == 0) revert InvalidTokenId();
        if (pools_.length == 0) revert NoPools();
        if (pools_.length != weights_.length) revert LengthMismatch();
        if (rewardTokens_.length == 0) revert NoRewardTokens();

        safe = _safe;
        voterProxy = _voterProxy;
        bribeContract = _bribeContract;
        tokenId = _tokenId;

        // Copy arrays to storage
        for (uint256 i = 0; i < pools_.length; i++) {
            _pools.push(pools_[i]);
            _weights.push(weights_[i]);
        }

        for (uint256 i = 0; i < rewardTokens_.length; i++) {
            _rewardTokens.push(rewardTokens_[i]);
        }
    }

    // ============ Admin Functions ============

    /// @notice Pause or unpause the module (kill switch)
    /// @param _paused Whether to pause the module
    function setPaused(bool _paused) external onlySigner {
        paused = _paused;
        emit PausedChanged(_paused);
    }

    // ============ Poke Function ============

    /// @notice Execute all tasks: claim bribes, vote
    /// @dev Enforces a 4-day cooldown between pokes to align with voting epochs
    function poke() external {
        if (paused) revert ModulePaused();

        // Cooldown check (skip if first poke)
        if (lastPokeTimestamp != 0) {
            uint256 nextAllowedPoke = lastPokeTimestamp + POKE_COOLDOWN;
            if (block.timestamp < nextAllowedPoke) {
                revert CooldownNotExpired(nextAllowedPoke - block.timestamp);
            }
        }

        _executeTasks();

        lastPokeTimestamp = block.timestamp;
        emit Poked(msg.sender);
    }

    /// @notice Emergency override to execute poke without cooldown
    /// @dev Only callable by Safe signers
    function forcePoke() external onlySigner {
        if (paused) revert ModulePaused();

        _executeTasks();

        lastPokeTimestamp = block.timestamp;
        emit ForcePoked(msg.sender);
    }

    /// @notice Internal function to execute all tasks
    function _executeTasks() private {
        _executeClaimBribes();
        _executeVote();
    }

    // ============ Internal Task Execution ============

    function _executeClaimBribes() private {
        // Claim bribes directly from BribeV2 contract using tokenId
        bytes memory data = abi.encodeCall(IBribeV2.getReward, (tokenId, _rewardTokens));
        _executeTask(0, "ClaimBribes", bribeContract, data);
    }

    function _executeVote() private {
        // Vote via Voter Proxy - no tokenId needed in vote call
        bytes memory data = abi.encodeCall(ILineaVoter.vote, (_pools, _weights));
        _executeTask(1, "Vote", voterProxy, data);
    }

    /// @notice Execute a task via the Safe and emit appropriate event
    function _executeTask(uint256 taskId, string memory taskName, address target, bytes memory data)
        private
    {
        bool success = _safeExec(target, data);
        if (success) {
            emit TaskExecuted(taskId, taskName);
        } else {
            emit TaskFailed(taskId, taskName, "");
        }
    }

    /// @notice Execute a call via the Safe
    function _safeExec(address target, bytes memory data) private returns (bool) {
        try IGnosisSafe(safe).execTransactionFromModule(target, 0, data, 0) returns (bool result) {
            return result;
        } catch {
            return false;
        }
    }

    // ============ View Functions ============

    /// @notice Get all pools
    function getPools() external view returns (address[] memory) {
        return _pools;
    }

    /// @notice Get the number of pools
    function getPoolCount() external view returns (uint256) {
        return _pools.length;
    }

    /// @notice Get all weights
    function getWeights() external view returns (uint256[] memory) {
        return _weights;
    }

    /// @notice Get all reward tokens
    function getRewardTokens() external view returns (address[] memory) {
        return _rewardTokens;
    }

    /// @notice Get the number of reward tokens
    function getRewardTokenCount() external view returns (uint256) {
        return _rewardTokens.length;
    }

    /// @notice Get the number of tasks (always 2 for this module)
    function getTaskCount() external pure returns (uint256) {
        return 2;
    }

    /// @notice Check if poke can be called
    function canPoke() external view returns (bool) {
        if (paused) return false;
        if (lastPokeTimestamp == 0) return true;
        return block.timestamp >= lastPokeTimestamp + POKE_COOLDOWN;
    }

    /// @notice Get seconds until next poke is allowed
    function timeUntilNextPoke() external view returns (uint256) {
        if (lastPokeTimestamp == 0) return 0;
        uint256 nextAllowedPoke = lastPokeTimestamp + POKE_COOLDOWN;
        if (block.timestamp >= nextAllowedPoke) return 0;
        return nextAllowedPoke - block.timestamp;
    }
}
