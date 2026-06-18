// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {
    SendParam,
    OFTReceipt,
    MessagingReceipt,
    MessagingFee
} from "@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol";

/**
 * @notice Enumerates deployable contract categories tracked by the factory.
 */
enum ContractType {
    UNDERLYING_OFT,
    UNDERLYING_OFT_ADAPTER,
    VAULT,
    VAULT_TOKEN,
    VAULT_COMPOSER,
    STRATEGY_MANAGER,
    ACCOUNTING_RECEIVER,
    PLACEHOLDER // note: leave last
}

/**
 * @notice Initialization parameters for an UnderlyingOFTAdapter deployment.
 * @param clusterName Cluster identifier shared by contracts in the deployment.
 * @param underlyingSymbol Predefined Symbol of the underlying asset (found in vault.config.ts).
 * @param underlyingToken Address of the underlying ERC20 asset.
 * @param bridgeRouter Bridge router contract authorized to move funds.
 * @param vaultComposer Bytes32-encoded vault composer contract address used for cross-chain orchestration.
 * @param vaultComposerEid LayerZero endpoint id for the vault composer chain.
 * @param sharedDecimals Shared decimals used in OFT transfers (<=6).
 * @param oAppOwner Address that receives Ownable ownership of the OApp.
 * @param oAppDelegate LayerZero delegate used to configure the OApp parameters on the local LayerZero endpoint.
 * @param defaultAdmin Address assigned the DEFAULT_ADMIN_ROLE.
 */
struct UnderlyingOFTAdapterParams {
    string clusterName;
    string underlyingSymbol;
    address underlyingToken;
    address bridgeRouter;
    bytes32 vaultComposer;
    uint32 vaultComposerEid;
    uint8 sharedDecimals;
    address oAppOwner;
    address oAppDelegate;
    address defaultAdmin;
}

/**
 * @notice Initialization parameters for the UnderlyingOFT omnichain token.
 * @param clusterName Cluster identifier shared by contracts in the deployment.
 * @param underlyingSymbol Predefined Symbol of the underlying asset (found in vault.config.ts).
 * @param underlyingToken Address of the underlying ERC20 asset.
 * @param sharedDecimals Shared decimals used in OFT transfers (<=6).
 * @param vault Vault contract address.
 * @param vaultComposer Vault composer contract address used for cross-chain orchestration.
 * @param accountingReceiver Accounting receiver contract address.
 * @param bridgeRouter Bridge router contract authorized to move funds.
 * @param oAppOwner Address that receives Ownable ownership of the OApp.
 * @param oAppDelegate LayerZero delegate used to configure the OApp parameters on the local LayerZero endpoint.
 * @param defaultAdmin Address assigned the DEFAULT_ADMIN_ROLE.
 */
struct UnderlyingOFTParams {
    string clusterName;
    string underlyingSymbol;
    address underlyingToken;
    uint8 sharedDecimals;
    address vault;
    address vaultComposer;
    address accountingReceiver;
    address bridgeRouter;
    address oAppOwner;
    address oAppDelegate;
    address defaultAdmin;
}

/**
 * @notice Initialization parameters for an omnichain ERC4626 vault.
 * @param name ERC20 name for the deployed token.
 * @param symbol ERC20 symbol for the deployed token.
 * @param underlyingOFT Underlying OFT contract used as lockbox for the underlying assets.
 * @param vaultComposer Vault composer contract address used for cross-chain orchestration.
 * @param oAppOwner Address that receives Ownable ownership of the OApp.
 * @param oAppDelegate LayerZero delegate used to configure the OApp parameters on the local LayerZero endpoint.
 * @param defaultAdmin Address assigned the DEFAULT_ADMIN_ROLE.
 */
struct VaultParams {
    string name;
    string symbol;
    address underlyingOFT;
    address vaultComposer;
    address oAppOwner;
    address oAppDelegate;
    address defaultAdmin;
}

/**
 * @notice Initialization parameters for the vault composer orchestrator.
 * @param vault Vault contract address.
 * @param underlyingOFT Underlying OFT contract used as lockbox for the underlying assets.
 * @param underlyingToken Address of the underlying ERC20 asset.
 * @param endpoint LayerZero endpoint trusted for compose callbacks.
 * @param defaultAdmin Address assigned the DEFAULT_ADMIN_ROLE.
 * @param localEid LayerZero endpoint id for this chain.
 */
struct VaultComposerParams {
    address vault;
    address underlyingOFT;
    address underlyingToken;
    address endpoint;
    address defaultAdmin;
    uint32 localEid;
}

/**
 * @notice Initialization parameters for the vault share OFT token.
 * @param name ERC20 name for the deployed token.
 * @param symbol ERC20 symbol for the deployed token.
 * @param oAppOwner Address that receives Ownable ownership of the OApp.
 * @param oAppDelegate LayerZero delegate used to configure the OApp parameters on the local LayerZero endpoint.
 * @param defaultAdmin Address assigned the DEFAULT_ADMIN_ROLE.
 * @param vaultComposer Bytes32-encoded vault composer contract address.
 * @param vaultComposerEid LayerZero endpoint id for the vault composer chain.
 */
struct VaultTokenParams {
    string name;
    string symbol;
    address oAppOwner;
    address oAppDelegate;
    address defaultAdmin;
    bytes32 vaultComposer;
    uint32 vaultComposerEid;
}

/**
 * @notice Initialization parameters for the StrategyManager OApp.
 * @param clusterName Cluster identifier shared by contracts in the deployment.
 * @param underlyingSymbol Predefined Symbol of the underlying asset (found in vault.config.ts).
 * @param underlyingToken Address of the underlying ERC20 asset.
 * @param bridgeRouter Bridge router contract authorized to move funds.
 * @param accountingReceiver Bytes32-encoded accounting receiver contract address used for reporting.
 * @param accountingReceiverEid LayerZero endpoint id for the accounting receiver chain.
 * @param sharedDecimals Shared decimals used in OFT transfers (<=6).
 * @param oAppOwner Address that receives Ownable ownership of the OApp.
 * @param oAppDelegate LayerZero delegate used to configure the OApp parameters on the local LayerZero endpoint.
 * @param defaultAdmin Address assigned the DEFAULT_ADMIN_ROLE.
 */
struct StrategyManagerParams {
    string clusterName;
    string underlyingSymbol;
    address underlyingToken;
    address bridgeRouter;
    bytes32 accountingReceiver;
    uint32 accountingReceiverEid;
    uint8 sharedDecimals;
    address oAppOwner;
    address oAppDelegate;
    address defaultAdmin;
}

/**
 * @notice Initialization parameters for the AccountingReceiver OApp.
 * @param clusterName Cluster identifier shared by contracts in the deployment.
 * @param underlyingSymbol Predefined Symbol of the underlying asset (found in vault.config.ts).
 * @param underlyingToken Address of the underlying ERC20 asset.
 * @param underlyingOFT Underlying OFT contract used as lockbox for the underlying assets.
 * @param oAppOwner Address that receives Ownable ownership of the OApp.
 * @param oAppDelegate LayerZero delegate used to configure the OApp parameters on the local LayerZero endpoint.
 * @param defaultAdmin Address assigned the DEFAULT_ADMIN_ROLE.
 * @param sharedDecimals Shared decimals used in OFT transfers (<=6).
 */
struct AccountingReceiverParams {
    string clusterName;
    string underlyingSymbol;
    address underlyingToken;
    address underlyingOFT;
    address oAppOwner;
    address oAppDelegate;
    address defaultAdmin;
    uint8 sharedDecimals;
}

/**
 * @notice Metadata describing a deployed proxy tracked by the registry.
 * @param proxyAddress Bytes32-encoded proxy address (cast from `address`).
 * @param eid LayerZero endpoint identifier for the proxy deployment.
 * @param clusterName Cluster identifier shared by contracts in the deployment.
 * @param symbol Predefined Symbol of the underlying asset (found in vault.config.ts).
 */
struct ProxyInfo {
    bytes32 proxyAddress;
    uint32 eid;
    string clusterName;
    string symbol;
}

/**
 * @notice Payload forwarded between StrategyManager and AccountingReceiver.
 * @param mint True to mint underlying on receipt, false to burn.
 * @param delta Amount of underlying to mint or burn to the vault, expressed in shared decimals.
 */
struct DeltaMessage {
    bool mint;
    uint64 delta;
}

/**
 * @notice Withdrawal request details tracked by the vault token.
 * @param initiator Address that created the withdrawal request.
 * @param sendParam LayerZero send parameters describing the outbound transfer.
 * @param fee Fee quote.
 * @param refundAddress Address that receives any unused LayerZero fees.
 * @param txFee Additional transaction fee set by the user (not enforced by contract, typically set via UI).
 * @param fulfilled True once the request has been processed.
 * @param canceled True if the request was canceled.
 * @param msgReceipt Messaging receipt returned by LayerZero.
 * @param oftReceipt OFT receipt returned by LayerZero.
 */
struct WithdrawalQueueEntry {
    address initiator;
    SendParam sendParam;
    MessagingFee fee;
    address refundAddress;
    uint256 txFee;
    bool fulfilled;
    bool canceled;
    MessagingReceipt msgReceipt;
    OFTReceipt oftReceipt;
}

/**
 * @notice Withdrawal request details tracked by the vault composer.
 * @param initiator Address that created the withdrawal request.
 * @param shareAmount Vault shares to redeem for the user.
 * @param sendParam LayerZero send parameters describing the outbound transfer.
 * @param fee Native fee deposited with the withdrawal request.
 * @param txFee Additional transaction fee set by the user (not enforced by contract, typically set via UI).
 * @param refundAddress Address that receives any unused LayerZero fees.
 * @param fulfilled True once the request has been processed.
 * @param canceled True if the request was canceled.
 */
struct ComposerWithdrawalQueueEntry {
    address initiator;
    uint256 shareAmount;
    SendParam sendParam;
    uint256 fee;
    uint256 txFee;
    address refundAddress;
    bool fulfilled;
    bool canceled;
}
