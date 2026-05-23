// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import "./HelixConfigOptions.sol";
import "../base/HelixBase.sol";
import "../interfaces/IHelixConfig.sol";

/**
 * @title HelixConfig
 * @notice This contract stores mappings of useful "protocol config state", giving a central place
 *  for all other contracts to access it. For example, the TransactionLimit, or the PoolAddress. These config vars
 *  are enumerated in the `ConfigOptions` library, and can only be changed by admins of the protocol.
 * @author Helix
 */

contract HelixConfig is HelixBase {
  /// @notice Get contract's addresses in the system such as factory contract, unique identity contract, ...
  mapping(uint256 => address) public addresses;

  /// @notice Get config number variables in the system such as lateness max days, junior ratio slippage, ...
  mapping(uint256 => uint256) public numbers;

  /// @notice Get the list of accounts that do not need to own a UID token to use the system
  mapping(address => bool) public authoriserList;

  event AddressUpdated(
    address owner,
    uint256 index,
    address oldValue,
    address newValue
  );
  event NumberUpdated(
    address owner,
    uint256 index,
    uint256 oldValue,
    uint256 newValue
  );

  event AuthoriserListed(address indexed member);
  event NoListed(address indexed member);

  bool public valuesInitialized;

  /// @notice Initialize Helix config contract
  /// @param owner Account will be owner of config contract
  function initialize(address owner) public initializer {
    require(owner != address(0), "Owner address cannot be empty");

    __HelixBase_init(owner);
  }

  /// @notice Set address of contracts in the system
  /// @dev Only be called by admin
  /// @param addressIndex Index of contract in the list in HelixConfigOptions contract
  /// @param newAddress New address for the contract
  function setAddress(
    uint256 addressIndex,
    address newAddress
  ) public onlyAdmin {
    require(
      addresses[addressIndex] != newAddress && newAddress != address(0),
      "New address is not valid"
    );

    emit AddressUpdated(
      msg.sender,
      addressIndex,
      addresses[addressIndex],
      newAddress
    );
    addresses[addressIndex] = newAddress;
  }

  /// @notice Set new value for system's config number
  /// @dev Only be called by admin
  /// @param index Index of number in the list in HelixConfigOptions contract
  /// @param newNumber New value for the number
  function setNumber(uint256 index, uint256 newNumber) public onlyAdmin {
    emit NumberUpdated(msg.sender, index, numbers[index], newNumber);
    numbers[index] = newNumber;
  }
  
  /// @notice Set new value for Gnosis Safe Factory address
  /// @dev Only be called by admin
  /// @param newAddress New value for Gnosis Safe Factory address
  function setGnosisSafeFactory(
    address newAddress
  ) public onlyAdmin {
    uint256 key = uint256(
      HelixConfigOptions.Addresses.GnosisSafeFactory
    );
    emit AddressUpdated(msg.sender, key, addresses[key], newAddress);
    addresses[key] = newAddress;
  }

  /// @notice Set new value for gnosis safe implementation address
  /// @dev Only be called by admin
  /// @param newAddress New value for gnosis safe implementation
  function setGnosisSafeSingleton(
    address newAddress
  ) public onlyAdmin {
    uint256 key = uint256(
      HelixConfigOptions.Addresses.GnosisSafeSingleton
    );
    emit AddressUpdated(msg.sender, key, addresses[key], newAddress);
    addresses[key] = newAddress;
  }

  /// @notice Set new value for deal implementation repository address
  /// @dev Only be called by admin
  /// @param newAddress New value for deal implementation repository
  function setDealImplementationRepository(
    address newAddress
  ) public onlyAdmin {
    uint256 key = uint256(
      HelixConfigOptions.Addresses.DealImplementationRepository
    );
    emit AddressUpdated(msg.sender, key, addresses[key], newAddress);
    addresses[key] = newAddress;
  }

  /// @notice Set new value for Helix config address
  /// @dev Only be called by admin
  /// @param newAddress New value for Helix config
  function setHelixConfig(address newAddress) public onlyAdmin {
    uint256 key = uint256(HelixConfigOptions.Addresses.HelixConfig);
    emit AddressUpdated(msg.sender, key, addresses[key], newAddress);
    addresses[key] = newAddress;
  }

  /// @notice Get contract's addresses in the system such as factory contract, unique identity contract, ...
  /// @param index Index of contract in the list in HelixConfigOptions contract
  /// @return address Address of respective contract
  function getAddress(uint256 index) public view returns (address) {
    return addresses[index];
  }

  /// @notice Get config number variables in the system such as lateness max days, junior ratio slippage, ...
  /// @param index Index of number in the list in HelixConfigOptions contract
  /// @return number Value of respective number
  function getNumber(uint256 index) public view returns (uint256) {
    return numbers[index];
  }
}
