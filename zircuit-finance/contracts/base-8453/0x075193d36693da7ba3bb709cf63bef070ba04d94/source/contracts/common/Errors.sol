// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { ContractType } from "./Types.sol";

abstract contract Errors {
    error CallerNotVaultComposer();
    error CallerNotAccountingReceiver();
    error CallerNotStrategyManager();

    error ImportCollision();
    error Paused();

    error FailedToFetchUnderlyingDecimals();
    error FunctionDisabled();

    error ZeroAddress();
    error MessageTypeNotSupported();
    error GuidAlreadyProcessed(bytes32 guid);
    error LengthMismatch();
    error EmptyArray();
    error ImplNotContract();

    error AlreadyDeployed();
    error AlreadyInitialized();
    error AlreadyFulfilled();
    error AlreadyCanceled();

    error ProxyNotSet();
    error ProxyNotMatching(address proxy, address predicted);
    error ProxyInfoAlreadyAdded();

    error OnlyBridgeRouterAllowed();
    error OnlyBridgeOperatorAllowed();

    error OnlyNative();

    error InvalidContractType();
    error InvalidSharedDecimals();
    error InvalidLocalDecimals();
    error InvalidMessageLength();
    error InvalidSendParameters();
    error InvalidComposeOptionValue();

    error UndefinedEidToChainId();
    error UndefinedChainIdToEid();
    error UndefinedWindow();
    error UndefinedOAppOwner();
    error UndefinedOAppDelegate();
    error UndefinedAdmin();
    error UndefinedBridgeRouter();
    error UndefinedUnderlying();
    error UndefinedImplementation(ContractType contractType);

    error ChainIdAlreadyMapped();
    error NotEnoughValueToPayFees();
    error MsgValueNotZero();
    error NotInitiatorRequest();

    error SecondHopFeeNonZero();
    error NotEnoughFee();
    error NotEnoughSecondHopFee();
    error NotEnoughNative();
    error FeeNonZero();

    error DestNotRegistered();
    error DestNotInCluster();
    error DestDoNotSupportAsset();

    error StrategyNotAllowed();
    error StrategyAlreadyAllowed();
    error StrategyHasBalance();
    error MinShareAmountNotMet();
    error MinUnderlyingAmountNotMet();
    error AmountSDOverflowed(uint256 amountSD);

    error WrongVault();
    error OnlySelf();
    error AccountingReceiverNotSet();

    error RefundFailed();
    error ExtraFeesNotMatchingMsgValue();

    error MinAmountNotMet();
    error WithdrawalUnderThreshold();
}
