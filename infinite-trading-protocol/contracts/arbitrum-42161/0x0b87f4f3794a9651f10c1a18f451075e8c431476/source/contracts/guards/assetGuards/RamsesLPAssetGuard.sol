// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.7.6;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts/math/SafeMath.sol";

import "../../interfaces/velodrome/IVelodromeGauge.sol";
import "../../interfaces/ramses/IRamsesVoter.sol";
import "../../interfaces/IHasAssetInfo.sol";
import "../../interfaces/IPoolLogic.sol";

import "./ERC20Guard.sol";

/// @title Ramses LP/Gauge token asset guard
/// @dev Asset type = 20
contract RamsesLPAssetGuard is ERC20Guard {
  using SafeMath for uint256;

  IRamsesVoter public voter;

  /// @dev We need Voter contract to get the gauge address
  /// @param _voter Ramses voter contract address
  constructor(address _voter) {
    voter = IRamsesVoter(_voter);
  }

  /// @notice Returns the balance of Ramses LP asset
  /// @dev Includes claimable gauge rewards and fees
  /// @param _pool Pool address
  /// @param _asset Ramses LP asset
  /// @return balance Ramses LP asset balance of given pool
  function getBalance(address _pool, address _asset) public view override returns (uint256 balance) {
    // Add balance of pair token itself
    balance = IERC20(_asset).balanceOf(_pool);

    IVelodromeGauge gauge = IVelodromeGauge(voter.gauges(_asset));

    address factory = IPoolLogic(_pool).factory();
    uint256 rewardsValue;

    if (address(gauge) != address(0)) {
      // Add balance staked in gauge
      balance = balance.add(gauge.balanceOf(_pool));

      address poolManagerLogic = IPoolLogic(_pool).poolManagerLogic();

      uint256 rewardsListLength = gauge.rewardsListLength();
      // Add to balance all claimable rewards
      for (uint256 i; i < rewardsListLength; ++i) {
        address rewardToken = gauge.rewards(i);
        uint256 rewardAmount = gauge.earned(rewardToken, _pool);
        // will add 0 if reward token is not supported
        rewardsValue = rewardsValue.add(_assetValue(factory, poolManagerLogic, rewardToken, rewardAmount));
      }
    }

    // Convert rewards value in LP price
    balance = balance.add(rewardsValue.mul(10**18).div(IHasAssetInfo(factory).getAssetPrice(_asset)));
  }

  /// @notice Creates transaction data for withdrawing from Ramses LP asset
  /// @param _pool Pool address
  /// @param _asset Ramses LP asset
  /// @param _portion The fraction of total Ramses LP asset to withdraw
  /// @param _to The investor address to withdraw to
  /// @return withdrawAsset and
  /// @return withdrawBalance are used to withdraw portion of LP asset balance to investor
  /// @return transactions are used to execute the Ramses LP withdrawal transaction in PoolLogic
  function withdrawProcessing(
    address _pool,
    address _asset,
    uint256 _portion,
    address _to
  )
    external
    view
    override
    returns (
      address withdrawAsset,
      uint256 withdrawBalance,
      MultiTransaction[] memory transactions
    )
  {
    withdrawAsset = _asset;
    withdrawBalance = IERC20(_asset).balanceOf(_pool).mul(_portion).div(10**18);

    IVelodromeGauge gauge = IVelodromeGauge(voter.gauges(_asset));

    uint256 txCount;
    if (address(gauge) != address(0)) {
      uint256 rewardsListLength = gauge.rewardsListLength();
      // Maximum possible transactions are two (withdrawing from gauge and claiming rewards) plus rewards list length
      transactions = new MultiTransaction[](2 + rewardsListLength);

      {
        uint256 gaugeLPBalance = gauge.balanceOf(_pool);
        // Withdraw a portion of LP tokens from gauge
        if (gaugeLPBalance > 0) {
          transactions[txCount].to = address(gauge);
          transactions[txCount].txData = abi.encodeWithSelector(
            IVelodromeGauge.withdraw.selector,
            gaugeLPBalance.mul(_portion).div(10**18)
          );
          txCount = txCount.add(1);
        }
      }

      address[] memory rewardTokens = new address[](rewardsListLength);
      for (uint256 i; i < rewardsListLength; ++i) {
        rewardTokens[i] = gauge.rewards(i);
      }

      // Claim all available rewards from gauge
      transactions[txCount].to = address(gauge);
      transactions[txCount].txData = abi.encodeWithSelector(IVelodromeGauge.getReward.selector, _pool, rewardTokens);
      txCount = txCount.add(1);

      for (uint256 i; i < rewardsListLength; ++i) {
        uint256 rewardAmount = gauge.earned(rewardTokens[i], _pool);
        // Transfer a portion of claimed rewards to the investor
        if (rewardAmount > 0 && rewardTokens[i] != voter.xRam()) {
          transactions[txCount].to = rewardTokens[i];
          transactions[txCount].txData = abi.encodeWithSelector(
            IERC20.transfer.selector,
            _to,
            rewardAmount.mul(_portion).div(10**18)
          );
          txCount = txCount.add(1);
        }
      }
    }

    uint256 reduceLength = (transactions.length).sub(txCount);
    assembly {
      mstore(transactions, sub(mload(transactions), reduceLength))
    }
  }

  function _assetValue(
    address _poolFactory,
    address _poolManagerLogic,
    address _token,
    uint256 _amount
  ) internal view returns (uint256 assetValue) {
    if (IHasAssetInfo(_poolFactory).isValidAsset(_token) && _amount > 0) {
      assetValue = IPoolManagerLogic(_poolManagerLogic).assetValue(_token, _amount);
    }
  }
}
