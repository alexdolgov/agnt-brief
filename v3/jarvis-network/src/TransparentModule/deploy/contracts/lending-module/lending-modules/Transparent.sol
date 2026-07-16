// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.9;

import {IERC20} from '../../../@openzeppelin/contracts/token/ERC20/IERC20.sol';
import {ILendingModule} from '../interfaces/ILendingModule.sol';
import {ILendingStorageManager} from '../interfaces/ILendingStorageManager.sol';
import {SafeERC20} from '../../../@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import {SynthereumPoolMigrationFrom} from '../../synthereum-pool/common/migration/PoolMigrationFrom.sol';

// this module serves as a mock module
// it can be attached to any pool in order to avoid using a lending protocol
contract TransparentModule is ILendingModule {
  using SafeERC20 for IERC20;

  function deposit(
    ILendingStorageManager.PoolStorage calldata _poolData,
    bytes calldata,
    uint256 _amount
  )
    external
    override
    returns (
      uint256 totalInterest,
      uint256 tokensOut,
      uint256 tokensTransferred
    )
  {
    // transfer back collateral to the pool (msg.sender)
    IERC20 collateral = IERC20(_poolData.collateral);
    require(collateral.balanceOf(address(this)) >= _amount, 'Wrong balance');

    tokensTransferred = _amount;
    tokensOut = tokensTransferred;

    collateral.safeTransfer(msg.sender, tokensTransferred);
  }

  function withdraw(
    ILendingStorageManager.PoolStorage calldata _poolData,
    address,
    bytes calldata,
    uint256 _amount,
    address _recipient
  )
    external
    override
    returns (
      uint256 totalInterest,
      uint256 tokensOut,
      uint256 tokensTransferred
    )
  {
    // proxy should have received interest tokens (same as collateral in this case) from the pool
    tokensTransferred = _amount;
    tokensOut = tokensTransferred;

    // transfer collateral to recipient
    IERC20(_poolData.interestBearingToken).safeTransfer(
      _recipient,
      tokensTransferred
    );
  }

  function totalTransfer(
    address _oldPool,
    address _newPool,
    address,
    address,
    bytes calldata
  )
    external
    returns (uint256 prevTotalCollateral, uint256 actualTotalCollateral)
  {
    prevTotalCollateral = SynthereumPoolMigrationFrom(_oldPool)
      .migrateTotalFunds(_newPool);
    actualTotalCollateral = prevTotalCollateral;
  }

  function claimRewards(
    bytes calldata,
    address,
    address,
    address
  ) external pure override {
    revert('Claim rewards not supported');
  }

  function getUpdatedInterest(
    address,
    ILendingStorageManager.PoolStorage calldata,
    bytes calldata
  ) external pure override returns (uint256 totalInterest) {}

  function getAccumulatedInterest(
    address,
    ILendingStorageManager.PoolStorage calldata,
    bytes calldata
  ) external pure override returns (uint256 totalInterest) {}

  function getInterestBearingToken(address _collateral, bytes calldata)
    external
    pure
    override
    returns (address token)
  {
    token = _collateral;
  }

  function collateralToInterestToken(
    uint256 _collateralAmount,
    address,
    address,
    bytes calldata
  ) external pure override returns (uint256 interestTokenAmount) {
    interestTokenAmount = _collateralAmount;
  }

  function interestTokenToCollateral(
    uint256 _interestTokenAmount,
    address,
    address,
    bytes calldata
  ) external pure override returns (uint256 collateralAmount) {
    collateralAmount = _interestTokenAmount;
  }
}
