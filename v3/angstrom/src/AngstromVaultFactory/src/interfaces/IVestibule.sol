// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

import { IVault } from "./IVault.sol";
import { IAsyncDeposit, DepositId } from "./IAsyncDeposit.sol";
import { IAsyncRedemption, RedemptionId } from "./IAsyncRedemption.sol";

/// @notice Per-vault escrow and request book for async deposits and redemptions.
interface IVestibule is IAsyncDeposit, IAsyncRedemption {
    function VAULT() external view returns (IVault);

    function requestDeposit(
        uint256 amount,
        uint256 minSharesOut,
        uint256 referralId
    ) external returns (DepositId);

    function cancelDepositRequest(
        DepositId id
    ) external;

    function fulfillDeposits(
        DepositId[] calldata requestIds,
        uint256[] calldata shares
    ) external;

    function requestRedemption(
        uint256 shares,
        uint256 minAssetsOut
    ) external returns (RedemptionId);

    function cancelRedemptionRequest(
        RedemptionId requestId
    ) external;

    function fulfillRedemptions(
        RedemptionId[] calldata requestIds,
        uint256[] calldata assets
    ) external;

    function setDepositAmountLimits(
        uint128 minAmount,
        uint128 maxAmount
    ) external;

    function setRedemptionAmountLimits(
        uint128 minAmount,
        uint128 maxAmount
    ) external;
}
