// SPDX-License-Identifier: MIT
pragma solidity >=0.8.23 <0.9.0;

import { ReentrancyGuard } from '@oz-v4/security/ReentrancyGuard.sol';
import { IERC20 } from '@oz-v4/token/ERC20/IERC20.sol';
import { SafeERC20 } from '@oz-v4/token/ERC20/utils/SafeERC20.sol';
import { Address } from '@oz-v4/utils/Address.sol';

import { BasicVault } from '../vault/BasicVault.sol';

interface IMitosisVault {
  function quoteDeposit(address asset, address to, uint256 amount) external view returns (uint256);
  function quoteDepositWithSupplyVLF(address asset, address to, address hubVLFVault, uint256 amount)
    external
    view
    returns (uint256);

  function deposit(address asset, address to, uint256 amount) external payable;
  function depositWithSupplyVLF(address asset, address to, address hubVLFVault, uint256 amount) external payable;
}

/// @title BasicVaultMigration
contract BasicVaultMigration is BasicVault, ReentrancyGuard {
  using SafeERC20 for IERC20;

  enum MigrationType {
    None,
    Deposit,
    DepositWithSupplyVLF
  }

  /// @custom:storage-location erc7201:mitosis.storage.BasicVaultMigration.v1
  struct MigrationStorageV1 {
    MigrationType migrationType;
    address hubVault;
    address manager;
  }

  // keccak256(abi.encode(uint256(keccak256("mitosis.storage.BasicVaultMigration.v1")) - 1)) & ~bytes32(uint256(0xff))
  bytes32 public constant MigrationStorageV1Location =
    0xf817ab0bf61733864ae09b544c61a32a30e893ac8a1739321c9b2cb76bdb3d00;

  function _getMigrationStorageV1() internal pure returns (MigrationStorageV1 storage $) {
    // slither-disable-next-line assembly
    assembly {
      $.slot := MigrationStorageV1Location
    }
  }

  event ManualMigrationInvoked(address indexed account, uint256 amount, uint256 feeSpent);
  event ManualMigrationConfigured(MigrationType kind, address hubVault, address manager);

  error NotSpent();
  error InsufficientFee();
  error NothingToMigrate();
  error ExpectedNotSet(string name);
  error ExpectedSet(string name);
  error InvalidMigrationType();
  error InvalidHubVault();
  error InvalidManager();
  error InvalidMitosisVault();

  IMitosisVault public immutable mitosisVault;

  constructor(address _mitosisVault) BasicVault() {
    if (_mitosisVault == address(0) && _mitosisVault.code.length == 0) revert InvalidMitosisVault();
    mitosisVault = IMitosisVault(_mitosisVault);
  }

  /// @notice Get manual migration configuration
  /// @return kind Migration type
  /// @return hubVault Hub vault address
  function manualMigrationConfig() external view returns (MigrationType kind, address hubVault, address manager) {
    MigrationStorageV1 storage $ = _getMigrationStorageV1();
    return ($.migrationType, $.hubVault, $.manager);
  }

  function quoteManualMigration(address[] calldata accounts) external view returns (uint256 fee) {
    StorageV1 storage $ = _getStorageV1();
    MigrationStorageV1 storage m$ = _getMigrationStorageV1();

    function (MigrationStorageV1 storage, IERC20, address, uint256) view returns (uint256) quoteHandler =
      _getQuoteHandler(m$.migrationType, m$.hubVault);

    IERC20 asset = $.asset;
    uint256 len = accounts.length;
    for (uint256 i = 0; i < len; i++) {
      fee += quoteHandler(m$, asset, accounts[i], balanceOf(accounts[i]));
    }

    return fee;
  }

  /// @notice Configure manual migration to Mitosis Vault
  /// @dev Only owner can call this function
  /// @param kind Migration type
  /// @param hubVault Hub vault address
  /// @param manager Manager account for the migration
  function configureManualMigration(MigrationType kind, address hubVault, address manager) external onlyOwner {
    if (kind == MigrationType.None) revert InvalidMigrationType();
    if ((kind == MigrationType.Deposit) != (hubVault == address(0))) revert InvalidHubVault();
    if (manager == address(0)) revert InvalidManager();

    MigrationStorageV1 storage $ = _getMigrationStorageV1();
    $.migrationType = kind;
    $.hubVault = hubVault;
    $.manager = manager;

    emit ManualMigrationConfigured(kind, hubVault, manager);
  }

  /// @notice Execute manual migration to Mitosis Vault
  /// @dev Only EOAs are supported. CAs will be skipped.
  /// @dev Only owner can call this function
  /// @param accounts List of accounts to migrate
  function manualMigrate(address[] calldata accounts) external payable nonReentrant {
    StorageV1 storage $ = _getStorageV1();
    MigrationStorageV1 storage m$ = _getMigrationStorageV1();
    if (_msgSender() != m$.manager) revert InvalidManager();

    function (MigrationStorageV1 storage, IERC20, address, uint256) internal returns (uint256) handler =
      _getInvokeHandler(m$.migrationType, m$.hubVault);

    IERC20 asset = $.asset;

    uint256 len = accounts.length;
    if (len == 0) revert NothingToMigrate();

    uint256 totalFeePaid = msg.value;
    uint256 totalFeeSpent;
    for (uint256 i = 0; i < len; i++) {
      totalFeeSpent += _migrate(m$, asset, accounts[i], handler);
      if (totalFeePaid < totalFeeSpent) revert InsufficientFee();
    }

    {
      uint256 feeDiff = totalFeePaid - totalFeeSpent;
      if (feeDiff > 0) Address.sendValue(payable(_msgSender()), feeDiff);
    }
  }

  function _migrate(
    MigrationStorageV1 storage m$,
    IERC20 asset,
    address account,
    function (MigrationStorageV1 storage, IERC20, address, uint256) internal returns (uint256) handler
  ) internal returns (uint256) {
    // check if account is pure CA
    // 1. check if code length is greater than 0
    // 2. check if account has delegation -> if not, it's a pure CA
    if (account.code.length > 0 && _delegationOf(account) == address(0)) return 0;

    // assuming 1:1 ratio redemption
    uint256 balance = balanceOf(account);

    // subtract from cap
    uint256 subbed = _getUtilStorageV1().cap.subLoad(balance, account);

    _burn(account, subbed);

    asset.forceApprove(address(mitosisVault), subbed);
    // handler must be spent all of allowance - `subbed` amount
    uint256 feeSpent = handler(m$, asset, account, subbed);
    if (asset.allowance(address(this), address(mitosisVault)) != 0) revert NotSpent();

    emit ManualMigrationInvoked(account, subbed, feeSpent);

    return feeSpent;
  }

  function _delegationOf(address account) private view returns (address result) {
    /// @solidity memory-safe-assembly
    assembly {
      extcodecopy(account, 0x00, 0x00, 0x20)
      // Note: Checking that it starts with hex"ef01" is the most general and futureproof.
      // 7702 bytecode is `abi.encodePacked(hex"ef01", uint8(version), address(delegation))`.
      result := mul(shr(96, mload(0x03)), eq(0xef01, shr(240, mload(0x00))))
    }
  }

  function _getQuoteHandler(MigrationType kind, address hubVault)
    private
    pure
    returns (function (MigrationStorageV1 storage, IERC20, address, uint256) view returns (uint256))
  {
    if (kind == MigrationType.Deposit) {
      if (hubVault != address(0)) revert ExpectedNotSet('hubVault');
      return _quoteBasicMigration;
    } else if (kind == MigrationType.DepositWithSupplyVLF) {
      if (hubVault == address(0)) revert ExpectedSet('hubVault');
      return _quoteVLFMigration;
    } else {
      revert InvalidMigrationType();
    }
  }

  function _getInvokeHandler(MigrationType kind, address hubVault)
    private
    pure
    returns (function (MigrationStorageV1 storage, IERC20, address, uint256) internal returns (uint256))
  {
    if (kind == MigrationType.Deposit) {
      if (hubVault != address(0)) revert ExpectedNotSet('hubVault');
      return _invokeBasicMigration;
    } else if (kind == MigrationType.DepositWithSupplyVLF) {
      if (hubVault == address(0)) revert ExpectedSet('hubVault');
      return _invokeVLFMigration;
    } else {
      revert InvalidMigrationType();
    }
  }

  function _quoteBasicMigration(MigrationStorageV1 storage, IERC20 asset, address account, uint256 amount)
    internal
    view
    returns (uint256 expectedFee)
  {
    return mitosisVault.quoteDeposit(address(asset), account, amount);
  }

  function _quoteVLFMigration(MigrationStorageV1 storage m$, IERC20 asset, address account, uint256 amount)
    internal
    view
    returns (uint256 expectedFee)
  {
    return mitosisVault.quoteDepositWithSupplyVLF(address(asset), account, m$.hubVault, amount);
  }

  function _invokeBasicMigration(MigrationStorageV1 storage, IERC20 asset, address account, uint256 amount)
    internal
    returns (uint256 feeSpent)
  {
    uint256 fee = mitosisVault.quoteDeposit(address(asset), account, amount);
    mitosisVault.deposit{ value: fee }(address(asset), account, amount);
    return fee;
  }

  function _invokeVLFMigration(MigrationStorageV1 storage m$, IERC20 asset, address account, uint256 amount)
    internal
    returns (uint256 feeSpent)
  {
    uint256 fee = mitosisVault.quoteDepositWithSupplyVLF(address(asset), account, m$.hubVault, amount);
    mitosisVault.depositWithSupplyVLF{ value: fee }(address(asset), account, m$.hubVault, amount);
    return fee;
  }
}
