// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18;

import './HedgerPartyBV4.sol';
import './HedgerPartyBV5.sol';

contract HedgerPartyBV6 is HedgerPartyBV5 {
  function withdrawTo(address _to, uint256 _amount) external virtual override onlyRebalancerContract {
    require(isAddressWhitelisted(_to), 'PartyB: Only withdrawal address allowed!');
    address symm = storeV1().symmioAddress;
    SymmCoreWithReserveVault(symm).withdrawFromReserveVault(_amount);
    SymmCore(symm).withdrawTo(_to, _amount);
  }
}
