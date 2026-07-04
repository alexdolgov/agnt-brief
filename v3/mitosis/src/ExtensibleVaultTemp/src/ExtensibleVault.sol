// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

import { AccessControlEnumerableUpgradeable } from
  '@ozu/access/extensions/AccessControlEnumerableUpgradeable.sol';
import { Ownable2StepUpgradeable } from '@ozu/access/Ownable2StepUpgradeable.sol';
import { UUPSUpgradeable } from '@ozu/proxy/utils/UUPSUpgradeable.sol';
import { ERC4626Upgradeable } from '@ozu/token/ERC20/extensions/ERC4626Upgradeable.sol';

import { IERC20 } from '@oz/interfaces/IERC20.sol';
import { IERC20Metadata } from '@oz/interfaces/IERC20Metadata.sol';
import { IERC4626 } from '@oz/interfaces/IERC4626.sol';
import { SafeERC20 } from '@oz/token/ERC20/utils/SafeERC20.sol';
import { Time } from '@oz/utils/types/Time.sol';

import { ERC7201Utils } from '@mito-mainnet/lib/ERC7201Utils.sol';
import { Pausable } from '@mito-mainnet/lib/Pausable.sol';
import { StdError } from '@mito-mainnet/lib/StdError.sol';

import { IExtensibleVault } from './interfaces/IExtensibleVault.sol';
import { IManager } from './interfaces/IManager.sol';

contract ExtensibleVault is
  IExtensibleVault,
  AccessControlEnumerableUpgradeable,
  ERC4626Upgradeable,
  Pausable,
  UUPSUpgradeable
{
  using SafeERC20 for IERC20;
  using ERC7201Utils for string;

  struct ExtensibleVaultStorage {
    address redeemQueue;
    uint256 cap;
  }

  /// @notice Role for vault operations (keccak256("OPERATOR_ROLE"))
  bytes32 public constant OPERATOR_ROLE =
    0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929;
  /// @notice Role for vault operations (keccak256("LIQUIDITY_MANAGER_ROLE"))
  bytes32 public constant LIQUIDITY_MANAGER_ROLE =
    0x77e60b99a50d27fb027f6912a507d956105b4148adab27a86d235c8bcca8fa2f;
  /// @notice Role for managing asset (keccak256("MANAGER_ROLE"))
  bytes32 public constant MANAGER_ROLE =
    0x241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b08;

  string private constant _NAMESPACE = 'mitosis.storage.ExtensibleVault';
  bytes32 private immutable _slot = _NAMESPACE.storageSlot();

  function _getExtensibleVaultStorage() private view returns (ExtensibleVaultStorage storage $) {
    bytes32 slot = _slot;
    // slither-disable-next-line assembly
    assembly {
      $.slot := slot
    }
  }

  constructor() {
    _disableInitializers();
  }

  function initialize(
    address admin,
    address liquidityManager_,
    address operator_,
    address redeemQueue_,
    IERC20Metadata asset_,
    string memory name_,
    string memory symbol_,
    uint256 cap_
  ) public virtual initializer {
    __AccessControlEnumerable_init();
    __ERC20_init(name_, symbol_);
    __ERC4626_init(asset_);
    __Pausable_init();

    _setupRoles(admin, liquidityManager_, operator_);

    ExtensibleVaultStorage storage $ = _getExtensibleVaultStorage();
    _setRedeemQueue($, redeemQueue_);
    _setCap($, cap_);
  }

  function _setupRoles(address admin, address liquidityManager_, address operator_) private {
    _grantRole(DEFAULT_ADMIN_ROLE, admin);
    _grantRole(LIQUIDITY_MANAGER_ROLE, liquidityManager_);
    _grantRole(OPERATOR_ROLE, operator_);
  }

  //=========== NOTE: VIEW FUNCTIONS ===========//

  function redeemQueue() external view returns (address) {
    return _getExtensibleVaultStorage().redeemQueue;
  }

  function cap() external view returns (uint256) {
    return _getExtensibleVaultStorage().cap;
  }

  function maxDeposit(address)
    public
    view
    virtual
    override(IERC4626, ERC4626Upgradeable)
    returns (uint256 maxAssets)
  {
    uint256 _cap = _getExtensibleVaultStorage().cap;
    uint256 _totalAssets = totalAssets();
    return _totalAssets >= _cap ? 0 : _cap - _totalAssets;
  }

  function maxMint(address receiver)
    public
    view
    virtual
    override(IERC4626, ERC4626Upgradeable)
    returns (uint256 maxShares)
  {
    return convertToShares(maxDeposit(receiver));
  }

  function totalAssets()
    public
    view
    virtual
    override(IExtensibleVault, ERC4626Upgradeable)
    returns (uint256)
  {
    address[] memory managers = getRoleMembers(MANAGER_ROLE);
    uint256 managerAssets = 0;
    for (uint256 i = 0; i < managers.length; i++) {
      managerAssets += IManager(managers[i]).totalBalance();
    }
    return managerAssets + IERC20(asset()).balanceOf(address(this));
  }

  //=========== NOTE: ADMIN FUNCTIONS ===========//

  function _authorizeUpgrade(address) internal override onlyRole(DEFAULT_ADMIN_ROLE) { }

  function _authorizePause(address) internal view override onlyRole(DEFAULT_ADMIN_ROLE) { }

  function setRedeemQueue(address redeemQueue_) external onlyRole(DEFAULT_ADMIN_ROLE) {
    _setRedeemQueue(_getExtensibleVaultStorage(), redeemQueue_);
  }

  function setCap(uint256 cap_) external onlyRole(LIQUIDITY_MANAGER_ROLE) {
    _setCap(_getExtensibleVaultStorage(), cap_);
  }

  //=========== NOTE: OPERATOR FUNCTIONS ===========//

  function depositToManager(address manager, uint256 amount) external onlyRole(OPERATOR_ROLE) {
    require(amount > 0, StdError.ZeroAmount());
    require(hasRole(MANAGER_ROLE, manager), StdError.Unauthorized());

    IERC20(asset()).forceApprove(manager, amount);
    IManager(manager).deposit(amount);
    IERC20(asset()).forceApprove(manager, 0);

    emit DepositToManager(manager, amount);
  }

  function withdrawFromManager(address manager, uint256 amount) external onlyRole(OPERATOR_ROLE) {
    require(amount > 0, StdError.ZeroAmount());
    require(hasRole(MANAGER_ROLE, manager), StdError.Unauthorized());

    IManager(manager).withdraw(amount, address(this));

    emit WithdrawFromManager(manager, amount);
  }

  //=========== NOTE: MUTATIVE FUNCTIONS ===========//

  function deposit(uint256 assets, address receiver)
    public
    virtual
    override(IERC4626, ERC4626Upgradeable)
    whenNotPaused
    returns (uint256)
  {
    return super.deposit(assets, receiver);
  }

  function mint(uint256 shares, address receiver)
    public
    virtual
    override(IERC4626, ERC4626Upgradeable)
    whenNotPaused
    returns (uint256)
  {
    return super.mint(shares, receiver);
  }

  function withdraw(uint256 assets, address receiver, address owner_)
    public
    virtual
    override(IERC4626, ERC4626Upgradeable)
    whenNotPaused
    returns (uint256)
  {
    ExtensibleVaultStorage storage $ = _getExtensibleVaultStorage();
    require(_msgSender() == $.redeemQueue, StdError.Unauthorized());

    return super.withdraw(assets, receiver, owner_);
  }

  function redeem(uint256 shares, address receiver, address owner_)
    public
    virtual
    override(IERC4626, ERC4626Upgradeable)
    whenNotPaused
    returns (uint256)
  {
    ExtensibleVaultStorage storage $ = _getExtensibleVaultStorage();
    require(_msgSender() == $.redeemQueue, StdError.Unauthorized());

    return super.redeem(shares, receiver, owner_);
  }

  //=========== NOTE: INTERNAL FUNCTIONS ===========//

  function _decimalsOffset() internal pure override returns (uint8) {
    return 6;
  }

  function _setRedeemQueue(ExtensibleVaultStorage storage $, address redeemQueue_) internal {
    require(redeemQueue_ != address(0), StdError.ZeroAddress('redeemQueue_'));
    $.redeemQueue = redeemQueue_;
    emit RedeemQueueSet(redeemQueue_);
  }

  function _setCap(ExtensibleVaultStorage storage $, uint256 cap_) internal {
    uint256 prevCap = $.cap;
    $.cap = cap_;
    emit CapSet(prevCap, cap_);
  }
}
