// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

import { IFees } from "./IFees.sol";
import { IAuth } from "./IAuth.sol";
import { ITimelocked } from "./ITimelocked.sol";
import { IPausable } from "./IPausable.sol";
import { IVaultBase } from "./IVaultBase.sol";
import { IVaultSpecificFunctions } from "./IVaultSpecificFunctions.sol";
import { IVaultExtension } from "./IVaultExtension.sol";

/// @notice Unified interface for the Vault + VaultExtension surface area.
/// Tests and integrators can cast a Vault address to this type to call any
/// function (Vault dispatches unmatched selectors to VaultExtension via fallback).
interface IVault is IFees, IAuth, ITimelocked, IPausable, IVaultBase, IVaultSpecificFunctions, IVaultExtension {
    // ──────────────────────────────────────────────────────────────────────
    //  Immutable getters
    // ──────────────────────────────────────────────────────────────────────

    function EXTENSION() external view returns (address);

    // ──────────────────────────────────────────────────────────────────────
    //  ERC20
    // ──────────────────────────────────────────────────────────────────────

    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint256);
    function balanceOf(
        address account
    ) external view returns (uint256);
    function transfer(
        address to,
        uint256 amount
    ) external returns (bool);
    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) external returns (bool);
    function approve(
        address spender,
        uint256 amount
    ) external returns (bool);
    function allowance(
        address _owner,
        address spender
    ) external view returns (uint256);
    function nonces(
        address _owner
    ) external view returns (uint256);
    function permit(
        address _owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);

    // ──────────────────────────────────────────────────────────────────────
    //  Ownership (solady Ownable)
    // ──────────────────────────────────────────────────────────────────────

    function owner() external view returns (address);
    function transferOwnership(
        address newOwner
    ) external;
    function renounceOwnership() external;
    function requestOwnershipHandover() external;
    function cancelOwnershipHandover() external;
    function completeOwnershipHandover(
        address pendingOwner
    ) external;
    function ownershipHandoverExpiresAt(
        address pendingOwner
    ) external view returns (uint256);

    // ──────────────────────────────────────────────────────────────────────
    //  Multicallability (solady Multicall)
    // ──────────────────────────────────────────────────────────────────────

    function multicall(
        bytes[] calldata data
    ) external payable returns (bytes[] memory);
}
