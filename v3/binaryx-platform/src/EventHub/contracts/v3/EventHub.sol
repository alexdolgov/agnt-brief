// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "./interfaces/IAddressesProvider.sol";
import "./interfaces/IEventHub.sol";

contract EventHub is IEventHub, Initializable {
  IAddressesProvider public addressesProvider;

  function initialize(address _addressesProvider) public initializer {
    addressesProvider = IAddressesProvider(_addressesProvider);
  }

  function getVersion() external pure returns (uint256) {
    return 4;
  }

  // modifiers
  modifier onlyOffPlanUiStorage() {
    require(msg.sender == addressesProvider.getOffPlanUiStorage(), "EventHub: access denied. only OffPlanUiStorage allowed.");
    _;
  }
  modifier onlyOffPlanService() {
    require(msg.sender == addressesProvider.getOffPlanService(), "EventHub: access denied. only OffPlanService allowed.");
    _;
  }

  // events

  function emitOffPlanBalanceChanged(IOffPlanStructs.BalanceChange calldata balanceChange) onlyOffPlanUiStorage external {
    emit OffPlanBalanceChanged(balanceChange);
  }

  function emitOffPlanLifecycle(IOffPlanStructs.OffPlanLifecycle calldata lifecycle) onlyOffPlanService external {
    emit OffPlanLifecycle(lifecycle);
  }

  // external scs
//  function getFactory() private view returns (IOffPlanFactory factory) {
//    return IOffPlanFactory(addressesProvider.getOffPlanFactory());
//  }
}
