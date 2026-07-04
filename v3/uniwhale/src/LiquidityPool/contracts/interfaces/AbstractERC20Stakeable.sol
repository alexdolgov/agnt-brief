// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import "./AbstractStakeable.sol";
import "../libs/math/FixedPoint.sol";
import "../libs/ERC20Fixed.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";

abstract contract AbstractERC20Stakeable is
  ERC20Upgradeable,
  AbstractStakeable
{
  using FixedPoint for uint256;
  using FixedPoint for int256;
  using SafeCast for uint256;
  using SafeCast for int256;
  using ERC20Fixed for ERC20Upgradeable;
  using EnumerableSet for EnumerableSet.AddressSet;

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  function __AbstractERC20StakeableM_init() internal onlyInitializing {
    __AbstractStakeable_init();
  }

  function getRewards(
    address staker,
    address rewardToken
  ) external view override returns (uint256) {
    _require(_rewardTokens.contains(rewardToken), Errors.INVALID_REWARD_TOKEN);
    return
      _accruedRewardsByStaker[staker][IMintable(rewardToken)].add(
        _getRewards(staker, IMintable(rewardToken))
      );
  }

  // internal functions

  function _stake(
    address sender,
    address staker,
    uint256 amount
  ) internal override {
    _update(staker, amount.toInt256());
    if (sender != address(this))
      ERC20Upgradeable(this).transferFromFixed(sender, address(this), amount);
    emit StakeEvent(sender, staker, amount);
  }

  function _unstake(address staker, uint256 amount) internal override {
    _require(_stakedByStaker[staker] >= amount, Errors.INVALID_AMOUNT);
    _update(staker, -amount.toInt256());
    ERC20Upgradeable(this).transferFixed(staker, amount);
    emit UnstakeEvent(staker, amount);
  }

  function _claim(address staker) internal virtual override {
    _update(staker, 0);
    uint256 _length = _rewardTokens.length();
    for (uint256 i = 0; i < _length; ++i) {
      IMintable rewardToken = IMintable(_rewardTokens.at(i));
      uint256 claimed = _accruedRewardsByStaker[staker][rewardToken];
      delete _accruedRewardsByStaker[staker][rewardToken];
      if (claimed > 0) rewardToken.mint(staker, claimed);
      emit ClaimEvent(staker, _rewardTokens.at(i), claimed);
    }
  }

  function _update(address staker, int256 stakedDelta) internal virtual {
    uint256 oldStaked = _stakedByStaker[staker];
    uint256 newStaked = oldStaked.add(stakedDelta).toUint256();
    uint256 _length = _rewardTokens.length();
    for (uint256 i = 0; i < _length; ++i) {
      IMintable rewardToken = IMintable(_rewardTokens.at(i));

      uint256 accruedRewards = _getRewards(staker, rewardToken);

      // simulate out
      uint256 balanceOut = accruedRewards.add(
        _balanceBaseByStaker[staker][rewardToken]
      );
      uint256 newTotalStaked = totalStaked.sub(oldStaked);

      // simulate in
      uint256 balanceIn = rewardToken.balance().sub(balanceOut);
      if (newTotalStaked > 0)
        balanceIn = balanceIn.mulUp(newStaked).divDown(newTotalStaked);

      rewardToken.removeBalance(balanceOut);
      rewardToken.addBalance(balanceIn);
      _balanceBaseByStaker[staker][rewardToken] = balanceIn;

      // update accrued rewards
      _accruedRewardsByStaker[staker][rewardToken] = _accruedRewardsByStaker[
        staker
      ][rewardToken].add(accruedRewards);
    }
    _stakedByStaker[staker] = newStaked;
    totalStaked = totalStaked.add(stakedDelta).toUint256();
  }

  function _getRewards(
    address staker,
    IMintable _rewardToken
  ) internal view virtual override returns (uint256) {
    if (totalStaked == 0) return 0;
    return
      _rewardToken
        .balance()
        .mulDown(_stakedByStaker[staker])
        .divUp(totalStaked)
        .sub(_balanceBaseByStaker[staker][_rewardToken]);
  }
}
