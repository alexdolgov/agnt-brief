pragma solidity ^0.8.0;

import "./IPmmBase.sol";

interface IPmmSource is IPmmBase {
    /* ========== ENUMS ========== */

    enum OrderGiveStatus {
        /// Order not exist
        NotSet, //0
        /// Order created
        Created, // 1
        /// Order full filled and unlock command sent in give.chain_id by taker
        ClaimedUnlock, // 2
        /// Order canceled
        ClaimedCancel // 3
    }

    /* ========== STRUCTS ========== */

    struct OrderCreation {
        address giveTokenAddress;
        uint256 giveAmount;
        bytes takeTokenAddress;
        uint256 takeAmount;
        uint256 takeChainId;
        bytes receiverDst;
        address givePatchAuthoritySrc;
        /// If the field is `Some`, then only this address can receive cancel
        bytes orderAuthorityAddressDst;
        /// allowedTakerDst * optional
        bytes allowedTakerDst;
        /// externalCall * optional
        bytes externalCall;
        /// Address in source chain
        /// If the field is `Some`, then only this address can receive cancel
        /// * optional
        bytes allowedCancelBeneficiarySrc;
    }

    struct GiveOrderState {
        OrderGiveStatus status;
        uint256 percentFee;
        uint256 fixFee;
        uint256 giveAmount;
        address giveTokenAddress;
        address affiliateBeneficiary;
        uint256 affiliateAmount;
    }

    /* ========== EVENTS ========== */

    event CreatedOrder(
        Order order,
        bytes32 orderId,
        bytes affiliateFee,
        uint256 fixFee,
        uint256 percentFee,
        uint32 referralCode
    );

    event IncreasedGiveAmount(bytes32 orderId, uint256 orderGiveFinalAmount, uint256 finalPercentFee);

    event AffiliateFeePaid(
        bytes32 _orderId,
        address beneficiary,
        uint256 affiliateFee,
        address giveTokenAddress
    );

    event ClaimedUnlock(
        bytes32 orderId,
        address beneficiary,
        uint256 giveAmount,
        address giveTokenAddress
    );

    event UnexpectedOrderStatusForClaim(bytes32 orderId, OrderGiveStatus status, address beneficiary);

    event ClaimedOrderCancel(
        bytes32 orderId,
        address beneficiary,
        uint256 paidAmount,
        address giveTokenAddress
    );

    event UnexpectedOrderStatusForCancel(bytes32 orderId, OrderGiveStatus status, address beneficiary);

    event SetPmmDestinationAddress(uint256 chainIdTo, bytes pmmDestinationAddress, ChainEngine chainEngine);

    event WithdrawnFee(address tokenAddress, uint256 amount, address beneficiary);

    /* ========== ERRORS ========== */

    error WrongFixedFee(uint256 received, uint256 actual);
    error WrongAffiliateFeeLength();

    error ExternalCallIsBlocked();
    error MismatchNativeGiveAmount();

    /* ========== FUNCTIONS ========== */

    /// @dev Fixed fee in native asset, used if a chain fixed fee is set to 0
    function globalFixedNativeFee() external returns (uint256);

    /// @dev Transfer fee in BPS, used if a chain transfer fee is set to 0
    function globalTransferFeeBps() external returns (uint16);

    function createOrder(
        OrderCreation calldata _orderCreation,
        bytes calldata _affiliateFee,
        uint32 _referralCode,
        bytes calldata _permitEnvelope
    ) external payable returns (bytes32);
}