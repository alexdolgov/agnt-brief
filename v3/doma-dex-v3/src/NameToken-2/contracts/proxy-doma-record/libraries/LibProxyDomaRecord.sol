// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";
import { AggregatorV3Interface } from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import { IERC7786GatewaySource } from "../../interfaces/IERC7786.sol";
import { OwnershipToken } from "../../OwnershipToken.sol";
import { CAIPUtils } from "../../utils/CAIPUtils.sol";
import { GatewayUtils } from "../../utils/GatewayUtils.sol";

library LibProxyDomaRecord {
    using Strings for uint256;

    struct ProxyDomaRecordStorage {
        /**
         * @dev List of allowed EIP-712 voucher signers for each registrar.
         * Maps signer to registrar IANA ID, to be able to lookup registrar from a current signer.
         */
        mapping(address => uint256) registrarSigners;
        /**
         * @dev List of allowed EIP-712 voucher signers for doma protocol.
         * Used to verify Doma-provided proof-of-contacts vouchers.
         */
        mapping(address => bool) domaSigners;
        /**
         * @dev Used voucher nonces.
         * Necessary to prevent replay attacks.
         */
        mapping(uint256 => bool) nonces;
        /**
         * @dev Address of a cross-chain gateway to send cross-chain messages.
         */
        IERC7786GatewaySource crossChainGateway;
        /**
         * @dev Address of an ownership token contract.
         */
        OwnershipToken ownershipToken;
        /**
         * @dev CAIP-2 Chain ID of the Doma Chain.
         */
        string domaChainId;
        /**
         * @dev CAIP-10 Address of a Doma Record Contract on Doma Chain.
         */
        string domaRecordAddress;
        /**
         * @dev Internal lists to keep track of registrar signers for enumeration.
         */
        mapping(uint256 => address[]) registrarSignerList;
        address[] domaSignerList;
        /**
         * @dev ChainLink Price Fee contract.
         */
        AggregatorV3Interface priceFeed;
        /**
         * @notice Fees per operation in USD cents (2 decimal places)
         */
        mapping(bytes32 => uint256) feesUSDCents;
        /**
         * @dev Treasury account to collect fees.
         */
        address treasury;
        /**
         * @dev Authorized cross-chain senders.
         * Maps sender address to boolean indicating if authorized.
         */
        mapping(address => bool) crossChainSenders;
        /**
         * @dev Used to generate unique correlation Id even on the same block.
         */
        uint256 correlationNonce;
        /**
         * @dev List of supported target chain IDs for bridging.
         * Maps chain ID to a boolean indicating if it's supported.
         */
        mapping(string => bool) supportedTargetChains;
        /**
         * @dev Protocol admin management.
         * Maps admin address to boolean indicating if authorized as protocol admin.
         */
        mapping(address => bool) protocolAdmins;
        /**
         * @dev Forbidden subdomain labels.
         * Maps label hash (lowercase) to boolean indicating if forbidden.
         */
        mapping(bytes32 => bool) forbiddenLabels;
        /**
         * @dev Maps Registrar IANA ID to its capabilities.
         * These are the capabilities supported by a given registrar.
         */
        mapping(uint256 => uint256) registrarCapabilities;
    }

    // Storage location for the ProxyDomaRecord storage
    bytes32 private constant _PROXY_DOMA_RECORD_STORAGE_LOCATION =
        keccak256(abi.encode(uint256(keccak256("doma.storage.ProxyDomaRecord")) - 1)) &
            ~bytes32(uint256(0xff));

    function proxyDomaRecordStorage() internal pure returns (ProxyDomaRecordStorage storage ds) {
        bytes32 position = _PROXY_DOMA_RECORD_STORAGE_LOCATION;
        // solhint-disable-next-line no-inline-assembly
        assembly {
            ds.slot := position
        }
    }

    /**
     * @notice `requestTokenization` operation key (for fee retrieval).
     */
    bytes32 public constant REQUEST_TOKENIZATION_OPERATION = keccak256("REQUEST_TOKENIZATION");

    /**
     * @notice `claimOwnership` operation key (for fee retrieval).
     */
    bytes32 public constant CLAIM_OWNERSHIP_OPERATION = keccak256("CLAIM_OWNERSHIP");

    /**
     * @notice `bridge` operation key (for fee retrieval).
     */
    bytes32 public constant BRIDGE_OPERATION = keccak256("BRIDGE");

    /**
     * @notice `setNameservers` operation key (for fee retrieval).
     */
    bytes32 public constant SET_NAMESERVERS_OPERATION = keccak256("SET_NAMESERVERS");

    /**
     * @notice `setDSKeys` operation key (for fee retrieval).
     */
    bytes32 public constant SET_DS_KEYS_OPERATION = keccak256("SET_DS_KEYS");

    /**
     * @notice `setDNSRRSet` operation key (for fee retrieval).
     */
    bytes32 public constant SET_DNS_RRSET_OPERATION = keccak256("SET_DNS_RRSET");

    error ZeroAddress();
    error InvalidOwnerAddress(address owner, address tokenOwner);
    error InvalidOperation(bytes32 operation);
    error AccessControlNotAProtocolAdmin(address user);
    error ArrayLengthMismatch();

    function _useCorrelationId() internal returns (string memory) {
        ProxyDomaRecordStorage storage _storage = proxyDomaRecordStorage();
        uint256 correlationId = uint256(
            keccak256(abi.encodePacked(block.number, block.chainid, _storage.correlationNonce++))
        );
        return correlationId.toHexString();
    }

    function _relayMessage(
        bytes memory data,
        string memory correlationId,
        uint256 nonceKey
    ) internal {
        bytes[] memory attributes;

        if (bytes(correlationId).length == 0) {
            attributes = new bytes[](1);
        } else {
            attributes = new bytes[](2);
            attributes[1] = abi.encodeWithSelector(
                GatewayUtils.CORRELATION_ID_ATTRIBUTE,
                correlationId
            );
        }

        attributes[0] = abi.encodeWithSelector(GatewayUtils.NONCE_KEY_ATTRIBUTE, nonceKey);

        ProxyDomaRecordStorage storage ds = proxyDomaRecordStorage();
        ds.crossChainGateway.sendMessage(
            ds.domaChainId,
            CAIPUtils.format(ds.domaChainId, ds.domaRecordAddress),
            data,
            attributes
        );
    }

    function _verifyTokenOwnership(uint256 tokenId, address owner) internal view {
        address tokenOwner = proxyDomaRecordStorage().ownershipToken.ownerOf(tokenId);
        if (owner != tokenOwner) {
            revert InvalidOwnerAddress(owner, tokenOwner);
        }
    }

    function _isValidOperation(bytes32 operation) internal pure returns (bool) {
        return
            operation == REQUEST_TOKENIZATION_OPERATION ||
            operation == CLAIM_OWNERSHIP_OPERATION ||
            operation == BRIDGE_OPERATION ||
            operation == SET_NAMESERVERS_OPERATION ||
            operation == SET_DS_KEYS_OPERATION ||
            operation == SET_DNS_RRSET_OPERATION;
    }

    function _burnToken(uint256 tokenId, string memory correlationId) internal {
        ProxyDomaRecordStorage storage ds = proxyDomaRecordStorage();
        uint256[] memory tokenIds = new uint256[](1);
        tokenIds[0] = tokenId;
        ds.ownershipToken.bulkBurn(tokenIds, correlationId);
    }
}
