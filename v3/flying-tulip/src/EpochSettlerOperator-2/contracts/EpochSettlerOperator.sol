// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Flying Tulip Inc. All rights reserved.
pragma solidity 0.8.30;

import {Initializable} from "openzeppelin-contracts/contracts/proxy/utils/Initializable.sol";
import {
    Ownable2StepUpgradeable
} from "openzeppelin-contracts-upgradeable/contracts/access/Ownable2StepUpgradeable.sol";
import {
    UUPSUpgradeable
} from "openzeppelin-contracts-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import {
    ReentrancyGuardTransient
} from "openzeppelin-contracts/contracts/utils/ReentrancyGuardTransient.sol";
import {SafeERC20} from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

interface IEpochSettlerVaultOps {
    function settleEpoch(uint256 rewardAmount) external;
}

interface IEpochSettlerTreasuryWrapperOps {
    function claimWrapperYield(
        address wrapper,
        address[] calldata tokensToForward
    )
        external
        returns (uint256 amount);
}

/// @title EpochSettlerOperator
/// @notice Upgradeable keeper-operated contract that atomically claims wrapper yield,
///         swaps it to FT via whitelisted DEX targets, and settles the epoch on the vault.
/// @dev Intended to be owned by the treasury multisig. Keepers are authorized to call
///      `settleEpochAtomic`. Swap targets (DEX routers, Aave pools) must be whitelisted
///      by the owner. The keeper provides swap calldata off-chain using a routing tool.
///
///      Prerequisites:
///      - This contract must be registered as an `operator` on TreasuryWrapper.
///      - TreasuryWrapper's `yieldRecipient` must be set to this contract's address.
///      - This contract (or its caller) must be the `epochSettler` on the vault.
contract EpochSettlerOperator is
    Initializable,
    Ownable2StepUpgradeable,
    UUPSUpgradeable,
    ReentrancyGuardTransient
{
    using SafeERC20 for IERC20;

    address public treasuryWrapper;
    address public vault;
    IERC20 public ft;

    bool public keepersPaused;
    mapping(address keeper => bool isKeeper) public keepers;
    mapping(address target => bool allowed) public allowedSwapTargets;

    /// @notice A single swap step to be executed by the keeper.
    /// @param target Whitelisted DEX router or pool to call.
    /// @param tokenIn Token to approve before the call.
    /// @param amountIn Amount to approve. Use `type(uint256).max` to use the full balance
    ///        and patch the actual amount into `data` at `amountInOffset`.
    /// @param amountInOffset Byte offset in `data` where the amount should be written when
    ///        `amountIn == type(uint256).max`. Ignored when `amountIn` is a concrete value.
    ///        Example: for `pool.withdraw(address,uint256,address)`, the uint256 sits at
    ///        offset 36 (4-byte selector + 32-byte address param).
    /// @param data Encoded calldata for the swap. When `amountIn == type(uint256).max`,
    ///        the keeper puts a placeholder at `amountInOffset` which gets overwritten
    ///        with the actual balance at execution time.
    struct SwapStep {
        address target;
        address tokenIn;
        uint256 amountIn;
        uint16 amountInOffset;
        bytes data;
    }

    event KeeperSet(address indexed keeper, bool isKeeper);
    event KeepersPauseSet(bool paused);
    event SwapTargetSet(address indexed target, bool allowed);
    event TreasuryWrapperUpdated(address indexed newTreasuryWrapper);
    event VaultUpdated(address indexed newVault);
    event FtUpdated(address indexed newFt);
    event EpochSettledAtomic(address indexed wrapper, uint256 ftAmount);
    event TokenRecovered(address indexed token, address indexed to, uint256 amount);

    error ZeroAddress();
    error NotKeeper(address caller);
    error KeepersPaused();
    error NoStateChange();
    error SwapTargetNotAllowed(address target);
    error SwapFailed(uint256 stepIndex);
    error InsufficientFtOutput(uint256 actual, uint256 minExpected);
    error ZeroFtOutput();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address initialOwner,
        address _treasuryWrapper,
        address _vault,
        address _ft
    )
        external
        initializer
    {
        if (
            initialOwner == address(0) || _treasuryWrapper == address(0) || _vault == address(0)
                || _ft == address(0)
        ) revert ZeroAddress();

        __Ownable_init(initialOwner);
        __Ownable2Step_init();

        treasuryWrapper = _treasuryWrapper;
        vault = _vault;
        ft = IERC20(_ft);

        emit TreasuryWrapperUpdated(_treasuryWrapper);
        emit VaultUpdated(_vault);
        emit FtUpdated(_ft);
    }

    modifier onlyKeeper() {
        if (msg.sender == owner()) {
            _;
            return;
        }
        if (keepersPaused) revert KeepersPaused();
        if (!keepers[msg.sender]) revert NotKeeper(msg.sender);
        _;
    }

    // ===== Owner-only =====

    function setKeeper(address keeper, bool isKeeper) external onlyOwner {
        if (keeper == address(0)) revert ZeroAddress();
        if (keepers[keeper] == isKeeper) revert NoStateChange();
        keepers[keeper] = isKeeper;
        emit KeeperSet(keeper, isKeeper);
    }

    function setKeepersPaused(bool paused) external onlyOwner {
        if (keepersPaused == paused) revert NoStateChange();
        keepersPaused = paused;
        emit KeepersPauseSet(paused);
    }

    function setSwapTarget(address target, bool allowed) external onlyOwner {
        if (target == address(0)) revert ZeroAddress();
        if (allowedSwapTargets[target] == allowed) revert NoStateChange();
        allowedSwapTargets[target] = allowed;
        emit SwapTargetSet(target, allowed);
    }

    function setTreasuryWrapper(address _treasuryWrapper) external onlyOwner {
        if (_treasuryWrapper == address(0)) revert ZeroAddress();
        treasuryWrapper = _treasuryWrapper;
        emit TreasuryWrapperUpdated(_treasuryWrapper);
    }

    function setVault(address _vault) external onlyOwner {
        if (_vault == address(0)) revert ZeroAddress();
        vault = _vault;
        emit VaultUpdated(_vault);
    }

    function setFt(address _ft) external onlyOwner {
        if (_ft == address(0)) revert ZeroAddress();
        ft = IERC20(_ft);
        emit FtUpdated(_ft);
    }

    function recoverTokens(address token, address to, uint256 amount) external onlyOwner {
        if (to == address(0)) revert ZeroAddress();
        IERC20(token).safeTransfer(to, amount);
        emit TokenRecovered(token, to, amount);
    }

    // ===== Keeper =====

    /// @notice Atomically claims wrapper yield, swaps to FT, and settles the epoch.
    /// @dev The keeper computes the optimal swap route off-chain and encodes each leg
    ///      as a SwapStep. Example route for Sonic:
    ///        Step 0: aUSDC → USDC via Aave Pool.withdraw(usdc, amount, address(this))
    ///        Step 1: USDC → FT via Shadow CL router.exactInputSingle(...)
    /// @param wrapper The yield wrapper to claim from (must be whitelisted on TreasuryWrapper).
    /// @param yieldTokens Tokens whose balance deltas should be forwarded to this contract.
    /// @param swaps Ordered swap steps to convert yield tokens into FT.
    /// @param minFtOut Minimum FT output required (slippage protection).
    function settleEpochAtomic(
        address wrapper,
        address[] calldata yieldTokens,
        SwapStep[] calldata swaps,
        uint256 minFtOut
    )
        external
        onlyKeeper
        nonReentrant
    {
        // Snapshot FT balance before claim/swap so we settle only the delta
        // from this call, not any pre-existing dust or accidental transfers.
        uint256 ftBefore = ft.balanceOf(address(this));

        // 1. Claim yield from wrapper via TreasuryWrapper.
        //    TreasuryWrapper.yieldRecipient must point to this contract so that
        //    claimed tokens (e.g., aUSDC) are forwarded here.
        IEpochSettlerTreasuryWrapperOps(treasuryWrapper).claimWrapperYield(wrapper, yieldTokens);

        // 2. Execute swap steps (e.g., aUSDC → USDC → FT).
        _executeSwaps(swaps);

        // 3. Settle epoch with only the FT produced by this call.
        uint256 ftProduced = ft.balanceOf(address(this)) - ftBefore;
        if (ftProduced == 0) revert ZeroFtOutput();
        if (ftProduced < minFtOut) revert InsufficientFtOutput(ftProduced, minFtOut);

        ft.forceApprove(vault, ftProduced);
        IEpochSettlerVaultOps(vault).settleEpoch(ftProduced);

        emit EpochSettledAtomic(wrapper, ftProduced);
    }

    // ===== Internal =====

    function _executeSwaps(SwapStep[] calldata swaps) internal {
        uint256 len = swaps.length;
        for (uint256 i = 0; i < len; ++i) {
            SwapStep calldata step = swaps[i];
            if (!allowedSwapTargets[step.target]) revert SwapTargetNotAllowed(step.target);

            bytes memory callData = step.data;
            uint256 amount;

            if (step.amountIn == type(uint256).max) {
                // Use actual balance and patch it into the calldata.
                amount = IERC20(step.tokenIn).balanceOf(address(this));
                uint256 offset = step.amountInOffset;
                assembly {
                    // callData in memory: [32-byte length][payload...]
                    // Write amount at payload + offset.
                    mstore(add(add(callData, 32), offset), amount)
                }
            } else {
                amount = step.amountIn;
            }

            IERC20(step.tokenIn).forceApprove(step.target, amount);

            (bool success,) = step.target.call(callData);
            if (!success) revert SwapFailed(i);

            // Clear residual approval for safety.
            IERC20(step.tokenIn).forceApprove(step.target, 0);
        }
    }

    function _authorizeUpgrade(address) internal override onlyOwner {}
}
