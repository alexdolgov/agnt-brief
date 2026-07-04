// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.12;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/proxy/beacon/BeaconProxy.sol";
import "../interfaces/IAddressesProvider.sol";
import "../interfaces/IAccessManager.sol";
import "./OffPlanBlueprint.sol";
import "./OffPlan.sol";
import "./IOffPlanFactory.sol";

contract OffPlanFactory is Initializable, IOffPlanFactory {
  event OffPlanCreated(address pointer, uint256 timestamp);

  OffPlanBlueprint blueprint;
  IAddressesProvider public addressesProvider;
  address[] public pointers;
  mapping(address => bool) public isPointer;

  modifier onlySuperOracle() {
    IAccessManager accessManager = IAccessManager(addressesProvider.getAccessManager());
    require(accessManager.can(msg.sender, IAccessManager.Action.CreateOffPlan), "OP:F:E1: access denied");
    _;
  }

  function initialize(address _addressesProvider, address _itemImplementation) public initializer {
    addressesProvider = IAddressesProvider(_addressesProvider);
    blueprint = new OffPlanBlueprint(_itemImplementation);
  }

  function getVersion() external pure returns (uint256) {
    return 6;
  }

  // just to avoid names collision
  function getPointers() public view returns (address[] memory) {
    return pointers;
  }

  function getTotalCount() external view returns (uint256) {
    return pointers.length;
  }

  function getPointersPaginated(uint256 page, uint256 perPage) public view returns (address[] memory pointers, uint totalCount) {
    // TODO paginate
    return (
    getPointers(),
    getPointers().length
    );
  }

  function getBlueprint() public view returns (address) {
    return address(blueprint);
  }

  function getBlueprintImplementation() public view returns (address) {
    return blueprint.implementation();
  }

  function createItem(
    IOffPlanStructs.TokenInfo calldata tokenInfo,
    IOffPlanStructs.WorldAddress calldata worldAddress,
    IOffPlanStructs.OffPlanInfo calldata offPlanInfo,
    IOffPlanStructs.OffPlanPhase[] calldata offPlanPhases
  ) external onlySuperOracle returns (address) {
    BeaconProxy item = new BeaconProxy(
      address(blueprint),
      abi.encodeWithSelector(
        OffPlan(address(0)).__OffPlan_init.selector,
        addressesProvider,
        tokenInfo
      )
    );
    if (!offPlanInfo.isTest) {
      pointers.push(address(item));
    }
    isPointer[address(item)] = true;

    IOffPlan offPlan = IOffPlan(address(item));
    offPlan.updateOffPlanMetadata(
      worldAddress,
      offPlanInfo,
      offPlanPhases
    );
    offPlan.initPool();
    offPlan.initialMint();
    emit OffPlanCreated(address(item), block.timestamp);
    return address(item);
  }

  function isOffPlan(address _address) external view returns (bool) {
    return isPointer[_address];
  }

  function rmFromPointersList(address _address) onlySuperOracle external {
      for (uint i = 0; i < pointers.length; i++) {
          if (pointers[i] == _address) {
            pointers[i] = pointers[pointers.length - 1];
            pointers.pop();
          }
      }
  }

  function addToPointersList(address _address) onlySuperOracle external {
    pointers.push(_address);
  }
}
