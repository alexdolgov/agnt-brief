// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface IKSZapValidatorActions {
  function prepareValidationData(uint8 dstType, bytes calldata _zapInfo)
    external
    view
    returns (bytes memory _validationData);

  function validateData(
    uint8 dstType,
    bytes calldata _extraData,
    bytes calldata _validationData,
    bytes calldata _zapResults
  ) external view returns (bool);
}
