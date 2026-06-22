//        __  __    __  ________  _______    ______   ________
//       /  |/  |  /  |/        |/       \  /      \ /        |
//   ____$$ |$$ |  $$ |$$$$$$$$/ $$$$$$$  |/$$$$$$  |$$$$$$$$/
//  /    $$ |$$ |__$$ |$$ |__    $$ |  $$ |$$ | _$$/ $$ |__
// /$$$$$$$ |$$    $$ |$$    |   $$ |  $$ |$$ |/    |$$    |
// $$ |  $$ |$$$$$$$$ |$$$$$/    $$ |  $$ |$$ |$$$$ |$$$$$/
// $$ \__$$ |$$ |  $$ |$$ |_____ $$ |__$$ |$$ \__$$ |$$ |_____
// $$    $$ |$$ |  $$ |$$       |$$    $$/ $$    $$/ $$       |
//  $$$$$$$/ $$/   $$/ $$$$$$$$/ $$$$$$$/   $$$$$$/  $$$$$$$$/
//
// dHEDGE DAO - https://dhedge.org
//
// Copyright (c) 2021 dHEDGE DAO
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//
// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.7.6;
pragma abicoder v2;

import "@openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "./LyraOptionMarketWrapperContractGuard.sol";
import "../../interfaces/IERC20Extended.sol";
import "../../utils/TxDataUtils.sol";
import "../../utils/tracker/DhedgeNftTrackerStorage.sol";
import "../../interfaces/guards/ITxTrackingGuard.sol";
import "../../interfaces/IPoolLogic.sol";
import "../../interfaces/IPoolManagerLogic.sol";
import "../../interfaces/IHasSupportedAsset.sol";
import "../../interfaces/lyra/IOptionMarket.sol";
import "../../interfaces/lyra/IOptionMarketViewer.sol";
import "../../interfaces/lyra/IOptionMarketWrapper.sol";
import "../../interfaces/lyra/ISynthetixAdapter.sol";
import "../../interfaces/lyra/IShortCollateral.sol";
import "../../interfaces/synthetix/IAddressResolver.sol";

/// @title Transaction guard for Lyra OptionMarketWrapper (rollups)
/// here we support the rollup functions mentioned in https://github.com/lyra-finance/lyra-protocol/blob/master/contracts/periphery/Wrapper/OptionMarketWrapper.sol
contract LyraOptionMarketWrapperContractGuardRollups is LyraOptionMarketWrapperContractGuard {
  using SafeMathUpgradeable for uint256;

  constructor(
    address _marketWrapper,
    address _marketViewer,
    address _nftTracker,
    uint256 _maxPositionCount
  )
    LyraOptionMarketWrapperContractGuard(_marketWrapper, _marketViewer, _nftTracker, _maxPositionCount)
  // solhint-disable-next-line no-empty-blocks
  {

  }

  /// @notice Transaction guard for OptionMarketWrapper - used for Toros
  /// @dev It supports close/open/forceClose position
  /// @param _poolManagerLogic the pool manager logic
  /// @param data the transaction data
  /// @return txType the transaction type of a given transaction data.
  /// @return isPublic if the transaction is public or private
  function txGuard(
    address _poolManagerLogic,
    address to,
    bytes calldata data
  ) public override returns (uint16 txType, bool isPublic) {
    settleExpiredAndFilterActivePositions(IPoolManagerLogic(_poolManagerLogic).poolLogic());

    IHasSupportedAsset poolManagerLogicAssets = IHasSupportedAsset(_poolManagerLogic);

    bytes4 method = getMethod(data);
    if (method == IOptionMarketWrapper.openLong.selector) {
      uint256 params = abi.decode(getParams(data), (uint256));

      _checkSupportedAsset(
        poolManagerLogicAssets,
        uint8(params >> 16) > 0 ? IOptionMarket.OptionType.LONG_CALL : IOptionMarket.OptionType.LONG_PUT,
        _getOptionsMarket(params)
      );
      txType = 26;
    } else if (method == IOptionMarketWrapper.addLong.selector) {
      uint256 params = abi.decode(getParams(data), (uint256));

      address optionMarket = _getOptionsMarket(params);
      IOptionMarketViewer.OptionMarketAddresses memory optionMarketAddresses = marketViewer.marketAddresses(
        optionMarket
      );

      _checkSupportedAsset(
        poolManagerLogicAssets,
        optionMarketAddresses.optionToken.positions(uint256(uint32(params >> 24))).optionType,
        optionMarket
      );
      txType = 26;
    } else if (method == IOptionMarketWrapper.reduceLong.selector) {
      uint256 params = abi.decode(getParams(data), (uint256));

      address optionMarket = _getOptionsMarket(params);
      IOptionMarketViewer.OptionMarketAddresses memory optionMarketAddresses = marketViewer.marketAddresses(
        optionMarket
      );

      _checkSupportedAsset(
        poolManagerLogicAssets,
        optionMarketAddresses.optionToken.positions(uint256(uint32(params >> 32))).optionType,
        optionMarket
      );
      txType = (uint8(params >> 24) > 0) ? 28 : 27;
    } else if (method == IOptionMarketWrapper.closeLong.selector) {
      uint256 params = abi.decode(getParams(data), (uint256));

      address optionMarket = _getOptionsMarket(params);
      IOptionMarketViewer.OptionMarketAddresses memory optionMarketAddresses = marketViewer.marketAddresses(
        optionMarket
      );

      _checkSupportedAsset(
        poolManagerLogicAssets,
        optionMarketAddresses.optionToken.positions(uint256(uint32(params >> 32))).optionType,
        optionMarket
      );
      txType = (uint8(params >> 24) > 0) ? 28 : 27;
    } else if (method == IOptionMarketWrapper.openShort.selector) {
      uint256 params = abi.decode(getParams(data), (uint256));

      _checkSupportedAsset(
        poolManagerLogicAssets,
        IOptionMarket.OptionType(uint8(params >> 16)),
        _getOptionsMarket(params)
      );
      txType = 26;
    } else if (method == IOptionMarketWrapper.addShort.selector) {
      uint256 params = abi.decode(getParams(data), (uint256));

      address optionMarket = _getOptionsMarket(params);
      IOptionMarketViewer.OptionMarketAddresses memory optionMarketAddresses = marketViewer.marketAddresses(
        optionMarket
      );

      _checkSupportedAsset(
        poolManagerLogicAssets,
        optionMarketAddresses.optionToken.positions(uint256(uint32(params >> 24))).optionType,
        optionMarket
      );
      txType = 26;
    } else if (method == IOptionMarketWrapper.reduceShort.selector) {
      uint256 params = abi.decode(getParams(data), (uint256));

      address optionMarket = _getOptionsMarket(params);
      IOptionMarketViewer.OptionMarketAddresses memory optionMarketAddresses = marketViewer.marketAddresses(
        optionMarket
      );

      _checkSupportedAsset(
        poolManagerLogicAssets,
        optionMarketAddresses.optionToken.positions(uint256(uint32(params >> 32))).optionType,
        optionMarket
      );
      txType = (uint8(params >> 24) > 0) ? 28 : 27;
    } else if (method == IOptionMarketWrapper.closeShort.selector) {
      uint256 params = abi.decode(getParams(data), (uint256));

      address optionMarket = _getOptionsMarket(params);
      IOptionMarketViewer.OptionMarketAddresses memory optionMarketAddresses = marketViewer.marketAddresses(
        optionMarket
      );

      _checkSupportedAsset(
        poolManagerLogicAssets,
        optionMarketAddresses.optionToken.positions(uint256(uint32(params >> 32))).optionType,
        optionMarket
      );
      txType = (uint8(params >> 24) > 0) ? 28 : 27;
    } else {
      (txType, isPublic) = super.txGuard(_poolManagerLogic, to, data);
    }

    return (txType, isPublic);
  }

  function _parseUint8(uint256 inp) internal pure returns (uint256) {
    return uint256(uint8(inp));
  }

  function _parseUint32Amount(uint256 inp) internal pure returns (uint256) {
    return _parseUint32(inp) * 1e16;
  }

  function _parseUint32(uint256 inp) internal pure returns (uint256) {
    return uint256(uint32(inp));
  }

  function _parseUint64Amount(uint256 inp) internal pure returns (uint256) {
    return uint256(uint64(inp)) * 1e10;
  }

  function _convertDecimal(uint256 amount, address inputAsset) internal view returns (uint256 newAmount) {
    newAmount = amount * (10**(IERC20Extended(inputAsset).decimals() - 2));
  }

  function _getOptionsMarket(uint256 params) internal view returns (address) {
    return IOptionMarketWrapper(marketWrapper).idToMarket(uint8(params));
  }
}
