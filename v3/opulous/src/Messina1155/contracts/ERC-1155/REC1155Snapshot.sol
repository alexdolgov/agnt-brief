// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import './Messina1155.sol';
import '@openzeppelin/contracts-upgradeable/utils/ArraysUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/CountersUpgradeable.sol';
import 'hardhat/console.sol';

abstract contract REC1155Snapshot is Messina1155 {
  using ArraysUpgradeable for uint256[];
  using CountersUpgradeable for CountersUpgradeable.Counter;

  // Snapshotted values have arrays of ids and the value corresponding to that id. These could be an array of a
  // Snapshot struct, but that would impede usage of functions that work on an array.
  struct Snapshots {
    uint256[] ids;
    uint256[] values;
  }

  mapping(uint256 => mapping(address => Snapshots)) private _accountBalanceSnapshots;
  mapping(uint256 => Snapshots) private _totalSupplySnapshots;

  // Snapshot ids increase monotonically, with the first value being 1. An id of 0 is invalid.
  mapping(uint256 => CountersUpgradeable.Counter) private _currentSnapshotId;
  mapping(uint256 => uint256) _totalSupply;
  /**
   * @dev Emitted by {_snapshot} when a snapshot identified by `id` is created.
   */
  event Snapshot(uint256 CollectionID, uint256 snapshotId);

  /**
   * @dev Creates a new snapshot and returns its snapshot id.
   *
   * Emits a {Snapshot} event that contains the same id.
   *
   * {_snapshot} is `internal` and you have to decide how to expose it externally. Its usage may be restricted to a
   * set of accounts, for example using {AccessControl}, or it may be open to the public.
   *
   * [WARNING]
   * ====
   * While an open way of calling {_snapshot} is required for certain trust minimization mechanisms such as forking,
   * you must consider that it can potentially be used by attackers in two ways.
   *
   * First, it can be used to increase the cost of retrieval of values from snapshots, although it will grow
   * logarithmically thus rendering this attack ineffective in the long term. Second, it can be used to target
   * specific accounts and increase the cost of ERC1155 transfers for them, in the ways specified in the Gas Costs
   * section above.
   *
   * We haven't measured the actual numbers; if this is something you're interested in please reach out to us.
   * ====
   * @param CollectionID The ID of the collection
   * @return the current snapshot ID after snapshotted
   */
  function _snapshot(uint256 CollectionID) internal virtual returns (uint256) {
    _currentSnapshotId[CollectionID].increment();

    uint256 currentId = _getCurrentSnapshotId(CollectionID);
    emit Snapshot(CollectionID, currentId);
    return currentId;
  }

  /**
   * @dev Get the current snapshotId
   * @param CollectionID The ID of the collection
   * @return the current snapshot ID
   */
  function _getCurrentSnapshotId(uint256 CollectionID) internal view virtual returns (uint256) {
    return _currentSnapshotId[CollectionID].current();
  }

  /**
   * @dev Retrieves the balance of `account` at the time `snapshotId` was created.
   * @param account The address of the user
   * @param CollectionID The ID of the collection
   * @param snapshotId The snapshotID
   * @return balanceOf at the snapshot round
   */
  function balanceOfAt(
    address account,
    uint256 CollectionID,
    uint256 snapshotId
  ) public view virtual returns (uint256) {
    (bool snapshotted, uint256 value) = _valueAt(
      snapshotId,
      _accountBalanceSnapshots[CollectionID][account],
      CollectionID
    );

    return snapshotted ? value : balanceOf(account, CollectionID);
  }

  /**
   * @dev Retrieves the total supply at the time `snapshotId` was created.
   * @param CollectionID The ID of the collection
   * @param snapshotId The snapshotID
   * @return totalSupply at the snapshot round
   */
  function totalSupplyAt(
    uint256 CollectionID,
    uint256 snapshotId
  ) public view virtual returns (uint256) {
    (bool snapshotted, uint256 value) = _valueAt(
      snapshotId,
      _totalSupplySnapshots[CollectionID],
      CollectionID
    );

    return snapshotted ? value : totalSupply(CollectionID);
  }

  function _valueAt(
    uint256 snapshotId,
    Snapshots storage snapshots,
    uint256 CollectionID
  ) private view returns (bool, uint256) {
    if (snapshotId > _getCurrentSnapshotId(CollectionID)) return (false, 0); 

    // When a valid snapshot is queried, there are three possibilities:
    //  a) The queried value was not modified after the snapshot was taken. Therefore, a snapshot entry was never
    //  created for this id, and all stored snapshot ids are smaller than the requested one. The value that corresponds
    //  to this id is the current one.
    //  b) The queried value was modified after the snapshot was taken. Therefore, there will be an entry with the
    //  requested id, and its value is the one to return.
    //  c) More snapshots were created after the requested one, and the queried value was later modified. There will be
    //  no entry for the requested id: the value that corresponds to it is that of the smallest snapshot id that is
    //  larger than the requested one.
    //
    // In summary, we need to find an element in an array, returning the index of the smallest value that is larger if
    // it is not found, unless said value doesn't exist (e.g. when all values are smaller). Arrays.findUpperBound does
    // exactly this.

    uint256 index = snapshots.ids.findUpperBound(snapshotId);

    if (index == snapshots.ids.length) {
      return (false, 0);
    } else {
      return (true, snapshots.values[index]);
    }
  }

  /**
   * @dev Update snapshot of collectionID/ tokenID's holder balance
   * @param account The address of the MFT Holder
   * @param CollectionID The ID of the collection
   */
  function _updateAccountSnapshot(address account, uint256 CollectionID) internal {
    _updateSnapshot(
      _accountBalanceSnapshots[CollectionID][account],
      balanceOf(account, CollectionID),
      CollectionID
    );
  }

  /**
   * @dev Update snapshot of collectionID/ tokenID's total supply
   * @param CollectionID The ID of the collection
   */
  function _updateTotalSupplySnapshot(uint256 CollectionID) internal {
    _updateSnapshot(_totalSupplySnapshots[CollectionID], totalSupply(CollectionID), CollectionID);
  }

  function _updateSnapshot(
    Snapshots storage snapshots,
    uint256 currentValue,
    uint256 CollectionID
  ) private {
    uint256 currentId = _getCurrentSnapshotId(CollectionID);
    if (_lastSnapshotId(snapshots.ids) < currentId) {
      snapshots.ids.push(currentId);
      snapshots.values.push(currentValue);
    }
  }

  function _lastSnapshotId(uint256[] storage ids) private view returns (uint256) {
    if (ids.length == 0) {
      return 0;
    } else {
      return ids[ids.length - 1];
    }
  }

  /**
   * @dev Indicates whether any token exist with a given id, or not.
   * @param id The collectionID/ tokenID
   * @return boolean of whether the tokenID/CollectionID exists
   */
  function exists(uint256 id) public view virtual returns (bool) {
    return totalSupply(id) > 0;
  }

  /**
   * @dev Get the total supply of the collectionID/tokenID.
   * @param id The collectionID/ tokenID
   * @return total supply of the collectionID/tokenID.
   */
  function totalSupply(uint256 id) public view virtual returns (uint256) {
    return _totalSupply[id];
  }

  /**
   * @dev See {ERC1155-_beforeTokenTransfer}.
   */
  function _beforeTokenTransfer(
    address operator,
    address from,
    address to,
    uint256[] memory ids,
    uint256[] memory amounts,
    bytes memory data
  ) internal virtual override {
    super._beforeTokenTransfer(operator, from, to, ids, amounts, data);
  }
}
