// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";
import { Address } from "@openzeppelin/contracts/utils/Address.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

import { IERC7786GatewaySource } from "./interfaces/IERC7786.sol";
import { ChainNonces } from "./utils/ChainNonces.sol";
import { CAIPUtils } from "./utils/CAIPUtils.sol";
import { GatewayUtils } from "./utils/GatewayUtils.sol";

contract ERC7786GatewaySource is
    UUPSUpgradeable,
    AccessControlUpgradeable,
    IERC7786GatewaySource,
    ChainNonces
{
    using Strings for address;
    using Strings for uint256;

    bytes32 public constant PERMITTED_SENDER_ROLE = keccak256("PERMITTED_SENDER_ROLE");

    error ZeroAddress();

    modifier onlyAdmin() {
        _checkRole(DEFAULT_ADMIN_ROLE);
        _;
    }

    modifier onlyPermittedSender() {
        _checkRole(PERMITTED_SENDER_ROLE);
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address initialOwner) public initializer {
        __AccessControl_init();
        __UUPSUpgradeable_init();

        if (initialOwner == address(0)) {
            revert ZeroAddress();
        }

        _grantRole(DEFAULT_ADMIN_ROLE, initialOwner);
    }

    /* solhint-disable-next-line no-empty-blocks */
    function _authorizeUpgrade(address newImplementation) internal virtual override onlyAdmin {}

    function version() external pure returns (string memory) {
        return "1.1.0";
    }

    function supportsAttribute(bytes4 attribute) external pure override returns (bool) {
        return
            attribute == GatewayUtils.CORRELATION_ID_ATTRIBUTE ||
            attribute == GatewayUtils.NONCE_KEY_ATTRIBUTE;
    }

    function sendMessage(
        string calldata destinationChain,
        string calldata receiver,
        bytes calldata payload,
        bytes[] calldata attributes
    ) external payable override onlyPermittedSender returns (bytes32) {
        if (msg.value > 0) {
            revert GatewayUtils.PayableCallsUnsupported();
        }

        string memory localChainId = CAIPUtils.caip2Local();

        // Fast path for same-chain calls
        if (Strings.equal(destinationChain, localChainId)) {
            Address.functionCallWithValue(CAIPUtils.parseLocalCAIP10(receiver), payload, msg.value);
            return bytes32(0);
        }

        bytes[] memory newAttributes = new bytes[](attributes.length + 1);
        uint256 key = 0;
        for (uint256 i = 0; i < attributes.length; i++) {
            bytes4 selector = attributes[i].length < 0x04 ? bytes4(0) : bytes4(attributes[i][0:4]);
            if (!this.supportsAttribute(selector)) {
                revert UnsupportedAttribute(selector);
            }

            if (selector == GatewayUtils.NONCE_KEY_ATTRIBUTE) {
                key = uint256(bytes32(attributes[i][4:]));
            }

            newAttributes[i] = attributes[i];
        }

        uint64 nonce = _useNonce(destinationChain, key);
        newAttributes[attributes.length] = abi.encodeWithSelector(
            GatewayUtils.NONCE_ATTRIBUTE,
            nonce
        );

        string memory sender = msg.sender.toChecksumHexString();

        // Use unique outboxId for each chain/nonce pair
        bytes32 outboxId = keccak256(abi.encodePacked(destinationChain, key, nonce));
        emit MessagePosted(
            outboxId,
            CAIPUtils.format(localChainId, sender),
            receiver,
            payload,
            msg.value,
            newAttributes
        );

        return outboxId;
    }

    function setCurrentNonce(
        string calldata chainId,
        uint256 key,
        uint64 nonce
    ) external override onlyAdmin {
        _setCurrentNonce(chainId, key, nonce);
    }
}
