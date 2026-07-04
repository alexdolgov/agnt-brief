// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {ZapTypeHash} from 'contracts/common/ZapTypeHash.sol';

import {IAlgebraV19NFT} from 'contracts/interfaces/algebrav19/IAlgebraV19NFT.sol';

import {
  IBinPoolManager,
  PoolId as PancakeV4PoolId
} from 'contracts/interfaces/pancakev4/IBinPoolManager.sol';
import {IBinPositionManager} from 'contracts/interfaces/pancakev4/IBinPositionManager.sol';
import {IBinPositionManager} from 'contracts/interfaces/pancakev4/IBinPositionManager.sol';
import {ICLPositionManager as IPancakeV4CLNFT} from
  'contracts/interfaces/pancakev4/ICLPositionManager.sol';
import {ISolidlyV3Pool} from 'contracts/interfaces/solidlyv3/ISolidlyV3Pool.sol';
import {IUniswapv3NFT} from 'contracts/interfaces/uniswapv3/IUniswapv3NFT.sol';
import {
  IPositionManager as IUniswapV4NFT,
  PositionInfo
} from 'contracts/interfaces/uniswapv4/IPositionManager.sol';

import {IERC1155} from 'openzeppelin/contracts/token/ERC1155/IERC1155.sol';
import {IERC20} from 'openzeppelin/contracts/token/ERC20/IERC20.sol';
import {IERC721} from 'openzeppelin/contracts/token/ERC721/IERC721.sol';
import {Strings} from 'openzeppelin/contracts/utils/Strings.sol';

import './KSZapValidatorV2Base.sol';
import {IKSZapValidatorV2Part1} from
  'contracts/interfaces/zap/validators/IKSZapValidatorV2Part1.sol';

contract KSZapValidatorV2Part1 is KSZapValidatorV2Base, IKSZapValidatorV2Part1 {
  function _prepareUniswapV3ValidationData(bytes memory _zapInfo)
    internal
    view
    returns (bytes memory)
  {
    UniswapV3ValidationData memory data;
    data.zapInfo = abi.decode(_zapInfo, (UniswapV3ZapInfo));
    if (data.zapInfo.posID == 0) {
      // minting new position, temporary store the total supply here
      data.zapInfo.posID = IUniswapv3NFT(data.zapInfo.posManager).totalSupply();
    } else {
      (,,,,,,, data.initialLiquidity,,,,) =
        IUniswapv3NFT(data.zapInfo.posManager).positions(data.zapInfo.posID);
    }
    return abi.encode(data);
  }

  function _prepareAlgebraValidationData(bytes memory _zapInfo)
    internal
    view
    returns (bytes memory)
  {
    UniswapV3ValidationData memory data;
    data.zapInfo = abi.decode(_zapInfo, (UniswapV3ZapInfo));
    if (data.zapInfo.posID == 0) {
      // minting new position, temporary store the total supply here
      data.zapInfo.posID = IAlgebraV19NFT(data.zapInfo.posManager).totalSupply();
    } else {
      (,,,,,, data.initialLiquidity,,,,) =
        IAlgebraV19NFT(data.zapInfo.posManager).positions(data.zapInfo.posID);
    }
    return abi.encode(data);
  }

  /// @notice Generate initial data for validation for zap out action
  /// @param _zapInfo contains info of zap out
  function _prepareERC20ValidationData(bytes memory _zapInfo) internal view returns (bytes memory) {
    ERC20ValidationData memory data;
    data.zapInfo = abi.decode(_zapInfo, (ERC20ZapInfo));
    data.initialBalance = data.zapInfo.token == ETH_ADDRESS
      ? data.zapInfo.recipient.balance
      : IERC20(data.zapInfo.token).balanceOf(data.zapInfo.recipient);
    return abi.encode(data);
  }

  /// @notice Generate initial data for validation zap out with multi ERC20 token
  /// @param _zapInfo contains info of zap out with multi ERC20 token
  function _prepareMultiERC20ValidationData(bytes memory _zapInfo)
    internal
    view
    returns (bytes memory)
  {
    MultiERC20ValidationData memory data;
    data.zapInfo = abi.decode(_zapInfo, (ERC20ZapInfo[]));
    data.initialBalances = new uint256[](data.zapInfo.length);

    for (uint256 i; i < data.zapInfo.length; ++i) {
      data.initialBalances[i] = data.zapInfo[i].token == ETH_ADDRESS
        ? data.zapInfo[i].recipient.balance
        : IERC20(data.zapInfo[i].token).balanceOf(data.zapInfo[i].recipient);
    }

    return abi.encode(data);
  }

  /// @notice Generate initial data for validation for zap in Solidly V3
  /// @param _zapInfo contains info of zap in Solidly V3
  function _prepareSolidlyV3ValidationData(bytes memory _zapInfo)
    internal
    view
    returns (bytes memory)
  {
    SolidlyV3ValidationData memory data;
    data.zapInfo = abi.decode(_zapInfo, (SolidlyV3ZapInfo));
    bytes32 positionKey = keccak256(
      abi.encodePacked(data.zapInfo.recipient, data.zapInfo.tickLower, data.zapInfo.tickUpper)
    );
    (data.initialLiquidity,,) = ISolidlyV3Pool(data.zapInfo.pool).positions(positionKey);
    return abi.encode(data);
  }

  /// @notice Generate initial data for validation for zap in Uniswap V4
  /// @param _zapInfo contains info of zap in Uniswap V4
  function _prepareUniswapV4ValidationData(bytes memory _zapInfo)
    internal
    view
    returns (bytes memory)
  {
    UniswapV4ValidationData memory data;
    data.zapInfo = abi.decode(_zapInfo, (UniswapV4ZapInfo));
    IUniswapV4NFT posManager = IUniswapV4NFT(data.zapInfo.posManager);
    if (data.zapInfo.tokenId == 0) {
      data.zapInfo.tokenId = posManager.nextTokenId();
    } else {
      data.initialLiquidity = posManager.getPositionLiquidity(data.zapInfo.tokenId);
    }
    return abi.encode(data);
  }

  function _preparePancakeV4BinValidationData(bytes memory _zapInfo)
    internal
    view
    returns (bytes memory)
  {
    PancakeV4BinZapInfo memory zapInfo = abi.decode(_zapInfo, (PancakeV4BinZapInfo));
    PancakeV4BinValidationData memory data;
    data.zapInfo = zapInfo;
    data.shares = new uint256[](zapInfo.deltaIds.length);
    PancakeV4PoolId poolId = PancakeV4PoolId.wrap(zapInfo.poolId);
    {
      (uint256 activeId,,) = IBinPoolManager(zapInfo.poolManager).getSlot0(poolId);
      data.activeId = int24(int256(activeId));
    }
    for (uint256 i = 0; i < zapInfo.deltaIds.length; i++) {
      int24 binId = data.activeId + zapInfo.deltaIds[i];
      uint256 tokenId = _getTokenId(poolId, binId);
      data.shares[i] = IERC1155(zapInfo.posManager).balanceOf(zapInfo.recipient, tokenId);
    }
    return abi.encode(data);
  }

  function _prepareUniversalCLValidationData(bytes memory _zapInfo)
    internal
    view
    returns (bytes memory)
  {
    UniversalCLValidationData memory data;
    data.zapInfo = abi.decode(_zapInfo, (UniversalCLZapInfo));
    if (data.zapInfo.posID == 0) {
      // minting new position, temporary store the total supply here
      data.zapInfo.posID = IUniswapv3NFT(data.zapInfo.posManager).totalSupply();
    } else {
      address posManager = data.zapInfo.posManager;
      (bool success, bytes memory result) = address(posManager).staticcall(
        abi.encodeWithSelector(IUniswapv3NFT.positions.selector, data.zapInfo.posID)
      );
      require(success, 'ZapValidator: failed to fetch position info');
      uint256 offset = 0x20 + 0x20 * uint32(data.zapInfo.offsetPositionFields >> 64);
      uint128 initialLiquidity;
      assembly {
        initialLiquidity := mload(add(result, offset))
      }
      data.initialLiquidity = initialLiquidity;
    }
    return abi.encode(data);
  }

  /// @notice Validate result for zapping into Uniswap V3
  ///   2 cases:
  ///     - new position:
  ///       + posID is the totalSupply, need to fetch the corresponding posID
  ///       + _extraData contains (recipient, posTickLower, posTickLower, minLiquidity) where:
  ///         (+) recipient is the owner of the posID
  ///         (+) posTickLower, posTickUpper are matched with position's tickLower/tickUpper
  ///         (+) pool is matched with position's pool
  ///         (+) minLiquidity <= pos.liquidity
  ///     - increase liquidity:
  ///       + _extraData contains minLiquidity, where:
  ///         (+) minLiquidity <= (pos.liquidity - initialLiquidity)
  function _validateUniswapV3Result(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    UniswapV3ValidationData memory data = abi.decode(_validationData, (UniswapV3ValidationData));
    IUniswapv3NFT posManager = IUniswapv3NFT(data.zapInfo.posManager);
    UniswapV3ExtraData memory extraData = abi.decode(_extraData, (UniswapV3ExtraData));
    uint128 newLiquidity;
    if (extraData.tickLower < extraData.tickUpper) {
      // minting a new position, need to validate many data
      // Calculate the posID and replace, it should be the last index
      uint256 posID = posManager.tokenByIndex(data.zapInfo.posID);
      // require owner of the pos id is the recipient
      if (posManager.ownerOf(posID) != extraData.recipient) return false;
      // getting pos info from Position Manager
      int24 tickLower;
      int24 tickUpper;
      (,,,,, tickLower, tickUpper, newLiquidity,,,,) = posManager.positions(posID);
      // tick ranges should match
      if (extraData.tickLower != tickLower || extraData.tickUpper != tickUpper) {
        return false;
      }
    } else {
      // not a new position, only need to verify liquidity increment
      // getting new position liquidity, make sure it is increased
      (,,,,,,, newLiquidity,,,,) = posManager.positions(data.zapInfo.posID);
    }
    return newLiquidity >= extraData.minLiquidity + data.initialLiquidity;
  }

  /// @notice Validate result for zapping into Algebra
  ///   2 cases:
  ///     - new position:
  ///       + posID is the totalSupply, need to fetch the corresponding posID
  ///       + _extraData contains (recipient, posTickLower, posTickLower, minLiquidity) where:
  ///         (+) recipient is the owner of the posID
  ///         (+) posTickLower, posTickUpper are matched with position's tickLower/tickUpper
  ///         (+) pool is matched with position's pool
  ///         (+) minLiquidity <= pos.liquidity
  ///     - increase liquidity:
  ///       + _extraData contains minLiquidity, where:
  ///         (+) minLiquidity <= (pos.liquidity - initialLiquidity)
  function _validateAlgebraResult(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    UniswapV3ValidationData memory data = abi.decode(_validationData, (UniswapV3ValidationData));
    IAlgebraV19NFT posManager = IAlgebraV19NFT(data.zapInfo.posManager);
    UniswapV3ExtraData memory extraData = abi.decode(_extraData, (UniswapV3ExtraData));
    uint128 newLiquidity;
    if (extraData.tickLower < extraData.tickUpper) {
      // minting a new position, need to validate many data
      // Calculate the posID and replace, it should be the last index
      uint256 posID = posManager.tokenByIndex(data.zapInfo.posID);
      // require owner of the pos id is the recipient
      if (posManager.ownerOf(posID) != extraData.recipient) return false;
      // getting pos info from Position Manager
      int24 tickLower;
      int24 tickUpper;
      (,,,, tickLower, tickUpper, newLiquidity,,,,) = posManager.positions(posID);
      // tick ranges should match
      if (extraData.tickLower != tickLower || extraData.tickUpper != tickUpper) {
        return false;
      }
    } else {
      // not a new position, only need to verify liquidty increment
      // getting new position liquidity, make sure it is increased
      (,,,,,, newLiquidity,,,,) = posManager.positions(data.zapInfo.posID);
    }
    return newLiquidity >= extraData.minLiquidity + data.initialLiquidity;
  }

  function _validateERC20Result(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    ERC20ValidationData memory data = abi.decode(_validationData, (ERC20ValidationData));
    uint256 minAmountOut = abi.decode(_extraData, (uint256));
    uint256 currentBalance = data.zapInfo.token == ETH_ADDRESS
      ? data.zapInfo.recipient.balance
      : IERC20(data.zapInfo.token).balanceOf(data.zapInfo.recipient);
    return currentBalance >= data.initialBalance + minAmountOut;
  }

  function _validateMultiERC20Result(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    MultiERC20ValidationData memory data = abi.decode(_validationData, (MultiERC20ValidationData));
    uint256[] memory minAmountOuts = abi.decode(_extraData, (uint256[]));
    uint256 currentBalance;
    for (uint256 i; i < data.zapInfo.length; ++i) {
      currentBalance = data.zapInfo[i].token == ETH_ADDRESS
        ? data.zapInfo[i].recipient.balance
        : IERC20(data.zapInfo[i].token).balanceOf(data.zapInfo[i].recipient);
      require(
        currentBalance >= data.initialBalances[i] + minAmountOuts[i],
        string(
          abi.encodePacked(
            'ZapValidator: insufficient output amount for token ',
            Strings.toHexString(data.zapInfo[i].token),
            '. Expected: ',
            Strings.toString(minAmountOuts[i]),
            ', Got: ',
            Strings.toString(currentBalance - data.initialBalances[i])
          )
        )
      );
    }
    return true;
  }

  function _validateSolidlyV3Result(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    SolidlyV3ValidationData memory data = abi.decode(_validationData, (SolidlyV3ValidationData));
    bytes32 positionKey = keccak256(
      abi.encodePacked(data.zapInfo.recipient, data.zapInfo.tickLower, data.zapInfo.tickUpper)
    );
    (uint256 newLiquidity,,) = ISolidlyV3Pool(data.zapInfo.pool).positions(positionKey);
    uint256 minLiquidity = abi.decode(_extraData, (uint256));
    return newLiquidity >= minLiquidity + data.initialLiquidity;
  }

  function _validatePancakeV4CLResult(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    UniswapV4ValidationData memory data = abi.decode(_validationData, (UniswapV4ValidationData));
    (, int24 tickLower, int24 tickUpper, uint128 newLiquidity,,,) =
      IPancakeV4CLNFT(data.zapInfo.posManager).positions(data.zapInfo.tokenId);
    UniswapV4ExtraData memory extraData = abi.decode(_extraData, (UniswapV4ExtraData));
    if (
      IPancakeV4CLNFT(data.zapInfo.posManager).ownerOf(data.zapInfo.tokenId) != extraData.recipient
    ) {
      return false;
    }
    if (extraData.tickLower < extraData.tickUpper) {
      // tick ranges should match
      if (extraData.tickLower != tickLower || extraData.tickUpper != tickUpper) {
        return false;
      }
    }
    return newLiquidity >= extraData.minLiquidity + data.initialLiquidity;
  }

  function _validateUniswapV4Result(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    UniswapV4ValidationData memory data = abi.decode(_validationData, (UniswapV4ValidationData));
    IUniswapV4NFT posManager = IUniswapV4NFT(data.zapInfo.posManager);
    int24 tickLower;
    int24 tickUpper;
    {
      (, PositionInfo posInfo) = posManager.getPoolAndPositionInfo(data.zapInfo.tokenId);
      assembly {
        tickLower := signextend(2, shr(8, posInfo))
        tickUpper := signextend(2, shr(32, posInfo))
      }
    }
    uint128 newLiquidity = posManager.getPositionLiquidity(data.zapInfo.tokenId);
    UniswapV4ExtraData memory extraData = abi.decode(_extraData, (UniswapV4ExtraData));
    if (posManager.ownerOf(data.zapInfo.tokenId) != extraData.recipient) {
      return false;
    }
    if (extraData.tickLower < extraData.tickUpper) {
      // tick ranges should match
      if (extraData.tickLower != tickLower || extraData.tickUpper != tickUpper) {
        return false;
      }
    }
    return newLiquidity >= extraData.minLiquidity + data.initialLiquidity;
  }

  function _validatePancakeV4BinResult(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    PancakeV4BinValidationData memory data =
      abi.decode(_validationData, (PancakeV4BinValidationData));
    PancakeV4BinExtraData memory extraData = abi.decode(_extraData, (PancakeV4BinExtraData));

    PancakeV4PoolId poolId = PancakeV4PoolId.wrap(data.zapInfo.poolId);
    for (uint256 i; i < data.zapInfo.deltaIds.length; ++i) {
      int24 binId = int24(data.activeId) + data.zapInfo.deltaIds[i];
      uint256 tokenId = _getTokenId(poolId, binId);
      uint256 mintedShares = IERC1155(data.zapInfo.posManager).balanceOf(
        data.zapInfo.recipient, tokenId
      ) - data.shares[i];
      (uint256 reserveX, uint256 reserveY,, uint256 totalShares) =
        IBinPoolManager(data.zapInfo.poolManager).getBin(poolId, uint24(binId));
      if (
        mintedShares * reserveX / totalShares < extraData.minReserveXs[i]
          || mintedShares * reserveY / totalShares < extraData.minReserveYs[i]
      ) {
        return false;
      }
    }

    return true;
  }

  /// @notice Validate result for zapping into Universal CL
  ///   2 cases:
  ///     - new position:
  ///       + posID is the totalSupply, need to fetch the corresponding posID
  ///       + _extraData contains (recipient, posTickLower, posTickLower, minLiquidity) where:
  ///         (+) recipient is the owner of the posID
  ///         (+) posTickLower, posTickUpper are matched with position's tickLower/tickUpper
  ///         (+) pool is matched with position's pool
  ///         (+) minLiquidity <= pos.liquidity
  ///     - increase liquidity:
  ///       + _extraData contains minLiquidity, where:
  ///         (+) minLiquidity <= (pos.liquidity - initialLiquidity)
  function _validateUniversalCLResult(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    UniversalCLValidationData memory data = abi.decode(_validationData, (UniversalCLValidationData));
    IUniswapv3NFT posManager = IUniswapv3NFT(data.zapInfo.posManager);
    UniswapV3ExtraData memory extraData = abi.decode(_extraData, (UniswapV3ExtraData));
    uint128 newLiquidity;

    if (extraData.tickLower < extraData.tickUpper) {
      // minting a new position, need to validate many data
      // Calculate the posID and replace, it should be the last index
      uint256 posID = posManager.tokenByIndex(data.zapInfo.posID);

      (bool success, bytes memory result) = address(posManager).staticcall(
        abi.encodeWithSelector(IUniswapv3NFT.positions.selector, posID)
      );
      require(success, 'ZapValidator: failed to fetch position info');

      // require owner of the pos id is the recipient
      if (posManager.ownerOf(posID) != extraData.recipient) return false;
      // getting pos info from Position Manager
      int24 tickLower;
      int24 tickUpper;
      uint256 offsetLower = 0x20 + 0x20 * uint32(data.zapInfo.offsetPositionFields);
      uint256 offsetUpper = 0x20 + 0x20 * uint32(data.zapInfo.offsetPositionFields >> 32);
      uint256 offsetLiquidity = 0x20 + 0x20 * uint32(data.zapInfo.offsetPositionFields >> 64);
      assembly {
        tickLower := mload(add(result, offsetLower))
        tickUpper := mload(add(result, offsetUpper))
        newLiquidity := mload(add(result, offsetLiquidity))
      }
      // tick ranges should match
      if (extraData.tickLower != tickLower || extraData.tickUpper != tickUpper) {
        return false;
      }
    } else {
      // not a new position, only need to verify liquidity increment
      // getting new position liquidity, make sure it is increased
      (bool success, bytes memory result) = address(posManager).staticcall(
        abi.encodeWithSelector(IUniswapv3NFT.positions.selector, data.zapInfo.posID)
      );
      require(success, 'ZapValidator: failed to fetch position info');

      uint256 offsetLiquidity = 0x20 + 0x20 * uint32(data.zapInfo.offsetPositionFields >> 64);
      assembly {
        newLiquidity := mload(add(result, offsetLiquidity))
      }
    }
    return newLiquidity >= extraData.minLiquidity + data.initialLiquidity;
  }

  /**
   * @notice Validate the position after removing liquidity from Uniswap V3
   * @param _extraData contains the expected liquidity to be removed
   * @param _validationData contains the initial liquidity before removing
   */
  function _validateUniswapV3Removing(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    UniswapV3ValidationData memory data = abi.decode(_validationData, (UniswapV3ValidationData));
    IUniswapv3NFT posManager = IUniswapv3NFT(data.zapInfo.posManager);
    (,,,,,,, uint128 newLiquidity,,,,) = posManager.positions(data.zapInfo.posID);
    (address owner, uint256 expectedRemoval) = abi.decode(_extraData, (address, uint256));
    if (data.initialLiquidity - newLiquidity != expectedRemoval) {
      return false;
    }
    return owner == posManager.ownerOf(data.zapInfo.posID);
  }

  /**
   * @notice Validate the position after removing liquidity from Algebra
   * @param _extraData contains the expected liquidity to be removed
   * @param _validationData contains the initial liquidity before removing
   */
  function _validateAlgebraRemoving(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    UniswapV3ValidationData memory data = abi.decode(_validationData, (UniswapV3ValidationData));
    IAlgebraV19NFT posManager = IAlgebraV19NFT(data.zapInfo.posManager);
    (,,,,,, uint128 newLiquidity,,,,) = posManager.positions(data.zapInfo.posID);
    (address owner, uint256 expectedRemoval) = abi.decode(_extraData, (address, uint256));
    if (data.initialLiquidity - newLiquidity != expectedRemoval) {
      return false;
    }
    return owner == posManager.ownerOf(data.zapInfo.posID);
  }

  /**
   * @notice Validate the position after removing liquidity from Uniswap V4
   * @param _extraData contains the expected liquidity to be removed
   * @param _validationData contains the initial liquidity before removing
   */
  function _validateUniswapV4Removing(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    UniswapV4ValidationData memory data = abi.decode(_validationData, (UniswapV4ValidationData));
    IUniswapV4NFT posManager = IUniswapV4NFT(data.zapInfo.posManager);
    uint128 newLiquidity = posManager.getPositionLiquidity(data.zapInfo.tokenId);
    (address owner, uint256 expectedRemoval) = abi.decode(_extraData, (address, uint256));
    if (data.initialLiquidity - newLiquidity != expectedRemoval) {
      return false;
    }
    return owner == posManager.ownerOf(data.zapInfo.tokenId);
  }

  /**
   * @notice Validate the position after removing liquidity from Uniswap V3
   * @param _extraData contains the expected liquidity to be removed
   * @param _validationData contains the initial liquidity before removing
   */
  function _validateUniversalCLRemoving(bytes memory _extraData, bytes memory _validationData)
    internal
    view
    returns (bool)
  {
    UniversalCLValidationData memory data = abi.decode(_validationData, (UniversalCLValidationData));
    address posManager = data.zapInfo.posManager;
    (bool success, bytes memory result) = address(posManager).staticcall(
      abi.encodeWithSelector(IUniswapv3NFT.positions.selector, data.zapInfo.posID)
    );
    require(success, 'ZapValidator: failed to fetch position info');
    uint256 offset = 0x20 + 0x20 * uint32(data.zapInfo.offsetPositionFields >> 64);
    uint128 newLiquidity;
    assembly {
      newLiquidity := mload(add(result, offset))
    }

    (address owner, uint256 expectedRemoval) = abi.decode(_extraData, (address, uint256));
    if (data.initialLiquidity - newLiquidity != expectedRemoval) {
      return false;
    }
    return owner == IERC721(posManager).ownerOf(data.zapInfo.posID) || newLiquidity == 0;
  }

  function _getPrepareDataFunction(bytes32 _type)
    internal
    pure
    override
    returns (function(bytes memory) internal view returns (bytes memory))
  {
    if (_type == UNISWAP_V3_TYPE) {
      return _prepareUniswapV3ValidationData;
    } else if (_type == ALGEBRA_V19_TYPE || _type == ALGEBRA_V19_DIRFEE_TYPE) {
      return _prepareAlgebraValidationData;
    } else if (_type == ERC20_TYPE) {
      return _prepareERC20ValidationData;
    } else if (_type == SOLIDLY_V3_TYPE) {
      return _prepareSolidlyV3ValidationData;
    } else if (_type == PANCAKE_V4_CL_TYPE || _type == UNISWAP_V4_TYPE) {
      return _prepareUniswapV4ValidationData;
    } else if (_type == MULTI_ERC20_TYPE) {
      return _prepareMultiERC20ValidationData;
    } else if (_type == UNIVERSAL_CL_TYPE) {
      return _prepareUniversalCLValidationData;
    } else if (_type == PANCAKE_V4_BIN_TYPE) {
      return _preparePancakeV4BinValidationData;
    } else if (_type == NONE_TYPE) {
      return _prepareNoneValidationData;
    } else {
      revert('ZapValidator: invalid type');
    }
  }

  function _getValidateResultsFunction(bytes32 _type)
    internal
    pure
    override
    returns (function(bytes memory, bytes memory) internal view returns (bool))
  {
    if (_type == UNISWAP_V3_TYPE) {
      return _validateUniswapV3Result;
    } else if (_type == ALGEBRA_V19_TYPE || _type == ALGEBRA_V19_DIRFEE_TYPE) {
      return _validateAlgebraResult;
    } else if (_type == ERC20_TYPE) {
      return _validateERC20Result;
    } else if (_type == SOLIDLY_V3_TYPE) {
      return _validateSolidlyV3Result;
    } else if (_type == PANCAKE_V4_CL_TYPE) {
      return _validatePancakeV4CLResult;
    } else if (_type == UNISWAP_V4_TYPE) {
      return _validateUniswapV4Result;
    } else if (_type == MULTI_ERC20_TYPE) {
      return _validateMultiERC20Result;
    } else if (_type == UNIVERSAL_CL_TYPE) {
      return _validateUniversalCLResult;
    } else if (_type == PANCAKE_V4_BIN_TYPE) {
      return _validatePancakeV4BinResult;
    } else if (_type == NONE_TYPE) {
      return _validateNoneResult;
    } else {
      revert('ZapValidator: invalid type');
    }
  }

  function _getValidateRemovingFunction(bytes32 _type)
    internal
    pure
    override
    returns (function(bytes memory, bytes memory) internal view returns (bool))
  {
    if (_type == UNISWAP_V3_TYPE) {
      return _validateUniswapV3Removing;
    } else if (_type == ALGEBRA_V19_TYPE || _type == ALGEBRA_V19_DIRFEE_TYPE) {
      return _validateAlgebraRemoving;
    } else if (_type == PANCAKE_V4_CL_TYPE || _type == UNISWAP_V4_TYPE) {
      return _validateUniswapV4Removing;
    } else if (_type == UNIVERSAL_CL_TYPE) {
      return _validateUniversalCLRemoving;
    } else if (_type == NONE_TYPE) {
      return _validateNoneRemoving;
    } else {
      revert('ZapValidator: invalid type');
    }
  }

  function _getTokenId(PancakeV4PoolId poolId, int256 binId) internal pure returns (uint256) {
    return uint256(keccak256(abi.encode(poolId, binId)));
  }
}
