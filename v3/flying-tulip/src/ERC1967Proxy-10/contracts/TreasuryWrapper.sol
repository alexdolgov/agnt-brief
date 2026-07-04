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
import {EnumerableSet} from "openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol";

interface IEpochRewardsVaultOps {
    function settleEpoch(uint256 rewardAmount) external;
}

interface IWrapperTreasuryOps {
    function setTreasury(address _treasury) external;
    function setStrategyDelay(uint256 _delay) external;
    function confirmYieldClaimer() external;
    function confirmStrategyManager() external;
    function confirmStrategy() external;
}

interface IWrapperYieldOps {
    function token() external view returns (address);
    function claimYields() external returns (uint256 _yield);
    function sweepIdleYield() external returns (uint256 amount);
}

/// @title TreasuryWrapper
/// @notice Upgradeable operator contract used as wrapper treasury and epoch settler.
/// @dev Intended to be owned by the real treasury (e.g. multisig).
contract TreasuryWrapper is
    Initializable,
    Ownable2StepUpgradeable,
    UUPSUpgradeable,
    ReentrancyGuardTransient
{
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    EnumerableSet.AddressSet private _wrappers;

    address public yieldRecipient;
    bool public operatorsPaused;
    mapping(address operator => bool isOperator) public operators;

    event YieldRecipientUpdated(address indexed newYieldRecipient);
    event OperatorSet(address indexed operator, bool isOperator);
    event OperatorsPauseSet(bool paused);
    event WrapperAdded(address indexed wrapper);
    event WrapperRemoved(address indexed wrapper);
    event TokenTransferred(address indexed token, address indexed to, uint256 amount);

    error ZeroAddress();
    error NotOperator(address caller);
    error OperatorsPaused();
    error WrapperAlreadyAdded(address wrapper);
    error WrapperNotAdded(address wrapper);
    error ArrayLengthMismatch();
    error NoStateChange();

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address initialOwner) external initializer {
        if (initialOwner == address(0)) revert ZeroAddress();

        __Ownable_init(initialOwner);
        __Ownable2Step_init();

        yieldRecipient = address(this);
        emit YieldRecipientUpdated(address(this));
    }

    modifier onlyOperator() {
        if (msg.sender == owner()) {
            _;
            return;
        }
        if (operatorsPaused) revert OperatorsPaused();
        if (!operators[msg.sender]) revert NotOperator(msg.sender);
        _;
    }

    // ===== Owner-only =====

    function setYieldRecipient(address newYieldRecipient) external onlyOwner {
        if (newYieldRecipient == address(0)) revert ZeroAddress();
        yieldRecipient = newYieldRecipient;
        emit YieldRecipientUpdated(newYieldRecipient);
    }

    function setOperator(address operator, bool isOperator) external onlyOwner {
        if (operator == address(0)) revert ZeroAddress();
        if (operators[operator] == isOperator) revert NoStateChange();
        operators[operator] = isOperator;
        emit OperatorSet(operator, isOperator);
    }

    function setOperatorsPaused(bool paused) external onlyOwner {
        if (operatorsPaused == paused) revert NoStateChange();
        operatorsPaused = paused;
        emit OperatorsPauseSet(paused);
    }

    function addWrapper(address wrapper) external onlyOwner {
        if (wrapper == address(0)) revert ZeroAddress();
        if (!_wrappers.add(wrapper)) revert WrapperAlreadyAdded(wrapper);
        emit WrapperAdded(wrapper);
    }

    function removeWrapper(address wrapper) external onlyOwner {
        if (!_wrappers.remove(wrapper)) revert WrapperNotAdded(wrapper);
        emit WrapperRemoved(wrapper);
    }

    function sweepWrapperIdleYield(address wrapper)
        external
        onlyOwner
        nonReentrant
        returns (uint256 amount)
    {
        // Note: unlike claimWrapperYield/claimAllWrapperYields, swept idle yield is not
        // auto-forwarded to `yieldRecipient`. Swept tokens remain in TreasuryWrapper until
        // moved out explicitly (e.g. via transferTokens).
        _requireWhitelisted(wrapper);
        amount = IWrapperYieldOps(wrapper).sweepIdleYield();
    }

    function setWrapperTreasury(address wrapper, address newTreasury) external onlyOwner {
        if (newTreasury == address(0)) revert ZeroAddress();
        _requireWhitelisted(wrapper);
        IWrapperTreasuryOps(wrapper).setTreasury(newTreasury);
    }

    function setWrapperStrategyDelay(address wrapper, uint256 delay) external onlyOwner {
        _requireWhitelisted(wrapper);
        IWrapperTreasuryOps(wrapper).setStrategyDelay(delay);
    }

    function confirmWrapperYieldClaimer(address wrapper) external onlyOwner {
        _requireWhitelisted(wrapper);
        IWrapperTreasuryOps(wrapper).confirmYieldClaimer();
    }

    function confirmWrapperStrategyManager(address wrapper) external onlyOwner {
        _requireWhitelisted(wrapper);
        IWrapperTreasuryOps(wrapper).confirmStrategyManager();
    }

    function confirmWrapperStrategy(address wrapper) external onlyOwner {
        _requireWhitelisted(wrapper);
        IWrapperTreasuryOps(wrapper).confirmStrategy();
    }

    // ===== Operator =====

    // Deployment prerequisite: TreasuryWrapper must be authorized to claim yield on each
    // wrapper (e.g. configured as a keeper in the wrapper yield-claimer setup / registered
    // as `subYieldClaimer` on the wrapper) so calls to claim/sweep do not revert.
    function claimWrapperYield(address wrapper)
        external
        onlyOperator
        nonReentrant
        returns (uint256 amount)
    {
        address[] memory tokensToForward;
        amount = _claimWrapperYieldWithTokens(wrapper, tokensToForward);
    }

    /// @notice Claims yield from a wrapper and forwards observed token deltas for provided tokens.
    function claimWrapperYield(
        address wrapper,
        address[] calldata tokensToForward
    )
        external
        onlyOperator
        nonReentrant
        returns (uint256 amount)
    {
        address[] memory tokensToForwardMem = tokensToForward;
        amount = _claimWrapperYieldWithTokens(wrapper, tokensToForwardMem);
    }

    /// @notice Claims wrapper yield in best-effort mode for all registered wrappers.
    function claimAllWrapperYields() external onlyOperator nonReentrant {
        address[] memory tokensToForward;
        _claimAllWrapperYieldsWithTokens(tokensToForward);
    }

    /// @notice Claims all wrapper yields in best-effort mode and forwards observed token deltas.
    function claimAllWrapperYields(address[] calldata tokensToForward)
        external
        onlyOperator
        nonReentrant
    {
        address[] memory tokensToForwardMem = tokensToForward;
        _claimAllWrapperYieldsWithTokens(tokensToForwardMem);
    }

    function transferTokens(
        address[] calldata tokens,
        uint256[] calldata amounts,
        address to
    )
        external
        onlyOwner
        nonReentrant
    {
        if (to == address(0)) revert ZeroAddress();
        if (tokens.length != amounts.length) revert ArrayLengthMismatch();

        uint256 len = tokens.length;
        for (uint256 i = 0; i < len; ++i) {
            if (tokens[i] == address(0)) revert ZeroAddress();
            IERC20(tokens[i]).safeTransfer(to, amounts[i]);
            emit TokenTransferred(tokens[i], to, amounts[i]);
        }
    }

    /// @notice Settles epoch in vault using `rewardToken` held by this contract.
    function settleEpoch(
        address vault,
        address rewardToken,
        uint256 rewardAmount
    )
        external
        onlyOwner
        nonReentrant
    {
        if (vault == address(0) || rewardToken == address(0)) revert ZeroAddress();
        IERC20(rewardToken).forceApprove(vault, rewardAmount);
        IEpochRewardsVaultOps(vault).settleEpoch(rewardAmount);
    }

    // ===== Views =====

    function wrappers() external view returns (address[] memory) {
        return _wrappers.values();
    }

    // ===== Internal =====

    function _authorizeUpgrade(address) internal override onlyOwner {}

    function _requireWhitelisted(address wrapper) internal view {
        if (!_wrappers.contains(wrapper)) revert WrapperNotAdded(wrapper);
    }

    function _forwardToYieldRecipient(address token, uint256 amount) internal {
        if (token == address(0)) revert ZeroAddress();
        IERC20(token).safeTransfer(yieldRecipient, amount);
    }

    function _snapshotBalances(address[] memory tokens)
        internal
        view
        returns (uint256[] memory balances)
    {
        uint256 len = tokens.length;
        balances = new uint256[](len);
        for (uint256 i = 0; i < len; ++i) {
            balances[i] = IERC20(tokens[i]).balanceOf(address(this));
        }
    }

    function _forwardClaimDeltas(
        address[] memory tokens,
        uint256[] memory beforeBalances
    )
        internal
    {
        uint256 len = tokens.length;
        for (uint256 i = 0; i < len; ++i) {
            uint256 afterBalance = IERC20(tokens[i]).balanceOf(address(this));
            if (afterBalance > beforeBalances[i]) {
                _forwardToYieldRecipient(tokens[i], afterBalance - beforeBalances[i]);
            }
        }
    }

    function _claimWrapperYieldWithTokens(
        address wrapper,
        address[] memory tokensToForward
    )
        internal
        returns (uint256 amount)
    {
        _requireWhitelisted(wrapper);
        if (tokensToForward.length == 0) {
            return IWrapperYieldOps(wrapper).claimYields();
        }

        uint256[] memory beforeBalances = _snapshotBalances(tokensToForward);
        amount = IWrapperYieldOps(wrapper).claimYields();
        _forwardClaimDeltas(tokensToForward, beforeBalances);
    }

    function _claimAllWrapperYieldsWithTokens(address[] memory tokensToForward) internal {
        uint256 len = _wrappers.length();
        if (tokensToForward.length == 0) {
            for (uint256 i = 0; i < len; ++i) {
                address wrapper = _wrappers.at(i);
                try IWrapperYieldOps(wrapper).claimYields() returns (uint256) {} catch {}
            }
            return;
        }

        uint256[] memory beforeBalances = _snapshotBalances(tokensToForward);
        for (uint256 i = 0; i < len; ++i) {
            address wrapper = _wrappers.at(i);
            try IWrapperYieldOps(wrapper).claimYields() returns (uint256) {} catch {}
        }
        _forwardClaimDeltas(tokensToForward, beforeBalances);
    }
}
