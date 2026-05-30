// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {IKSZapRouterPositionPermit} from 'contracts/interfaces/IKSZapRouterPositionPermit.sol';

import {IZapDexEnum} from 'contracts/interfaces/zap/common/IZapDexEnum.sol';
import {IKSZapExecutorActions} from 'contracts/interfaces/zap/executors/IKSZapExecutorActions.sol';
import {
  IKSZapValidatorActions
} from 'contracts/interfaces/zap/validators/IKSZapValidatorActions.sol';

import {KSRescueV2} from 'ks-growth-utils-sc/contracts/KSRescueV2.sol';
import {ReentrancyGuard} from 'openzeppelin/contracts/security/ReentrancyGuard.sol';

import {IERC1155} from 'openzeppelin/contracts/token/ERC1155/IERC1155.sol';
import {IERC721} from 'openzeppelin/contracts/token/ERC721/IERC721.sol';

import {IAllowanceTransfer} from 'ks-common-sc/src/interfaces/IAllowanceTransfer.sol';
import {PermitHelper} from 'ks-common-sc/src/libraries/token/PermitHelper.sol';
import {TokenHelper} from 'ks-common-sc/src/libraries/token/TokenHelper.sol';

/// @notice Main KyberSwap Zap Router to allow users zapping into any dexes
/// It uses Validator to validate the zap result with flexibility, to enable adding more dexes
contract KSZapRouterPositionPermit is
  IKSZapRouterPositionPermit,
  IZapDexEnum,
  KSRescueV2,
  ReentrancyGuard
{
  using TokenHelper for address;
  using PermitHelper for address;

  address private constant ETH_ADDRESS = address(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE);

  IAllowanceTransfer immutable permit2;

  mapping(address => bool) public whitelistedExecutor;
  mapping(address => bool) public whitelistedValidator;

  modifier checkDeadline(uint32 _deadline) {
    require(block.timestamp <= _deadline, 'ZapRouter: expired');
    _;
  }

  constructor(address _permit2) {
    permit2 = IAllowanceTransfer(_permit2);
  }

  /// @notice Whitelist executors by the owner, can grant or revoke
  function whitelistExecutors(address[] calldata _executors, bool _grantOrRevoke)
    external
    onlyOwner
  {
    for (uint256 i = 0; i < _executors.length; i++) {
      whitelistedExecutor[_executors[i]] = _grantOrRevoke;
      emit ExecutorWhitelisted(_executors[i], _grantOrRevoke);
    }
  }

  /// @notice Whitelist validators by the owner, can grant or revoke
  function whitelistValidators(address[] calldata _validators, bool _grantOrRevoke)
    external
    onlyOwner
  {
    for (uint256 i = 0; i < _validators.length; i++) {
      whitelistedValidator[_validators[i]] = _grantOrRevoke;
      emit ValidatorWhitelisted(_validators[i], _grantOrRevoke);
    }
  }

  /// @inheritdoc IKSZapRouterPositionPermit
  function zap(ZapDescription calldata _desc, ZapExecutionData calldata _exe)
    external
    payable
    override
    whenNotPaused
    nonReentrant
    checkDeadline(_exe.deadline)
    returns (bytes memory zapResults)
  {
    require(whitelistedExecutor[_exe.executor], 'ZapRouter: non whitelisted executor');

    // handle src token collection
    _handleCollectERC20Tokens(_desc.erc20SrcInfo, _exe.executor);
    _handleCollectERC721Tokens(_desc.erc721SrcInfo, _exe.executor);

    // prepare validation data
    bytes memory initialData;
    if (_exe.validator != address(0)) {
      require(whitelistedValidator[_exe.validator], 'ZapRouter: non whitelisted validator');
      initialData = IKSZapValidatorActions(_exe.validator).prepareValidationData(0, _desc.zapInfo);
    }

    // calling executor to execute the zap logic
    zapResults =
      IKSZapExecutorActions(_exe.executor).executeZap{value: msg.value}(_exe.executorData);

    // validate data after zapping if needed
    if (_exe.validator != address(0)) {
      bool isValid = IKSZapValidatorActions(_exe.validator)
        .validateData(0, _desc.extraData, initialData, zapResults);
      require(isValid, 'ZapRouter: validation failed');
    }

    emit ZapExecuted(
      _exe.validator, _exe.executor, _desc.zapInfo, _desc.extraData, initialData, zapResults
    );
    emit ClientData(_exe.clientData);
  }

  /// @notice Handle collecting ERC20 tokens and transfer to executor
  function _handleCollectERC20Tokens(ERC20SrcInfo calldata src, address _executor) internal {
    require(
      src.tokens.length == src.amounts.length && src.tokens.length == src.permitData.length,
      'ZapRouter: invalid data'
    );
    uint256 msgValue = msg.value;
    address msgSender = msg.sender;

    IAllowanceTransfer.AllowanceTransferDetails[] memory details =
      new IAllowanceTransfer.AllowanceTransferDetails[](src.tokens.length);
    uint256 detailsLength = 0;

    for (uint256 i = 0; i < src.tokens.length;) {
      if (src.tokens[i] == ETH_ADDRESS) {
        // native token, should appear only once with correct msg.value
        require(msgValue > 0 && msgValue == src.amounts[i], 'ZapRouter: invalid msg value');
        msgValue = 0;
      } else if (
        src.tokens[i].erc20Permit(msgSender, src.permitData[i]) || src.permitData[i].length == 0
      ) {
        src.tokens[i].safeTransferFrom(msgSender, _executor, src.amounts[i]);
      } else {
        details[detailsLength++] = IAllowanceTransfer.AllowanceTransferDetails({
          from: msgSender, to: _executor, amount: uint160(src.amounts[i]), token: src.tokens[i]
        });
      }

      emit ERC20Collected(src.tokens[i], src.amounts[i]);
      unchecked {
        ++i;
      }
    }
    require(msgValue == 0, 'ZapRouter: invalid msg value');

    if (detailsLength > 0) {
      if (src.permit2Data.length > 0) {
        (bool success,) = address(permit2)
          .call(abi.encodePacked(IAllowanceTransfer.permit.selector, src.permit2Data));
        if (!success) {
          revert('ZapRouter: permit2 permit failed');
        }
      }

      assembly ('memory-safe') {
        mstore(details, detailsLength)
      }
      permit2.transferFrom(details);
    }
  }

  /// @notice Handle collecting ERC721 token and transfer to executor
  function _handleCollectERC721Tokens(ERC721SrcInfo calldata src, address _executor) internal {
    require(
      src.tokens.length == src.ids.length && src.tokens.length == src.permitData.length,
      'ZapRouter: invalid data'
    );
    for (uint256 i = 0; i < src.tokens.length;) {
      src.tokens[i].erc721Permit(src.ids[i], src.permitData[i]);
      IERC721(src.tokens[i]).safeTransferFrom(msg.sender, _executor, src.ids[i]);
      emit ERC721Collected(src.tokens[i], src.ids[i]);
      unchecked {
        ++i;
      }
    }
  }
}
