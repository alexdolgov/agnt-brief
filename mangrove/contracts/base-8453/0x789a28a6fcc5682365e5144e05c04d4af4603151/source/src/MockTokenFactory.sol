// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {MockToken} from "./MockToken.sol";
import {LibClone} from "lib/solady/src/utils/LibClone.sol";

/**
 * @title MockTokenFactory
 * @dev Factory contract for creating ERC20-compliant MockToken clones.
 *      Provides standard and deterministic clone deployment, as well as address prediction.
 */
contract MockTokenFactory {
  using LibClone for address;

  /// @notice Address of the MockToken implementation used for cloning.
  address internal immutable _IMPLEMENTATION;

  /**
   * @notice Contract constructor.
   * @dev Deploys the MockToken implementation contract to be used for clones.
   */
  constructor() {
    _IMPLEMENTATION = address(new MockToken());
  }

  /**
   * @notice Returns the address of the MockToken implementation contract used for creating clones.
   * @return The address of the implementation contract.
   */
  function implementation() public view returns (address) {
    return _IMPLEMENTATION;
  }

  /**
   * @notice Deploys a new MockToken clone and initializes it.
   * @dev Uses the default non-deterministic cloning.
   * @param name The name of the ERC20 token.
   * @param symbol The ERC20 token symbol.
   * @param decimals The number of decimals used by the token.
   * @param owner The address to be set as the token owner.
   * @return token The address of the newly created MockToken clone.
   */
  function create(string memory name, string memory symbol, uint8 decimals, address owner)
    public
    returns (address token)
  {
    token = _IMPLEMENTATION.clone();
    MockToken(token).initialize(name, symbol, decimals, owner);
  }

  /**
   * @notice Deploys a new deterministic MockToken clone and initializes it.
   * @dev The `salt` is hashed along with the parameters to ensure a unique address per configuration.
   * @param name The name of the ERC20 token.
   * @param symbol The ERC20 token symbol.
   * @param decimals The number of decimals used by the token.
   * @param owner The address to be set as the token owner.
   * @param salt Extra entropy to salt the deployment and compute a unique address.
   * @return token The address of the newly created deterministic MockToken clone.
   */
  function createDeterministic(string memory name, string memory symbol, uint8 decimals, address owner, bytes32 salt)
    public
    returns (address token)
  {
    salt = keccak256(abi.encode(name, symbol, decimals, owner, salt));
    token = _IMPLEMENTATION.cloneDeterministic(salt);
    MockToken(token).initialize(name, symbol, decimals, owner);
  }

  /**
   * @notice Predicts the deterministic address of a MockToken clone with the given parameters.
   * @dev Uses the same hashing logic as `createDeterministic` for address prediction.
   * @param name The name of the ERC20 token.
   * @param symbol The ERC20 token symbol.
   * @param decimals The number of decimals used by the token.
   * @param owner The address to be set as the token owner.
   * @param salt Extra entropy to salt the deployment and compute a unique address.
   * @return token The predicted address at which the clone will be deployed.
   */
  function predictDeterministicAddress(
    string memory name,
    string memory symbol,
    uint8 decimals,
    address owner,
    bytes32 salt
  ) public view returns (address token) {
    salt = keccak256(abi.encode(name, symbol, decimals, owner, salt));
    token = _IMPLEMENTATION.predictDeterministicAddress(salt, address(this));
  }
}
