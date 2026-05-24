// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {IERC1271} from "@openzeppelin/contracts/interfaces/IERC1271.sol";
import {IERC6551Account} from "./interfaces/IERC6551Account.sol";
import {IERC6551Executable} from "./interfaces/IERC6551Executable.sol";
import {ISponsorAccount} from "./interfaces/ISponsorAccount.sol";

/// @notice Minimal ERC-6551-compatible account used for sponsor positions.
contract SponsorAccount is ISponsorAccount {
    bytes4 private constant ERC6551_MAGICVALUE = 0x523e3260;
    bytes4 private constant ERC1271_MAGICVALUE = 0x1626ba7e;
    bytes4 private constant ERC6551_ACCOUNT_INTERFACE_ID = 0x6faff5f1;
    bytes4 private constant ERC6551_EXECUTABLE_INTERFACE_ID = 0x51945447;

    uint256 private immutable _deploymentChainId = block.chainid;

    bool private _locked;
    uint256 private _nonce;

    receive() external payable {}

    /// @inheritdoc IERC6551Account
    function token() public view override returns (uint256, address, uint256) {
        uint256 chainId;
        address tokenContract;
        uint256 tokenId;

        assembly {
            let ptr := mload(0x40)
            extcodecopy(address(), ptr, 0x4d, 0x60)
            chainId := mload(ptr)
            // tokenContract is stored right-aligned: bytes32(uint256(uint160(addr)))
            // Mask to keep only the bottom 160 bits (20 bytes)
            tokenContract := and(mload(add(ptr, 0x20)), 0xFFfFfFffFFfffFFfFFfFFFFFffFFFffffFfFFFfF)
            tokenId := mload(add(ptr, 0x40))
        }
        return (chainId, tokenContract, tokenId);
    }

    /// @inheritdoc ISponsorAccount
    function owner() public view override returns (address) {
        (uint256 chainId, address tokenContract, uint256 tokenId) = token();
        if (chainId != _deploymentChainId) {
            return address(0);
        }
        return IERC721(tokenContract).ownerOf(tokenId);
    }

    /// @inheritdoc IERC6551Account
    function state() external view override returns (uint256) {
        return _nonce;
    }

    /// @inheritdoc ISponsorAccount
    function nonce() external view override returns (uint256) {
        return _nonce;
    }

    /// @inheritdoc IERC6551Account
    function isValidSigner(address signer, bytes calldata) external view override returns (bytes4) {
        if (signer == owner()) {
            return ERC6551_MAGICVALUE;
        }
        return bytes4(0);
    }

    /// @inheritdoc IERC1271
    function isValidSignature(bytes32 hash, bytes calldata signature) external view override returns (bytes4) {
        address signer = owner();
        if (signer.code.length > 0) {
            try IERC1271(signer).isValidSignature(hash, signature) returns (bytes4 magic) {
                return magic;
            } catch {
                return bytes4(0);
            }
        }
        (address recovered, ECDSA.RecoverError err,) = ECDSA.tryRecover(hash, signature);
        if (err == ECDSA.RecoverError.NoError && recovered == signer) {
            return ERC1271_MAGICVALUE;
        }
        return bytes4(0);
    }

    /// @inheritdoc ISponsorAccount
    function supportsInterface(bytes4 interfaceId) external pure override returns (bool) {
        return interfaceId == type(IERC165).interfaceId || interfaceId == type(IERC6551Account).interfaceId
            || interfaceId == type(IERC1271).interfaceId || interfaceId == ERC6551_ACCOUNT_INTERFACE_ID
            || interfaceId == type(IERC6551Executable).interfaceId || interfaceId == ERC6551_EXECUTABLE_INTERFACE_ID;
    }

    /// @inheritdoc IERC6551Executable
    function execute(address to, uint256 value, bytes calldata data, uint8)
        external
        payable
        override
        returns (bytes memory result)
    {
        if (msg.sender != owner()) revert NotAuthorized();
        if (_locked) revert Reentrancy();
        _locked = true;

        (bool ok, bytes memory returnData) = to.call{value: value}(data);
        _locked = false;

        if (!ok) {
            if (returnData.length > 0) {
                assembly {
                    revert(add(returnData, 32), mload(returnData))
                }
            }
            revert ExecutionFailed();
        }
        _nonce++;
        return returnData;
    }
}
