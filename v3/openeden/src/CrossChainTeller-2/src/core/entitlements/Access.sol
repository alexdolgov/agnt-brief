// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import {RolesAuthority, Role} from "./RolesAuthority.sol";

import "../../config/errors.sol";

/// @notice Abstract contract that provides a base for role-based access control.
/// @author dsshap (Circle)
abstract contract Access {
    /*///////////////////////////////////////////////////////////////
                         Immutables & Constants
    //////////////////////////////////////////////////////////////*/

    /// @notice authority to check entitlements
    RolesAuthority public immutable authority;

    /// @notice bytes sig for erc20 token transfer function
    bytes4 private constant _ERC20_TRANSFER_SELECTOR = bytes4(keccak256("transfer(address,uint256)"));

    constructor(address _authority) {
        if (_authority == address(0)) revert BadAddress();

        authority = RolesAuthority(_authority);
    }

    /**
     * @dev queries if msg.sender is fund admin
     *
     */
    function _isFundAdmin() internal view virtual returns (bool) {
        return authority.doesUserHaveRole(msg.sender, Role.System_FundAdmin);
    }

    /**
     * @dev asserts that msg.sender is fund admin
     *
     */
    function _assertFundAdmin() internal view virtual {
        if (!_isFundAdmin()) revert NotPermissioned();
    }

    /**
     * @dev asserts that address is able to call function
     *
     */
    function _assertPermission(address addr) internal view virtual {
        _assertCanCall(addr, address(this), msg.sig);
    }

    /**
     * @dev asserts that address is able to transfer erc20 token
     *
     */
    function _assertCanReceive(address token, address addr) internal view virtual {
        _assertCanCall(addr, token, _ERC20_TRANSFER_SELECTOR);
    }

    /**
     * @dev asserts that two addresses can transfer erc20 token
     *
     */
    function _assertCanReceive(address token, address addr1, address addr2) internal view virtual {
        _assertCanCall(addr1, addr2, token, _ERC20_TRANSFER_SELECTOR);
    }

    /**
     * @dev call authority and asserts if address can call function on target
     *
     */
    function _assertCanCall(address addr, address target, bytes4 functionSig) internal view virtual {
        if (!authority.canCall(addr, target, functionSig)) revert NotPermissioned();
    }

    /**
     * @dev call authority and asserts if two addresses can call function on target
     *
     */
    function _assertCanCall(address addr1, address addr2, address target, bytes4 functionSig) internal view virtual {
        if (!authority.canCall(addr1, addr2, target, functionSig)) revert NotPermissioned();
    }
}
