// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.18;

interface IVaultInterface {
    function accept_role_manager() external;
    function transfer_role_manager(address account) external;
    function set_role(address account, uint256 role) external;
    function set_auto_allocate(bool auto_allocate) external;
}
