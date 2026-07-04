// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {ERC20} from "./ERC20.sol";
import {UrmStructs} from "./UrmStructs.sol";
import {IRageChaosEngine} from "./IRageChaosEngine.sol";

contract Urm is ERC20 {
  // constant
  uint256 private constant VERSION = 1;
  address private constant DEAD_ADDRESS = 0x000000000000000000000000000000000000dEaD;
  uint256 private constant MAX_SUPPLY_PERCENT = 10; // maximum supply percent that can be requested
  uint256 private constant SUPPLY_DELAY = 1 days; // days between requestSupply from URM Fortress
  IRageChaosEngine private constant RCE = IRageChaosEngine(0x4C15F778Ab59F25D5dFD2dD508236a25eD2813fe);

  // event
  event UrmFortressSet(address indexed oldOwner, address indexed newOwner);
  event SupplyRequested(address indexed fortress, uint256 amount, uint256 percent);
  event UrmBurned(uint256 amount);

  // state
  address private immutable deployer;
  address private owner;
  address private pendingUrmFortress;
  address private pendingUrmFortressProposer;
  bool    private locked;
  uint256 private URM_INITIAL;
  uint256 private URM_MINTED;
  uint256 private URM_BURNED;
  uint256 private LAST_REQUEST_SUPPLY;

  // constructor
  constructor(uint256 supply) ERC20("URM Stablecoin", "URM", 18) {
      deployer = msg.sender;
      owner = msg.sender;
      _mint(owner, supply);
      URM_INITIAL = supply;
  }

  // getTotalSupply
  // get total URM supply minus the tokens that have been manually transferred to 0 or dead address
  function getTotalSupply() public view returns (uint256) {
      uint256 zeroAddressBalance = balanceOf[address(0)];
      uint256 deadAddressBalance = balanceOf[DEAD_ADDRESS];
      return totalSupply - zeroAddressBalance - deadAddressBalance;
  }

  // getInitialSupply
  // amount of URM minted on token deployment
  function getInitialSupply() public view returns (uint256) {
      return URM_INITIAL;
  }

  // getMintedSupply
  // tracks URM minted after initial mint
  function getMintedSupply() public view returns (uint256) {
      return URM_MINTED;
  }

  // getBurnedSupply
  // tracks URM burned using the main burn function, transfers to 0 address are not counted
  function getBurnedSupply() public view returns (uint256) {
      return URM_BURNED;
  }

  // getNextRequestSupplyTime
  // earliest timestamp at which the next requestSupply call is allowed
  function getNextRequestSupplyTime() public view returns (uint256) {
      return LAST_REQUEST_SUPPLY + SUPPLY_DELAY;
  }

  // getState
  function getState() external view returns (UrmStructs.UrmState memory) {
    return UrmStructs.UrmState({
      version: VERSION,
      owner: owner,
      pendingUrmFortress: pendingUrmFortress,
      pendingUrmFortressProposer: pendingUrmFortressProposer,
      deployer: deployer,
      locked: locked,
      supply: getTotalSupply(),
      initial: getInitialSupply(),
      mint: getMintedSupply(),
      burn: getBurnedSupply(),
      lastRequestSupply: LAST_REQUEST_SUPPLY
    });
  }

  // burn
  // anyone can burn URM tokens
  function burn(uint256 amount) external {
      _burn(msg.sender, amount);
      URM_BURNED += amount;

      emit UrmBurned(amount);
  }

  // requestSupply
  // URM Fortress can request supply once per day, for a maximum of 10% of the total supply
  // the supply is sent directly to the URM Fortress
  function requestSupply(uint256 percent) external returns (uint256) {
      require(msg.sender == owner, "auth");
      require(block.timestamp >= LAST_REQUEST_SUPPLY + SUPPLY_DELAY, "cool");
      require(percent > 0 && percent <= MAX_SUPPLY_PERCENT, "conf");

      uint256 supply = getTotalSupply();
      uint256 amount = (supply * percent) / 100;
      require(amount > 0, "amt");

      _mint(owner, amount);
      URM_MINTED += amount;
      LAST_REQUEST_SUPPLY = block.timestamp;

      emit SupplyRequested(owner, amount, percent);
      return amount;
  }

  // setUrmFortress
  // proposes or confirms a new URM Fortress owner; requires both RCE owners to submit the same address; blocked once locked
  function setUrmFortress(address newOwner) external {
      (address owner1, address owner2) = getOwners();
      require(msg.sender == owner1 || msg.sender == owner2, "auth");
      require(!locked, "locked");
      require(newOwner != address(0), "addr");

      bool matches = pendingUrmFortress == newOwner
        && pendingUrmFortressProposer != address(0)
        && pendingUrmFortressProposer != msg.sender;

      if (matches) {
        address old = owner;
        owner = newOwner;
        pendingUrmFortress = address(0);
        pendingUrmFortressProposer = address(0);
        emit UrmFortressSet(old, newOwner);
      } else {
        pendingUrmFortress = newOwner;
        pendingUrmFortressProposer = msg.sender;
      }
  }

  // lockUrmFortress
  // permanently prevents any further setUrmFortress calls; deployer only
  function lockUrmFortress() external {
      require(msg.sender == deployer, "auth");
      require(!locked, "locked");
      locked = true;
  }

  // getOwners
  function getOwners() internal view returns (address, address) {
      return RCE.getOwners();
  }
}
