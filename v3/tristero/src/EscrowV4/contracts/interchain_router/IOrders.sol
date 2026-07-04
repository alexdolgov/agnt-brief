// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// Output struct for function returns
struct Output {
    address asset;
    uint256 amount;
}

// Minimal required for Interface MULTICALL
struct Call3Value {
    address target;
    bool allowFailure;
    uint256 value;
    bytes callData;
}

struct MulticallData {
    address multicallTarget;
    Call3Value[] calls; 
    address refundTo;
    address nftRecipient;
}

interface IMulticall {
    function multicall(
        Call3Value[] calldata calls,
        address refundTo,
        address nftRecipient
    ) external payable returns (Result[] memory returnData);
}

struct Result {
    bool success;
    bytes returnData;
}

// WETH Interface
interface IWETH {
    function withdraw(uint256 amount) external;
    function deposit() external payable;
}


interface IPermit2 {
    struct TokenPermissions {
        address token;
        uint256 amount;
    }

    struct PermitTransferFrom {
        TokenPermissions permitted;
        uint256 nonce;
        uint256 deadline;
    }

    struct SignatureTransferDetails {
        address to;
        uint256 requestedAmount;
    }

    function permitWitnessTransferFrom(
        PermitTransferFrom memory permit,
        SignatureTransferDetails calldata transferDetails,
        address owner,
        bytes32 witness,
        string calldata witnessTypeString,
        bytes calldata signature
    ) external;
}

// ============================================
// EIP-712 TYPES
// ============================================

interface IEIP712Types {
    struct OrderParameters {
        address srcAsset;
        address dstAsset;
        uint256 srcQuantity;
        uint256 dstQuantity;
        uint256 minQuantity;
        uint128 darkSalt;
    }
    
    struct SignedOrder {
        address sender;
        OrderParameters parameters;
        uint256 deadline;
        address target;
        address filler;
        string orderType;
        bytes[] customData;  
    }
    
    struct SigPayload {
        uint256 nonce;
        bytes signature;
    }

    // MMWitness is the witness struct which is hashed according to the EIP712 standard, 
    // and the hash is verified by the permit2 contract against market maker's signature, 
    // when pulling MM funds in the takeMMOrder function. 
    struct MMWitness {
        address mmToken; // e.g. USDT
        uint256 amount;
        bytes32 orderId; // id of the order the MM intends to fill
    }

    // ============================================
    // EVENTS
    // ============================================

    //for single chain AND the final step of cross chain (i.e. multicall in recieveHook)
    event OrderFilled(
        bytes32 indexed orderUUID,
        string  orderType,
        address target,
        address filler,
        address srcAsset,
        address dstAsset,
        uint256 srcQuantity,
        uint256 dstQuantity
    );

    //For bridging X1 --> X2  i.e. CCTP, OFT, etc. 
    event OrderBridged(
        bytes32 indexed orderUUID,
        string  orderType,
        uint32  dstCID,
        address target, //whomever is getting paid out on dest chain
        address filler, //always be the person relaying
        address srcAsset, //asset on the source chain i.e. if going USDC on arb to USDC on eth this is the USDC-arb address
        address dstAsset,
        uint256 bridgeQuantity,
        uint256 maxFee
    );

    /// @notice Emitted when tokens are sent to market maker wallet
    event MMWalletDeposit(
        bytes32 indexed orderUUID,
        address indexed mmWallet,
        address tokenSent,
        uint256 amountSent,
        string orderType,
        address srcAsset,
        address dstAsset
    );

    event GasZipContractDeposit(
        bytes32 indexed orderUUID,
        address indexed gasZipContract,
        uint256 amountSent,
        bytes gasZipCallData
    );

    event RelayLinkOrderSent(
        address indexed sender,
        address srcAsset,
        uint256 srcQuantity,
        uint32 destinationChainId,
        address bridgeToken,
        uint256 bridgeAmount,
        bytes32 indexed orderUUID
    );

    event RelayLinkDeposit(
        address indexed sender,
        address depositAddress,
        address token,
        uint256 amount,
        bytes32 requestId,
        uint32 destinationChainId,
        bytes32 indexed orderUUID
    );

    event RelayLinkContractDeposit(
        bytes32 indexed orderUUID,
        address indexed relayLinkContract,
        uint256 amountSent,
        bytes relayLinkCallData
    );

    // ============================================
    // ERRORS
    // ============================================

    error Expired();
    error Unauthorized();
    error InvalidCCTPParams();
    error InvalidType();
    error InsufficientOutput();
    error InvalidContractAddress();
    error OrderHash(bytes32 h1, bytes32 h2);
    error CCTPRedemption(bytes reason);
    error CCTPDepositFailed(bytes reason);
    error PayoutFailed(bytes reason);
    error MEVprotect(uint256 minExpected, uint256 actual);
    error InvalidOutputToken(address token);
    error InvalidSourceMulticallData();
    error InvalidDestinationMulticallData();
    error InvalidSender(address sender, address orderSender);
    error InvalidFiller(address filler, address orderFiller);
    error InvalidMMWallet();
    error RelayLinkCallFailed(bytes reason);
    error RelayLinkDepositFailed(bytes reason);
    error InsufficientBridgeAmount(uint256 expected, uint256 actual);
    error InvalidRelayLinkParams();
    error InvalidGasZipParams();
    error GasZipDepositFailed(bytes reason);
    error OrderAlreadyProcessed(bytes32 orderHash);
    error InvalidOrderType();
    error InvalidExtraData();
    error InvalidCustomData();
    error DirectionMismatch();
    error InsufficientMMFillAmount(uint256 required, uint256 available);

    event OrdersMatched(
        bytes32 indexed makerOrderHash,
        bytes32 indexed takerOrderHash
    );
}
