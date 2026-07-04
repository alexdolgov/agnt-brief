// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface ICreatorToken {
    /**
     * @notice Emitted when the transfer validator is updated
     * @param oldValidator The previous transfer validator address
     * @param newValidator The new transfer validator address
     */
    event TransferValidatorUpdated(address oldValidator, address newValidator);

    /**
     * @notice Returns the current transfer validator address
     * @return validator The address of the transfer validator contract
     */
    function getTransferValidator() external view returns (address validator);

    /**
     * @notice Sets a new transfer validator
     * @param validator The address of the new transfer validator contract
     */
    function setTransferValidator(address validator) external;

    /**
     * @notice Returns the function signature used for transfer validation
     * @return functionSignature The function selector for validation
     * @return isViewFunction Whether the validation function is a view function
     */
    function getTransferValidationFunction()
        external
        view
        returns (bytes4 functionSignature, bool isViewFunction);
}
