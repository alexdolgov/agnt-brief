// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import { IERC20Upgradeable } from "@openzeppelin/contracts-upgradeable-v4/token/ERC20/IERC20Upgradeable.sol";
import { SafeERC20Upgradeable } from "@openzeppelin/contracts-upgradeable-v4/token/ERC20/utils/SafeERC20Upgradeable.sol";
import { EIP712Upgradeable } from "@openzeppelin/contracts-upgradeable-v4/utils/cryptography/EIP712Upgradeable.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable-v4/access/OwnableUpgradeable.sol";
import { ECDSAUpgradeable } from "@openzeppelin/contracts-upgradeable-v4/utils/cryptography/ECDSAUpgradeable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable-v4/proxy/utils/UUPSUpgradeable.sol";

import { IERC721Upgradeable } from "@openzeppelin/contracts-upgradeable-v4/token/ERC721/IERC721Upgradeable.sol";

error InvalidSigner(address signer);
error ZeroAddressSigner();
error ZeroAddressTreasury();
error ZeroAddressOwner();
error SignatureExpired();
error InvalidNonce();
error InvalidPaymentId();
error InvalidDeposit();
error InvalidPaymentAmount();
error InvalidSender();
error TransferFailed();

contract Marketplace is UUPSUpgradeable, EIP712Upgradeable, OwnableUpgradeable {
    using ECDSAUpgradeable for bytes32;
    using SafeERC20Upgradeable for IERC20Upgradeable;

    event PaymentFulfilled(
        string paymentId,
        address buyer,
        uint256 amount,
        IERC20Upgradeable token,
        bool secondarySale
    );

    string private constant _PAYMENT_VOUCHER_TYPE =
        "PaymentVoucher(address buyer,address token,uint256 amount,uint256 voucherExpiration,string paymentId,string orderId)";
    bytes32 private constant _PAYMENT_VOUCHER_TYPE_HASH =
        keccak256(abi.encodePacked(_PAYMENT_VOUCHER_TYPE));
    struct PaymentVoucher {
        address buyer;
        IERC20Upgradeable token;
        uint256 amount;
        uint256 voucherExpiration;
        string paymentId;
        string orderId;
    }

    string private constant _SECONDARY_SALE_VOUCHER_TYPE =
        "SecondarySaleVoucher(address buyer,uint256 amount,uint256 voucherExpiration,string paymentId,string orderId,NameTransferInfo[] names)";
    bytes32 private constant _SECONDARY_SALE_VOUCHER_TYPE_HASH =
        keccak256(abi.encodePacked(_SECONDARY_SALE_VOUCHER_TYPE, _NAME_TRANSFER_INFO_TYPE));
    struct SecondarySaleVoucher {
        address buyer;
        /**
         * @dev Total amount that buyer is paying for all names.
         * It must match that sum of all name prices.
         * Separate field is used to avoid potential rounding errors while generating off-chain order.
         */
        uint256 amount;
        uint256 voucherExpiration;
        string paymentId;
        string orderId;
        NameTransferInfo[] names;
    }
    string private constant _NAME_TRANSFER_INFO_TYPE =
        "NameTransferInfo(address registry,uint256 tokenId,address owner,uint256 price)";
    bytes32 private constant _NAME_TRANSFER_INFO_TYPE_HASH =
        keccak256(abi.encodePacked(_NAME_TRANSFER_INFO_TYPE));
    struct NameTransferInfo {
        IERC721Upgradeable registry;
        uint256 tokenId;
        address owner;
        uint256 price;
    }

    address internal _signer;
    address internal _treasury;

    /**
     * @dev Mapping of token ID to a renewal voucher nonce.
     * Nonces are incremented per token.
     * Having a sequential nonce allows automatic invalidation of unused vouchers.
     */
    mapping(uint256 => uint256) public nonces;
    /**
     * @dev Stored hashes of used paymentId to make sure payment voucher cannot be used more than once.
     */
    mapping(bytes32 => bool) public usedPaymentIdHashes;

    /**
     * @dev Fee that is charged for the secondary sale.
     * Stored with 2 decimals (e.g. 1000 = 10%)
     */
    uint256 internal _secondaryFee;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @dev Contract initializer. Acts a constructor for upgradable contract.
     */
    function initialize(address signer, address treasury, address initialOwner) public initializer {
        // Name and version are safe to be hardcoded here since it's tied to a contract logic.
        __EIP712_init("DOMA", "1");
        __Ownable_init();

        if (signer == address(0)) revert ZeroAddressSigner();
        if (treasury == address(0)) revert ZeroAddressTreasury();
        if (initialOwner == address(0)) revert ZeroAddressOwner();

        _setSigner(signer);
        _setTreasury(treasury);
        _transferOwnership(initialOwner);
        // Default secondary fee is 5%
        _setSecondarySaleFee(500);
    }

    /**
     * @dev Reinitializer for the contract, used to update EIP712 domain name.
     */
    function initializeV2() public reinitializer(2) {
        __EIP712_init("DOMA", "1");
    }

    /** @notice Used to pay for the off-chain order.
     * @param voucher Purchase voucher that contains all the information about payment.
     * @param signature Signature of the voucher.
     */
    function pay(PaymentVoucher calldata voucher, bytes calldata signature) external payable {
        _verifyNotExpiredVoucher(voucher.voucherExpiration);
        _verifySignature(_hash(voucher), signature);
        _verifyNonZeroTreasury();
        _verifyAndStorePaymentId(voucher.paymentId);
        _verifyBuyerMatchesSender(voucher.buyer);

        if (voucher.token == IERC20Upgradeable(address(0))) {
            if (msg.value != voucher.amount) {
                revert InvalidDeposit();
            }

            (bool success, ) = _treasury.call{ value: msg.value }("");
            if (!success) {
                revert TransferFailed();
            }
        } else {
            if (msg.value != 0) {
                revert InvalidDeposit();
            }
            voucher.token.safeTransferFrom(msg.sender, _treasury, voucher.amount);
        }

        emit PaymentFulfilled(
            voucher.paymentId,
            voucher.buyer,
            voucher.amount,
            voucher.token,
            false
        );
    }

    /** @notice Fulfills secondary sale order.
     * @param voucher Purchase voucher that contains all the information about secondary sale.
     * @param signature Signature of the voucher.
     */
    function secondarySale(
        SecondarySaleVoucher calldata voucher,
        bytes calldata signature
    ) external payable {
        _verifyNotExpiredVoucher(voucher.voucherExpiration);
        _verifySignature(_hash(voucher), signature);
        _verifyAndStorePaymentId(voucher.paymentId);
        _verifyNonZeroTreasury();
        _verifyBuyerMatchesSender(voucher.buyer);

        if (msg.value != voucher.amount) {
            revert InvalidDeposit();
        }

        uint256 totalFee = 0;
        uint256 totalAmount = 0;

        for (uint256 i = 0; i < voucher.names.length; i++) {
            NameTransferInfo memory name = voucher.names[i];

            uint256 fee = (name.price * _secondaryFee) / 10000;
            totalFee += fee;
            totalAmount += name.price;

            uint256 sellerProfit = name.price - fee;

            // This call is potentially re-entrant, but we have an implicit reentrancy guard in form of paymentId validation.
            // Later, we also check that total amount for all names matches the voucher amount as an additional defensive check.
            (bool sellerTransferSuccess, ) = name.owner.call{ value: sellerProfit }("");
            if (!sellerTransferSuccess) {
                revert TransferFailed();
            }

            // This call is also potentially re-entrant, but we have a reentrancy guard in form of paymentId validation.
            name.registry.safeTransferFrom(name.owner, voucher.buyer, name.tokenId);
        }

        if (totalAmount != voucher.amount) {
            revert InvalidPaymentAmount();
        }

        // Transfer fee to treasury
        (bool treasuryTransferSuccess, ) = _treasury.call{ value: totalFee }("");
        if (!treasuryTransferSuccess) {
            revert TransferFailed();
        }

        emit PaymentFulfilled(
            voucher.paymentId,
            voucher.buyer,
            voucher.amount,
            IERC20Upgradeable(address(0)),
            true
        );
    }

    function getSigner() external view returns (address) {
        return _signer;
    }

    function setSigner(address signer) external onlyOwner {
        _setSigner(signer);
    }

    function getTreasury() external view returns (address) {
        return _treasury;
    }

    function setTreasury(address treasury) external onlyOwner {
        _setTreasury(treasury);
    }

    function getSecondarySaleFee() external view returns (uint256) {
        return _secondaryFee;
    }

    function setSecondarySaleFee(uint256 secondaryFee) external onlyOwner {
        _setSecondarySaleFee(secondaryFee);
    }

    /* solhint-disable-next-line no-empty-blocks */
    function _authorizeUpgrade(address newImplementation) internal virtual override onlyOwner {}

    function _verifySignature(bytes32 voucherHash, bytes calldata signature) internal view {
        bytes32 digest = _hashTypedDataV4(voucherHash);
        address signatureSigner = digest.recover(signature);

        if (_signer != signatureSigner) {
            revert InvalidSigner(signatureSigner);
        }
    }

    function _verifyNotExpiredVoucher(uint256 expiration) internal view {
        if (expiration < block.timestamp) {
            revert SignatureExpired();
        }
    }

    function _verifyAndStorePaymentId(string calldata paymentId) internal {
        bytes32 paymentIdHash = keccak256(bytes(paymentId));
        if (usedPaymentIdHashes[paymentIdHash] == true) {
            revert InvalidPaymentId();
        }
        usedPaymentIdHashes[paymentIdHash] = true;
    }

    function _verifyNonZeroTreasury() internal view {
        // Defensive check. This should not be possible, since we have same check in a setter.
        if (_treasury == address(0)) {
            revert ZeroAddressTreasury();
        }
    }

    function _verifyAndUpdateNonce(uint256 tokenId, uint256 nonce) internal {
        // Nonce would never realistically overflow, so it's safe to use unchecked here.
        unchecked {
            uint256 nextNonce = nonces[tokenId] + 1;
            if (nonce != nextNonce) {
                revert InvalidNonce();
            }
            nonces[tokenId] = nextNonce;
        }
    }

    function _verifyBuyerMatchesSender(address buyer) internal view {
        if (msg.sender != buyer) {
            revert InvalidSender();
        }
    }

    function _setSigner(address signer) internal {
        if (signer == address(0)) {
            revert ZeroAddressSigner();
        }
        _signer = signer;
    }

    function _setTreasury(address treasury) internal {
        if (treasury == address(0)) {
            revert ZeroAddressTreasury();
        }
        _treasury = treasury;
    }

    function _setSecondarySaleFee(uint256 secondaryFee) internal {
        _secondaryFee = secondaryFee;
    }

    function _hash(PaymentVoucher calldata voucher) internal pure returns (bytes32) {
        return
            keccak256(
                abi.encode(
                    _PAYMENT_VOUCHER_TYPE_HASH,
                    voucher.buyer,
                    voucher.token,
                    voucher.amount,
                    voucher.voucherExpiration,
                    keccak256(bytes(voucher.paymentId)),
                    keccak256(bytes(voucher.orderId))
                )
            );
    }

    function _hash(SecondarySaleVoucher calldata voucher) internal pure returns (bytes32) {
        bytes32[] memory namesHashes = new bytes32[](voucher.names.length);

        for (uint256 i = 0; i < voucher.names.length; i++) {
            NameTransferInfo memory name = voucher.names[i];
            namesHashes[i] = keccak256(
                abi.encode(
                    _NAME_TRANSFER_INFO_TYPE_HASH,
                    name.registry,
                    name.tokenId,
                    name.owner,
                    name.price
                )
            );
        }

        return
            keccak256(
                abi.encode(
                    _SECONDARY_SALE_VOUCHER_TYPE_HASH,
                    voucher.buyer,
                    voucher.amount,
                    voucher.voucherExpiration,
                    keccak256(bytes(voucher.paymentId)),
                    keccak256(bytes(voucher.orderId)),
                    keccak256(abi.encodePacked(namesHashes))
                )
            );
    }

    /**
     * @dev Returns the current version of the contract.
     */
    function version() external pure virtual returns (string memory) {
        return "1.1.0";
    }
}
