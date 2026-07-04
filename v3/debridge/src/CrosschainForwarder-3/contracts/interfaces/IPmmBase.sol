pragma solidity ^0.8.0;

import { IDeBridgeGateExtended as IDeBridgeGate } from "@debridge-finance/debridge-protocol-evm-interfaces/contracts/interfaces/IDeBridgeGateExtended.sol";

interface IPmmBase {

    /* ========== ENUMS ========== */

    enum ChainEngine {
        UNDEFINED, //0
        EVM, // 1
        SOLANA // 2
    }

    /* ========== STRUCTS ========== */

    struct Order {
        /// Unique nonce number for each maker
        /// Together with the maker, it forms the uniqueness for the order,
        /// which is important for calculating the order id
        uint64 makerOrderNonce;
        /// Order maker address
        /// Address in source chain
        bytes makerSrc;
        uint256 giveChainId;
        bytes giveTokenAddress;
        uint256 giveAmount;
        uint256 takeChainId;
        bytes takeTokenAddress;
        uint256 takeAmount;
        bytes receiverDst;
        bytes givePatchAuthoritySrc;
        /// If the field is `Some`, then only this address can receive cancel
        bytes orderAuthorityAddressDst;
        /// allowedTakerDst * optional
        bytes allowedTakerDst;
        /// Address in source chain
        /// If the field is `Some`, then only this address can receive cancel
        /// * optional
        bytes allowedCancelBeneficiarySrc;
        /// externalCall * optional
        bytes externalCall;
    }

    struct ExternalCall {
        uint256 executionFee;
        // uint256 flags;
        bytes fallbackAddress;
        bytes data;
    }

    /* ========== ERRORS ========== */

    error AdminBadRole();
    error CallProxyBadRole();
    error GovMonitoringBadRole();
    error NativeSenderBadRole(bytes nativeSender, uint256 chainIdFrom);
    error MismatchedTransferAmount();
    error MismatchedOrderId();
    error WrongAddressLength();
    error ZeroAddress();
    error ProposedFeeTooHigh();
    error WrongAutoArgument();
    error NotSupportedDstChain();
    error EthTransferFailed();
    error Unauthorized();
    error IncorrectOrderStatus();
    error WrongChain();
    error WrongArgument();
    error UnknownEngine();
    error TheSameFromTo();

    /* ========== EVENTS ========== */
    /* ========== FUNCTIONS ========== */
    function deBridgeGate() external returns (IDeBridgeGate);
}