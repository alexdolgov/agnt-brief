// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.8;

interface IValidator {
    event ValidatorManagerChanged(address _oldValidatorManager, address _validatorManager);
    event ValidatorRegistryChanged(address _oldValidatorManager, address _validatorManager);
}
