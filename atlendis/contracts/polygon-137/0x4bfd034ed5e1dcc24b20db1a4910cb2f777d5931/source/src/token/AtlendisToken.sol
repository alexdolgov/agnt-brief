// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20VotesUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

/**
 * @title AtlendisToken
 * @notice Governance token for the Atlends protocol
 **/
contract AtlendisToken is
    AccessControlEnumerableUpgradeable,
    ERC20VotesUpgradeable,
    ERC20PausableUpgradeable
{
    /////////////
    // STORAGE //
    /////////////

    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    // Role allowing for transfers even when they are paused
    // Meant for token distribution by contracts
    bytes32 public constant PRIVILEDGED_TRANSFER_ROLE =
        keccak256("PRIVILEDGED_TRANSFER_ROLE");
    // Role to allow factories to give PRIVILEDGED_TRANSFER_ROLE role to contracts they create
    bytes32 public constant FACTORY_ROLE = keccak256("FACTORY_ROLE");

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
        __Pausable_init_unchained();

        maxSupply = _maxSupply;

        // factories are able to grant priviledged transfer role to deployed contracts
        _setRoleAdmin(PRIVILEDGED_TRANSFER_ROLE, FACTORY_ROLE);

        // the governance address can mint, pause and give factory role
        _setupRole(MINTER_ROLE, governance);
        _setupRole(PAUSER_ROLE, governance);
        _setupRole(FACTORY_ROLE, governance);
        _setupRole(PRIVILEDGED_TRANSFER_ROLE, governance);
        _setupRole(DEFAULT_ADMIN_ROLE, governance);
    }

    ///////////////
    // FUNCTIONS //
    ///////////////

    /**
     * @notice Set max token supply
     * Max supply can be updated by an admin
     * Max total token supply is capped, but allowed to change
     * to account for token release on multiple networks
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
     * Only accounts with MINTER_ROLES can mint tokens
     **/
    function mint(address to, uint256 amount) public {
        require(
            hasRole(MINTER_ROLE, _msgSender()),
            "Must have minter role to mint"
        );
        require(
            (totalSupply() + amount) <= maxSupply,
            "Minting over max supply"
        );
        _mint(to, amount);
    }

    /**
     * @notice Burn tokens
     * Users can burn their token, reducing the total supply
     **/
    function burn(uint256 amount) public {
        _burn(_msgSender(), amount);
    }

    /**
     * @notice Pause token transfers
     * Makes the token not transferable
     * Only PAUSER_ROLE accounts can pause token transfers
     * Only PRIVILEDGED_TRANSFER_ROLE accounts can transfer tokens at all times
     **/
    function pause() public {
        require(
            hasRole(PAUSER_ROLE, _msgSender()),
            "Must have pauser role to pause"
        );
        _pause();
    }

    /**
     * @notice Unpause token transfers
     * Makes the token transferable
     * Only PAUSER_ROLE accounts can unpause token transfers
     **/
    function unpause() public {
        require(
            hasRole(PAUSER_ROLE, _msgSender()),
            "Must have pauser role to unpause"
        );
        _unpause();
    }

    ///////////////
    // OVERRIDES //
    ///////////////

    /**
     * @notice Overriden paused function
     * Takes into account PRIVILEDGED_TRANSFER_ROLE permission
     **/
    function paused() public view override returns (bool) {
        if (hasRole(PRIVILEDGED_TRANSFER_ROLE, _msgSender())) return false;
        return PausableUpgradeable.paused();
    }

    /**
     * @notice Overriden _afterTokenTransfer function
     * Takes into account ERC20VotesUpgradeable votes count after tokens are transfered
     **/
    function _afterTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override(ERC20Upgradeable, ERC20VotesUpgradeable) {
        ERC20VotesUpgradeable._afterTokenTransfer(from, to, amount);
    }

    /**
     * @notice Overriden _beforeTokenTransfer function
     * Stops transfers if they are paused
     **/
    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override(ERC20Upgradeable, ERC20PausableUpgradeable) {
        ERC20PausableUpgradeable._beforeTokenTransfer(from, to, amount);
    }

    /**
     * @notice Overriden _burn function
     * Takes into account ERC20VotesUpgradeable votes count after tokens are burnt
     **/
    function _burn(address account, uint256 amount)
        internal
        virtual
        override(ERC20Upgradeable, ERC20VotesUpgradeable)
    {
        ERC20VotesUpgradeable._burn(account, amount);
    }

    /**
     * @notice Overriden _burn function
     * Takes into account ERC20VotesUpgradeable votes count after tokens are minted
     **/
    function _mint(address account, uint256 amount)
        internal
        virtual
        override(ERC20Upgradeable, ERC20VotesUpgradeable)
    {
        ERC20VotesUpgradeable._mint(account, amount);
    }
}
