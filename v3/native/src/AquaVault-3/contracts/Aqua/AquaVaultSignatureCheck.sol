// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.17;

import {EIP712, ECDSA} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";
import {IAquaVault} from "../interfaces/IAquaVault.sol";

/// @title A contract for verifying signatures for AquaVault
/// @author Native
/// @dev Separate this contract from AquaVault to reduce contract size. It initializes and stores the EIP712 params.
///      Verifies signatures for settlement, collateral removal and liquidation requests.
contract AquaVaultSignatureCheck is EIP712 {
    /// @notice mapping to keep track of used nonces to prevent replay attacks
    /// @dev nonce => used or not.
    ///      The nonce does not follow an incremental pattern so the order does need to be excuted in order.
    ///      For each off-chain signature request, a random number to generated as nonce.
    ///      Everytime when a signature is verified, the nonce is marked as used.
    mapping(uint256 => bool) public isNonceUsed;
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

    // keccak256("SettlementRequest(uint256 nonce,uint256 deadline,address trader,bytes32 positionUpdates)");
    bytes32 private constant SETTLEMEMT_REQUEST_SIGNATURE_HASH =
        0xe4098d70eb11e8befdec0cd955878c18debf537169063cef30a23c56fe48006f;
    // keccak256("RemoveCollateralRequest(uint256 nonce,uint256 deadline,address trader,bytes32 tokens)");
    bytes32 private constant REMOVE_COLLATERAL_REQUEST_SIGNATURE_HASH =
        0x2d677f063b49cf377044c87a65f6c0eddb8d46cb89b3f9dc45b23c19ab75aa21;
    // keccak256("LiquidationRequest(uint256 nonce,uint256 deadline,address trader,bytes32 positionUpdates,bytes32 claimCollaterals)");
    bytes32 private constant LIQUIDATION_REQUEST_SIGNATURE_HASH =
        0x1690494ee3608922812afa7b33fe8858b658fcc9f973cf30ca39055e9fc12a8f;

    /// @notice Verifies the signature for a settlement request
    /// @param request The settlement request containing long and short position updates
    /// @param signature The signature
    /// @param signer The signer (passed by AquaVault)
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
                request.trader,
                keccak256(abi.encode(request.positionUpdates))
            )
        );
        bytes32 digest = _hashTypedDataV4(msgHash);
        address recoveredSigner = ECDSA.recover(digest, signature);
        if (recoveredSigner != signer) {
            revert InvalidSignature();
        }
    }

    /// @notice Verifies the signature for a collateral removal request
    /// @param request The collateral removal request containing the tokens to be removed
    /// @param signature The signature
    /// @param signer The signer (passed by AquaVault)
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
                request.trader,
                keccak256(abi.encode(request.tokens))
            )
        );
        bytes32 digest = _hashTypedDataV4(msgHash);
        address recoveredSigner = ECDSA.recover(digest, signature);
        if (recoveredSigner != signer) {
            revert InvalidSignature();
        }
    }

    /// @notice Verifies the signature for a liquidation request
    /// @param request The liquidation request containing the position updates and the tokens to be claimed
    /// @param signature The signature
    /// @param signer The signer (passed by AquaVault)
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
