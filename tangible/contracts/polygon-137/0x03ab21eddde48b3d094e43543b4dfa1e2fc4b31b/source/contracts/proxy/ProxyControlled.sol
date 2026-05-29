// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;


import "./UpgradeableProxy.sol";
import "../interfaces/IControllable.sol";
import "../interfaces/IProxyControlled.sol";

/// @title EIP1967 Upgradable proxy implementation.
/// @notice https://eips.ethereum.org/EIPS/eip-1967
/// @dev Only Controller has access, no time-lock period
/// @author belbix, dvpublic
contract ProxyControlled is UpgradeableProxy, IProxyControlled {

  /// @notice Version of the contract
  /// @dev Should be incremented when contract changed
  string public constant PROXY_CONTROLLED_VERSION = "1.0.0";

  /// @notice Constructor can accept only not initialized logic contracts
  error ErrorLogicAlreadyInitialized();

  /// @notice Only controller can make an upgrade
  error ErrorProxyForbidden();

  /// @notice The new contract must have the same ABI
  error ErrorWrongImplementation();


  constructor(address logic_) UpgradeableProxy(logic_) {
    //make sure that given logic is controllable and not inited
    if (IControllable(logic_).created() != 0) {
      revert ErrorLogicAlreadyInitialized();
    }
  }

  /// @notice Upgrade contract logic
  /// @dev Upgrade allowed only for Controller
  /// @param newImplementation_ New logic contract implementation address
  function upgrade(address newImplementation_) external override {
    if(! IControllable(address(this)).isController(msg.sender)) {
      revert ErrorProxyForbidden();
    }

    IControllable(address(this)).increaseRevision(_implementation());
    _upgradeTo(newImplementation_);

    // the new contract must have the same ABI and you must have the power to change it again
    if (!IControllable(address(this)).isController(msg.sender)) {
      revert ErrorWrongImplementation();
    }
  }

  /// @notice Return current logic implementation
  function implementation() external override view returns (address) {
    return _implementation();
  }
}
