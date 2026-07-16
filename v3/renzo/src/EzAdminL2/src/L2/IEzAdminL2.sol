// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

interface IEzAdminL2 {
    struct UpgradePayload {
        address target;
        uint256 value;
        bytes payload;
    }

    /// @dev Emitted when the pauser address is updated
    event PauserUpdated(address oldPauser, address newPauser);

    /// @dev Emitted when Upgrade is received and executed
    event UpgradeExecuted(uint32 indexed sourceChainDomain, address sender, bytes message);
}
