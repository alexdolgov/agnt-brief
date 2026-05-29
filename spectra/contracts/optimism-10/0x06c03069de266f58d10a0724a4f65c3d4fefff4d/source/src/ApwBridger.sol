// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import { IERC20Burnable } from "./interfaces/IERC20Burnable.sol";
import { IVotingEscrowLegacy } from "./interfaces/IVotingEscrowLegacy.sol";

import { AccessManagedUpgradeable } from "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";

// LayerZero
import { OAppSenderUpgradeable } from "oapp-upgradeable/OAppSenderUpgradeable.sol";
import { MessagingFee, Origin } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";
import { MessagingReceipt } from "@layerzerolabs/oapp-evm/contracts/oapp/OAppSender.sol";

contract ApwBridger is OAppSenderUpgradeable, AccessManagedUpgradeable {
    IERC20Burnable public apw;
    IVotingEscrowLegacy public veApw;

    uint16 public destEid;
    uint256 public bridgeExpiry;
    mapping(address => uint256) public bridgedVeApw;

    /* ERRORS
     *****************************************************************************************************************/
    error BridgeExpired();
    error ZeroAmount();
    error LockPeriodTooShort();
    error VeApwAlreadyBridged();
    error VeApwBridgeDisabled();

    /* EVENTS
     *****************************************************************************************************************/
    event ApwBridged(address indexed user, address indexed receiver, uint256 amount);
    event VeApwBridged(address indexed user, address indexed receiver, uint256 amount, uint256 lockDuration);

    /* MODIFIERS
     *****************************************************************************************************************/
    /** @notice Ensures the current block timestamp is before expiry */
    modifier bridgeNotExpired() virtual {
        if (block.timestamp >= bridgeExpiry) {
            revert BridgeExpired();
        }
        _;
    }

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _initialAuthority,
        address _endpoint,
        address _delegate,
        address _apw,
        address _veApw,
        uint256 _bridgeExpiry,
        uint16 _destEid
    ) public initializer {
        __AccessManaged_init(_initialAuthority);
        _initializeOAppCore(_endpoint, _delegate);
        apw = IERC20Burnable(_apw);
        veApw = IVotingEscrowLegacy(_veApw);
        destEid = _destEid;
        bridgeExpiry = _bridgeExpiry;
    }

    /**
     * @notice Burns APW tokens and sends a message to the Base chain to mint SPECTRA.
     * @param amount The amount of APW tokens to burn.
     * @param options The options for the message.
     * @return receipt The receipt for the sent message.
     *      - guid: The unique identifier for the sent message.
     *      - nonce: The nonce of the sent message.
     *      - fee: The LayerZero fee incurred for the message.
     */
    function bridgeApw(
        address receiver,
        uint256 amount,
        bytes calldata options
    ) external payable bridgeNotExpired returns (MessagingReceipt memory receipt) {
        if (amount == 0) {
            revert ZeroAmount();
        }
        apw.transferFrom(msg.sender, address(this), amount);
        // Encode the message payload with lockDuration set to 0
        bytes memory payload = abi.encode(msg.sender, receiver, amount, uint256(0));
        // Send message
        receipt = _lzSend(destEid, payload, options, MessagingFee(msg.value, 0), payable(msg.sender));
        emit ApwBridged(msg.sender, receiver, amount);
    }

    /**
     * @notice Sends veAPW lock information to the Base chain for veSPECTRA minting.
     * @return receipt The receipt for the sent message.
     *      - guid: The unique identifier for the sent message.
     *      - nonce: The nonce of the sent message.
     *      - fee: The LayerZero fee incurred for the message.
     */
    function bridgeVeApw(
        address receiver,
        bytes calldata options
    ) external payable bridgeNotExpired returns (MessagingReceipt memory receipt) {
        if (address(veApw) == address(0)) {
            revert VeApwBridgeDisabled();
        }
        uint256 currentBalance = veApw.locked__amount(msg.sender);
        if (currentBalance == 0) {
            revert ZeroAmount();
        }

        uint256 lockEnd = veApw.locked__end(msg.sender);

        if (lockEnd < bridgeExpiry + 1 weeks) {
            revert LockPeriodTooShort();
        }
        uint256 previousBridgedAmount = bridgedVeApw[msg.sender];
        if (currentBalance <= previousBridgedAmount) {
            revert VeApwAlreadyBridged();
        }
        uint256 newAmount = currentBalance - previousBridgedAmount;
        bridgedVeApw[msg.sender] = currentBalance;

        uint256 lockDuration = lockEnd - block.timestamp;

        // Encode the payload for veAPW bridging
        bytes memory payload = abi.encode(msg.sender, receiver, newAmount, lockDuration);
        // Send message
        receipt = _lzSend(destEid, payload, options, MessagingFee(msg.value, 0), payable(msg.sender));
        emit VeApwBridged(msg.sender, receiver, newAmount, lockDuration);
    }

    /* Quotes the fee for bridging APW */
    function quote(bytes calldata options) external view returns (MessagingFee memory) {
        // Pass an empty payload
        return _quote(destEid, abi.encode(address(0), address(0), 0, 0), options, false);
    }
}
