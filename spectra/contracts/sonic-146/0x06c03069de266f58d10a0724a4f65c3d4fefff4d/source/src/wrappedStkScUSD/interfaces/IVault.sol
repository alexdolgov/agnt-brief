// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

interface IVault {
    /**
     * @dev Returns the teller address for this vault instance
     */
    function hook() external view returns (address);
}
