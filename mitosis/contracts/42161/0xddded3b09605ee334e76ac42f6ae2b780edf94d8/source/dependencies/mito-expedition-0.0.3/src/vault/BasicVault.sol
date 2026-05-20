// SPDX-License-Identifier: MIT
pragma solidity >=0.8.23 <0.9.0;

import { OwnableUpgradeable } from '@ozu-v4/access/OwnableUpgradeable.sol';
import { ERC20PermitUpgradeable } from '@ozu-v4/token/ERC20/extensions/ERC20PermitUpgradeable.sol';

import { IERC20Metadata } from '@oz-v4/token/ERC20/extensions/IERC20Metadata.sol';
import { IERC20Permit } from '@oz-v4/token/ERC20/extensions/IERC20Permit.sol';
import { IERC20 } from '@oz-v4/token/ERC20/IERC20.sol';
import { SafeERC20 } from '@oz-v4/token/ERC20/utils/SafeERC20.sol';
import { Math } from '@oz-v4/utils/math/Math.sol';

import { ICap } from '../interfaces/ICap.sol';
import { IVault, VaultType, Action } from '../interfaces/vault/IVault.sol';
import { Error } from '../lib/Error.sol';
import { LibPermit } from '../lib/Permit.sol';
import { BasicVaultStorageV1 } from './storage/BasicVaultStorageV1.sol';
import { BasicVaultUtilStorageV1 } from './storage/BasicVaultUtilStorageV1.sol';

/// @title BasicVault
/// @author Eddy <hong@manythings.xyz>
/// @notice A basic vault that holds a single asset as collateral and mint its IOU tokens to the user by 1:1 ratio.
/// @dev There's no reentrancy guard in this contract because it has support for ERC777 tokens.
contract BasicVault is
  IVault,
  ERC20PermitUpgradeable,
  OwnableUpgradeable,
  BasicVaultStorageV1,
  BasicVaultUtilStorageV1
{
  using LibPermit for bytes;
  using LibPermit for IERC20Permit;
  using SafeERC20 for IERC20;
  using SafeERC20 for IERC20Permit;

  /// @notice Deposit event
  /// @dev Emitted when a user deposits asset to the vault
  /// @param account deposit account address
  /// @param baseAsset principal token address
  /// @param amount amount of deposit
  event Deposit(address indexed account, address indexed baseAsset, uint256 amount);

  /// @notice Redeem event
  /// @dev Emitted when a user redeems mAsset from the vault
  /// @param account redeem account address
  /// @param baseAsset principal token address (token receive)
  /// @param amount amount of redemption
  event Redeem(address indexed account, address indexed baseAsset, uint256 amount);

  event Halted(Action action);
  event Resumed(Action action);

  event CapSet(ICap cap);
  event RedeemPeriodSet(uint256 period);
  event ActionAllowed(address account, Action action);
  event ActionDisallowed(address account, Action action);

  constructor() initializer { }

  function initialize(IERC20 asset_, string memory name, string memory symbol) public initializer {
    __ERC20_init(name, symbol);
    __ERC20Permit_init(name);
    __Ownable_init();

    StorageV1 storage $ = _getStorageV1();
    $.underlyingDecimals = IERC20Metadata(address(asset_)).decimals();
    $.asset = asset_;
  }

  modifier withNoHalt(Action action) {
    if (_isHalted(action)) {
      revert Error.Halted();
    }

    _;
  }

  // View functions

  function cap() external view returns (ICap) {
    return _getUtilStorageV1().cap;
  }

  function asset() external view returns (IERC20) {
    return _getStorageV1().asset;
  }

  function vaultType() external pure override returns (VaultType) {
    return VaultType.Basic;
  }

  function decimals() public view override returns (uint8) {
    return _getStorageV1().underlyingDecimals;
  }

  function isHalted(Action action) external view returns (bool) {
    return _isHalted(action);
  }

  function isAllowed(address account, Action action) external view returns (bool) {
    return _isAllowed(account, action);
  }

  function previewDeposit(uint256 amount) external view withNoHalt(Action.Deposit) returns (uint256) {
    return _getUtilStorageV1().cap.calcAdded(amount);
  }

  function previewRedeem(uint256 amount) external view withNoHalt(Action.Redeem) returns (uint256) {
    return _getUtilStorageV1().cap.calcSubbed(amount);
  }

  // Mutative functions

  function deposit(uint256 amount, address receiver) public withNoHalt(Action.Deposit) {
    StorageV1 storage $ = _getStorageV1();
    ICap cap_ = _getUtilStorageV1().cap;

    // If _asset is ERC777, `transferFrom` can trigger a reentrancy BEFORE the transfer happens through the
    // `tokensToSend` hook. On the other hand, the `tokenReceived` hook, that is triggered after the transfer,
    // calls the vault, which is assumed not malicious.
    //
    // Conclusion: we need to do the transfer before we mint so that any reentrancy would happen before the
    // assets are transferred and before the shares are minted, which is a valid state.
    // slither-disable-next-line reentrancy-no-eth
    $.asset.safeTransferFrom(_msgSender(), address(this), cap_.calcAdded(amount));

    uint256 added = cap_.addLoad(amount, receiver);

    _deposit(added, receiver);
  }

  /// @dev use encodePacked to build permitData
  function deposit(uint256 amount, address receiver, bytes calldata permitData) external {
    StorageV1 storage $ = _getStorageV1();

    (uint256 deadline, uint8 v, bytes32 r, bytes32 s) = permitData.decodeData();

    IERC20Permit(address($.asset)).trustlessPermit(_msgSender(), address(this), amount, deadline, v, r, s);

    deposit(amount, receiver);
  }

  function redeem(uint256 amount, address receiver) external withNoHalt(Action.Redeem) {
    StorageV1 storage $ = _getStorageV1();

    uint256 subbed = _getUtilStorageV1().cap.subLoad(amount, receiver);

    _redeem(subbed, receiver);

    // If _asset is ERC777, `transfer` can trigger a reentrancy AFTER the transfer happens through the
    // `tokensReceived` hook. On the other hand, the `tokensToSend` hook, that is triggered before the transfer,
    // calls the vault, which is assumed not malicious.
    //
    // Conclusion: we need to do the transfer after the burn so that any reentrancy would happen after the
    // shares are burned and after the assets are transferred, which is a valid state.
    if ($.asset.balanceOf(address(this)) < subbed) {
      revert("You're unable to redeem your assets now. Please try again later.");
    }
    $.asset.safeTransfer(receiver, subbed);
  }

  function manualDeposit(uint256 amount, address receiver) external withNoHalt(Action.Deposit) returns (uint256) {
    if (!_isAllowed(_msgSender(), Action.Deposit)) {
      revert Error.Unauthorized();
    }

    uint256 added = _getUtilStorageV1().cap.addLoad(amount, receiver);

    _deposit(added, receiver);

    return added;
  }

  function manualRedeem(uint256 amount, address receiver) external withNoHalt(Action.Redeem) returns (uint256) {
    if (!_isAllowed(_msgSender(), Action.Redeem)) {
      revert Error.Unauthorized();
    }

    uint256 subbed = _getUtilStorageV1().cap.subLoad(amount, receiver);

    _redeem(subbed, receiver);

    return subbed;
  }

  function allow(address account, Action action) external onlyOwner {
    _getStorageV1().isAllowed[account][action] = true;

    emit ActionAllowed(account, action);
  }

  function disallow(address account, Action action) external onlyOwner {
    _getStorageV1().isAllowed[account][action] = false;

    emit ActionDisallowed(account, action);
  }

  function halt(Action action) external onlyOwner {
    _setHalted(action, true);

    emit Halted(action);
  }

  function resume(Action action) external onlyOwner {
    _setHalted(action, false);

    emit Resumed(action);
  }

  function setCap(ICap cap_) external onlyOwner {
    _getUtilStorageV1().cap = cap_;

    emit CapSet(cap_);
  }

  // Internal functions

  function _deposit(uint256 amount, address receiver) internal {
    if (amount <= 0) revert Error.ZeroAmount();

    _mint(receiver, amount);

    emit Deposit(receiver, address(_getStorageV1().asset), amount);
  }

  function _redeem(uint256 amount, address receiver) internal {
    if (amount <= 0) revert Error.ZeroAmount();

    _burn(_msgSender(), amount);

    emit Redeem(receiver, address(_getStorageV1().asset), amount);
  }

  function _isHalted(Action action) internal view returns (bool) {
    return _getStorageV1().isHalted[action];
  }

  function _setHalted(Action action, bool halted) internal {
    _getStorageV1().isHalted[action] = halted;
  }

  function _isAllowed(address account, Action action) internal view returns (bool) {
    return _getStorageV1().isAllowed[account][action];
  }

  function _transfer(address from, address to, uint256 value) internal override withNoHalt(Action.Transfer) {
    super._transfer(from, to, value);
  }
}
