// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {ReentrancyGuard} from "./ReentrancyGuard.sol";
import {IERC20} from "./IERC20.sol";
import {IRageChaosEngine} from "./IRageChaosEngine.sol";
import {UrmStructs} from "./UrmStructs.sol";

contract RageDepot is ReentrancyGuard {
  // constant
  IRageChaosEngine private constant RAGE_CHAOS_ENGINE = IRageChaosEngine(0x4C15F778Ab59F25D5dFD2dD508236a25eD2813fe);
  IERC20 private constant RAGE = IERC20(0xc0df50143EA93AeC63e38A6ED4E92B378079eA15);
  uint256 private constant VERSION = 2;

  // state
  address[] private contracts; // list of registered contract addresses
  mapping(address => UrmStructs.DepotContract) private CONTRACTS_MAP; // mapping for all registered contracts
  UrmStructs.DepotState private STATE;

  // events
  event ContractAdded(address indexed caller);
  event ContractRemoved(address indexed caller, uint256 attributed);
  event AttributionIncreased(address indexed caller, address requestor, uint256 added, uint256 newTotal);
  event RageTransferred(address indexed caller, address indexed recipient, uint256 amount);
  event RageWithdrawn(uint256 amount);

  // withdrawEth
  function withdrawEth() external nonReentrant {
    require(msg.sender == getAutomator(), "auth");
    uint256 balance = address(this).balance;
    require(balance > 0, "bal");
    (bool success, ) = payable(RAGE_CHAOS_ENGINE.getMultisig()).call{value: balance}("");
    require(success, "xfer");
  }

  // withdrawRage
  // withdraws all unallocated rage to the multisig
  function withdrawRage() external nonReentrant {
    require(msg.sender == getAutomator(), "auth");
    uint256 amount = getUnallocated();
    require(amount > 0, "bal");

    require(RAGE.transfer(RAGE_CHAOS_ENGINE.getMultisig(), amount), "xfer");

    emit RageWithdrawn(amount);
  }

  // withdrawToken
  // rage cannot be withdraw from this function
  function withdrawToken(address tokenAdr) external nonReentrant {
    require(msg.sender == getAutomator(), "auth");
    require(tokenAdr != address(RAGE), "conf");

    IERC20 token = IERC20(tokenAdr);
    uint256 balance = token.balanceOf(address(this));
    require(balance > 0, "bal");
    require(token.transfer(RAGE_CHAOS_ENGINE.getMultisig(), balance), "xfer");
  }

  // addContract
  // owner nominates a contract to be added as a registered contract
  // when both owners nominate the same address, the contract is registered
  function addContract(address caller) external nonReentrant {
    (address owner1, address owner2) = getOwners();
    require(msg.sender == owner1 || msg.sender == owner2, "auth");
    require(caller != address(0), "addr");
    require(CONTRACTS_MAP[caller].wallet == address(0), "reg");

    if (msg.sender == owner1) {
        STATE.addNominee1 = caller;
    } else {
        STATE.addNominee2 = caller;
    }

    // if both owners nominated the same address, register it
    if (STATE.addNominee1 != address(0) && STATE.addNominee1 == STATE.addNominee2) {
        CONTRACTS_MAP[caller].wallet = caller;
        contracts.push(caller);

        // reset nominations
        STATE.addNominee1 = address(0);
        STATE.addNominee2 = address(0);

        emit ContractAdded(caller);
    }
  }

  // removeContract
  // owner nominates a contract to be removed
  // when both owners nominate the same address, the contract is deregistered and its attribution freed
  function removeContract(address caller) external nonReentrant {
    (address owner1, address owner2) = getOwners();
    require(msg.sender == owner1 || msg.sender == owner2, "auth");
    require(CONTRACTS_MAP[caller].wallet != address(0), "reg");

    if (msg.sender == owner1) {
        STATE.removeNominee1 = caller;
    } else {
        STATE.removeNominee2 = caller;
    }

    // if both owners nominated the same address, remove it
    if (STATE.removeNominee1 != address(0) && STATE.removeNominee1 == STATE.removeNominee2) {
        uint256 attributed = CONTRACTS_MAP[caller].attributed;
        STATE.totalAttributed -= attributed;

        CONTRACTS_MAP[caller].wallet = address(0);
        CONTRACTS_MAP[caller].attributed = 0;
        CONTRACTS_MAP[caller].transferred = 0;
        CONTRACTS_MAP[caller].transferCount = 0;

        // remove from contracts array (swap with last element)
        for (uint256 i = 0; i < contracts.length; i++) {
            if (contracts[i] == caller) {
                contracts[i] = contracts[contracts.length - 1];
                contracts.pop();
                break;
            }
        }

        // reset nominations
        STATE.removeNominee1 = address(0);
        STATE.removeNominee2 = address(0);

        emit ContractRemoved(caller, attributed);
    }
  }

  // increaseAttribution
  // add more rage to a registered contract's allowance
  // can only be called by the automator
  function increaseAttribution(address caller, uint256 amount) external nonReentrant {
    require(msg.sender == getAutomator(), "auth");
    require(CONTRACTS_MAP[caller].wallet != address(0), "reg");
    require(amount > 0, "amt");
    require(amount <= getUnallocated(), "amt");

    CONTRACTS_MAP[caller].attributed += amount;
    STATE.totalAttributed += amount;

    emit AttributionIncreased(caller, msg.sender, amount, CONTRACTS_MAP[caller].attributed);
  }

  // selfIncreaseAttribution
  // registered contract deposits its own RAGE into the depot and credits that amount to its own attribution
  function selfIncreaseAttribution(uint256 amount) external nonReentrant {
    require(CONTRACTS_MAP[msg.sender].wallet != address(0), "reg");
    require(amount > 0, "amt");

    require(RAGE.transferFrom(msg.sender, address(this), amount), "xfer");

    CONTRACTS_MAP[msg.sender].attributed += amount;
    STATE.totalAttributed += amount;

    emit AttributionIncreased(msg.sender, msg.sender, amount, CONTRACTS_MAP[msg.sender].attributed);
  }

  // pullAndIncreaseAttribution
  // caller (registered contract or automator) deposits its own RAGE into the depot, credited to a registered contract's attribution
  function pullAndIncreaseAttribution(address target, uint256 amount) external nonReentrant {
    require(CONTRACTS_MAP[msg.sender].wallet != address(0) || msg.sender == getAutomator(), "auth");
    require(CONTRACTS_MAP[target].wallet != address(0), "reg");
    require(amount > 0, "amt");

    require(RAGE.transferFrom(msg.sender, address(this), amount), "xfer");

    CONTRACTS_MAP[target].attributed += amount;
    STATE.totalAttributed += amount;

    emit AttributionIncreased(target, msg.sender, amount, CONTRACTS_MAP[target].attributed);
  }

  // requestTransfer
  // registered contract requests rage to be sent to a recipient
  function requestTransfer(address recipient, uint256 amount) external nonReentrant returns (bool) {
    require(CONTRACTS_MAP[msg.sender].wallet != address(0), "reg");
    require(recipient != address(0), "addr");
    require(amount > 0, "amt");

    uint256 available = CONTRACTS_MAP[msg.sender].attributed - CONTRACTS_MAP[msg.sender].transferred;
    require(amount <= available, "amt");

    uint256 rageBalance = getRageBalance();
    require(amount <= rageBalance, "amt");

    CONTRACTS_MAP[msg.sender].transferred += amount;
    CONTRACTS_MAP[msg.sender].transferCount += 1;
    STATE.transferCount += 1;
    STATE.transferTotal += amount;
    require(RAGE.transfer(recipient, amount), "xfer");

    emit RageTransferred(msg.sender, recipient, amount);
    return true;
  }

  // getAvailableFor
  // returns how much rage is currently available for a specific registered contract
  function getAvailableFor(address caller) external view returns (uint256) {
    require(CONTRACTS_MAP[caller].wallet != address(0), "reg");
    return CONTRACTS_MAP[caller].attributed - CONTRACTS_MAP[caller].transferred;
  }

  // getRegisteredContracts
  // returns the full DepotContract struct for every registered contract
  function getRegisteredContracts() external view returns (UrmStructs.DepotContract[] memory) {
    uint256 count = contracts.length;
    UrmStructs.DepotContract[] memory result = new UrmStructs.DepotContract[](count);
    for (uint256 i = 0; i < count; i++) {
        result[i] = CONTRACTS_MAP[contracts[i]];
        result[i].available = result[i].attributed - result[i].transferred;
    }
    return result;
  }

  // getState
  // return the state of the contract
  function getState() external view returns (UrmStructs.DepotGetState memory) {
    uint256 callerCount = contracts.length;
    (address owner1, address owner2) = getOwners();

    uint256 totalTransferredSum;
    for (uint256 i = 0; i < callerCount; i++) {
        address caller = contracts[i];
        totalTransferredSum += CONTRACTS_MAP[caller].transferred;
    }
    uint256 totalAvailable = STATE.totalAttributed - totalTransferredSum;

    return UrmStructs.DepotGetState({
        version: VERSION,
        automator: getAutomator(),
        owner1: owner1,
        owner2: owner2,
        state: STATE,
        contractCount: callerCount,
        contracts: contracts,
        rageBalance: getRageBalance(),
        totalTransferred: totalTransferredSum,
        totalAvailable: totalAvailable,
        unallocated: getUnallocated()
    });
  }

  // getAutomator
  function getAutomator() internal view returns (address) {
    return RAGE_CHAOS_ENGINE.getAutomator();
  }

  // getOwners
  function getOwners() internal view returns (address, address) {
    return RAGE_CHAOS_ENGINE.getOwners();
  }

  // getUnallocated
  // returns rage balance not attributed to any registered contract
  function getUnallocated() internal view returns (uint256) {
    uint256 totalTransferred;
    for (uint256 i = 0; i < contracts.length; i++) {
        totalTransferred += CONTRACTS_MAP[contracts[i]].transferred;
    }

    uint256 rageBalance = getRageBalance();
    uint256 totalAvailable = STATE.totalAttributed - totalTransferred;
    return rageBalance > totalAvailable ? rageBalance - totalAvailable : 0;
  }

  // getRageBalance
  function getRageBalance() internal view returns (uint256) {
    return RAGE.balanceOf(address(this));
  }
}
