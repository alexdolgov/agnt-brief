// SPDX-License-Identifier: MIT
pragma solidity 0.8.33;

/**
 * @title Chip Receipt Token Interface
 * @author USD.AI Foundation
 */
interface IChipReceiptToken {
    /*------------------------------------------------------------------------*/
    /* Errors                                                                 */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Error when address is blacklisted
     * @param account Blacklisted address
     */
    error BlacklistedAddress(address account);

    /*------------------------------------------------------------------------*/
    /* Chip Receipt Token API                                                */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Mint receipt token
     * @param to Account
     * @param amount Amount to mint
     */
    function mint(
        address to,
        uint256 amount
    ) external;

    /**
     * @notice Burn receipt token
     * @param from Account
     * @param amount Amount to burn
     */
    function burn(
        address from,
        uint256 amount
    ) external;
}
