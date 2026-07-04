// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

interface IXChainInstantTransfer {
    /**
     * @dev Emitted when the amount of shares are moved to a shareholder account from another chain.
     *
     */
    event InstantCXTransferIn(
        address indexed account,
        uint256 indexed timestamp,
        uint256 amount,
        string memo
    );

    /**
     * @dev Emitted when the amount of shares are moved from a shareholder account to another chain.
     *
     */
    event InstantCXTransferOut(
        address indexed account,
        uint256 amount,
        string memo
    );

    function instantCXTransferIn(
        address account,
        uint256 timestamp,
        uint256 amount,
        string memory memo
    ) external;

    function instantCXTransferOut(
        address account,
        uint256 amount,
        string memory memo
    ) external;
}
