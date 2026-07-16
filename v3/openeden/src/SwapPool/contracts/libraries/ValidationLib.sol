// SPDX-License-Identifier: Business Source License 1.1
pragma solidity ^0.8.22;

/**
 * @title ValidationLib
 * @notice Pure validation functions extracted from SwapPool for reusability and code organization
 */
library ValidationLib {
    /**
     * @notice Validates that an address is not zero
     * @param addr The address to validate
     */
    function validateAddress(address addr) internal pure {
        if (addr == address(0)) revert("ZERO_ADDRESS");
    }

    /**
     * @notice Validates that an amount is greater than zero
     * @param amount The amount to validate
     */
    function validateAmount(uint256 amount) internal pure {
        if (amount == 0) revert("ZERO_AMOUNT");
    }

    /**
     * @notice Validates a token pair (both non-zero and different)
     * @param tokenA First token address
     * @param tokenB Second token address
     */
    function validateTokenPair(address tokenA, address tokenB) internal pure {
        if (tokenA == address(0) || tokenB == address(0)) revert("ZERO_ADDRESS");
        if (tokenA == tokenB) revert("INVALID_TOKEN_PAIR");
    }

    /**
     * @notice Validates that destination is not the treasury.
     *         Checks both external treasury (when not contract-held) and
     *         the pool contract itself (always, for contract-held mode).
     * @param destination The destination address to check
     * @param treasury The treasury address
     * @param contractHeld Whether contract-held mode is enabled
     * @param self The pool contract address (address(this) at the call site)
     */
    function validateDestinationNotTreasury(
        address destination,
        address treasury,
        bool contractHeld,
        address self
    ) internal pure {
        // SC-M3: prevent sending to the contract itself when it holds funds
        if (destination == self) revert("DESTINATION_CANNOT_BE_TREASURY");
        if (!contractHeld && destination == treasury) {
            revert("TREASURY_CANNOT_BE_DESTINATION");
        }
    }

    /**
     * @notice Checks if an address is a contract
     * @param account The address to check
     * @return True if the address has code, false otherwise
     */
    function isContract(address account) internal view returns (bool) {
        return account.code.length > 0;
    }
}
