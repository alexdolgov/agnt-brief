// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.26;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";

import {IAccessRegistry} from "./interfaces/IAccessRegistry.sol";
import {Errors} from "./libraries/Errors.sol";

/// @title StakeStone USD Token (SSUSD)
/// @author luoyhang003
/// @notice ERC20 token with minting and blacklist transfer restrictions
/// @dev Combines OpenZeppelin ERC20 and AccessControl
contract Token is ERC20, AccessControl {
    /*//////////////////////////////////////////////////////////////////////////
                                    STATE VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Role identifier for minter accounts(contracts).
    /// @dev Calculated as keccak256("MINTER_ROLE").
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    /// @notice Reference to the access registry contract used for blacklist checks
    /// @dev Must implement the IAccessRegistry interface
    IAccessRegistry public immutable accessRegistry;

    /*//////////////////////////////////////////////////////////////////////////
                                    CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Deploys the token and assigns DEFAULT_ADMIN_ROLE
    /// @param _admin Address that will receive the default admin role
    /// @param _accessRegistry Address of the access registry contract used for blacklist validation
    constructor(
        address _admin,
        address _accessRegistry
    ) ERC20("StakeStone USD", "STONEUSD") {
        if (_admin == address(0)) revert Errors.ZeroAddress();

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);

        accessRegistry = IAccessRegistry(_accessRegistry);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Checks whether a given address is blacklisted
    /// @param _account The address to check
    /// @return True if the address is blacklisted, false otherwise
    function isBlacklisted(address _account) external view returns (bool) {
        return accessRegistry.isBlacklisted(_account);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Mint new tokens to a given address
    /// @dev Only callable by addresses with MINTER_ROLE
    /// @param _to The address to receive the minted tokens
    /// @param _amount The amount of tokens to mint
    function mint(address _to, uint256 _amount) external onlyRole(MINTER_ROLE) {
        _mint(_to, _amount);
    }

    /// @notice Burn tokens
    /// @param _amount The amount of tokens to burn
    function burn(uint256 _amount) external {
        _burn(msg.sender, _amount);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Overrides the _update function to enforce transfer restrictions
    /// @dev Prevents transfers if either sender or receiver is blacklisted
    /// @param _from the address tokens are being transferred from
    /// @param _to the address tokens are being transferred to
    /// @param _amount the amount of tokens being transferred
    function _update(
        address _from,
        address _to,
        uint256 _amount
    ) internal override {
        if (
            accessRegistry.isBlacklisted(_from) ||
            accessRegistry.isBlacklisted(_to)
        ) revert Errors.TransferBlacklisted();

        super._update(_from, _to, _amount);
    }
}
