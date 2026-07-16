// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

interface IEzAdminL1 {
    struct UpgradePayload {
        address target;
        uint256 value;
        bytes payload;
    }

    /// @dev Emitted when the pauser address is updated
    event PauserUpdated(address oldPauser, address newPauser);

    /// @dev Emitted when the L2 upgrade is dispatched
    event UpgradeDispatched(
        bytes32 indexed messageId,
        uint32 indexed destinationDomain,
        address indexed destinationReceiver,
        address upgradeDispatcher,
        bytes message
    );
}
