// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

import {SafeTransferLib} from "solady/utils/SafeTransferLib.sol";

import {Action, ApprovalLeaf} from "../types/SentryTypes.sol";
import {IAaveV3Pool} from "../interfaces/IAaveV3Pool.sol";
import {IFlashLoanSimpleReceiver} from "../interfaces/IFlashLoanSimpleReceiver.sol";

/// @title AaveV3FlashLoanModule
/// @notice Lets a SentryDelegation EOA receive Aave V3 single-asset flash loans.
///         The keeper authorizes a `flashLoanSimple` call via the existing merkle
///         leaf path; the Pool transfers the asset and re-enters this contract
///         via `executeOperation`. The callback validates the call came from the
///         Pool with this contract as initiator, then dispatches the inner batch
///         encoded in `params` through `_executeFromFlashLoan` (implemented by
///         the inheriting contract — typically reusing the same merkle-verified
///         `_execute` helper used by keeper-batched calls). Repayment is approved
///         in-module so individual strategies don't have to author an approve leaf.
abstract contract AaveV3FlashLoanModule is IFlashLoanSimpleReceiver {
    /// @notice Aave V3 Pool — set per-deployment in the inheriting constructor.
    IAaveV3Pool public immutable AAVE_POOL;

    error FlashLoanZeroPool();
    error FlashLoanNotFromPool(address sender);
    error FlashLoanBadInitiator(address initiator);
    error FlashLoanInvalidParams();

    event FlashLoanExecuted(address indexed asset, uint256 amount, uint256 premium, uint256 innerCount);

    constructor(address _aavePool) {
        if (_aavePool == address(0)) revert FlashLoanZeroPool();
        AAVE_POOL = IAaveV3Pool(_aavePool);
    }

    /// @inheritdoc IFlashLoanSimpleReceiver
    function executeOperation(
        address asset,
        uint256 amount,
        uint256 premium,
        address initiator,
        bytes calldata params
    ) external returns (bool) {
        if (msg.sender != address(AAVE_POOL)) revert FlashLoanNotFromPool(msg.sender);
        if (initiator != address(this)) revert FlashLoanBadInitiator(initiator);

        (Action[] memory actions, ApprovalLeaf[] memory leaves, bytes32[][] memory proofs) =
            abi.decode(params, (Action[], ApprovalLeaf[], bytes32[][]));

        if (actions.length != leaves.length || actions.length != proofs.length) {
            revert FlashLoanInvalidParams();
        }

        _executeFromFlashLoan(actions, leaves, proofs);

        SafeTransferLib.safeApproveWithRetry(asset, address(AAVE_POOL), amount + premium);

        emit FlashLoanExecuted(asset, amount, premium, actions.length);
        return true;
    }

    /// @notice Implemented by the inheriting contract to dispatch the inner batch
    ///         through the same merkle-authorized execution path the keeper uses.
    function _executeFromFlashLoan(
        Action[] memory actions,
        ApprovalLeaf[] memory leaves,
        bytes32[][] memory proofs
    ) internal virtual;
}
