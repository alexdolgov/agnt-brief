// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {ZapTypeHash} from 'contracts/common/ZapTypeHash.sol';
import {IKSZapValidatorV2Base} from 'contracts/interfaces/zap/validators/IKSZapValidatorV2Base.sol';
import {KSRescueV2} from 'ks-growth-utils-sc/contracts/KSRescueV2.sol';

abstract contract KSZapValidatorV2Base is IKSZapValidatorV2Base, KSRescueV2, ZapTypeHash {
  address constant ETH_ADDRESS = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

  function prepareValidationData(uint8, bytes calldata _zapInfo)
    external
    view
    returns (bytes memory)
  {
    ValidationData memory data;
    ZapInfo memory zapInfo = abi.decode(_zapInfo, (ZapInfo));

    data.srcType = zapInfo.srcType;
    data.srcValidationData = _getPrepareDataFunction(zapInfo.srcType)(zapInfo.srcZapInfo);

    data.dstType = zapInfo.dstType;
    data.dstValidationData = _getPrepareDataFunction(zapInfo.dstType)(zapInfo.dstZapInfo);

    return abi.encode(data);
  }

  function validateData(
    uint8,
    bytes calldata _extraData,
    bytes calldata _validationData,
    bytes calldata _zapResults
  ) external view returns (bool) {
    ValidationData memory validationData = abi.decode(_validationData, (ValidationData));
    ExtraData memory extraData = abi.decode(_extraData, (ExtraData));

    return _getValidateRemovingFunction(validationData.srcType)(
      extraData.srcExtraData, validationData.srcValidationData
    )
      && _getValidateResultsFunction(validationData.dstType)(
        extraData.dstExtraData, validationData.dstValidationData
      );
  }

  /// @notice Dummy function to prepare validation data for none action
  function _prepareNoneValidationData(bytes memory) internal pure returns (bytes memory) {}

  /// @notice Dummy function to validate none action
  function _validateNoneResult(bytes memory, bytes memory) internal pure returns (bool) {
    return true;
  }

  /// @notice Dummy function to validate none action
  function _validateNoneRemoving(bytes memory, bytes memory) internal pure returns (bool) {
    return true;
  }

  function _getPrepareDataFunction(bytes32 _type)
    internal
    pure
    virtual
    returns (function(bytes memory) internal view returns (bytes memory));

  function _getValidateResultsFunction(bytes32 _type)
    internal
    pure
    virtual
    returns (function(bytes memory, bytes memory) internal view returns (bool));

  function _getValidateRemovingFunction(bytes32 _type)
    internal
    pure
    virtual
    returns (function(bytes memory, bytes memory) internal view returns (bool));
}
