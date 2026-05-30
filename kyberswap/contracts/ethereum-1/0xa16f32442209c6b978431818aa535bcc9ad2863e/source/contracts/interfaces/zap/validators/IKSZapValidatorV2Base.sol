// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface IKSZapValidatorV2Base {
  function prepareValidationData(uint8, bytes calldata _zapInfo)
    external
    view
    returns (bytes memory _validationData);

  function validateData(
    uint8,
    bytes calldata _extraData,
    bytes calldata _validationData,
    bytes calldata _zapResults
  ) external view returns (bool);

  struct ZapInfo {
    bytes32 srcType;
    bytes32 dstType;
    bytes srcZapInfo;
    bytes dstZapInfo;
  }

  struct ValidationData {
    bytes32 srcType;
    bytes32 dstType;
    bytes srcValidationData;
    bytes dstValidationData;
  }

  struct ExtraData {
    bytes srcExtraData;
    bytes dstExtraData;
  }
}
