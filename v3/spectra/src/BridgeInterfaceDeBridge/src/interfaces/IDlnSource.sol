// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

interface IDlnSource {
    /// @dev Struct representing the creation parameters for creating an order on the (EVM) chain.
    struct OrderCreation {
        /// Address of the ERC-20 token that the maker is offering as part of this order.
        /// Use the zero address to indicate that the maker is offering a native blockchain token (such as Ether, Matic, etc.).
        address giveTokenAddress;
        /// Amount of tokens the maker is offering.
        uint256 giveAmount;
        /// Address of the ERC-20 token that the maker is willing to accept on the destination chain.
        bytes takeTokenAddress;
        /// Amount of tokens the maker is willing to accept on the destination chain.
        uint256 takeAmount;
        // the ID of the chain where an order should be fulfilled.
        uint256 takeChainId;
        /// Address on the destination chain where funds should be sent upon order fulfillment.
        bytes receiverDst;
        /// Address on the source (current) chain authorized to patch the order by adding more input tokens, making it more attractive to takers.
        address givePatchAuthoritySrc;
        /// Address on the destination chain authorized to patch the order by reducing the take amount, making it more attractive to takers,
        /// and can also cancel the order in the take chain.
        bytes orderAuthorityAddressDst;
        // An optional address restricting anyone in the open market from fulfilling
        // this order but the given address. This can be useful if you are creating a order
        // for a specific taker. By default, set to empty bytes array (0x)
        bytes allowedTakerDst;
        /// An optional external call data payload.
        bytes externalCall;
        // An optional address on the source (current) chain where the given input tokens
        // would be transferred to in case order cancellation is initiated by the orderAuthorityAddressDst
        // on the destination chain. This property can be safely set to an empty bytes array (0x):
        // in this case, tokens would be transferred to the arbitrary address specified
        // by the orderAuthorityAddressDst upon order cancellation
        bytes allowedCancelBeneficiarySrc;
    }

    /**
     * @dev Event emitted when an order is created
     * @param orderId The unique identifier of the created order
     * @param affiliateFee The affiliate fee data
     * @param nativeFixFee The native fixed fee amount
     * @param percentFee The percentage fee amount
     * @param referralCode The referral code used
     * @param metadata Additional metadata for the order
     */
    event CreatedOrder(
        OrderCreation order,
        bytes32 orderId,
        bytes affiliateFee,
        uint256 nativeFixFee,
        uint256 percentFee,
        uint32 referralCode,
        bytes metadata
    );

    /**
     * @notice This function returns the global fixed fee in the native asset of the protocol.
     * @dev This fee is denominated in the native asset (like Ether in Ethereum).
     * @return uint88 This return value represents the global fixed fee in the native asset.
     */
    function globalFixedNativeFee() external view returns (uint88);

    /**
     * @notice This function provides the global transfer fee, expressed in Basis Points (BPS).
     * @dev It retrieves a global fee which is applied to order.giveAmount. The fee is represented in Basis Points (BPS), where 1 BPS equals 0.01%.
     * @return uint16 The return value represents the global transfer fee in BPS.
     */
    function globalTransferFeeBps() external view returns (uint16);

    /**
     * @dev Places a new order with pseudo-random orderId onto the DLN
     * @notice deprecated
     * @param _orderCreation a structured parameter from the DlnOrderLib.OrderCreation library, containing all the necessary information required for creating a new order.
     * @param _affiliateFee a bytes parameter specifying the affiliate fee that will be rewarded to the beneficiary. It includes the beneficiary's details and the affiliate amount.
     * @param _referralCode a 32-bit unsigned integer containing the referral code. This code is traced back to the referral source or person that facilitated this order. This code is also emitted in an event for tracking purposes.
     * @param _permitEnvelope a bytes parameter that is used to approve the spender through a signature. It contains the amount, the deadline, and the signature.
     * @return bytes32 identifier (orderId) of a newly placed order
     */
    function createOrder(
        OrderCreation calldata _orderCreation,
        bytes calldata _affiliateFee,
        uint32 _referralCode,
        bytes calldata _permitEnvelope
    ) external payable returns (bytes32);

    /**
     * @dev Places a new order with deterministic orderId onto the DLN
     * @param _orderCreation a structured parameter from the DlnOrderLib.OrderCreation library, containing all the necessary information required for creating a new order.
     * @param _salt an input source of randomness for getting a deterministic identifier of an order (orderId)
     * @param _affiliateFee a bytes parameter specifying the affiliate fee that will be rewarded to the beneficiary. It includes the beneficiary's details and the affiliate amount.
     * @param _referralCode a 32-bit unsigned integer containing the referral code. This code is traced back to the referral source or person that facilitated this order. This code is also emitted in an event for tracking purposes.
     * @param _permitEnvelope a bytes parameter that is used to approve the spender through a signature. It contains the amount, the deadline, and the signature.
     * @param _metadata an arbitrary data to be tied together with the order for future off-chain analysis
     * @return bytes32 identifier (orderId) of a newly placed order
     */
    function createSaltedOrder(
        OrderCreation calldata _orderCreation,
        uint64 _salt,
        bytes calldata _affiliateFee,
        uint32 _referralCode,
        bytes calldata _permitEnvelope,
        bytes calldata _metadata
    ) external payable returns (bytes32);

    /**
     * @dev Places a new order for intent manager with deterministic orderId onto the DLN
     * @notice This function can only be called by the intent manager and has special fee handling:
     *         - No fixed native fee is charged
     *         - Uses custom transfer fee basis points instead of global fee
     *         - No affiliate fees are supported
     * @param _orderCreation a structured parameter from the DlnOrderLib.OrderCreation library, containing all the necessary information required for creating a new order.
     * @param _salt an input source of randomness for getting a deterministic identifier of an order (orderId)
     * @param _referralCode a 32-bit unsigned integer containing the referral code. This code is traced back to the referral source or person that facilitated this order.
     * @param _transferFeeBps custom transfer fee in basis points (BPS) to be used instead of the global transfer fee
     * @param _metadata an arbitrary data to be tied together with the order for future off-chain analysis
     * @return bytes32 identifier (orderId) of a newly placed order
     */
    function createSaltedOrderForIntent(
        OrderCreation calldata _orderCreation,
        uint64 _salt,
        uint32 _referralCode,
        uint16 _transferFeeBps,
        bytes calldata _metadata
    ) external payable returns (bytes32);
}
