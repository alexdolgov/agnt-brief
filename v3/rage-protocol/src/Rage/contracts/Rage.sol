// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {ERC20} from "./ERC20.sol";
import {RageStructs} from "./RageStructs.sol";

contract Rage is ERC20 {
  
  // constant
  uint256 private constant VERSION = 1;
  address private constant DEAD_ADDRESS = 0x000000000000000000000000000000000000dEaD;
  uint256 private constant MAX_SUPPLY_PERCENT = 5; // maximum supply percent that can be requested
  uint256 private constant SUPPLY_DELAY = 1 days; // days between requestSupply from chaos engine
  uint256 public constant FINAL_MAX_SUPPLY = 342_500_000e18; // 342.5M supply cap

  // event
  event RageChaosEngineSet(address indexed oldOwner, address indexed newOwner);
  event SupplyRequested(address indexed rce, uint256 amount, uint256 percent);
  event RageBurned(uint256 amount);

  // state
  address private owner;
  uint256 private RAGE_INITIAL;
  uint256 private RAGE_MINTED;
  uint256 private RAGE_BURNED;
  uint256 private LAST_REQUEST_SUPPLY;

  // constructor
  constructor(uint256 supply) ERC20("Rage Protocol", "RAGE", 18) {
      owner = msg.sender;
      _mint(owner, supply);
      RAGE_INITIAL = supply;
  }

  // getTotalSupply
  // get total rage supply minus the tokens that have been manually transfered to 0 or dead address
  function getTotalSupply() public view returns (uint256) {
      uint256 zeroAddressBalance = balanceOf[address(0)];
      uint256 deadAddressBalance = balanceOf[DEAD_ADDRESS];
      return totalSupply - zeroAddressBalance - deadAddressBalance;
  }
  
  // getInitialSupply
  // amount of rage minted on token deployment
  function getInitialSupply() public view returns (uint256) {
      return RAGE_INITIAL;
  }

  // getMintedSupply
  // tracks rage minted after initial mint
  function getMintedSupply() public view returns (uint256) {
      return RAGE_MINTED;
  }

  // getBurnedSupply
  // tracks rage burned using the main burn function, transfer to 0 address are not counted
  function getBurnedSupply() public view returns (uint256) {
      return RAGE_BURNED;
  }

  // getMintableSupply
  function getMintableSupply() public view returns (uint256) {
    uint256 currentSupply = getTotalSupply();
    if (currentSupply >= FINAL_MAX_SUPPLY) return 0;
    return FINAL_MAX_SUPPLY - currentSupply;
  }

  // getState
  function getState() external view returns (RageStructs.RageState memory) {
    return RageStructs.RageState({
      version: VERSION,
      owner: owner,
      supply: getTotalSupply(),
      initial: getInitialSupply(),
      mint: getMintedSupply(),
      burn: getBurnedSupply(),
      mintable: getMintableSupply(),
      lastRequestSupply: LAST_REQUEST_SUPPLY
    });
  }

  // burn
  // anyone can burn rage tokens
  function burn(uint256 amount) external {
      _burn(msg.sender, amount);
      RAGE_BURNED += amount;

      emit RageBurned(amount);
  }

  // requestSupply
  // rageChaosEngine can request supply once per day, for a maximum of 5% of the total supply until we reach final_max_supply
  // the supply is sent directly to the rageChaosEngine
  function requestSupply(uint256 percent) external {
      require(msg.sender == owner, "unauthorized");
      require(block.timestamp >= LAST_REQUEST_SUPPLY + SUPPLY_DELAY, "mustWait24Hours");
      require(percent > 0 && percent <= MAX_SUPPLY_PERCENT, "invalidPercent");
      
      uint256 supply = getTotalSupply();
      uint256 amount = (supply * percent) / 100;
      require(amount > 0, "amountTooSmall");
      require(supply + amount <= FINAL_MAX_SUPPLY, "maxSupplyExceeded");

      _mint(owner, amount);
      RAGE_MINTED += amount;
      LAST_REQUEST_SUPPLY = block.timestamp;

      emit SupplyRequested(owner, amount, percent);
  }

  // setRageChaosEngine
  // transfer to rageChaosEngine, once done it cannot be changed as the rage chaos engine as no functions to transfer ownership
  function setRageChaosEngine(address newOwner) external {
      require(msg.sender == owner, "unauthorized");
      require(newOwner != address(0), "invalidAddress");

      owner = newOwner;
      emit RageChaosEngineSet(msg.sender, newOwner);
  }
}