// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.30;

import { IAccessResolver } from "./interfaces/IAccessResolver.sol";
import { IERC6551 } from "./interfaces/IERC6551.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { Safe } from "@safe-smart-account/Safe.sol";

interface IERC721 {
    function ownerOf(uint256 ipnftId) external view returns (address);
}

/**
 * @title AccessResolver
 * @author Molecule
 * @notice describe the smart contract
 */
contract AccessResolver is IAccessResolver, Initializable, UUPSUpgradeable, OwnableUpgradeable {
    address public ipnftContractAddress;

    /// @dev Maximum recursion depth to prevent stack overflow
    uint256 constant MAX_RECURSION_DEPTH = 10;

    /// @dev ERC-6551 isValidSigner return value indicating a valid signer
    bytes4 private constant ERC6551_VALID_SIGNER = 0x523e3260;

    /**
     * @dev Storage gap for future variables
     */
    uint256[49] private _gap;

    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializer function (replaces constructor)
     * @param _ipnftContractAddress describing the contract address
     */
    function initialize(address _ipnftContractAddress) public initializer {
        require(_ipnftContractAddress != address(0), "AccessResolver: zero address");
        __Ownable_init(msg.sender);
        ipnftContractAddress = _ipnftContractAddress;
    }

    /**
     * @notice Checks if a signer is authorized to access files for an IP-NFT
     * @dev Verifies:
     *   1. IP-NFT exists
     *   2. Signer is an owner of that Safe
     * @param signer The address attempting to decrypt
     * @param ipnftId The IP-NFT token ID
     * @return true if signer is authorized
     */
    function isAuthorizedSignerForIpnft(address signer, uint256 ipnftId) external view returns (bool) {
        address ownerOfIpnft = IERC721(ipnftContractAddress).ownerOf(ipnftId);

        return _isAuthorizedSigner(signer, ownerOfIpnft);
    }

    function _isAuthorizedSigner(address signer, address account) internal view returns (bool) {
        return _isAuthorizedSignerWithDepth(signer, account, 0);
    }

    function _isAuthorizedSignerWithDepth(address signer, address account, uint256 depth) internal view returns (bool) {
        // Prevent infinite recursion
        if (depth >= MAX_RECURSION_DEPTH) {
            return false;
        }

        // EOA check
        if (account.code.length == 0) {
            return signer == account;
        }

        // Direct match (signer is the contract itself)
        if (signer == account) {
            return true;
        }

        // Try Safe
        try Safe(payable(account)).isOwner(signer) returns (bool isOwner) {
            if (isOwner) return true;
        } catch { }

        // Try generic owner() pattern (covers many ERC-4337 implementations like SimpleAccount, Kernel in some modes)
        try Ownable(account).owner() returns (address owner) {
            if (signer == owner) return true;
            // Recurse in case owner is itself a smart account
            if (owner.code.length > 0) {
                return _isAuthorizedSignerWithDepth(signer, owner, depth + 1);
            }
        } catch { }

        return false;
    }

    /**
     * @notice Checks if a signer is authorized to access files for a Lab
     * @param signer The address attempting to decrypt
     * @param account The address of the Lab (ERC6551, ERC4337)
     * @return true if user is Authorized
     */
    function isAuthorizedSignerForTba(address signer, address account) external view returns (bool) {
        try IERC6551(payable(account)).isValidSigner(signer, "") returns (bytes4 isAllowed) {
            return isAllowed == ERC6551_VALID_SIGNER;
        } catch {
            return false;
        }
    }

    /**
     * @notice Authorizes contract upgrades (only owner can upgrade)
     * @param newImplementation Address of the new implementation
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner { }
}
