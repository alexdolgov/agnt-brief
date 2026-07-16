// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import {EIP712, ECDSA} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import {IAquaVault} from "../interfaces/IAquaVault.sol";

contract AquaVaultSignatureCheck is EIP712 {
    mapping(uint256 => bool) internal isNonceUsed;
    address public immutable admin;
    address public aquaVault;

    constructor() EIP712("aqua vault", "1") {
        admin = msg.sender;
    }

    function setAquaVault(address aquaVault_) external {
        if (msg.sender != admin) {
            revert CallerNotAdmin();
        }
        aquaVault = aquaVault_;
    }

    modifier onlyAquaVault() {
        if (msg.sender != aquaVault) {
            revert CallerNotAquaVault();
        }
        _;
    }

    error CallerNotAdmin();
    error CallerNotAquaVault();
    error InvalidSignature();
    error RequestExpired();
    error NonceAlreadyUsed();

    // keccak256("SettlementRequest(uint256 nonce,uint256 deadline,bytes32 positionUpdates)");
    bytes32 private constant SETTLEMEMT_REQUEST_SIGNATURE_HASH =
        0x42ef23731f7539fd1c5cd0db92098c139f4262874ccb1a581c805d9c8edc1946;
    // keccak256("RemoveCollateralRequest(uint256 nonce,uint256 deadline,bytes32 tokens)");
    bytes32 private constant REMOVE_COLLATERAL_REQUEST_SIGNATURE_HASH =
        0x41584bf2b495a05e627df8578e8b633b1e03494b97b20409c7a6711af5ecd5b6;
    // keccak256("LiquidationRequest(uint256 nonce,uint256 deadline,address trader,bytes32 positionUpdates,bytes32 claimCollaterals)");
    bytes32 private constant LIQUIDATION_REQUEST_SIGNATURE_HASH =
        0x1690494ee3608922812afa7b33fe8858b658fcc9f973cf30ca39055e9fc12a8f;

    function verifySettleSignature(
        IAquaVault.SettlementRequest calldata request,
        bytes calldata signature,
        address signer
    ) external onlyAquaVault {
        if (request.deadline < block.timestamp) {
            revert RequestExpired();
        }
        if (isNonceUsed[request.nonce]) {
            revert NonceAlreadyUsed();
        }
        isNonceUsed[request.nonce] = true;
        bytes32 msgHash = keccak256(
            abi.encode(
                SETTLEMEMT_REQUEST_SIGNATURE_HASH,
                request.nonce,
                request.deadline,
                keccak256(abi.encode(request.positionUpdates))
            )
        );
        bytes32 digest = _hashTypedDataV4(msgHash);
        address recoveredSigner = ECDSA.recover(digest, signature);
        if (recoveredSigner != signer) {
            revert InvalidSignature();
        }
    }

    function verifyRemoveCollateralSignature(
        IAquaVault.RemoveCollateralRequest calldata request,
        bytes calldata signature,
        address signer
    ) external onlyAquaVault {
        if (request.deadline < block.timestamp) {
            revert RequestExpired();
        }
        if (isNonceUsed[request.nonce]) {
            revert NonceAlreadyUsed();
        }
        isNonceUsed[request.nonce] = true;
        bytes32 msgHash = keccak256(
            abi.encode(
                REMOVE_COLLATERAL_REQUEST_SIGNATURE_HASH,
                request.nonce,
                request.deadline,
                keccak256(abi.encode(request.tokens))
            )
        );
        bytes32 digest = _hashTypedDataV4(msgHash);
        address recoveredSigner = ECDSA.recover(digest, signature);
        if (recoveredSigner != signer) {
            revert InvalidSignature();
        }
    }

    function verifyLiquidationSignature(
        IAquaVault.LiquidationRequest calldata request,
        bytes calldata signature,
        address signer
    ) external onlyAquaVault {
        if (request.deadline < block.timestamp) {
            revert RequestExpired();
        }
        if (isNonceUsed[request.nonce]) {
            revert NonceAlreadyUsed();
        }
        isNonceUsed[request.nonce] = true;
        bytes32 msgHash = keccak256(
            abi.encode(
                LIQUIDATION_REQUEST_SIGNATURE_HASH,
                request.nonce,
                request.deadline,
                request.trader,
                keccak256(abi.encode(request.positionUpdates)),
                keccak256(abi.encode(request.claimCollaterals))
            )
        );
        bytes32 digest = _hashTypedDataV4(msgHash);
        address recoveredSigner = ECDSA.recover(digest, signature);
        if (recoveredSigner != signer) {
            revert InvalidSignature();
        }
    }
}
