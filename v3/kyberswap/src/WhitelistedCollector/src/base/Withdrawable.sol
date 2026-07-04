// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IWithdrawable} from '../interfaces/IWithdrawable.sol';

import {ManagementBase} from 'ks-common-sc/src/base/ManagementBase.sol';
import {ManagementPausable} from 'ks-common-sc/src/base/ManagementPausable.sol';
import {KSRoles} from 'ks-common-sc/src/libraries/KSRoles.sol';

import {TokenHelper} from 'ks-common-sc/src/libraries/token/TokenHelper.sol';
import {IERC1155} from 'openzeppelin-contracts/contracts/token/ERC1155/IERC1155.sol';
import {IERC721} from 'openzeppelin-contracts/contracts/token/ERC721/IERC721.sol';
import {Address} from 'openzeppelin-contracts/contracts/utils/Address.sol';

contract Withdrawable is IWithdrawable, ManagementPausable {
  using TokenHelper for address;

  modifier checkRecipient(address recipient) {
    _checkRecipient(recipient);
    _;
  }

  constructor(address initialAdmin, address[] memory initialOperators)
    ManagementBase(0, initialAdmin)
  {
    _batchGrantRole(KSRoles.OPERATOR_ROLE, initialOperators);
  }

  /// @inheritdoc IWithdrawable
  function withdrawERC20s(
    address[] calldata tokens,
    uint256[] memory amounts,
    address payable[] calldata recipients
  ) external onlyRoleOrDefaultAdmin(KSRoles.OPERATOR_ROLE) {
    require(
      tokens.length == amounts.length && amounts.length == recipients.length,
      MismatchedArrayLengths()
    );

    for (uint256 i = 0; i < tokens.length; i++) {
      _checkRecipient(recipients[i]);
      amounts[i] = _transfer(tokens[i], amounts[i], recipients[i]);
    }

    emit WithdrawERC20s(tokens, amounts, recipients);
  }

  /// @inheritdoc IWithdrawable
  function withdrawERC721s(IERC721[] calldata tokens, uint256[] memory tokenIds, address recipient)
    external
    onlyRoleOrDefaultAdmin(KSRoles.OPERATOR_ROLE)
    checkRecipient(recipient)
  {
    require(tokens.length == tokenIds.length, MismatchedArrayLengths());

    for (uint256 i = 0; i < tokens.length; i++) {
      tokens[i].safeTransferFrom(address(this), recipient, tokenIds[i]);
    }

    emit WithdrawERC721s(tokens, tokenIds, recipient);
  }

  /// @inheritdoc IWithdrawable
  function withdrawERC1155s(
    IERC1155[] calldata tokens,
    uint256[] memory tokenIds,
    uint256[] memory amounts,
    address recipient
  ) external onlyRoleOrDefaultAdmin(KSRoles.OPERATOR_ROLE) checkRecipient(recipient) {
    require(tokens.length == tokenIds.length, MismatchedArrayLengths());
    require(tokens.length == amounts.length, MismatchedArrayLengths());

    for (uint256 i = 0; i < tokens.length; i++) {
      if (amounts[i] == 0) {
        amounts[i] = tokens[i].balanceOf(address(this), tokenIds[i]);
      }
      if (amounts[i] > 0) {
        tokens[i].safeTransferFrom(address(this), recipient, tokenIds[i], amounts[i], '');
      }
    }

    emit WithdrawERC1155s(tokens, tokenIds, amounts, recipient);
  }

  function _transfer(address token, uint256 amount, address payable recipient)
    internal
    returns (uint256)
  {
    if (amount == 0) {
      amount = token.balanceOf(address(this));
    }

    token.safeTransfer(recipient, amount);

    return amount;
  }

  function _checkRecipient(address recipient) internal view virtual {
    require(recipient != address(0), InvalidAddress());
  }
}
