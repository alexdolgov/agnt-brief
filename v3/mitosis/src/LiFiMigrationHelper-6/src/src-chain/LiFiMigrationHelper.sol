// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

import { IERC20 } from '@oz/interfaces/IERC20.sol';
import { SafeERC20 } from '@oz/token/ERC20/utils/SafeERC20.sol';
import { Address } from '@oz/utils/Address.sol';

import { AccessControlEnumerableUpgradeable } from
  '@ozu/access/extensions/AccessControlEnumerableUpgradeable.sol';
import { UUPSUpgradeable } from '@ozu/proxy/utils/UUPSUpgradeable.sol';
import { ReentrancyGuardUpgradeable } from '@ozu/utils/ReentrancyGuardUpgradeable.sol';

import { IExpeditionVault } from './IExpeditionVault.sol';

contract LiFiMigrationHelper is
  AccessControlEnumerableUpgradeable,
  ReentrancyGuardUpgradeable,
  UUPSUpgradeable
{
  using SafeERC20 for IERC20;
  using SafeERC20 for IExpeditionVault;
  using Address for address;
  using Address for address payable;

  event DestinationGasSet(uint256 gas);
  event DestinationGasReceiverSet(address receiver);
  event LiFiFunctionSelectorSet(bytes4 selector, bool allowed);
  event MaxDestinationGasSet(uint256 maxGas);

  event MigrationInitiated(
    address indexed vaultAddr, uint256 amount, uint256 redeemed, uint256 lifiGas
  );

  error InsufficientBalance();
  error InsufficientDestinationGas();
  error InsufficientLiFiGas();
  error AllowanceNotSpent();
  error InvalidVaultAddress();
  error InvalidAmount();
  error InvalidCalldata();
  error UnauthorizedLiFiFunction();
  error ExcessiveGasRequest();
  error InvalidReceiver();

  address public immutable lifi;
  uint256 public destinationGas; // gas on middleware chain
  address public destinationGasReceiver; // receiver of the destination gas

  // Mapping to track allowed LiFi function selectors
  mapping(bytes4 => bool) public allowedLiFiSelectors;

  constructor(address _lifi) {
    require(_lifi != address(0), InvalidReceiver());
    lifi = _lifi;
  }

  function initialize(address admin) external initializer {
    require(admin != address(0), InvalidReceiver());

    __AccessControl_init();
    __AccessControlEnumerable_init();
    __ReentrancyGuard_init();
    __UUPSUpgradeable_init();

    _grantRole(DEFAULT_ADMIN_ROLE, admin);
  }

  function setDestinationGas(uint256 gas) external onlyRole(DEFAULT_ADMIN_ROLE) {
    destinationGas = gas;

    emit DestinationGasSet(gas);
  }

  function setDestinationGasReceiver(address receiver) external onlyRole(DEFAULT_ADMIN_ROLE) {
    destinationGasReceiver = receiver;

    emit DestinationGasReceiverSet(receiver);
  }

  function setLiFiFunctionSelector(bytes4 selector, bool allowed)
    external
    onlyRole(DEFAULT_ADMIN_ROLE)
  {
    allowedLiFiSelectors[selector] = allowed;

    emit LiFiFunctionSelectorSet(selector, allowed);
  }

  function _validateLiFiCalldata(bytes calldata data) internal view {
    require(data.length >= 4, InvalidCalldata());

    bytes4 selector = bytes4(data[:4]);
    require(allowedLiFiSelectors[selector], UnauthorizedLiFiFunction());
  }

  function migrate(address vaultAddr, uint256 amount, bytes calldata lifiCalldata)
    external
    payable
    nonReentrant
  {
    // Input validation using require with custom errors (0.8.28 syntax)
    require(vaultAddr != address(0), InvalidVaultAddress());
    require(amount > 0, InvalidAmount());

    // Validate LiFi calldata
    _validateLiFiCalldata(lifiCalldata);

    IExpeditionVault vault = IExpeditionVault(vaultAddr);

    vault.safeTransferFrom(_msgSender(), address(this), amount);

    uint256 redeemed = vault.previewRedeem(amount);
    vault.redeem(amount, address(this));

    IERC20 asset = vault.asset();
    uint256 assetBalance = asset.balanceOf(address(this));

    // Ensure we have sufficient balance (should be >= redeemed amount)
    require(assetBalance >= redeemed, InsufficientBalance());

    uint256 gasDemand = destinationGas;
    require(gasDemand <= msg.value, InsufficientDestinationGas());

    uint256 lifiGas = msg.value - gasDemand;
    require(lifiGas > 0, InsufficientLiFiGas());

    if (destinationGasReceiver != address(0)) {
      payable(destinationGasReceiver).sendValue(gasDemand);
    }

    // CRITICAL: Approve LiFi contract to spend the redeemed tokens
    // LiFi needs approval to transfer tokens for cross-chain operations
    asset.forceApprove(lifi, redeemed);

    // Call LiFi contract with the provided calldata and any ETH value
    lifi.functionCallWithValue(lifiCalldata, lifiGas);

    require(asset.allowance(address(this), lifi) == 0, AllowanceNotSpent());

    emit MigrationInitiated(vaultAddr, amount, redeemed, lifiGas);
  }

  function _authorizeUpgrade(address) internal override onlyRole(DEFAULT_ADMIN_ROLE) { }
}
