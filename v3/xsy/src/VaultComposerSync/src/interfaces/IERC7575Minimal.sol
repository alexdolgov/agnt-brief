// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {IERC165} from "@openzeppelin/contracts/interfaces/IERC165.sol";

/**
 * @title IERC7575Minimal
 * @notice ERC-7575: Minimal interface for vaults that hold shares of a share token for reference.
 * @notice The full interface should additionally cover all ERC-4626 standard methods *without* any of ERC-20.
 */
interface IERC7575Minimal is IERC165 {
    /**
     * @dev Returns the address of the share token
     *
     * - MUST be an ERC-20 token contract.
     * - MUST NOT revert.
     */
    function share() external view returns (address shareTokenAddress);
}
