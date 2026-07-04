// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import "./IMintable.sol";
import "./IStakeable.sol";
import "../libs/Errors.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

abstract contract AbstractStakeableUGP is ERC721Upgradeable, IStakeable {
  using EnumerableSet for EnumerableSet.AddressSet;

  struct Staker {
    uint128 staked;
    uint128 rewardsToClaim;
    uint128 totalStakedLastUpdate;
    uint128 emissionLastUpdate;
    uint32 lastClaim;
  }

  bool public _stakingPaused;

  mapping(address => Staker) internal _stakers;
  IMintable internal _rewardToken;
  IUpdateable.Updateable internal _emission;
  IUpdateable.Updateable internal _totalStaked;

  event PauseEvent(bool paused);

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  function __AbstractStakeableUGP_init() internal onlyInitializing {
    _stakingPaused = true;
  }

  modifier whenStakingNotPaused() {
    _require(!_stakingPaused, Errors.TRADING_PAUSED);
    _;
  }

  function _pauseStaking() internal virtual {
    _stakingPaused = true;
    emit PauseEvent(_stakingPaused);
  }

  function _unpauseStaking() internal virtual {
    _stakingPaused = false;
    emit PauseEvent(_stakingPaused);
  }
}
