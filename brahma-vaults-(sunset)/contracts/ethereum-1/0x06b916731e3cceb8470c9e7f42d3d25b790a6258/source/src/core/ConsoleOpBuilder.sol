/// SPDX-License-Identifier: BUSL-1.1
/// Copyright (C) 2023 Brahma.fi

pragma solidity 0.8.19;

import {AddressProviderService} from "src/core/AddressProviderService.sol";
import {PolicyRegistry} from "src/core/registries/PolicyRegistry.sol";
import {ExecutorRegistry} from "src/core/registries/ExecutorRegistry.sol";
import {WalletRegistry} from "src/core/registries/WalletRegistry.sol";
import {Types, SafeHelper} from "src/libraries/SafeHelper.sol";

import {ISafeMultiSend} from "interfaces/external/ISafeMultiSend.sol";
import {ISafeWallet} from "interfaces/external/ISafeWallet.sol";

/**
 * @title ConsoleOpBuilder
 * @author Brahma.fi
 * @notice Contains functions that provide the multicall execution bytecode needed for console user operations
 * @dev The callData provided by this contract is meant to be executed via `SafeMultiSend::multiSend()` from `ConsoleAccount` as DELEGATECALL. `SafeMultiSend` here refers to the contract who's address is stored at `AddressProvider::authorizedAddresses(_SAFE_MULTI_SEND_HASH)`
 */
contract ConsoleOpBuilder is AddressProviderService {
    constructor(address _addressProvider) AddressProviderService(_addressProvider) {}

    /**
     * @notice Provides multicall bytecode for enabling a policy on brahma console account
     * @dev Enables policy, by updating policy on `PolicyRegistry`, setting guard on Safe, setting fallback handler on Safe
     * @param consoleAccount address of brahma console account
     * @param policyCommit policy commit hash to set
     * @return callData for multicall execution
     */
    function enablePolicyOnConsole(address consoleAccount, bytes32 policyCommit) external view returns (bytes memory) {
        Types.Executable[] memory txns = new Types.Executable[](3);

        txns[0] = Types.Executable({
            callType: Types.CallType.CALL,
            target: policyRegistry,
            value: 0,
            data: abi.encodeCall(PolicyRegistry.updatePolicy, (consoleAccount, policyCommit))
        });

        txns[1] = Types.Executable({
            callType: Types.CallType.CALL,
            target: consoleAccount,
            value: 0,
            data: abi.encodeCall(
                ISafeWallet.setGuard, (AddressProviderService._getAuthorizedAddress(_SAFE_MODERATOR_OVERRIDABLE_HASH))
                )
        });

        txns[2] = Types.Executable({
            callType: Types.CallType.CALL,
            target: consoleAccount,
            value: 0,
            data: abi.encodeCall(
                ISafeWallet.setFallbackHandler,
                (AddressProviderService._getAuthorizedAddress(_CONSOLE_FALLBACK_HANDLER_HASH))
                )
        });

        return _getMultiSendCallData(txns);
    }

    /**
     * @notice Provides multicall bytecode for disabling a policy on brahma console account
     * @dev Disables policy, by setting guard to address(0) on Safe, setting fallback handler to address(0) on Safe
     * @param consoleAccount address of brahma console account
     * @return callData for multicall execution
     */
    function disablePolicyOnConsole(address consoleAccount) external pure returns (bytes memory) {
        Types.Executable[] memory txns = new Types.Executable[](2);

        txns[0] = Types.Executable({
            callType: Types.CallType.CALL,
            target: consoleAccount,
            value: 0,
            data: abi.encodeCall(ISafeWallet.setGuard, (address(0)))
        });

        txns[1] = Types.Executable({
            callType: Types.CallType.CALL,
            target: consoleAccount,
            value: 0,
            data: abi.encodeCall(ISafeWallet.setFallbackHandler, (address(0)))
        });

        return _getMultiSendCallData(txns);
    }

    /**
     * @notice Provides multicall bytecode for enabling executor plugin on a sub-account
     * @dev Enables executor plugin, by enabling `ExecutorPlugin` as a Module, registering all executors on `ExecutorRegistry`
     * @param subAccount address of  sub-account
     * @param executors list of executor addresses to register
     * @return callData for multicall execution
     */
    function enableExecutorPlugin(address subAccount, address[] memory executors)
        external
        view
        returns (bytes memory)
    {
        uint256 _numberOfExecutors = executors.length;
        uint256 _numberOfTransactions = _numberOfExecutors + 1;

        Types.Executable[] memory txns = new Types.Executable[](_numberOfTransactions);

        bytes memory enableModuleViaModuleExec = _getModuleExecutionCallData(
            subAccount,
            abi.encodeCall(
                ISafeWallet.enableModule, (AddressProviderService._getAuthorizedAddress(_EXECUTOR_PLUGIN_HASH))
            ),
            Types.CallType.CALL
        );

        txns[0] = Types.Executable({
            callType: Types.CallType.CALL,
            target: subAccount,
            value: 0,
            data: enableModuleViaModuleExec
        });

        uint256 i;
        while (i < _numberOfExecutors) {
            txns[i + 1] = Types.Executable({
                callType: Types.CallType.CALL,
                target: executorRegistry,
                value: 0,
                data: abi.encodeCall(ExecutorRegistry.registerExecutor, (subAccount, executors[i]))
            });

            unchecked {
                ++i;
            }
        }

        return _getMultiSendCallData(txns);
    }

    /**
     * @notice Provides multicall bytecode for disabling executor plugin on a sub-account
     * @dev Disabling executor plugin, by disabling `ExecutorPlugin` as a Module, de-registering all executors on `ExecutorRegistry`
     * @param subAccount address of  sub-account
     * @param previousModule address of previous module with respect to `ExecutorPlugin`
     * @return callData for multicall execution
     */
    function disableExecutorPlugin(address subAccount, address previousModule) external view returns (bytes memory) {
        address[] memory _executors = ExecutorRegistry(executorRegistry).getExecutorsForAccount(subAccount);

        uint256 _numberOfExecutors = _executors.length;
        Types.Executable[] memory txns = new Types.Executable[](_numberOfExecutors+1);

        bytes memory enableModuleViaModuleExec = _getModuleExecutionCallData(
            subAccount,
            abi.encodeCall(
                ISafeWallet.disableModule,
                (previousModule, AddressProviderService._getAuthorizedAddress(_EXECUTOR_PLUGIN_HASH))
            ),
            Types.CallType.CALL
        );

        txns[0] = Types.Executable({
            callType: Types.CallType.CALL,
            target: subAccount,
            value: 0,
            data: enableModuleViaModuleExec
        });

        uint256 i;
        while (i < _numberOfExecutors) {
            txns[i + 1] = Types.Executable({
                callType: Types.CallType.CALL,
                target: executorRegistry,
                value: 0,
                data: abi.encodeCall(ExecutorRegistry.deRegisterExecutor, (subAccount, _executors[i]))
            });

            unchecked {
                ++i;
            }
        }

        return _getMultiSendCallData(txns);
    }

    /**
     * @notice Provides multicall bytecode for killing all sub-accounts owned by a console account, i.e, making them unusable in case of emergency scenarios
     * @param consoleAccount address of console account, to disable sub-accounts for
     * @return callData for multicall execution
     */
    function killAllSubAccounts(address consoleAccount) external view returns (bytes memory) {
        address[] memory _subAccounts = WalletRegistry(walletRegistry).getSubAccountsForWallet(consoleAccount);

        return killSubAccounts(_subAccounts);
    }

    /**
     * @notice Provides multicall bytecode for killing a list of sub-accounts specified by a console account, i.e, making it unusable in case of emergency scenarios
     * @dev To disable the sub-accounts, their guards are set to Safe Singleton, so that all guard function calls made by the sub-account to validate transactions would revert by default, due to lack of the valid function selectors present, thus blocking all transactions
     * @dev Refer Safe Singleton: https://github.com/safe-global/safe-contracts/blob/main/contracts/Safe.sol
     * @param subAccounts list of sub-accounts, to disable
     * @return callData for multicall execution
     */
    function killSubAccounts(address[] memory subAccounts) public view returns (bytes memory) {
        uint256 _numberOfSubAccounts = subAccounts.length;

        Types.Executable[] memory txns = new Types.Executable[](_numberOfSubAccounts);

        uint256 i;
        address _subAccount;
        bytes memory setInvalidGuardCallData;
        while (i < _numberOfSubAccounts) {
            _subAccount = subAccounts[i];

            /// @dev The choice to set guard to Safe Singleton was made because it is present on all chains, that consoles would be deployed on, and ensures that all transactions would revert due to the lack of implementation of the `IGuard` interface.
            setInvalidGuardCallData = _getModuleExecutionCallData(
                _subAccount,
                abi.encodeCall(
                    ISafeWallet.setGuard, (AddressProviderService._getAuthorizedAddress(_EXECUTION_BLOCKER_HASH))
                ),
                Types.CallType.CALL
            );
            txns[i] = Types.Executable({
                callType: Types.CallType.CALL,
                target: _subAccount,
                value: 0,
                data: setInvalidGuardCallData
            });

            unchecked {
                ++i;
            }
        }

        return _getMultiSendCallData(txns);
    }

    /**
     * @notice Helper function that returns callData to execute callData on a safe, via module execution
     * @param executeOn address of safe to execute on
     * @param executionCallData callData to execute via module
     * @param callType type of call to be made
     * @return module execution callData
     */
    function _getModuleExecutionCallData(address executeOn, bytes memory executionCallData, Types.CallType callType)
        private
        pure
        returns (bytes memory)
    {
        return abi.encodeCall(
            ISafeWallet.execTransactionFromModule,
            (executeOn, 0, executionCallData, SafeHelper._parseOperationEnum(callType))
        );
    }

    /**
     * @notice Helper function that returns callData to send a list of transactions via MultiCall
     * @param txns list of transactions to execute ina multicall
     * @return MultiCall callData
     */
    function _getMultiSendCallData(Types.Executable[] memory txns) private pure returns (bytes memory) {
        return abi.encodeCall(ISafeMultiSend.multiSend, (SafeHelper._packMultisendTxns(txns)));
    }
}
