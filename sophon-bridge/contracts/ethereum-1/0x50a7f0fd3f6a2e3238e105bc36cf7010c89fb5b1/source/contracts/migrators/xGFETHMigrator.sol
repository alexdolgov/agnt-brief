// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";
import {MerkleProofUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/cryptography/MerkleProofUpgradeable.sol";
import {BitMapsUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/structs/BitMapsUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {MathUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/math/MathUpgradeable.sol";

import {IUniswapV2Pair} from "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import {IUniswapV2Factory} from "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";
import {IUniswapV2Router02} from "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";

import {IStakedZentryMinimal} from "../interfaces/IStakedZentryMinimal.sol";
import {IGFMigrator} from "../interfaces/IGFMigrator.sol";
import {IxGF} from "../interfaces/IxGF.sol";
import {IRewardManager} from "../interfaces/IRewardManager.sol";
import {LpMigrator} from "./LpMigrator.sol";
import {IGFMigrator} from "../interfaces/IGFMigrator.sol";

/**
 * @title xGFETHMigrator
 * @dev contract for migrating token from xGF and RewardManager to StakedZentryLP
 */
contract xGFETHMigrator is Initializable, OwnableUpgradeable {
  using MathUpgradeable for uint256;

  bytes32 public merkleRoot;

  IStakedZentryMinimal public stakedZentry;

  LpMigrator public lpMigrator;

  IGFMigrator public gfMigrator;

  IxGF public xGF;

  IRewardManager public rewardManager;

  IUniswapV2Pair public gfPair;

  IUniswapV2Pair public zentryPair;

  IERC20 public gfToken;

  IERC20 public zentryToken;

  IERC20 public weth;

  bool public migrationEnabled;

  /// @notice The amount of GF LP token migrated to this contract
  uint256 public totalShares;

  /// @notice The amount of Zentry LP token after migration
  uint256 public underlyingLiquidity;

  /// @notice The amount of Zentry Token that is a left over from LP migration
  uint256 public leftoverZentry;

  /// @notice The amount of WETH that is a left over from LP migration
  uint256 public leftoverWeth;

  /// @notice List of migrated index
  BitMapsUpgradeable.BitMap _migratedList;

  address public emergencyReturn;

  event Migrated(address _to, address _receiver, uint256 _amount);

  error MigrationAlreadyEnabled();
  error MigrationDisabled();
  error TokenNotMigrated();
  error InsufficientGFBalance();
  error AlreadyMigrated(uint256 index);
  error InvalidProof();

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  modifier onlyMigrationEnabled() {
    if (!migrationEnabled) {
      revert MigrationDisabled();
    }

    _;
  }

  modifier onlyMigrationDisabled() {
    if (migrationEnabled) {
      revert MigrationAlreadyEnabled();
    }
    _;
  }

  function initialize(
    bytes32 _merkleRoot,
    IGFMigrator _gfMigrator,
    LpMigrator _lpMigrator,
    IxGF _xGF,
    IRewardManager _rewardManager,
    address _owner,
    address _emergencyReturn,
    address _zentryPair
  ) external initializer {
    OwnableUpgradeable.__Ownable_init();

    merkleRoot = _merkleRoot;
    lpMigrator = _lpMigrator;
    gfMigrator = _gfMigrator;
    xGF = _xGF;
    rewardManager = _rewardManager;
    gfToken = IERC20(_gfMigrator.gfToken());
    zentryToken = IERC20(_gfMigrator.zentryToken());
    gfPair = _lpMigrator.gfPair();
    zentryPair = IUniswapV2Pair(_zentryPair);
    weth = IERC20(_lpMigrator.weth());
    emergencyReturn = _emergencyReturn;

    require(xGF.token() == address(gfPair), "Invalid xGF token");
    require(rewardManager.rewardToken() == gfMigrator.gfToken(), "Invalid reward token");

    _transferOwnership(_owner);
  }

  function setStakedZentry(IStakedZentryMinimal _stakedZentry) external onlyOwner {
    stakedZentry = _stakedZentry;
  }

  /**
   * @notice migrate xGF position to stakedZentry and stakedZentryLP
   */
  function migrateLP(uint256 _index, uint256 _lockAmount, uint256 _rewardAmount, bytes32[] calldata _proof)
    external
    onlyMigrationEnabled
  {
    _migrateLP(_index, msg.sender, _lockAmount, _rewardAmount, _proof);
  }

  /**
   * @notice migrate xGF position to stakedZentry and stakedZentryLP on behalf of user
   */
  function migrateLPFor(
    uint256 _index,
    address _for,
    uint256 _lockAmount,
    uint256 _rewardAmount,
    bytes32[] calldata _proof
  ) external onlyOwner onlyMigrationEnabled {
    _migrateLP(_index, _for, _lockAmount, _rewardAmount, _proof);
  }

  function _migrateLP(
    uint256 _index,
    address _receiver,
    uint256 _lockAmount,
    uint256 _reward,
    bytes32[] calldata _proof
  ) private {
    _validateMigrate(_index, _receiver, _lockAmount, _reward, _proof);
    BitMapsUpgradeable.set(_migratedList, _index);

    uint256 liquidity = _convertToAssets(_lockAmount);
    if (liquidity > 0) {
      zentryPair.transfer(_receiver, liquidity);
    }

    // Migrate reward
    if (_reward > 0) {
      uint256 amountZent_ = _reward * gfMigrator.MIGRATE_RATE();
      IStakedZentryMinimal stakedZentry_ = stakedZentry; // gas saving
      zentryToken.approve(address(stakedZentry_), amountZent_);
      stakedZentry_.deposit(amountZent_, _receiver);
      emit Migrated(address(stakedZentry_), _receiver, amountZent_);
    }
  }

  function _validateMigrate(
    uint256 _index,
    address _receiver,
    uint256 _lockAmount,
    uint256 _reward,
    bytes32[] calldata _proof
  ) private view {
    if (BitMapsUpgradeable.get(_migratedList, _index)) {
      revert AlreadyMigrated(_index);
    }

    bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(_index, _receiver, _lockAmount, _reward))));
    if (!MerkleProofUpgradeable.verify(_proof, merkleRoot, leaf)) {
      revert InvalidProof();
    }
  }

  /**
   * @notice conversion function from xGF lock balance to zentry LP
   * @param shares The amount of LP token locked in xGFETH contract
   * @return liquidity The amount of Zentry LP token that user will get
   */
  function _convertToAssets(uint256 shares) private view returns (uint256 liquidity) {
    uint256 totalShares_ = totalShares;

    liquidity = shares.mulDiv(underlyingLiquidity, totalShares_);
  }

  function enableMigration() external onlyOwner onlyMigrationDisabled {
    migrationEnabled = true;
  }

  /**
   * @notice transfer token from xGF and RewardManager to this contract
   */
  function transferIn() external onlyOwner onlyMigrationDisabled {
    uint256 gfLpBalBefore = gfPair.balanceOf(address(this));
    xGF.transferToMigrator();
    totalShares += gfPair.balanceOf(address(this)) - gfLpBalBefore;

    rewardManager.transferToMigrator();
  }

  /**
   * @notice Migrate gf-eth LP to zentry-eth LP and migrate gf token to zentry token
   * @return amountZentIn amount of zentry sent to the pool
   * @return amountEthIn amount of weth sent to the pool
   * @return liquidity zentry LP token minted
   */
  function migrateToZent(uint256 _amountZentMin, uint256 _amountETHMin, uint256 _deadline)
    external
    onlyOwner
    onlyMigrationDisabled
    returns (uint256 amountZentIn, uint256 amountEthIn, uint256 liquidity)
  {
    uint256 liquidityToMigrate_ = gfPair.balanceOf(address(this));
    (amountZentIn, amountEthIn, liquidity) =
      _migrateToZent(liquidityToMigrate_, _amountZentMin, _amountETHMin, _deadline);

    gfToken.approve(address(gfMigrator), gfToken.balanceOf(address(this)));
    gfMigrator.migrate();
  }

  /**
   * @notice migrate gf LP to zentry LP
   */
  function _migrateToZent(uint256 liquidityToMigrate, uint256 amountZentMin, uint256 amountETHMin, uint256 deadline)
    private
    returns (uint256 amountZentIn, uint256 amountEthIn, uint256 liquidity)
  {
    uint256 zentBefore = zentryToken.balanceOf(address(this));
    uint256 wethBefore = weth.balanceOf(address(this));
    uint256 zentLpBefore = zentryPair.balanceOf(address(this));
    gfPair.approve(address(lpMigrator), liquidityToMigrate);
    (amountZentIn, amountEthIn,) =
      lpMigrator.migrate(liquidityToMigrate, amountZentMin, amountETHMin, address(this), deadline);
    liquidity = zentryPair.balanceOf(address(this)) - zentLpBefore;

    underlyingLiquidity += liquidity;
    leftoverZentry += zentryToken.balanceOf(address(this)) - zentBefore;
    leftoverWeth += weth.balanceOf(address(this)) - wethBefore;
  }

  function transferInUnderlyingLiquidity(uint256 _amount) external onlyOwner {
    zentryPair.transferFrom(msg.sender, address(this), _amount);
    underlyingLiquidity += _amount;
  }

  function withdrawLeftover(address _to) external onlyOwner {
    if (leftoverZentry > 0) {
      zentryToken.transfer(_to, leftoverZentry);
      leftoverZentry = 0;
    }

    if (leftoverWeth > 0) {
      weth.transfer(_to, leftoverWeth);
      leftoverWeth = 0;
    }
  }

  function emergencyWithdrawLP() external onlyOwner {
    zentryPair.transfer(emergencyReturn, zentryPair.balanceOf(address(this)));
  }

  function emergencyWithdrawReward() external onlyOwner {
    zentryToken.transfer(emergencyReturn, zentryToken.balanceOf(address(this)));
  }
}
