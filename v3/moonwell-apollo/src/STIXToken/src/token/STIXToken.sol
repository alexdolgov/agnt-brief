// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.19;

import {ERC20Burnable, ERC20} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

import {Roles} from "@protocol/core/Roles.sol";
import {CoreRef} from "@protocol/refs/CoreRef.sol";

/**
 * @title STIXToken
 * @dev ERC20Burnable token contract for the STIX token with minting and burning capabilities.
 *      Inherits from OpenZeppelin's ERC20Burnable and CoreRef for access control.
 */
contract STIXToken is ERC20Burnable, CoreRef {
    /// @notice Maximum supply of STIX tokens
    uint256 public immutable maxSupply;

    /**
     * @notice Constructor for STIXToken.
     * @param _core Address of the core contract for access control.
     * @param _maxSupply Maximum supply of the STIX tokens.
     */
    constructor(address _core, uint256 _maxSupply) ERC20("STIX Token", "STIX") CoreRef(_core) {
        maxSupply = _maxSupply;
    }

    /**
     * @notice Mint new STIX tokens.
     * @dev Mints new tokens to the specified account. Can only be called by accounts with STIX_MINTER_ROLE.
     * @param account The address of the account to mint tokens to.
     * @param amount The number of tokens to mint.
     */
    function mint(address account, uint256 amount) external whenNotPaused onlyRole(Roles.STIX_MINTER_ROLE) {
        require(totalSupply() + amount <= maxSupply, "Minting exceeds max supply");
        super._mint(account, amount);
    }
}
