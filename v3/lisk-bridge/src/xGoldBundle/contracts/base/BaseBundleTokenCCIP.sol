// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.28;

import { Ownable } from "solady/src/auth/Ownable.sol";
import { EnumerableRoles } from "solady/src/auth/EnumerableRoles.sol";
import { BaseBundleToken } from "./BaseBundleToken.sol";

/**
 * @title BaseBundleTokenCCIP
 * @notice This abstract contract extends the BaseBundleToken functionality by implementing an annual fee mechanism.
 * @dev Tracks the time since the last operation and calculates fees to be minted periodically based on the annual fee rate.
 * Fees are minted to the fee receiver as defined in the BundleStorage contract.
 * @author Swarm
 */
abstract contract BaseBundleTokenCCIP is BaseBundleToken, Ownable, EnumerableRoles {
    uint256 public constant MINTER_ROLE = uint256(keccak256("MINTER_ROLE"));
    uint256 public constant BURNER_ROLE = uint256(keccak256("BURNER_ROLE"));

    /**
     * @notice Mints a specified amount of tokens to a given address.
     * @dev Only accounts with the MINTER role can call this function.
     *
     * @param account The address that will receive the minted tokens.
     * @param amount The amount of tokens to mint.
     */
    function mint(address account, uint256 amount) external onlyRole(MINTER_ROLE) {
        _mint(account, amount);
    }

    /**
     * @notice Burns a specified amount of tokens from the sender's balance.
     * @dev Only accounts with the BURNER role can call this function.
     *
     * @param amount The amount of tokens to burn from the caller's balance.
     */
    function burn(uint256 amount) external onlyRole(BURNER_ROLE) {
        _burn(msg.sender, amount);
    }
}
