// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IObsoleteVault} from "./IObsoleteVault.sol";

interface IERC20 {
    function transfer(address to, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

contract VaultBurner {
    address public constant DEAD = 0x000000000000000000000000000000000000dEaD;

    IObsoleteVault public immutable vault;

    error NotOwnerOrPendingOwner();
    error TransferFailed();
    error NothingToBurn();

    constructor(address vault_) {
        vault = IObsoleteVault(vault_);
    }

    /// @notice Accept ownership of the obsolete vault (if pending) and burn all service tokens.
    function acceptOwnerAndBurnAll() external {
        address self = address(this);

        // If we are the pending owner, accept ownership first.
        if (vault.pendingOwner() == self) {
            vault.acceptOwnership();
        } else if (vault.owner() != self) {
            revert NotOwnerOrPendingOwner();
        }

        // Withdraw all serviceToken from the vault to this contract.
        address token = vault.serviceToken();
        vault.withdrawToken(token);

        // Send all serviceToken held by this contract to the dead address.
        uint256 balance = IERC20(token).balanceOf(self);
        if (balance == 0) revert NothingToBurn();

        (bool ok, bytes memory data) = token.call(
            abi.encodeWithSelector(IERC20.transfer.selector, DEAD, balance)
        );
        if (!ok || (data.length != 0 && !abi.decode(data, (bool)))) {
            revert TransferFailed();
        }
    }
}
