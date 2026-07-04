// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { OFTUpgradeable } from "@layerzerolabs/oft-evm-upgradeable/contracts/oft/OFTUpgradeable.sol";
import { wstETHOFTBase } from "./wstETHOFTBase.sol";
import { EIP712Upgradeable } from "@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import { SignatureChecker } from "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";
import { UnstructuredStorage } from "./lib/UnstructuredStorage.sol";

contract wstETHOFTUpgradeable is OFTUpgradeable, wstETHOFTBase, EIP712Upgradeable {
    /**
     * @dev Permit deadline has expired.
     */
    error ERC2612ExpiredSignature(uint256 deadline);

    /**
     * @dev Invalid signature.
     */
    error PermitInvalidSignature();

    // ERC-2612 State: Storage Slot for Nonces
    bytes32 private constant NONCES_SLOT = keccak256("wstETHOFTUpgradeable.nonces");

    /// @dev EIP-712 Permit typehash
    bytes32 private constant PERMIT_TYPEHASH =
        keccak256("Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)");

    constructor(address _lzEndpoint) OFTUpgradeable(_lzEndpoint) EIP712Upgradeable() { _disableInitializers(); }

    function initialize(
        string memory name,
        string memory symbol,
        string memory version,
        address delegate,
        address[] calldata pausers,
        address resumer
    ) public initializer {
        __OFT_init(name, symbol, delegate);
        __Ownable_init(delegate);
        __EIP712_init(name, version);
        _initializeBase(delegate, pausers, resumer);

        emit InitializationComplete(delegate, pausers, resumer);
    }

    function DOMAIN_SEPARATOR() public view virtual returns (bytes32) {
        return _domainSeparatorV4();
    }

    /// @notice Implements ERC-2612 permit functionality with EIP-1271 support
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external {
        if (block.timestamp > deadline) {
            revert ERC2612ExpiredSignature(deadline);
        }

        uint256 currentNonce = getNonce(owner);

        bytes32 structHash = keccak256(
            abi.encode(PERMIT_TYPEHASH, owner, spender, value, currentNonce, deadline)
        );

        bytes32 hash = _hashTypedDataV4(structHash);

        bool isValid = SignatureChecker.isValidSignatureNow(owner, hash, abi.encodePacked(r, s, v));
        if (!isValid) {
            revert PermitInvalidSignature();
        }

        incrementNonce(owner);
        _approve(owner, spender, value);
    }

    function _debit(
        address _from,
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    ) internal virtual override whenResumed returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        return super._debit(_from, _amountLD, _minAmountLD, _dstEid);
    }

    function _credit(
        address _to,
        uint256 _amountLD,
        uint32 _srcEid
    ) internal virtual override whenResumed returns (uint256 amountReceivedLD) {
        return super._credit(_to, _amountLD, _srcEid);
    }

    /// @notice Reads the current nonce for an owner
    function getNonce(address owner) public view returns (uint256) {
        bytes32 slot = keccak256(abi.encodePacked(NONCES_SLOT, owner));
        return UnstructuredStorage.getStorageUint256(slot);
    }

    /// @notice Increments the nonce for an owner
    function incrementNonce(address owner) internal {
        bytes32 slot = keccak256(abi.encodePacked(NONCES_SLOT, owner));
        uint256 currentNonce = UnstructuredStorage.getStorageUint256(slot);
        UnstructuredStorage.setStorageUint256(slot, currentNonce + 1);
    }
}
