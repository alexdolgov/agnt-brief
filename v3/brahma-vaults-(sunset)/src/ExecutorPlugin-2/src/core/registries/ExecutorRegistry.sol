/// SPDX-License-Identifier: BUSL-1.1

/// Copyright (C) 2023 Brahma.fi

pragma solidity 0.8.19;

import {AddressProviderService} from "../AddressProviderService.sol";
import {WalletRegistry} from "./WalletRegistry.sol";
import {EnumerableSet} from "openzeppelin-contracts/utils/structs/EnumerableSet.sol";

/**
 * @title ExecutorRegistry
 * @author Brahma.fi
 * @notice Registry for executors for sub accounts
 */
contract ExecutorRegistry is AddressProviderService {
    using EnumerableSet for EnumerableSet.AddressSet;

    error NotAuthorized();
    error AlreadyExists();
    error DoesNotExist();
    error NoPolicyCommit();

    event RegisterExecutor(address indexed _account, address indexed _authorizer, address indexed _executor);
    event DeRegisterExecutor(address indexed _account, address indexed _authorizer, address indexed _executor);

    /// @notice account addresses mapped to executor addresses
    mapping(address account => EnumerableSet.AddressSet) private accountExecutors;

    constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

    /**
     * @notice Registers an executor for account
     * @dev Adds new executor if it doesn't already exists else reverts with AlreadyExists()
     * @dev Can be only called by main console
     * @param _account console/subaccount address to add executor to
     * @param _executor executor to add
     */
    function registerExecutor(address _account, address _executor) external {
        _validateMsgSenderConsoleAccount(_account);
        if (!accountExecutors[_account].add(_executor)) revert AlreadyExists();
        emit RegisterExecutor(_account, msg.sender, _executor);
    }

    /**
     * @notice De-registers an executor for console account/ subaccount
     * @dev removes an executor if it exists else reverts with DoesNotExist()
     * @dev Can be only called by main console
     * @param _account console/subaccount address to remove executor from
     * @param _executor executor to remove
     */
    function deRegisterExecutor(address _account, address _executor) external {
        _validateMsgSenderConsoleAccount(_account);

        if (!accountExecutors[_account].remove(_executor)) revert DoesNotExist();
        emit DeRegisterExecutor(_account, msg.sender, _executor);
    }

    /**
     * @notice checks if _executor is registered for _account
     * @param _account address of account
     * @param _executor address of executor
     * @return isExecutorValid
     */
    function isExecutor(address _account, address _executor) external view returns (bool) {
        return accountExecutors[_account].contains(_executor);
    }

    /**
     * @return all the executors for a console account / subaccount
     * @param _account address of account
     */
    function getExecutorsForAccount(address _account) external view returns (address[] memory) {
        return accountExecutors[_account].values();
    }

    function _validateMsgSenderConsoleAccount(address _account) internal view {
        // msg.sender is console account
        if (msg.sender == _account && WalletRegistry(walletRegistry).isWallet(msg.sender)) return;

        // msg.sender is console account and owns the _account
        if (WalletRegistry(walletRegistry).subAccountToWallet(_account) == msg.sender) return;

        revert NotAuthorized();
    }
}
