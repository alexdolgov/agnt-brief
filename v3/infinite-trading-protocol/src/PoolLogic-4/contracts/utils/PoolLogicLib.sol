//
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
// Copyright (c) 2025 dHEDGE DAO
//
// SPDX-License-Identifier: MIT

pragma solidity 0.7.6;
pragma experimental ABIEncoderV2;

import {SafeMath} from "@openzeppelin/contracts/math/SafeMath.sol";

import {IPoolManagerLogic} from "../interfaces/IPoolManagerLogic.sol";
import {IHasDaoInfo} from "../interfaces/IHasDaoInfo.sol";

library PoolLogicLib {
  using SafeMath for uint256;

  struct LiquidityMintTo {
    uint256 recipient;
    uint256 manager;
    uint256 dao;
  }

  struct PoolTokensAllocation {
    uint256 toBurn;
    uint256 toTransferManager;
    uint256 toTransferDao;
    uint256 toGetPortionFrom;
  }

  function computeLiquidityMintTo(
    uint256 _totalSupply,
    uint256 _depositValue,
    uint256 _totalValue,
    address _poolManagerLogic,
    address _poolFactory
  ) external view returns (LiquidityMintTo memory liquidityMintTo) {
    liquidityMintTo = _buildLiquidityMintTo(_totalSupply, _depositValue, _totalValue, _poolManagerLogic, _poolFactory);

    // Check supply cap only during deposit mintings to avoid withdrawals being halted during PoolLogic::_mintManagerFee()
    _validateMinting(
      _totalSupply,
      liquidityMintTo.recipient.add(liquidityMintTo.manager).add(liquidityMintTo.dao),
      _poolManagerLogic
    );
  }

  function computePoolTokensAllocation(
    uint256 _redeemAmount,
    address _poolManagerLogic,
    address _poolFactory
  ) external view returns (PoolTokensAllocation memory tokens) {
    tokens.toBurn = _redeemAmount;
    tokens.toGetPortionFrom = _redeemAmount;

    (uint256 exitFeeNumerator, uint256 poolFeeShareNumerator, uint256 feeDenominator) = IPoolManagerLogic(
      _poolManagerLogic
    ).getExitFeeInfo();

    // Exit fee is 0, hence burn full amount and process withdrawal according to the portion of this amount.
    if (exitFeeNumerator == 0) {
      return tokens;
    }

    uint256 exitFee = tokens.toBurn.mul(exitFeeNumerator).div(feeDenominator);

    tokens.toGetPortionFrom = tokens.toGetPortionFrom.sub(exitFee);

    uint256 exitFeeToTransfer = exitFee.mul(feeDenominator.sub(poolFeeShareNumerator)).div(feeDenominator);

    // Nothing to transfer to manager or DAO, 100% of exit fee is going to the pool. all tokens are burned, user's portion is reduced on size of the fee.
    if (exitFeeToTransfer == 0) {
      return tokens;
    }

    // Only tokens not intended for transfer are burned, user's portion still reduced on size of the fee.
    tokens.toBurn = tokens.toBurn.sub(exitFeeToTransfer);

    (uint256 daoFeeNumerator, uint256 daoFeeDenominator) = IHasDaoInfo(_poolFactory).getDaoFee();

    tokens.toTransferDao = exitFeeToTransfer.mul(daoFeeNumerator).div(daoFeeDenominator);
    tokens.toTransferManager = exitFeeToTransfer.sub(tokens.toTransferDao);

    require(tokens.toBurn > tokens.toTransferManager && tokens.toTransferManager > tokens.toTransferDao, "dh13");

    return tokens;
  }

  function _buildLiquidityMintTo(
    uint256 _totalSupply,
    uint256 _depositValue,
    uint256 _totalValue,
    address _poolManagerLogic,
    address _poolFactory
  ) internal view returns (LiquidityMintTo memory liquidityMintTo) {
    liquidityMintTo.recipient = _totalSupply > 0 ? _depositValue.mul(_totalSupply).div(_totalValue) : _depositValue;

    (uint256 entryFeeNumerator, uint256 poolFeeShareNumerator, uint256 feeDenominator) = IPoolManagerLogic(
      _poolManagerLogic
    ).getEntryFeeInfo();

    if (entryFeeNumerator == 0) {
      return liquidityMintTo;
    }

    uint256 entryFee = liquidityMintTo.recipient.mul(entryFeeNumerator).div(feeDenominator);

    liquidityMintTo.recipient = liquidityMintTo.recipient.sub(entryFee);

    uint256 entryFeeToMint = entryFee.mul(feeDenominator.sub(poolFeeShareNumerator)).div(feeDenominator);

    if (entryFeeToMint == 0) {
      return liquidityMintTo;
    }

    (uint256 daoFeeNumerator, uint256 daoFeeDenominator) = IHasDaoInfo(_poolFactory).getDaoFee();

    liquidityMintTo.dao = entryFeeToMint.mul(daoFeeNumerator).div(daoFeeDenominator);
    liquidityMintTo.manager = entryFeeToMint.sub(liquidityMintTo.dao);

    require(
      liquidityMintTo.recipient > liquidityMintTo.manager && liquidityMintTo.manager > liquidityMintTo.dao,
      "dh13"
    );

    return liquidityMintTo;
  }

  function _validateMinting(uint256 _totalSupply, uint256 _mintAmount, address _poolManagerLogic) internal view {
    uint256 supplyCap = IPoolManagerLogic(_poolManagerLogic).maxSupplyCap();
    if (supplyCap > 0) {
      require(_totalSupply.add(_mintAmount) <= supplyCap, "dh32");
    }
  }
}
