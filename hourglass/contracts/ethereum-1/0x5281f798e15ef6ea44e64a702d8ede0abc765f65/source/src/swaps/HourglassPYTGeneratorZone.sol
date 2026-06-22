// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.25;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SeaportInterface} from "seaport-types/src/interfaces/SeaportInterface.sol";
import {Order, OrderParameters, OfferItem, ConsiderationItem} from "seaport-types/src/lib/ConsiderationStructs.sol";
import {ItemType, OrderType} from "seaport-types/src/lib/ConsiderationEnums.sol";
import "@interfaces/IHourglassDepositor.sol";
import "transient-goodies/TransientPrimitives.sol";
import "../utils/TwoStepOwnable.sol";
import "seaport-types/src/interfaces/ConduitInterface.sol";
import "seaport-types/src/conduit/lib/ConduitEnums.sol";

/**
 * @title Seaport Point Generator
 * @notice A contract to atomically generate Hourglass Restaking Points and execute their sale using RFQ swaps
 * facilitated by Seaport.
 * @author Based on the Ion Protocol Seaport (De)leverage contract: https://github.com/Ion-Protocol/ion-seaport/blob/50251105b4e404623ddd6ee2cc8606b33796013a/src/SeaportDeleverage.sol
 *
 * @dev The standard Seaport flow would go as follows:
 *
 *      1. An `offerrer` creates an `Order` and signs it. The `fulfiller` will
 *      be given both the `Order` payload and the `signature`. The `fulfiller`'s
 *      role is to execute the transaction.
 *
 *      Inside an `Order`, there is
 *       - an `offerer`: the signature that will be `ecrecover()`ed to verify
 *       the integrity of the signature.
 *       - an array of `Offer`s: Each `Offer` will have a token and an amount.
 *       - an array of `Consideration`s: Each `Consideration` will have a token,
 *       an amount and a recipient.
 *
 *      2. Seaport will verify the signature was signed by the `offerer`.
 *
 *      3. Seaport will iterate through all the `Offer`s and transfer the
 *      specified amount of each token to the fulfiller from the offerer.
 *
 *      4. Seaport will iterate through all the `Consideration`s and transfer
 *      the specified amount of each token from the fulfiller to the recipient.
 *
 *
 * To generate point tokens without the maker taking on exposure to the assets, we
 * need to use the Hourglass system to mint the point tokens to the taker and the
 * principal tokens to the maker. The depositor requires having the assets deposited
 * before minting the point tokens. This contract is designed to facilitate
 * this process by utilizing the Seaport conduit & intercepting the execution to
 * transfer assets not included in the Seaport Order.
 *
 * While this would not be possible in the standard Seaport flow, we engage in a
 * non-standard flow that hijacks the ERC20 `transferFrom()` to gain control
 * flow in between steps 3 and 4. Normally, if the `offerer` wanted to sign for
 * a trade between 100 Token A and 90 Token B, the `Order` payload would contain
 * an `Offer` of 100 Token A and a `Consideration` of 90 Token B to the
 * `offerer`'s address.
 *
 * However, to sign for the same trade to be executed through this contract, the
 * `Order` payload would still contain an `Offer` of 100 Token A. This indicates
 * the amount of point tokens to be generated, while the `Consideration` would
 * be the cost to the fulfiller for purchasing these point tokens. Utilizing the
 * conduit for all token transfers besides minted point and principal tokens, each
 * party involved in the process need only grant token approvals to the trusted
 * Seaport Conduit.
 *
 * This allows this contract to gain control flow in between steps 3 and 4
 * through the `transferFrom()` function and Seaport still enforces the
 * `constraints` of the other `Consideration`s ensuring counterparty's terms.
 * By utilizing transient storage, we can communicate data between the initial call
 * and the Seaport callback without the gas cost of writing to state.
 */
contract HourglassPYTGeneratorZone is TwoStepOwnable {
    using TransientPrimitivesLib for uint256;
    using TransientPrimitivesLib for taddress;

    uint256 internal constant DEFAULT_UNENTERED = 0;
    uint256 internal constant AWAITING_CALLBACK = 1;
    tuint256 internal _lockState;
    taddress internal _tDepositor;
    taddress internal _tFulfiller;
    address private constant DEFAULT_ADDRESS = address(0);

    // Seaport and Conduit contracts
    SeaportInterface private constant SEAPORT = SeaportInterface(0x00000000000000ADc04C56Bf30aC9d3c0aAF14dC);
    // 0x9352dA82F42c5bDDe9F0b2C19D635baE39142dD8
    ConduitInterface private immutable _conduit;
    // 0xa8c94ae38b04140794a9394b76ac6d0a83ac0b02000000000000000000000000
    bytes32 private immutable _conduitKey;

    bool private deactivated;

    mapping(address => bool) private _approvedTokens;

    constructor(address _owner, address __conduit, bytes32 __conduitKey) {
        _setInitialOwner(_owner);
        _conduit = ConduitInterface(__conduit);
        _conduitKey = __conduitKey;
    }

    /**
     * @dev Modifier to check that the callback can only be called by the Seaport contract.
     */
    modifier onlySeaport() {
        if (msg.sender != address(SEAPORT)) revert MsgSenderMustBeSeaport(msg.sender);
        _;
    }

    /**
     * @notice Deactivate the contract.
     */
    function deactivate() external onlyOwner {
        deactivated = true;
    }

    function approveConsiderationToken(address token) external onlyOwner {
        _approvedTokens[token] = true;
        IERC20(token).approve(address(SEAPORT), type(uint256).max);
        emit ConsiderationTokenApproved(token);
    }

    /**
     * @notice Atomically generate point tokens via the Hourglass system using Seaport.
     *
     * @dev
     * ```solidity
     * struct Order {
     *      OrderParameters parameters;
     *      bytes signature;
     * }
     *
     * struct OrderParameters {
     *      address offerer; // 0x00
     *      address zone; // 0x20
     *      OfferItem[] offer; // 0x40
     *      ConsiderationItem[] consideration; // 0x60
     *      OrderType orderType; // 0x80
     *      uint256 startTime; // 0xa0
     *      uint256 endTime; // 0xc0
     *      bytes32 zoneHash; // 0xe0
     *      uint256 salt; // 0x100
     *      bytes32 conduitKey; // 0x120
     *      uint256 totalOriginalConsiderationItems; // 0x140
     * }
     *
     * struct OfferItem {
     *      ItemType itemType;
     *      address token;
     *      uint256 identifierOrCriteria;
     *      uint256 startAmount;
     *      uint256 endAmount;
     * }
     *
     * struct ConsiderationItem {
     *      ItemType itemType;
     *      address token;
     *      uint256 identifierOrCriteria;
     *      uint256 startAmount;
     *      uint256 endAmount;
     *      address payable recipient;
     * }
     * ```
     *
     * REQUIRES:
     * - There should only be one token for the `Offer`.
     * - The offer token should be this contract's address. This is to allow this contract to
     * gain control flow. We also want to use the `transferFrom()` args to communicate data
     * to the `transferFrom()` callback. Any data that can't be fit into the `transferFrom()`
     * args will be communicated through transient storage.
     * - There should be one item in the `Consideration`.
     * - The `zone` must be this contract's address.
     * - The `zoneHash` must be decoded to the address of the depositor generating the points tokens.
     * - The `orderType` must be `FULL_RESTRICTED`. This means only the `zone`,
     * or the offerer, can fulfill the order.
     * - The `conduitKey` must be the Hourglass Conduit Key.
     * - The `totalOriginalConsiderationItems` must be 1.
     *
     * - The `Offer` item must be of type `ERC20`.
     * - The `startAmount` and `endAmount` of the `Offer` item must be equal.
     *
     * - The `Consideration` item must be of type `ERC20`.
     * - The `token` of the `Consideration` item must be an approved payment token, a token for
     * which this contract has approved the Conduit to transfer the consideration amount from.
     * - The `startAmount` and `endAmount` of the first `Consideration` item
     * communicate the amount the buyer is paying for the offer.startAmount of point tokens.
     * - The `recipient` of the first `Consideration` item must be `offer.offerer`.
     *
     * We don't constrain the `recipient` of the second `Consideration` item.
     *
     * It is technically possible for two distinct orders to have the same
     * parameters. The `salt` should be used to distinguish between two orders
     * with the same parameters. Otherwise, they will map to the same order hash
     * and only one of them will be able to be fulfilled.
     *
     * @param order Seaport order
     */
    function generatePointTokens(Order calldata order) external {
        // forgefmt: disable-start
        if (deactivated) revert ContractDeactivated();
        // check that the contract has not been entered
        if (_lockState.get() == AWAITING_CALLBACK) revert AlreadyEntered();
        // enter the contract
        _lockState.set(AWAITING_CALLBACK);

        // validate the order parameters
        OrderParameters calldata params = order.parameters;

        if (params.offer.length != 1) 
            revert OffersLengthMustBeOne(params.offer.length);
        if (params.consideration.length != 1) 
            revert ConsiderationsLengthMustBeOne(params.consideration.length);
        if (params.zone != address(this)) 
            revert ZoneMustBeThis(params.zone);
        if (params.orderType != OrderType.FULL_RESTRICTED) 
            revert OrderTypeMustBeFullRestricted(params.orderType);
        if (params.conduitKey != bytes32(0)) 
            revert ConduitKeyMismatch(params.conduitKey);
        if (params.totalOriginalConsiderationItems != 1) 
            revert InvalidTotalOriginalConsiderationItems();

        // extract the depositor address from the zoneHash
        address depositor = address(uint160(uint256(params.zoneHash)));
        if (depositor == address(0)) 
            revert ZoneHashDoesNotContainDepositorAddress(params.zoneHash);
        
        // get the deposit token from the depositor
        address depositToken = IHourglassDepositor(depositor).getUnderlying();
        
        // store the addresses in transient storage
        TransientPrimitivesLib.set(_tDepositor, depositor);
        TransientPrimitivesLib.set(_tFulfiller, msg.sender);

        // validate the offer item
        OfferItem calldata offer = params.offer[0];

        if (offer.itemType != ItemType.ERC20) 
            revert OItemTypeMustBeERC20(offer.itemType);
        if (offer.token != address(this)) 
            revert OTokenMustBeThis(offer.token);
        if (offer.startAmount != offer.endAmount) {
            revert OfferAmountMismatch(offer.startAmount, offer.endAmount);
        }

        // validate the consideration item
        ConsiderationItem calldata consideration1 = params.consideration[0];

        if (consideration1.itemType != ItemType.ERC20) 
            revert C1TypeMustBeERC20(consideration1.itemType);
        if (consideration1.recipient != params.offerer)
            revert C1RecipientMustBeSender(consideration1.recipient);
        if (consideration1.startAmount != consideration1.endAmount)
            revert ConsiderationAmountMismatch(consideration1.startAmount, consideration1.endAmount);
        if (!_approvedTokens[consideration1.token])
            revert ConsiderationTokenMustBeApproved(consideration1.token);
        // forgefmt: disable-end

        /**
         * @dev Fulfilling a basic order uses msg.sender as the fulfiller (this address).
         *      The fulfiller must transfer the consideration token here first.
         *      Seaport then transfers it from here to the offerer as part of settlement.
         *      The Hourglass Depositor also needs the deposit token pushed into it from the offerer.
         *      To prevent call interception at the depositor, the depositor must be locked in first.
         */
        // lock the depositor in preparation for the transfer in of funds
        IHourglassDepositor(depositor).enter(offer.startAmount);

        // create the ConduitTransfer array
        ConduitTransfer[] memory transfers = new ConduitTransfer[](2);

        // transfer the deposit token & amount from offerer to depositor
        transfers[0] = ConduitTransfer({
            itemType: ConduitItemType.ERC20,
            token: depositToken,
            from: params.offerer,
            to: depositor,
            identifier: 0,
            amount: offer.startAmount
        });
        // transfer the payment token & amount from depositor to this address
        transfers[1] = ConduitTransfer({
            itemType: ConduitItemType.ERC20,
            token: params.consideration[0].token,
            from: msg.sender,
            to: address(this),
            identifier: 0,
            amount: params.consideration[0].startAmount
        });

        // utilize the conduit to transfer the deposit token from the offerer to the depositor
        bytes4 successKey = _conduit.execute(transfers);
        if (successKey != _conduit.execute.selector) revert ConduitTransferFailure();

        // fulfill the order via Seaport
        SEAPORT.fulfillOrder(order, bytes32(0));

        // un-enter the contract
        _lockState.set(DEFAULT_UNENTERED);
        // zero out the depositor and fulfiller addresses
        _tDepositor.set(DEFAULT_ADDRESS);
        _tFulfiller.set(DEFAULT_ADDRESS);
    }

    /**
     * @notice This callback is not meant to be called directly.
     *
     * @dev This function selector has been mined to match the `transferFrom()`
     * selector (`0x23b872dd`). We hijack the `transferFrom()` selector to be
     * able to use the default Seaport flow. This is a callback from Seaport to
     * give this contract control flow between the `Offer` being transferred and
     * the `Consideration` being transferred.
     *
     * In order to enforce that this function is only called through a
     * transaction initiated by this contract, we use the `onlyReentrant`
     * modifier.
     *
     * This function can only be called by the Seaport contract.
     *
     * The input arguments are used to communicate data necessary
     * for the callback context. Transient storage is used to communicate any
     * extra data that could not be fit into the `transferFrom()` args.
     *
     * @param maker The offerer selling point tokens
     * @param depositAmount The quantity of point tokens to generate
     */
    function seaportCallback4878572495(address maker, address, uint256 depositAmount) external onlySeaport {
        // Rather than onlyReentrant, check directly that the contract has been entered already
        if (_lockState.get() == DEFAULT_UNENTERED) revert NotEnteredYet();

        /**
         * Calls depositTo on the stored depositor
         * Must have already sent the depositor the funds
         * Mints the point tokens to the taker
         * Mints the principal tokens to the maker
         */
        IHourglassDepositor(_tDepositor.get()).depositTo(maker, _tFulfiller.get(), depositAmount, true);
    }

    ///// GETTERS /////

    function conduit() external view returns (address) {
        return address(_conduit);
    }

    function conduitKey() external view returns (bytes32) {
        return _conduitKey;
    }

    function seaport() external view returns (address) {
        return address(SEAPORT);
    }

    function isApprovedConsiderationToken(address token) external view returns (bool) {
        return _approvedTokens[token];
    }

    event ConsiderationTokenApproved(address token);

    ///// ERRORS /////
    error ContractDeactivated();
    error ConduitTransferFailure();

    // Callback
    error NotAwaitingCallback();
    error MsgSenderMustBeSeaport(address msgSender);
    error NotEnteredYet();
    error AlreadyEntered();

    // Order parameters head validation
    error OffersLengthMustBeOne(uint256 length);
    error ConsiderationsLengthMustBeOne(uint256 length);
    error ZoneMustBeThis(address zone);
    error OrderTypeMustBeFullRestricted(OrderType orderType);
    error ConduitKeyMismatch(bytes32 conduitKey);
    error InvalidTotalOriginalConsiderationItems();
    error ZoneHashDoesNotContainDepositorAddress(bytes32 zoneHash);

    // Consideration item 1 validation
    error C1TypeMustBeERC20(ItemType itemType);
    error C1RecipientMustBeSender(address invalidRecipient);
    error ConsiderationAmountMismatch(uint256 startAmount, uint256 endAmount);
    error ConsiderationTokenMustBeApproved(address token);

    // Offer item validation
    error OTokenMustBeThis(address token);
    error OItemTypeMustBeERC20(ItemType itemType);
    error OfferAmountMismatch(uint256 startAmount, uint256 endAmount);
}
