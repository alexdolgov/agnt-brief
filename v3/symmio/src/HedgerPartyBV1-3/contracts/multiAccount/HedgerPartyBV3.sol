// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18;

import './HedgerPartyBV2.sol';
import './MultiAccount.sol';

interface SymmCoreForLock {
  function lockQuote(uint256 quoteId, SingleUpnlSig memory upnlSig) external;
  function allocateForPartyB(uint256 amount, address partyA) external;
  function getNextQuoteId() external view returns (uint256);
}

contract HedgerPartyBV3 is HedgerPartyBV2 {
  function instantSendQuoteAndLock(
    address multiAccount,
    address partyA,
    bytes[] calldata partyACallData,
    uint256 allocationAmount,
    SingleUpnlSig calldata sig
  ) external virtual onlyBot {
    address symmCore = storeV1().symmioAddress;
    PartyBStorageV2 storage sv2 = storeV2();

    require(sv2.multiaccounts[multiAccount], 'PartyB: multiaccount is not whitelisted!');

    // Send Quote call
    MultiAccount(multiAccount)._call(partyA, partyACallData);

    // getNextQuoteId is actually the last quoteId created so it'll get incremented by now
    uint256 quoteId = SymmCoreForLock(symmCore).getNextQuoteId();
    _allocateAndLock(symmCore, quoteId, partyA, allocationAmount, sig);
  }

  function allocateAndLock(uint256 quoteId, address partyA, uint256 allocationAmount, SingleUpnlSig calldata sig) external virtual onlyBot {
    _allocateAndLock(storeV1().symmioAddress, quoteId, partyA, allocationAmount, sig);
  }

  function _allocateAndLock(
    address symmCore,
    uint256 quoteId,
    address partyA,
    uint256 allocationAmount,
    SingleUpnlSig calldata sig
  ) internal virtual {
    if (allocationAmount > 0) {
      SymmCoreForLock(symmCore).allocateForPartyB(allocationAmount, partyA);
    }

    SymmCoreForLock(symmCore).lockQuote(quoteId, sig);
  }
}
