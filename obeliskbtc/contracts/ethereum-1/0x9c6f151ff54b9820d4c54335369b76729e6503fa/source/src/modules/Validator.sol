// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

import {Errors} from "src/libraries/Errors.sol";
import "src/interfaces/IDepositContract.sol";
import "openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";
import "src/interfaces/IValidator.sol";
import "src/interfaces/IValidatorRegistry.sol";

/**
 * @title Validator deposit and pubKey check
 * @author NodeDAO
 * @notice Provides public key checking and deposit functions as the base contract.
 */
abstract contract Validator is Initializable, IValidator {
    address public validatorManager;
    IDepositContract public depositContract;
    IValidatorRegistry public validatorRegistry;

    modifier onlyValidatorManager() {
        if (msg.sender != validatorManager) revert Errors.PermissionDenied();
        _;
    }

    function __Validator_init(address _validatorManager, address _validatorRegistry, address _depositContract)
        internal
        onlyInitializing
    {
        validatorManager = _validatorManager;
        depositContract = IDepositContract(_depositContract);
        if (_validatorRegistry != address(0)) {
            validatorRegistry = IValidatorRegistry(_validatorRegistry);
        }
    }

    /**
     * @notice deposit 32 eth to beacon
     */
    function _deposit(
        bytes memory _pubkey,
        bytes memory _withdrawalCredential,
        bytes memory _signature,
        bytes32 _depositDataRoot
    ) internal {
        depositContract.deposit{value: 32 ether}(_pubkey, _withdrawalCredential, _signature, _depositDataRoot);
    }

    /**
     * @notice Register the pubkey with the validator registry contract.
     * Once the pubkey has been registered, it will be revert.
     */
    function _registerPubkey(bytes[] memory _pubkeys) internal {
        if (address(validatorRegistry) != address(0)) {
            for (uint256 i = 0; i < _pubkeys.length; ++i) {
                validatorRegistry.registerPubkey(_pubkeys[i]);
            }
        }
    }

    /**
     * @notice udpate validator manager
     */
    function _setValidatorManager(address _validatorManager) internal {
        emit ValidatorManagerChanged(validatorManager, _validatorManager);
        validatorManager = _validatorManager;
    }

    /**
     * @notice udpate validatorRegistry
     */
    function _setValidatorRegistry(address _validatorRegistry) internal {
        emit ValidatorRegistryChanged(address(validatorRegistry), _validatorRegistry);
        validatorRegistry = IValidatorRegistry(_validatorRegistry);
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[50] private __gap;
}
