// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20VotesUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/**
 * @title AtlendisTeamToken
 * @notice Team allocation token for the Atlendis protocol
 * This contract is meant to be used alongside team allocation legal contract
 **/
contract AtlendisTeamToken is
    AccessControlEnumerableUpgradeable,
    ERC20VotesUpgradeable
{
    /////////////
    // STORAGE //
    /////////////

    // Maximum token supply
    uint256 public maxSupply;

    ////////////////////
    // INITIALIZATION //
    ////////////////////

    function initialize(
        string calldata name,
        string calldata symbol,
        uint256 _maxSupply,
        address governance
    ) public initializer {
        __ERC20_init_unchained(name, symbol);

        maxSupply = _maxSupply;

        // the governance address can mint, burn, send and receive tokens
        _setupRole(DEFAULT_ADMIN_ROLE, governance);
    }

    ///////////////
    // FUNCTIONS //
    ///////////////

    /**
     * @notice Set max token supply
     * Max supply can be updated by accounts with DEFAULT_ADMIN_ROLE
     * Max total token supply is capped, but allowed to change
     **/
    function setMaxSupply(uint256 _maxSupply) public {
        require(
            hasRole(DEFAULT_ADMIN_ROLE, _msgSender()),
            "Must have admin role to set max supply"
        );
        require(
            totalSupply() <= _maxSupply,
            "Cannot set max supply inferior to current token supply"
        );
        maxSupply = _maxSupply;
    }

    /**
     * @notice Mint new tokens
     * Tokens can only be minted up to the maximum token supply
     * Only accounts with DEFAULT_ADMIN_ROLE can mint tokens
     **/
    function mint(address to, uint256 amount) public {
        require(
            hasRole(DEFAULT_ADMIN_ROLE, _msgSender()),
            "Must have admin role to mint"
        );
        require(
            (totalSupply() + amount) <= maxSupply,
            "Minting over max supply"
        );
        _mint(to, amount);
    }

    /**
     * @notice Burn tokens from token holder
     * Only accounts with DEFAULT_ADMIN_ROLE can burn holders' tokens
     * This method is meant to burn holders tokens in case of vesting stopping
     **/
    function burnFrom(uint256 amount, address from) public {
        require(
            hasRole(DEFAULT_ADMIN_ROLE, _msgSender()),
            "Must have admin role to burn holder's token"
        );
        _burn(from, amount);
    }

    ///////////////
    // OVERRIDES //
    ///////////////

    /**
     * @notice Overriden _beforeTokenTransfer function
     * Only allow transfers from and to governance in case of token exercise
     * Allows burn and mint for accounts with DEFAULT_ADMIN_ROLE
     **/
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256
    ) internal virtual override(ERC20Upgradeable) {
        require(
            from == address(0) ||
                to == address(0) ||
                hasRole(DEFAULT_ADMIN_ROLE, from) ||
                hasRole(DEFAULT_ADMIN_ROLE, to),
            "Must have admin role to transfer tokens"
        );
    }
}
