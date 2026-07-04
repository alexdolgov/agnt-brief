// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import {SingleAdminAccessControl} from "src/utils/SingleAdminAccessControl.sol";

/// @title ELUSD
contract ELUSD is ERC20, ERC20Permit, SingleAdminAccessControl {
    /*//////////////////////////////////////////////////////////////
                             ERRORS
    //////////////////////////////////////////////////////////////*/

    error RenounceRoleNotAllowed();
    error UserDenylisted();

    /*//////////////////////////////////////////////////////////////
                             EVENTS
    //////////////////////////////////////////////////////////////*/

    event AddedToDenylist(address indexed _address);
    event RemovedFromDenylist(address indexed _address);

    /*//////////////////////////////////////////////////////////////
                             STORAGE
    //////////////////////////////////////////////////////////////*/

    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant REDEEMER_ROLE = keccak256("REDEEMER_ROLE");

    /// @notice The role that is allowed to denylist and un-denylist addresses
    bytes32 public constant DENYLIST_MANAGER_ROLE = keccak256("DENYLIST_MANAGER_ROLE");

    /// @notice The mapping of addresses that are denylisted
    mapping(address => bool) public isDenylisted;

    /*//////////////////////////////////////////////////////////////
                             INITIALIZATION
    //////////////////////////////////////////////////////////////*/
    constructor(address _admin) ERC20("Elysia USD", "ELUSD") ERC20Permit("Elysia USD") {
        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
    }

    /*//////////////////////////////////////////////////////////////
                             ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Denylists an address
    /// @param _address The address to denylist
    function addToDenylist(address _address) external onlyRole(DENYLIST_MANAGER_ROLE) {
        isDenylisted[_address] = true;
        emit AddedToDenylist(_address);
    }

    /// @notice Removes an address from the denylist
    /// @param _address The address to remove from the denylist
    function removeFromDenylist(address _address) external onlyRole(DENYLIST_MANAGER_ROLE) {
        isDenylisted[_address] = false;
        emit RemovedFromDenylist(_address);
    }

    /*//////////////////////////////////////////////////////////////
                            AUTHORIZED FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Mints ELUSD tokens to a specified address
    /// @param _to Address to receive the minted tokens
    /// @param _amount Amount of tokens to mint
    function mint(address _to, uint256 _amount) external onlyRole(MINTER_ROLE) {
        _mint(_to, _amount);
    }

    /// @notice Burns ELUSD tokens from a specified address
    /// @param _from Address to burn the tokens from
    /// @param _amount Amount of tokens to burn
    function burn(address _from, uint256 _amount) external onlyRole(REDEEMER_ROLE) {
        _burn(_from, _amount);
    }

    /*//////////////////////////////////////////////////////////////
                            USER FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Burns ELUSD tokens from the caller's address
    /// @param _amount Amount of tokens to burn
    /// @dev Any token holder can burn their own tokens
    function burn(uint256 _amount) external {
        _burn(msg.sender, _amount);
    }

    /// @notice Renounce role is not allowed
    function renounceRole(bytes32, address) public virtual override {
        revert RenounceRoleNotAllowed();
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Prevents denylisted addresses from transferring tokens
    function _update(address from, address to, uint256 value) internal override {
        if (isDenylisted[from] || isDenylisted[to] || isDenylisted[msg.sender]) {
            revert UserDenylisted();
        }
        super._update(from, to, value);
    }
}
