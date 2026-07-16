// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18;

import '@openzeppelin/contracts/utils/Address.sol';
import '@openzeppelin/contracts/interfaces/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import './HedgerPartyBV1.sol';

struct PartyBStorageV2 {
  mapping(address => bool) multiaccounts;
}

contract HedgerPartyBV2 is HedgerPartyBV1 {
  using Address for address;

  event AddMultiaccount(address indexed multiaccount);
  event RemoveMultiaccount(address indexed multiaccount);

  function storeV2() internal pure returns (PartyBStorageV2 storage store) {
    bytes32 STORE_V2_SLOT = keccak256('perps.hedger.partyB.store.v2');
    assembly {
      store.slot := STORE_V2_SLOT
    }
  }

  function _callMultipleTargets(address[] calldata _targets, bytes[] calldata _callDatas) external virtual onlyBot {
    PartyBStorageV1 storage sv1 = storeV1();
    PartyBStorageV2 storage sv2 = storeV2();

    require(_targets.length == _callDatas.length, 'PartyB: Invalid input length');

    for (uint8 i; i < _callDatas.length; i++) {
      bytes memory _callData = _callDatas[i];
      require(_callData.length >= 4, 'PartyB: Invalid call data');

      bytes4 functionSelector;
      assembly {
        functionSelector := mload(add(_callData, 0x20))
      }

      if (_targets[i] == sv1.symmioAddress) {
        require(!sv1.restrictedSelectors[functionSelector], 'PartyB: Restricted selector for bot!');
      } else {
        require(sv2.multiaccounts[_targets[i]], 'PartyB: Target is not multiaccount!');
      }

      _targets[i].functionCall(_callData);
    }
  }

  function isMultiAccountWhitelisted(address multiaccount) public view returns (bool) {
    return storeV2().multiaccounts[multiaccount];
  }

  // Only owner functions
  function _addMultiaccounts(address[] calldata multiaccounts) external onlyOwner {
    PartyBStorageV2 storage sv2 = storeV2();
    for (uint256 i; i < multiaccounts.length; i++) {
      sv2.multiaccounts[multiaccounts[i]] = true;
      emit AddMultiaccount(multiaccounts[i]);
    }
  }

  function _removeMultiaccounts(address[] calldata multiaccounts) external onlyOwner {
    PartyBStorageV2 storage sv2 = storeV2();
    for (uint256 i; i < multiaccounts.length; i++) {
      sv2.multiaccounts[multiaccounts[i]] = false;
      emit RemoveMultiaccount(multiaccounts[i]);
    }
  }
}
