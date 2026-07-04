// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import "./IMintable.sol";
import "./IStakeable.sol";
import "../libs/Errors.sol";
import "../libs/math/FixedPoint.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";

abstract contract AbstractStakeable is Initializable, IStakeable {
  using FixedPoint for uint256;
  using FixedPoint for int256;
  using SafeCast for uint256;
  using SafeCast for int256;
  using EnumerableSet for EnumerableSet.AddressSet;

  bool public _stakingPaused;

  uint256 public totalStaked;
  EnumerableSet.AddressSet internal _rewardTokens;

  mapping(address => uint256) internal _stakedByStaker;
  mapping(address => mapping(IMintable => uint256))
    internal _balanceBaseByStaker;
  mapping(address => mapping(IMintable => uint256))
    internal _accruedRewardsByStaker;

  event PauseEvent(bool paused);
  event AddRewardTokenEvent(address indexed rewardToken);
  event RemoveRewardTokenEvent(address indexed rewardToken);
  event StakeEvent(
    address indexed sender,
    address indexed user,
    uint256 amount
  );
  event UnstakeEvent(address indexed user, uint256 amount);
  event ClaimEvent(
    address indexed user,
    address indexed rewardToken,
    uint256 claimed
  );

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  function __AbstractStakeable_init() internal onlyInitializing {
    _stakingPaused = true;
  }

  modifier whenStakingNotPaused() {
    _require(!_stakingPaused, Errors.TRADING_PAUSED);
    _;
  }

  // external functions

  function hasStake(address _user) external view virtual returns (bool) {
    return _stakedByStaker[_user] > 0;
  }

  function getStaked(address _user) external view virtual returns (uint256) {
    return _stakedByStaker[_user];
  }

  function getTotalStaked() external view virtual override returns (uint256) {
    return totalStaked;
  }

  // @dev to be removed before deployment
  function balanceBaseByStaker(
    address user,
    IMintable token
  ) external view returns (uint256) {
    return _balanceBaseByStaker[user][token];
  }

  function _pauseStaking() internal virtual {
    _stakingPaused = true;
    emit PauseEvent(_stakingPaused);
  }

  function _unpauseStaking() internal virtual {
    _stakingPaused = false;
    emit PauseEvent(_stakingPaused);
  }

  function _addRewardToken(IMintable rewardToken) internal virtual {
    _rewardTokens.add(address(rewardToken));
    emit AddRewardTokenEvent(address(rewardToken));
  }

  function _removeRewardToken(IMintable rewardToken) internal virtual {
    _rewardTokens.remove(address(rewardToken));
    emit RemoveRewardTokenEvent(address(rewardToken));
  }

  function _getRewards(
    address use,
    IMintable rewardToken
  ) internal view virtual returns (uint256);

  function _stake(
    address sender,
    address staker,
    uint256 amount
  ) internal virtual;

  function _unstake(address staker, uint256 amount) internal virtual;

  function _claim(address staker) internal virtual;

  function getRewards(
    address user,
    address rewardToken
  ) external view virtual returns (uint256);
}
