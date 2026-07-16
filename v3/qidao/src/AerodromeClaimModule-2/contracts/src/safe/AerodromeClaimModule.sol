// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./IGnosisSafe.sol";
import "../interfaces/IGraceQiVault.sol";

interface IAerodromeRewardsDistributor {
    function claim(uint256 _tokenId) external returns (uint256);
    function minter() external view returns (address);
}

interface IAerodromeMinter {
    function updatePeriod() external returns (uint256);
}

interface IERC20 {
    function approve(address spender, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

interface IAerodromeReward {
    function notifyRewardAmount(address token, uint256 amount) external;
    function tokenRewardsPerEpoch(address token, uint256 epochStart) external view returns (uint256);
}

/// @title AerodromeClaimModule
/// @notice Immutable task module for Aerodrome on Base: claim rebases, claim fees, claim incentives, deposit bribe
/// @dev The veAERO NFT is held inside a QiDAO GraceQiVault. Claims go through the vault contract,
///      which internally calls the Aerodrome Voter and forwards claimed tokens to the vault owner (Safe).
/// @dev No voting task — handled by vote-poker. No transfer task — claimed tokens stay in the Safe.
contract AerodromeClaimModule {
    // ============ Immutable Core State ============

    /// @notice The Safe this module is bound to (1:1 relationship)
    address public immutable safe;

    // ============ Immutable Aerodrome-Specific State ============

    /// @notice The QiDAO GraceQiVault contract holding the veAERO NFT
    address public immutable vault;

    /// @notice Aerodrome Rewards Distributor contract for claiming rebases
    address public immutable rewardsDistributor;

    /// @notice Aerodrome Minter contract (auto-discovered from RewardsDistributor)
    address public immutable minter;

    /// @notice The veAERO token ID (collateral in the vault)
    uint256 public immutable tokenId;

    /// @notice The QiDAO vault ID within the vault contract
    uint256 public immutable vaultId;

    /// @notice Cooldown duration between pokes (1 days)
    uint256 public constant POKE_COOLDOWN = 1 days;

    /// @notice MAI token address on Base (bribe deposit token)
    address public constant BRIBE_TOKEN = 0xbf1aeA8670D2528E08334083616dD9C5F3B087aE;

    /// @notice Maximum MAI to deposit as bribe per epoch (best-effort cap)
    uint256 public constant BRIBE_CAP = 4000e18;

    // ============ Constructor-Set Arrays ============

    /// @dev Fee contracts to claim trading fees from (set at deployment, cannot be modified)
    address[] private _feeContracts;

    /// @dev Reward tokens per fee contract (set at deployment, cannot be modified)
    address[][] private _feeRewardTokens;

    /// @dev Incentive contracts to claim voting incentives from (set at deployment, cannot be modified)
    address[] private _incentiveContracts;

    /// @dev Reward tokens per incentive contract (set at deployment, cannot be modified)
    address[][] private _incentiveRewardTokens;

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
    event TaskSkipped(uint256 indexed taskId, string taskName, string reason);
    event PausedChanged(bool paused);

    // ============ Errors ============

    error InvalidSafe();
    error InvalidVault();
    error InvalidRewardsDistributor();
    error InvalidTokenId();
    error VaultNotOwnedBySafe();
    error TokenIdMismatch();
    error LengthMismatch();
    error NoFeeContracts();
    error NoIncentiveContracts();
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
    /// @param _vault The QiDAO GraceQiVault contract address
    /// @param _rewardsDistributor Aerodrome Rewards Distributor contract
    /// @param _tokenId The veAERO NFT token ID (collateral in the vault)
    /// @param _vaultId The QiDAO vault ID within the vault contract
    /// @param feeContracts_ Array of fee contract addresses (trading fees)
    /// @param feeRewardTokens_ Array of reward token arrays per fee contract
    /// @param incentiveContracts_ Array of incentive contract addresses (voting incentives)
    /// @param incentiveRewardTokens_ Array of reward token arrays per incentive contract
    constructor(
        address _safe,
        address _vault,
        address _rewardsDistributor,
        uint256 _tokenId,
        uint256 _vaultId,
        address[] memory feeContracts_,
        address[][] memory feeRewardTokens_,
        address[] memory incentiveContracts_,
        address[][] memory incentiveRewardTokens_
    ) {
        if (_safe == address(0)) revert InvalidSafe();
        if (_vault == address(0)) revert InvalidVault();
        if (_rewardsDistributor == address(0)) revert InvalidRewardsDistributor();
        if (_tokenId == 0) revert InvalidTokenId();
        if (IGraceQiVault(_vault).ownerOf(_vaultId) != _safe) revert VaultNotOwnedBySafe();
        if (IGraceQiVault(_vault).vaultCollateral(_vaultId) != _tokenId) revert TokenIdMismatch();
        if (feeContracts_.length == 0) revert NoFeeContracts();
        if (feeContracts_.length != feeRewardTokens_.length) revert LengthMismatch();
        if (incentiveContracts_.length == 0) revert NoIncentiveContracts();
        if (incentiveContracts_.length != incentiveRewardTokens_.length) revert LengthMismatch();

        safe = _safe;
        vault = _vault;
        rewardsDistributor = _rewardsDistributor;
        minter = IAerodromeRewardsDistributor(_rewardsDistributor).minter();
        tokenId = _tokenId;
        vaultId = _vaultId;

        // Copy fee contracts to storage
        for (uint256 i = 0; i < feeContracts_.length; i++) {
            _feeContracts.push(feeContracts_[i]);
            _feeRewardTokens.push(feeRewardTokens_[i]);
        }

        // Copy incentive contracts to storage
        for (uint256 i = 0; i < incentiveContracts_.length; i++) {
            _incentiveContracts.push(incentiveContracts_[i]);
            _incentiveRewardTokens.push(incentiveRewardTokens_[i]);
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

    /// @notice Execute all tasks: claim rebases, claim fees, claim incentives
    /// @dev No voting task — handled by vote-poker. No transfer task — tokens stay in Safe.
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
        _executeClaimRebases();
        _executeClaimFees();
        _executeClaimIncentives();
        _executeDepositBribe();
    }

    // ============ Internal Task Execution ============

    function _executeClaimRebases() private {
        // Ensure Minter epoch is current — RewardsDistributor.claim() reverts with
        // UpdatePeriod if activePeriod < currentWeekStart
        try IAerodromeMinter(minter).updatePeriod() { }
        catch (bytes memory reason) {
            emit TaskFailed(0, "UpdatePeriod", reason);
        }

        bytes memory data = abi.encodeCall(IAerodromeRewardsDistributor.claim, (tokenId));
        _executeTask(0, "ClaimRebases", rewardsDistributor, data);
    }

    function _executeClaimFees() private {
        bytes memory data = abi.encodeCall(
            IGraceQiVault.claimVaultFees, (_feeContracts, _feeRewardTokens, vaultId)
        );
        _executeTask(1, "ClaimFees", vault, data);
    }

    function _executeClaimIncentives() private {
        bytes memory data = abi.encodeCall(
            IGraceQiVault.claimVaultBribes, (_incentiveContracts, _incentiveRewardTokens, vaultId)
        );
        _executeTask(2, "ClaimIncentives", vault, data);
    }

    /// @dev Approve + notifyRewardAmount are atomic (same tx). Allowance is reset to zero on failure.
    function _executeDepositBribe() private {
        address bribe = _incentiveContracts[0];
        uint256 epochStart = (block.timestamp / 1 weeks) * 1 weeks;

        // Read epoch deposit state — wrapped in try/catch to prevent bricking poke()
        uint256 alreadyDeposited;
        try IAerodromeReward(bribe).tokenRewardsPerEpoch(BRIBE_TOKEN, epochStart) returns (
            uint256 val
        ) {
            alreadyDeposited = val;
        } catch (bytes memory reason) {
            emit TaskFailed(3, "DepositBribe", reason);
            return;
        }

        if (alreadyDeposited >= BRIBE_CAP) {
            emit TaskSkipped(3, "DepositBribe", "Cap reached");
            return;
        }

        // Read Safe's MAI balance — wrapped in try/catch for defense-in-depth
        uint256 safeBalance;
        try IERC20(BRIBE_TOKEN).balanceOf(safe) returns (uint256 val) {
            safeBalance = val;
        } catch (bytes memory reason) {
            emit TaskFailed(3, "DepositBribe", reason);
            return;
        }

        uint256 needed = BRIBE_CAP - alreadyDeposited;
        uint256 depositAmount = safeBalance < needed ? safeBalance : needed;
        if (depositAmount == 0) {
            emit TaskSkipped(3, "DepositBribe", "Zero balance");
            return;
        }

        // Approve MAI to bribe contract (short-circuit on failure)
        (bool approveOk,) =
            _safeExec(BRIBE_TOKEN, abi.encodeCall(IERC20.approve, (bribe, depositAmount)));
        if (!approveOk) {
            emit TaskFailed(3, "DepositBribe", bytes("Approve failed"));
            return;
        }

        // Deposit MAI as bribe
        // Inlined from _executeTask to handle allowance reset on failure.
        // If _executeTask is later modified (e.g. gas metering), update this path too.
        (bool notifyOk, bytes memory notifyReason) = _safeExec(
            bribe, abi.encodeCall(IAerodromeReward.notifyRewardAmount, (BRIBE_TOKEN, depositAmount))
        );
        if (notifyOk) {
            emit TaskExecuted(3, "DepositBribe");
        } else {
            // Best-effort: reset allowance to prevent dangling approval.
            // If the Safe itself is broken, this reset also fails — acceptable since
            // a broken Safe means the allowance is the least of our concerns.
            _safeExec(BRIBE_TOKEN, abi.encodeCall(IERC20.approve, (bribe, 0)));
            emit TaskFailed(3, "DepositBribe", notifyReason);
        }
    }

    /// @notice Execute a task via the Safe and emit appropriate event
    function _executeTask(uint256 taskId, string memory taskName, address target, bytes memory data)
        private
    {
        (bool success, bytes memory reason) = _safeExec(target, data);
        if (success) {
            emit TaskExecuted(taskId, taskName);
        } else {
            emit TaskFailed(taskId, taskName, reason);
        }
    }

    /// @notice Execute a call via the Safe
    function _safeExec(address target, bytes memory data) private returns (bool, bytes memory) {
        try IGnosisSafe(safe).execTransactionFromModule(target, 0, data, 0) returns (bool result) {
            return (result, "");
        } catch (bytes memory reason) {
            return (false, reason);
        }
    }

    // ============ View Functions ============

    /// @notice Get all fee contracts
    function getFeeContracts() external view returns (address[] memory) {
        return _feeContracts;
    }

    /// @notice Get the number of fee contracts
    function getFeeContractCount() external view returns (uint256) {
        return _feeContracts.length;
    }

    /// @notice Get all incentive contracts
    function getIncentiveContracts() external view returns (address[] memory) {
        return _incentiveContracts;
    }

    /// @notice Get the number of incentive contracts
    function getIncentiveContractCount() external view returns (uint256) {
        return _incentiveContracts.length;
    }

    /// @notice Get reward tokens for a specific fee contract
    function getFeeRewardTokens(uint256 feeContractIndex) external view returns (address[] memory) {
        return _feeRewardTokens[feeContractIndex];
    }

    /// @notice Get all fee reward tokens
    function getAllFeeRewardTokens() external view returns (address[][] memory) {
        return _feeRewardTokens;
    }

    /// @notice Get reward tokens for a specific incentive contract
    function getIncentiveRewardTokens(uint256 incentiveContractIndex)
        external
        view
        returns (address[] memory)
    {
        return _incentiveRewardTokens[incentiveContractIndex];
    }

    /// @notice Get all incentive reward tokens
    function getAllIncentiveRewardTokens() external view returns (address[][] memory) {
        return _incentiveRewardTokens;
    }

    /// @notice Get the number of tasks (4: claim rebases, claim fees, claim incentives, deposit bribe)
    function getTaskCount() external pure returns (uint256) {
        return 4;
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
