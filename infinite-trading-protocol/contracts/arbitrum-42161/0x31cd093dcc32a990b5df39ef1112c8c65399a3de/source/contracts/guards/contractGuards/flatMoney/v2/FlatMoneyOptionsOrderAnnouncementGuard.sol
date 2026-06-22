// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;
pragma experimental ABIEncoderV2;

import {SafeMath} from "@openzeppelin/contracts/math/SafeMath.sol";
import {SignedSafeMath} from "@openzeppelin/contracts/math/SignedSafeMath.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/SafeCast.sol";

import {FlatcoinModuleKeys} from "../../../../utils/flatMoney/libraries/FlatcoinModuleKeys.sol";
import {IOrderAnnouncementModule} from "../../../../interfaces/flatMoney/v2/IOrderAnnouncementModule.sol";
import {IFlatcoinVaultV2} from "../../../../interfaces/flatMoney/v2/IFlatcoinVaultV2.sol";
import {ILeverageModuleV2} from "../../../../interfaces/flatMoney/v2/ILeverageModuleV2.sol";
import {IGuard} from "../../../../interfaces/guards/IGuard.sol";
import {IHasSupportedAsset} from "../../../../interfaces/IHasSupportedAsset.sol";
import {IPoolManagerLogic} from "../../../../interfaces/IPoolManagerLogic.sol";
import {ITransactionTypes} from "../../../../interfaces/ITransactionTypes.sol";
import {DhedgeNftTrackerStorage} from "../../../../utils/tracker/DhedgeNftTrackerStorage.sol";
import {TxDataUtils} from "../../../../utils/TxDataUtils.sol";

contract FlatMoneyOptionsOrderAnnouncementGuard is IGuard, ITransactionTypes, TxDataUtils {
  using SignedSafeMath for int256;
  using SafeCast for int256;
  using SafeMath for uint256;
  using SafeCast for uint256;

  uint256 public constant MAX_ALLOWED_LEVERAGE = 6e18;

  bytes32 public constant NFT_TYPE = keccak256("FLAT_MONEY_V2_LEVERAGE_NFT");

  DhedgeNftTrackerStorage public immutable nftTracker;

  /// @param _nftTracker dHEDGE system NFT tracker contract address
  constructor(DhedgeNftTrackerStorage _nftTracker) {
    require(address(_nftTracker) != address(0), "invalid nftTracker");

    nftTracker = _nftTracker;
  }

  /// @notice Retrieves the tokenIds owned by the specified PoolLogic address
  /// @param _poolLogic The address of the PoolLogic contract
  /// @return tokenIds An array of uint256 representing the tokenIds owned by the PoolLogic address
  function getOwnedTokenIds(address _poolLogic) public view returns (uint256[] memory tokenIds) {
    tokenIds = nftTracker.getAllUintIds(NFT_TYPE, _poolLogic);
  }

  /// @param _poolManagerLogic Address of the PoolManagerLogic contract
  /// @param _to OrderAnnouncement contract address
  /// @param _data Transaction data payload
  /// @return txType The transaction type of a given transaction data
  /// @return isPublic If the transaction is public or private
  function txGuard(
    address _poolManagerLogic,
    address _to,
    bytes memory _data
  ) external view override returns (uint16 txType, bool) {
    address poolLogic = IPoolManagerLogic(_poolManagerLogic).poolLogic();
    bytes4 method = getMethod(_data);
    IFlatcoinVaultV2 vault = IOrderAnnouncementModule(_to).vault();
    address collateralAsset = vault.collateral();
    address leverageModule = vault.moduleAddress(FlatcoinModuleKeys._LEVERAGE_MODULE_KEY);

    if (method == IOrderAnnouncementModule.announceLeverageOpen.selector) {
      require(IHasSupportedAsset(_poolManagerLogic).isSupportedAsset(leverageModule), "unsupported destination asset");

      (uint256 margin, uint256 size) = abi.decode(getParams(_data), (uint256, uint256));
      uint256 resultingLeverage = _getResultingLeverage(margin, size);
      require(resultingLeverage <= MAX_ALLOWED_LEVERAGE, "leverage too high");

      txType = uint16(TransactionType.FlatMoneyLeverageOpen);
    } else if (method == IOrderAnnouncementModule.announceLeverageAdjust.selector) {
      // Adjusting leverage position allows some portion of collateral to be withdrawn
      require(IHasSupportedAsset(_poolManagerLogic).isSupportedAsset(collateralAsset), "unsupported destination asset");

      require(IHasSupportedAsset(_poolManagerLogic).isSupportedAsset(leverageModule), "unsupported destination asset");

      (uint256 tokenId, int256 marginAdjustment, int256 additionalSizeAdjustment) = abi.decode(
        getParams(_data),
        (uint256, int256, int256)
      );

      require(_isTokenIdOwned(tokenId, poolLogic), "position is not in track");
      int256 currentMargin = ILeverageModuleV2(leverageModule).getPositionSummary(tokenId).marginAfterSettlement;
      int256 resultingMargin = currentMargin.add(marginAdjustment);
      require(resultingMargin > 0, "adjusted margin is negative");

      int256 currentAdditonalSize = (vault.getPosition(tokenId).additionalSize).toInt256();
      int256 resultingSize = currentAdditonalSize.add(additionalSizeAdjustment);
      require(resultingSize > 0, "adjusted size is negative");

      uint256 resultingLeverage = _getResultingLeverage(resultingMargin.toUint256(), resultingSize.toUint256());
      // always allow resultingLeverage <= MAX_ALLOWED_LEVERAGE
      if (resultingLeverage > MAX_ALLOWED_LEVERAGE) {
        // allow leverage decreased
        require(
          currentMargin > 0 &&
            currentAdditonalSize > 0 &&
            // only make sense to do this stricter check if currentLeverage is over max
            // under this situation, it implies: currentMargin > 0 && currentAdditonalSize > 0
            resultingLeverage < _getResultingLeverage(currentMargin.toUint256(), currentAdditonalSize.toUint256()),
          "leverage too high"
        );
      }

      txType = uint16(TransactionType.FlatMoneyLeverageAdjust);
    } else if (method == IOrderAnnouncementModule.announceLeverageClose.selector) {
      // Closing leverage positions sends collateral back to the pool
      require(IHasSupportedAsset(_poolManagerLogic).isSupportedAsset(collateralAsset), "unsupported destination asset");

      uint256 tokenId = abi.decode(getParams(_data), (uint256));
      require(_isTokenIdOwned(tokenId, poolLogic), "position is not in track");

      txType = uint16(TransactionType.FlatMoneyLeverageClose);
    }

    return (txType, false);
  }

  /// @notice Checks if the specified tokenId is owned by the given pool
  /// @param _tokenId The specified tokenId
  /// @param _poolLogic The address of the PoolLogic contract
  /// @return valid A boolean indicating whether the specified tokenId is owned by the pool
  function _isTokenIdOwned(uint256 _tokenId, address _poolLogic) internal view returns (bool valid) {
    uint256[] memory tokenIds = getOwnedTokenIds(_poolLogic);
    for (uint256 i; i < tokenIds.length; ++i) {
      if (_tokenId == tokenIds[i]) {
        return true;
      }
    }
    return false;
  }

  /// @notice Asserts that the position to be opened meets max allowed leverage criteria.
  /// @param _margin The margin to be deposited.
  /// @param _size The size of the position.
  function _getResultingLeverage(uint256 _margin, uint256 _size) internal pure returns (uint256 resultingLeverage) {
    resultingLeverage = ((_margin.add(_size)).mul(1e18)).div(_margin);
  }
}
