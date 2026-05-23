// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ERC20} from "lib/solady/src/tokens/ERC20.sol";
import {OwnableRoles} from "lib/solady/src/auth/OwnableRoles.sol";
import {Initializable} from "lib/solady/src/utils/Initializable.sol";

/**
 * @title MockToken
 * @dev ERC20-compliant token with OwnableRoles authorization for minting and burning.
 * Allows assigning minter and burner roles. Owner is set at deployment (`msg.sender`).
 */
contract MockToken is ERC20, OwnableRoles, Initializable {
  /// @notice Token name.
  string internal _name;
  /// @notice Token symbol.
  string internal _symbol;
  /// @notice Token decimals (immutable).
  uint8 internal _decimals;

  /// @notice Role constant for minters.
  uint256 internal constant _ROLE_MINTER = _ROLE_0;
  /// @notice Role constant for burners.
  uint256 internal constant _ROLE_BURNER = _ROLE_1;

  function initialize(string memory name_, string memory symbol_, uint8 decimals_, address owner) public initializer {
    _name = name_;
    _symbol = symbol_;
    _decimals = decimals_;
    _initializeOwner(owner);
  }

  /**
   * @notice Guard for ownership initialization; prevents double-initialization.
   * @dev Always returns false since the init function is only called once.
   * @return guard Always false.
   */
  function _guardInitializeOwner() internal pure override returns (bool guard) {
    return false;
  }

  /**
   * @notice Returns the name of the token.
   * @return The token name.
   */
  function name() public view override returns (string memory) {
    return _name;
  }

  /**
   * @notice Returns the symbol of the token.
   * @return The token symbol.
   */
  function symbol() public view override returns (string memory) {
    return _symbol;
  }

  /**
   * @notice Returns the number of decimals used for the token.
   * @return The number of decimals.
   */
  function decimals() public view override returns (uint8) {
    return _decimals;
  }

  /**
   * @notice Mint new tokens to a specified address.
   * @dev Only callable by owner or an address assigned the minter role.
   * @param to Address to receive the minted tokens.
   * @param amount Amount of tokens to mint.
   */
  function mint(address to, uint256 amount) public onlyOwnerOrRoles(_ROLE_MINTER) {
    _mint(to, amount);
  }

  /**
   * @notice Burn tokens from a specified address.
   * @dev Only callable by owner or an address assigned the burner role.
   * @param from Address from which tokens will be burned.
   * @param amount Amount of tokens to burn.
   */
  function burn(address from, uint256 amount) public onlyOwnerOrRoles(_ROLE_BURNER) {
    _burn(from, amount);
  }

  /**
   * @notice Assign or revoke the minter role for a user.
   * @dev Only callable by the contract owner.
   * @param user The address to modify the minter role for.
   * @param isMinter True to grant, false to revoke minter rights.
   */
  function setMinterRole(address user, bool isMinter) public onlyOwner {
    _updateRoles(user, _ROLE_MINTER, isMinter);
  }

  /**
   * @notice Assign or revoke the burner role for a user.
   * @dev Only callable by the contract owner.
   * @param user The address to modify the burner role for.
   * @param isBurner True to grant, false to revoke burner rights.
   */
  function setBurnerRole(address user, bool isBurner) public onlyOwner {
    _updateRoles(user, _ROLE_BURNER, isBurner);
  }
}
