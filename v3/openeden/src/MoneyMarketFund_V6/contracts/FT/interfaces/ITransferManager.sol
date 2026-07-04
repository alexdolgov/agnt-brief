// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

interface ITransferManager {
    /// @dev This is emitted when instant shareholder transfer capability status is updated
    event InstantTransferStatusUpdated(bool indexed status);
    /// @dev This is emitted when regular ERC-20 shareholder transfer capability status is updated
    event ERC20TransferStatusUpdated(bool indexed status);
    /// @dev This is emitted when regular ERC-20 3rd party transfer capability status is updated
    event ERC20ThirdPartyTransferStatusUpdated(bool indexed status);

    function enableInstantTransfer() external;

    function disableInstantTransfer() external;

    function enableERC20Transfer() external;

    function disableERC20Transfer() external;

    function enableERC20ThirdPartyTransfer() external;

    function disableERC20ThirdPartyTransfer() external;

    function isInstantTransferEnabled() external view returns (bool);

    function isERC20TransferEnabled() external view returns (bool);

    function isERC20ThirdPartyTransferEnabled() external view returns (bool);
}
