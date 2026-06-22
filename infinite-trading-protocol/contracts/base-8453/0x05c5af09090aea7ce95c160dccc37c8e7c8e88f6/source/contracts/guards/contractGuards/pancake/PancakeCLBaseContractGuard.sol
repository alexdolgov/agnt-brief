// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.7.6;
pragma experimental ABIEncoderV2;

import {DhedgeNftTrackerStorage} from "../../../utils/tracker/DhedgeNftTrackerStorage.sol";
import {ITxTrackingGuard} from "../../../interfaces/guards/ITxTrackingGuard.sol";
import {ITransactionTypes} from "../../../interfaces/ITransactionTypes.sol";
import {TxDataUtils} from "../../../utils/TxDataUtils.sol";

abstract contract PancakeCLBaseContractGuard is ITxTrackingGuard, TxDataUtils, ITransactionTypes {
  bytes32 public immutable NFT_TYPE;
  DhedgeNftTrackerStorage public immutable nftTracker;
  uint256 public immutable positionsLimit;
  bool public override isTxTrackingGuard = true;

  constructor(bytes32 nftType, uint256 maxPositions, address nftTrackerAddress) {
    NFT_TYPE = nftType;
    positionsLimit = maxPositions;
    nftTracker = DhedgeNftTrackerStorage(nftTrackerAddress);
  }

  /// @notice Retrieves the tokenIds owned by the specified poolLogic address
  function getOwnedTokenIds(address poolLogic) public view returns (uint256[] memory tokenIds) {
    return nftTracker.getAllUintIds(NFT_TYPE, poolLogic);
  }

  /// @notice Checks if the specified tokenId is owned by the given pool
  function isValidOwnedTokenId(address poolLogic, uint256 tokenId) public view returns (bool isValid) {
    uint256[] memory tokenIds = getOwnedTokenIds(poolLogic);
    for (uint256 i = 0; i < tokenIds.length; i++) {
      if (tokenId == tokenIds[i]) {
        return true;
      }
    }
    return false;
  }
}
