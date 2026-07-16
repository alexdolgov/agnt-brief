// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./IGnosisSafe.sol";

interface IQiDaoVault {
    function withdrawInterest() external;
    function iR() external view returns (uint256);
}

interface IPSM {
    function claimFees() external;
    function owner() external view returns (address);
    function deposit(uint256 _amount) external;
}

interface ICurveGauge {
    function deposit_reward_token(address _reward_token, uint256 _amount) external;
}

interface IERC20 {
    function approve(address spender, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

/// @title PolygonTaskModule
/// @notice Task module for Polygon: collect MAI from vaults + USDC from PSM, deposit all to Curve gauge
/// @dev Withdraws vault interest (MAI), claims PSM fees (USDC), converts USDC→MAI, deposits all MAI to Curve
contract PolygonTaskModule {
    // ============ Immutable Core State ============

    /// @notice The Safe this module is bound to (1:1 relationship)
    address public immutable safe;

    /// @notice PSM contract to claim fees from and deposit into
    address public immutable psmContract;

    /// @notice USDC token address (native USDC on Polygon)
    address public constant USDC = 0x3c499c542cEF5E3811e1192ce70d8cC03d5c3359;

    /// @notice MAI token address on Polygon
    address public constant MAI = 0xa3Fa99A148fA48D14Ed51d610c367C61876997F1;

    /// @notice Curve gauge to deposit rewards into
    address public constant CURVE_GAUGE = 0x41CB0cb61C11039459Dc81DB76BD64d3EdE704F2;

    /// @notice Cooldown duration between pokes (4 days)
    uint256 public constant POKE_COOLDOWN = 4 days;

    // ============ Constructor-Set Arrays ============

    /// @dev Vaults with interest enabled (set at deployment, cannot be modified)
    address[] private _vaults;

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
    error InvalidPSMContract();
    error NoVaults();
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
    /// @param _psmContract PSM contract to claim fees from
    /// @param vaults_ Array of QiDao vault addresses with interest enabled
    constructor(address _safe, address _psmContract, address[] memory vaults_) {
        if (_safe == address(0)) revert InvalidSafe();
        if (_psmContract == address(0)) revert InvalidPSMContract();
        if (vaults_.length == 0) revert NoVaults();

        safe = _safe;
        psmContract = _psmContract;

        // Copy vaults to storage
        for (uint256 i = 0; i < vaults_.length; i++) {
            _vaults.push(vaults_[i]);
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

    /// @notice Execute all tasks: withdraw interest from vaults, claim PSM fees
    /// @dev Enforces a 4-day cooldown between pokes
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
        // Track MAI balance BEFORE any claims (to calculate total collected)
        uint256 maiBalanceBefore;
        try IERC20(MAI).balanceOf(safe) returns (uint256 balance) {
            maiBalanceBefore = balance;
        } catch {
            maiBalanceBefore = 0;
        }

        // Withdraw interest from all vaults (MAI goes to Safe)
        for (uint256 i = 0; i < _vaults.length; i++) {
            _executeWithdrawInterest(i);
        }

        // Track USDC balance BEFORE claimFees
        uint256 usdcBalanceBefore;
        try IERC20(USDC).balanceOf(safe) returns (uint256 balance) {
            usdcBalanceBefore = balance;
        } catch {
            usdcBalanceBefore = 0;
        }

        // Claim PSM fees (USDC goes to Safe)
        _executeClaimPSMFees();

        // Convert all claimed USDC to MAI, then deposit all collected MAI to Curve
        _executeConvertAndDepositAll(usdcBalanceBefore, maiBalanceBefore);
    }

    // ============ Internal Task Execution ============

    function _executeWithdrawInterest(uint256 index) private {
        bytes memory data = abi.encodeCall(IQiDaoVault.withdrawInterest, ());
        _executeTask(index, "WithdrawInterest", _vaults[index], data);
    }

    function _executeClaimPSMFees() private {
        bytes memory data = abi.encodeCall(IPSM.claimFees, ());
        _executeTask(_vaults.length, "ClaimPSMFees", psmContract, data);
    }

    /// @notice Convert all USDC to MAI, then deposit all collected MAI to Curve gauge
    /// @param usdcBalanceBefore USDC balance before claimFees was called
    /// @param maiBalanceBefore MAI balance before any withdrawals
    function _executeConvertAndDepositAll(uint256 usdcBalanceBefore, uint256 maiBalanceBefore)
        private
    {
        // Get USDC balance after claimFees
        uint256 usdcBalanceAfter;
        try IERC20(USDC).balanceOf(safe) returns (uint256 balance) {
            usdcBalanceAfter = balance;
        } catch {
            usdcBalanceAfter = usdcBalanceBefore;
        }

        // Calculate USDC claimed from PSM fees
        uint256 usdcClaimed =
            usdcBalanceAfter > usdcBalanceBefore ? usdcBalanceAfter - usdcBalanceBefore : 0;

        // Convert USDC to MAI if we have any
        if (usdcClaimed > 0) {
            // Approve PSM to spend USDC
            bytes memory approveData = abi.encodeCall(IERC20.approve, (psmContract, usdcClaimed));
            _executeTask(_vaults.length + 1, "ApproveUSDC", USDC, approveData);

            // Deposit USDC into PSM to get MAI (1:1 swap)
            bytes memory depositData = abi.encodeCall(IPSM.deposit, (usdcClaimed));
            _executeTask(_vaults.length + 2, "DepositToPSM", psmContract, depositData);
        } else {
            emit TaskFailed(_vaults.length + 1, "ApproveUSDC", bytes("No USDC claimed"));
            emit TaskFailed(_vaults.length + 2, "DepositToPSM", bytes("No USDC claimed"));
        }

        // Get total MAI balance now (vault interest + converted USDC)
        uint256 maiBalanceAfter;
        try IERC20(MAI).balanceOf(safe) returns (uint256 balance) {
            maiBalanceAfter = balance;
        } catch {
            emit TaskFailed(_vaults.length + 3, "ApproveMAI", bytes("Balance check failed"));
            emit TaskFailed(_vaults.length + 4, "DepositRewards", bytes("Balance check failed"));
            return;
        }

        // Calculate total MAI collected (from vaults + converted USDC)
        uint256 totalMaiCollected =
            maiBalanceAfter > maiBalanceBefore ? maiBalanceAfter - maiBalanceBefore : 0;

        // Skip deposit if no MAI collected
        if (totalMaiCollected == 0) {
            emit TaskFailed(_vaults.length + 3, "ApproveMAI", bytes("No MAI collected"));
            emit TaskFailed(_vaults.length + 4, "DepositRewards", bytes("No MAI collected"));
            return;
        }

        // Approve Curve gauge to spend all collected MAI
        bytes memory approveMAIData =
            abi.encodeCall(IERC20.approve, (CURVE_GAUGE, totalMaiCollected));
        _executeTask(_vaults.length + 3, "ApproveMAI", MAI, approveMAIData);

        // Deposit all collected MAI as rewards to Curve gauge
        bytes memory depositRewardsData =
            abi.encodeCall(ICurveGauge.deposit_reward_token, (MAI, totalMaiCollected));
        _executeTask(_vaults.length + 4, "DepositRewards", CURVE_GAUGE, depositRewardsData);
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

    /// @notice Get all vaults
    function getVaults() external view returns (address[] memory) {
        return _vaults;
    }

    /// @notice Get the number of vaults
    function getVaultCount() external view returns (uint256) {
        return _vaults.length;
    }

    /// @notice Get the number of tasks (vaults + ClaimPSMFees + ApproveUSDC + DepositToPSM + ApproveMAI + DepositRewards)
    function getTaskCount() external view returns (uint256) {
        return _vaults.length + 5;
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
