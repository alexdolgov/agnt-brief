// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18;

import './HedgerPartyBV3.sol';

interface SymmCoreForDeposit {
  function getCollateral() external view returns (address);
  function deposit(uint256 amount) external;
}

struct PartyBStorageV4 {
  address[] rebalancers;
  address[] rebalancerContracts;
  address[] withdrawalAddresses;
}

contract HedgerPartyBV4 is HedgerPartyBV3 {
  function storeV4() internal pure returns (PartyBStorageV4 storage store) {
    bytes32 STORE_V4_SLOT = keccak256('perps.hedger.partyB.store.v4');
    assembly {
      store.slot := STORE_V4_SLOT
    }
  }

  modifier onlyRebalancer() override {
    require(isRebalancerWhitelisted(msg.sender), 'PartyB: Only rebalancer allowed!');
    _;
  }

  modifier onlyRebalancerContract() {
    require(isContractWhitelisted(msg.sender), 'PartyB: Only rebalancer contract allowed!');
    _;
  }

  function withdrawTo(address _to, uint256 _amount) external virtual override onlyRebalancerContract {
    require(isAddressWhitelisted(_to), 'PartyB: Only withdrawal address allowed!');
    SymmCore(storeV1().symmioAddress).withdrawTo(_to, _amount);
  }

  function rebalance(address rebalancer, address targetAddress, uint256 amount) external virtual override onlyRebalancer {
    require(isContractWhitelisted(rebalancer), 'PartyB: Rebalancer not whitelisted!');
    require(isAddressWhitelisted(targetAddress), 'PartyB: Target not whitelisted!');
    Rebalancer(rebalancer).rebalance(targetAddress, amount);
  }

  function transferBalanceToSymm() external virtual onlyBot {
    // get collateral address
    address collateral = SymmCoreForDeposit(storeV1().symmioAddress).getCollateral();
    // check balance
    uint256 balance = IERC20(collateral).balanceOf(address(this));

    require(balance > 0, 'Not enough balance');
    // check allowance, if not enough, approve
    uint256 allowance = IERC20(collateral).allowance(address(this), storeV1().symmioAddress);
    if (allowance < balance) {
      IERC20(collateral).approve(storeV1().symmioAddress, balance);
    }
    // deposit
    SymmCoreForDeposit(storeV1().symmioAddress).deposit(balance);
  }

  function addRebalancerContracts(address[] calldata contracts) external onlyOwner {
    require(contracts.length > 0, 'PartyB: No rebalancer contracts provided');
    PartyBStorageV4 storage sv4 = storeV4();
    _pushToArray(sv4.rebalancerContracts, contracts);
  }

  function getRebalancerContracts() public view returns (address[] memory) {
    return storeV4().rebalancerContracts;
  }

  function removeRebalancerContracts() external onlyOwner {
    PartyBStorageV4 storage sv4 = storeV4();
    delete sv4.rebalancerContracts;
  }

  function isContractWhitelisted(address _addr) internal view returns (bool) {
    PartyBStorageV4 storage sv4 = storeV4();
    return _isElementInArray(sv4.rebalancerContracts, _addr);
  }

  function addWithdrawalAddresses(address[] calldata addresses) external onlyOwner {
    PartyBStorageV4 storage sv4 = storeV4();
    _pushToArray(sv4.withdrawalAddresses, addresses);
  }

  function getWithdrawalAddresses() public view returns (address[] memory) {
    return storeV4().withdrawalAddresses;
  }

  function removeWithdrawalAddresses() external onlyOwner {
    PartyBStorageV4 storage sv4 = storeV4();
    delete sv4.withdrawalAddresses;
  }

  function isAddressWhitelisted(address _addr) internal view returns (bool) {
    PartyBStorageV4 storage sv4 = storeV4();
    return _isElementInArray(sv4.withdrawalAddresses, _addr);
  }

  function addRebalancers(address[] calldata rebalancers) external override onlyOwner {
    require(rebalancers.length > 0, 'PartyB: No rebalancer contracts provided');
    PartyBStorageV4 storage sv4 = storeV4();
    _pushToArray(sv4.rebalancers, rebalancers);
  }

  function getRebalancers() public view returns (address[] memory) {
    return storeV4().rebalancers;
  }

  function removeRebalancer() external onlyOwner {
    PartyBStorageV4 storage sv4 = storeV4();
    delete sv4.rebalancers;
  }

  function isRebalancerWhitelisted(address _addr) internal view returns (bool) {
    PartyBStorageV4 storage sv4 = storeV4();
    return _isElementInArray(sv4.rebalancers, _addr);
  }

  function _pushToArray(address[] storage array, address[] calldata items) internal {
    for (uint256 i; i < items.length; i++) {
      array.push(items[i]);
    }
  }

  function _isElementInArray(address[] memory array, address item) internal pure returns (bool) {
    for (uint256 i; i < array.length; i++) {
      if (array[i] == item) {
        return true;
      }
    }
    return false;
  }
}
