// SPDX-License-Identifier: Business Source License 1.1
pragma solidity 0.8.18;

interface IAdminInstantTransfer {
    /**
     * @dev Emitted when the amount of shares are moved from one shareholder account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event InstantTransfer(address indexed from, address indexed to, uint256 amount, string memo);

    function instantTransfer(
        address from,
        address to,
        uint256 amount,
        string memory memo
    ) external;
}
