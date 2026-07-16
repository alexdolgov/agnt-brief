// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {ReentrancyGuard} from "./ReentrancyGuard.sol";
import {IERC20} from "./IERC20.sol";
import {IRageChaosEngine} from "./IRageChaosEngine.sol";
import {RageStructs} from "./RageStructs.sol";

/**
 * RageDepot
 *
 * Central depot that holds RAGE tokens on behalf of multiple other contracts
 * Each registered contract has an attributed RAGE allowance that can only be increased, never decreased.
 * Registered contracts can request transfers of RAGE to recipients up to their attributed amount.
 * Adding or removing contracts requires both RCE owners to nominate the same address.
 * The automator can increase a registered contract's attribution up to the unallocated balance.
 */
contract RageDepot is ReentrancyGuard {
  // constant
  IRageChaosEngine private constant RAGE_CHAOS_ENGINE = IRageChaosEngine(0x4C15F778Ab59F25D5dFD2dD508236a25eD2813fe);
  IERC20 private constant RAGE = IERC20(0xc0df50143EA93AeC63e38A6ED4E92B378079eA15);
  uint256 private constant VERSION = 1;
  address private constant MULTISIG = 0x507fbdE39ba40DA4Fc79426AD5E3C64944fE43d4;

  // state
  address[] private contracts; // list of registered contract addresses
  mapping(address => RageStructs.DepotContract) private CONTRACTS_MAP; // mapping for all registered contracts
  RageStructs.DepotState private STATE;

  // events
  event ContractNominatedForAdd(address indexed owner, address indexed nominee);
  event ContractAdded(address indexed caller);
  event ContractNominatedForRemove(address indexed owner, address indexed nominee);
  event ContractRemoved(address indexed caller, uint256 attributed);
  event AttributionIncreased(address indexed caller, uint256 added, uint256 newTotal);
  event RageTransferred(address indexed caller, address indexed recipient, uint256 amount);
  event RageWithdrawn(uint256 amount);

  // modifier
  modifier onlyAutomator() {
    require(msg.sender == RAGE_CHAOS_ENGINE.getAutomator(), "unauthorized");
    _;
  }

  modifier onlyOwner() {
    (address owner1, address owner2) = getOwners();
    require(msg.sender == owner1 || msg.sender == owner2,"unauthorized");
    _;
  }

  modifier onlyRegisteredContract() {
    require(CONTRACTS_MAP[msg.sender].wallet != address(0), "invalidCaller");
    _;
  }

  // withdrawEth
  function withdrawEth() external nonReentrant onlyAutomator {
    uint256 balance = address(this).balance;
    require(balance > 0, "noEthBalance");
    (bool success, ) = payable(MULTISIG).call{value: balance}("");
    require(success, "ethTransferFailed");
  }

  // withdrawRage
  // withdraws all unallocated rage to the multisig
  function withdrawRage() external nonReentrant onlyAutomator {
    uint256 amount = getUnallocated();
    require(amount > 0, "noUnallocatedRage");

    require(RAGE.transfer(MULTISIG, amount), "transferFailed");

    emit RageWithdrawn(amount);
  }

  // withdrawToken
  // rage cannot be withdraw from this function
  function withdrawToken(address tokenAdr) external nonReentrant onlyAutomator {
    require(tokenAdr != address(RAGE), "cannotWithdrawRage");

    IERC20 token = IERC20(tokenAdr);
    uint256 balance = token.balanceOf(address(this));
    require(balance > 0, "noTokenBalance");
    require(token.transfer(MULTISIG, balance), "transferFailed");
  }

  // addContract
  // owner nominates a contract to be added as a registered contract
  // when both owners nominate the same address, the contract is registered
  function addContract(address caller) external nonReentrant onlyOwner {
    require(caller != address(0), "zeroAddress");
    require(CONTRACTS_MAP[caller].wallet == address(0), "alreadyRegistered");
    (address owner1,) = getOwners();

    if (msg.sender == owner1) {
        STATE.addNominee1 = caller;
    } else {
        STATE.addNominee2 = caller;
    }

    emit ContractNominatedForAdd(msg.sender, caller);

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
  function removeContract(address caller) external nonReentrant onlyOwner {
    require(CONTRACTS_MAP[caller].wallet != address(0), "invalidCaller");
    (address owner1,) = getOwners();

    if (msg.sender == owner1) {
        STATE.removeNominee1 = caller;
    } else {
        STATE.removeNominee2 = caller;
    }

    emit ContractNominatedForRemove(msg.sender, caller);

    // if both owners nominated the same address, remove it
    if (STATE.removeNominee1 != address(0) && STATE.removeNominee1 == STATE.removeNominee2) {
        uint256 attributed = CONTRACTS_MAP[caller].attributed;
        STATE.totalAttributed -= attributed;

        CONTRACTS_MAP[caller].wallet = address(0);
        CONTRACTS_MAP[caller].attributed = 0;
        CONTRACTS_MAP[caller].transferred = 0;
        CONTRACTS_MAP[caller].available = 0;
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
  function increaseAttribution(address caller, uint256 amount) external nonReentrant onlyAutomator {
    require(CONTRACTS_MAP[caller].wallet != address(0), "invalidCaller");
    require(amount > 0, "zeroAmount");
    require(amount <= getUnallocated(), "exceedsUnallocated");

    CONTRACTS_MAP[caller].attributed += amount;
    CONTRACTS_MAP[caller].available = CONTRACTS_MAP[caller].attributed - CONTRACTS_MAP[caller].transferred;
    STATE.totalAttributed += amount;

    emit AttributionIncreased(caller, amount, CONTRACTS_MAP[caller].attributed);
  }

  // requestTransfer
  // registered contract requests rage to be sent to a recipient
  function requestTransfer(address recipient, uint256 amount) external nonReentrant onlyRegisteredContract returns (bool) {
    require(recipient != address(0), "zeroRecipient");
    require(amount > 0, "zeroAmount");

    uint256 available = CONTRACTS_MAP[msg.sender].attributed - CONTRACTS_MAP[msg.sender].transferred;
    require(amount <= available, "insufficientAttribution");

    uint256 rageBalance = getRageBalance();
    require(amount <= rageBalance, "insufficientRageBalance");

    CONTRACTS_MAP[msg.sender].transferred += amount;
    CONTRACTS_MAP[msg.sender].available = CONTRACTS_MAP[msg.sender].attributed - CONTRACTS_MAP[msg.sender].transferred;
    CONTRACTS_MAP[msg.sender].transferCount += 1;
    STATE.transferCount += 1;
    STATE.transferTotal += amount;
    require(RAGE.transfer(recipient, amount), "transferFailed");

    emit RageTransferred(msg.sender, recipient, amount);
    return true;
  }

  // getAvailableFor
  // returns how much rage is currently available for a specific registered contract
  function getAvailableFor(address caller) external view returns (uint256) {
    require(CONTRACTS_MAP[caller].wallet != address(0), "contractNotRegistered");
    return CONTRACTS_MAP[caller].attributed - CONTRACTS_MAP[caller].transferred;
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

  // getRegisteredContracts
  // returns the full DepotContract struct for every registered contract
  function getRegisteredContracts() external view returns (RageStructs.DepotContract[] memory) {
    uint256 count = contracts.length;
    RageStructs.DepotContract[] memory result = new RageStructs.DepotContract[](count);
    for (uint256 i = 0; i < count; i++) {
        result[i] = CONTRACTS_MAP[contracts[i]];
    }
    return result;
  }

  // getState
  // return the state of the contract
  function getState() external view returns (RageStructs.DepotGetState memory) {
    uint256 callerCount = contracts.length;
    (address owner1, address owner2) = getOwners();
    
    uint256 totalTransferredSum;
    for (uint256 i = 0; i < callerCount; i++) {
        address caller = contracts[i];
        totalTransferredSum += CONTRACTS_MAP[caller].transferred;
    }
    uint256 totalAvailable = STATE.totalAttributed - totalTransferredSum;

    return RageStructs.DepotGetState({
        version: VERSION,
        automator: RAGE_CHAOS_ENGINE.getAutomator(),
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
}
