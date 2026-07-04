// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { ICreatorToken } from "../interfaces/ICreatorToken.sol";
import { ITransferValidator } from "../interfaces/ITransferValidator.sol";
import { ITransferValidatorSetTokenType } from "../interfaces/ITransferValidatorSetTokenType.sol";

abstract contract ERC721C is ICreatorToken {
    /**
     * @dev Storage structure for ERC721C
     */
    struct ERC721CStorage {
        // Address of the transfer validator contract
        address transferValidator;
        // Flag to automatically approve transfers from the validator
        bool autoApproveTransfersFromValidator;
    }

    // Storage slot for ERC721C storage
    bytes32 private constant _STORAGE_SLOT = keccak256("doma.storage.ERC721C");

    /**
     * @dev Returns the storage struct for ERC721C
     */
    function _erc721Storage() internal pure returns (ERC721CStorage storage storageStruct) {
        bytes32 slot = _STORAGE_SLOT;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            storageStruct.slot := slot
        }
    }
    // Token type constant for ERC721C
    uint16 private constant _TOKEN_TYPE_ERC721 = 1;
    /**
     * @dev Emitted when automatic approval of transfers from validator is updated
     */
    event AutomaticApprovalOfTransferValidatorSet(bool autoApproved);

    /**
     * @dev Thrown when setting a transfer validator address that has no deployed code
     */
    error InvalidTransferValidatorContract();

    /**
     * @notice Sets the transfer validator for the token contract (owner only)
     * @param validator The address of the transfer validator contract
     */
    function setTransferValidator(address validator) public virtual {
        _requireCallerIsContractOwner();

        bool isValidTransferValidator = validator.code.length > 0;

        if (validator != address(0) && !isValidTransferValidator) {
            revert InvalidTransferValidatorContract();
        }

        emit TransferValidatorUpdated(getTransferValidator(), validator);

        ERC721CStorage storage storage_ = _erc721Storage();
        storage_.transferValidator = validator;

        _registerTokenType(validator);
    }

    /**
     * @notice Returns the transfer validator contract address for this token contract
     * @return validator The address of the transfer validator
     */
    function getTransferValidator() public view virtual returns (address validator) {
        ERC721CStorage storage storage_ = _erc721Storage();
        validator = storage_.transferValidator;
    }

    /**
     * @notice Returns the function selector for the transfer validator's validation function
     * @return functionSignature The function selector
     * @return isViewFunction Whether the function is a view function
     */
    function getTransferValidationFunction()
        external
        pure
        virtual
        returns (bytes4 functionSignature, bool isViewFunction)
    {
        functionSignature = bytes4(keccak256("validateTransfer(address,address,address,uint256)"));
        isViewFunction = true;
    }

    /**
     * @notice Sets if the transfer validator is automatically approved as an operator for all token owners (owner only)
     * @param autoApprove If true, the collection's transfer validator will be automatically approved
     */
    function setAutomaticApprovalOfTransfersFromValidator(bool autoApprove) external virtual {
        _requireCallerIsContractOwner();
        ERC721CStorage storage storage_ = _erc721Storage();
        storage_.autoApproveTransfersFromValidator = autoApprove;
        emit AutomaticApprovalOfTransferValidatorSet(autoApprove);
    }

    /**
     * @notice Checks if automatic approval of transfers from validator is enabled
     * @return True if automatic approval is enabled
     */
    function getAutomaticApprovalOfTransfersFromValidator() external view virtual returns (bool) {
        return _erc721Storage().autoApproveTransfersFromValidator;
    }

    /**
     * @dev Pre-validates a token transfer, reverting if the transfer is not allowed by this token's security policy
     */
    function _preValidateTransfer(
        address caller,
        address from,
        address to,
        uint256 tokenId,
        uint256
    ) internal virtual {
        address validator = getTransferValidator();

        if (validator != address(0)) {
            if (msg.sender == validator) {
                return;
            }

            ITransferValidator(validator).validateTransfer(caller, from, to, tokenId);
        }
    }

    /**
     * @dev Returns the token type for this contract (ERC721)
     */
    function _tokenType() internal pure virtual returns (uint16) {
        return _TOKEN_TYPE_ERC721;
    }

    /**
     * @dev Registers the token type with the transfer validator
     */
    /* solhint-disable no-empty-blocks */
    function _registerTokenType(address validator) internal virtual {
        if (validator != address(0)) {
            uint256 validatorCodeSize;
            // solhint-disable-next-line no-inline-assembly
            assembly {
                validatorCodeSize := extcodesize(validator)
            }
            if (validatorCodeSize > 0) {
                try
                    ITransferValidatorSetTokenType(validator).setTokenTypeOfCollection(
                        address(this),
                        _tokenType()
                    )
                {} catch {}
            }
        }
    }

    /**
     * @dev Checks if the caller is the contract owner
     */
    function _requireCallerIsContractOwner() internal virtual;
}
