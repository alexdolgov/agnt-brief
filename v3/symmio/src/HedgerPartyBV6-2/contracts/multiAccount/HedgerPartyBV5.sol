// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18;

import './HedgerPartyBV4.sol';

interface SymmCoreWithReserveVault {
  function withdrawFromReserveVault(uint256 amount) external;
}

contract HedgerPartyBV5 is HedgerPartyBV4 {
  function instantSendQuoteAndLockWithReserveVault(
    address multiAccount,
    address partyA,
    bytes calldata sendQuoteCalldata,
    uint256 allocationAmount,
    SingleUpnlSig calldata sig
  ) external virtual onlyBot {
    address instantOpenId;
    assembly {
      let sendQuoteArgsOffset := add(sendQuoteCalldata.offset, 4) // 196+4=200
      let partyBsWhiteListOffset := calldataload(sendQuoteArgsOffset) // 416

      // address acting as instant open id.
      // skip 32 bits for array length
      // skip 32 additional bits for the first address
      // 200 + 416 + 64 = 680
      instantOpenId := calldataload(add(sendQuoteArgsOffset, add(partyBsWhiteListOffset, 64)))
    }

    require(!instantOpenIds[instantOpenId], 'Instant open id already used');
    instantOpenIds[instantOpenId] = true;

    address symmCore = storeV1().symmioAddress;

    bytes[] memory multiaccountCallData = new bytes[](1);
    multiaccountCallData[0] = sendQuoteCalldata;

    // Send Quote call
    MultiAccount(multiAccount)._call(partyA, multiaccountCallData);

    // getNextQuoteId is actually the last quoteId created so it'll get incremented by now
    uint256 quoteId = SymmCoreForLock(symmCore).getNextQuoteId();
    _allocateAndLockWithReserveVault(symmCore, quoteId, partyA, allocationAmount, sig);
  }

  function allocateAndLockWithReserveVault(
    uint256 quoteId,
    address partyA,
    uint256 allocationAmount,
    SingleUpnlSig calldata sig
  ) external virtual onlyBot {
    _allocateAndLockWithReserveVault(storeV1().symmioAddress, quoteId, partyA, allocationAmount, sig);
  }

  function _allocateAndLockWithReserveVault(
    address symmCore,
    uint256 quoteId,
    address partyA,
    uint256 allocationAmount,
    SingleUpnlSig calldata sig
  ) internal virtual {
    if (allocationAmount > 0) {
      SymmCoreWithReserveVault(symmCore).withdrawFromReserveVault(allocationAmount);
      SymmCoreForLock(symmCore).allocateForPartyB(allocationAmount, partyA);
    }

    SymmCoreForLock(symmCore).lockQuote(quoteId, sig);
  }
}
