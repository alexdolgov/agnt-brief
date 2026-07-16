// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IAuthority} from "@openzeppelin/contracts/access/manager/IAuthority.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts/proxy/utils/UUPSUpgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import {DefensiveSenderReceiver} from "./DefensiveSenderReceiver.sol";
import {ISpikoDefensiveSenderReceiver} from "./interfaces/ISpikoDefensiveSenderReceiver.sol";

/**
 * @title SpikoDefensiveSenderReceiver Contract
 * @dev A contract that implements the CCIPTrustedSender and CCIPDefensiveReceiver base contracts.
 * The TrustedSender makes sure that the tokens are sent to a trusted address, and the DefensiveReceiver
 * makes sure that the tokens are received from a trusted address. If the message fails on the destination chain,
 * the contract will store the failed message and allow anyone to retry it.
 * If for any reason, the message can't be retried, the contract allows the sender, the receiver or the admin to
 * return them to the original sender. If this also fails, the admin can recover the tokens from the failed messages and
 * manually send them back to the original sender.
 * It implements the UUPS pattern to allow for future upgrades.
 *
 * The contract uses the EIP-7201 to prevent storage collisions.
 */
contract SpikoDefensiveSenderReceiver is DefensiveSenderReceiver, UUPSUpgradeable, ISpikoDefensiveSenderReceiver {
    address public immutable override AUTHORITY;

    /**
     * @dev Sets the immutable value for {AUTHORITY}, {LINK_TOKEN} and {CCIP_ROUTER} and the initial value for {allowedTokens} and {admin}.
     *
     * Requirements:
     *
     * - `allowedTokens` must not exceed {MAX_ALLOWED_TOKENS}.
     */
    constructor(address authority, address linkToken, address ccipRouter)
        DefensiveSenderReceiver(linkToken, ccipRouter)
    {
        if (authority == address(0)) revert InvalidParameters();
        AUTHORITY = authority;
    }

    /**
     * @dev Verifies that the caller is the admin of the contract.
     * This function is used to authorize upgrades to the contract.
     */
    function _authorizeUpgrade(address newImplementation) internal virtual override onlyRole(DEFAULT_ADMIN_ROLE) {}

    /**
     * @dev Checks if the sender is allowed to call the transfer function on the token contract.
     * It uses the Authority contract to check permissions.
     *
     * Requirements:
     *
     * - `sender` must be allowed to call the transfer function on the `token` contract on the destination chain.
     */
    function _checkPermission(
        uint64 chainSelector,
        address token,
        address sender,
        address receiver,
        uint256 amount,
        bool isSource
    ) internal virtual override {
        if (!(isSource || IAuthority(AUTHORITY).canCall(sender, token, IERC20.transfer.selector))) {
            revert RestrictedAccess(chainSelector, token, sender, receiver, amount, isSource);
        }
    }
}
