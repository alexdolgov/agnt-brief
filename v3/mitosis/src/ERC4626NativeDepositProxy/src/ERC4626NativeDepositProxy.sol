// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.28;

import { WETH } from '@solady/tokens/WETH.sol';

import { StdError } from '@mito-mainnet/lib/StdError.sol';

import { IERC20 } from '@oz/interfaces/IERC20.sol';
import { IERC4626 } from '@oz/interfaces/IERC4626.sol';
import { SafeERC20 } from '@oz/token/ERC20/utils/SafeERC20.sol';
import { Address } from '@oz/utils/Address.sol';
import { Context } from '@oz/utils/Context.sol';

contract ERC4626NativeDepositProxy is Context {
  using SafeERC20 for IERC20;

  error PreviewMismatch(uint256 preview, uint256 actual);
  error InsufficientFunds(string description);

  IERC4626 public immutable vault;
  WETH public immutable wrappedNative;

  constructor(WETH _wrappedNative, IERC4626 _vault) {
    require(_vault.asset() == address(_wrappedNative), StdError.InvalidParameter('asset mismatch'));
    vault = _vault;
    wrappedNative = _wrappedNative;
  }

  function deposit(uint256 assets, address receiver) external payable {
    require(assets == msg.value, StdError.InvalidParameter('assets'));

    // wrap
    wrappedNative.deposit{ value: assets }();

    IERC20 token = IERC20(address(wrappedNative));

    token.forceApprove(address(vault), assets);
    vault.deposit(assets, receiver);
    token.forceApprove(address(vault), 0);
  }

  function mint(uint256 shares, address receiver) external payable {
    uint256 assets = vault.previewMint(shares);

    // do nothing if msg.value is same as assets
    if (msg.value > assets) Address.sendValue(payable(_msgSender()), msg.value - assets);
    else if (msg.value < assets) revert InsufficientFunds('msg.value');

    // wrap
    wrappedNative.deposit{ value: assets }();

    IERC20 token = IERC20(address(wrappedNative));

    token.forceApprove(address(vault), assets);
    vault.mint(shares, receiver);
    token.forceApprove(address(vault), 0);
  }
}
