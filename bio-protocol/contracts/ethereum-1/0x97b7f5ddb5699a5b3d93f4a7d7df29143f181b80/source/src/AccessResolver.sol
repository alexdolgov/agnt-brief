// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.30;

import { IAccessResolver } from "./interfaces/IAccessResolver.sol";
import { IERC6551 } from "./interfaces/IERC6551.sol";
import { ILockedToken } from "./interfaces/ILockedToken.sol";
import { ILockedTokenFactory } from "./interfaces/ILockedToken.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { Safe } from "@safe-smart-account/Safe.sol";

interface IERC721 {
    function ownerOf(uint256 ipnftId) external view returns (address);
}

/**
 * @title AccessResolver V2.0.0
 * @author Molecule
 * @notice Resolves authorization for IP-NFT access, supporting EOAs, Safe multisigs, ERC-6551 TBAs, and locked tokens
 */
contract AccessResolver is IAccessResolver, Initializable, UUPSUpgradeable, OwnableUpgradeable {
    address public ipnftContractAddress;

    /// @dev Maximum recursion depth to prevent stack overflow
    uint256 constant MAX_RECURSION_DEPTH = 10;

    /// @dev Maximum number of resolved leaf owners to prevent gas blowup
    uint256 constant MAX_OWNERS = 50;

    /// @dev ERC-6551 isValidSigner return value indicating a valid signer
    bytes4 private constant ERC6551_VALID_SIGNER = 0x523e3260;

    /// @notice Factory contract used to resolve locked token addresses
    ILockedTokenFactory public lockedTokenFactory;

    error OwnersOverflow(uint256);

    /**
     * @dev Storage gap for future variables
     */
    uint256[48] private _gap;

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
     * @notice Returns all leaf (EOA) owners of an IP-NFT, recursively resolving
     *         Safe multisigs and Ownable smart accounts.
     * @param ipnftId The IP-NFT token ID
     * @return Deduplicated array of leaf owner addresses
     */
    function ownersOfIpnft(uint256 ipnftId) external view returns (address[] memory) {
        address owner = IERC721(ipnftContractAddress).ownerOf(ipnftId);

        // Pre-allocate a fixed buffer; we'll trim it at the end
        address[] memory buffer = new address[](MAX_OWNERS);
        address[] memory visited = new address[](MAX_OWNERS);
        uint256 count = 0;
        uint256 visitedCount = 0;

        (count, visitedCount) = _resolveOwners(owner, buffer, count, visited, visitedCount, 0);

        // Trim buffer to actual count
        address[] memory result = new address[](count);
        for (uint256 i = 0; i < count; i++) {
            result[i] = buffer[i];
        }
        return result;
    }

    /**
     * @dev Recursively resolves an address into its leaf owners.
     *      - EOA → added directly to the buffer
     *      - Safe → each signer is resolved recursively
     *      - Ownable contract → owner() is resolved recursively
     *      - Unknown contract → added as-is (cannot resolve further)
     */
    function _resolveOwners(address account, address[] memory buffer, uint256 count, address[] memory visited, uint256 visitedCount, uint256 depth)
        internal
        view
        returns (uint256, uint256)
    {
        // Stop conditions: depth exceeded or buffer full
        if (depth >= MAX_RECURSION_DEPTH || count >= MAX_OWNERS) {
            revert OwnersOverflow(MAX_OWNERS);
        }

        // Cycle detection: skip already-visited addresses
        for (uint256 i = 0; i < visitedCount; i++) {
            if (visited[i] == account) {
                return (count, visitedCount);
            }
        }

        // Mark as visited
        if (visitedCount < MAX_OWNERS) {
            visited[visitedCount] = account;
            visitedCount++;
        }

        // EOA → leaf owner
        if (account.code.length == 0) {
            buffer[count] = account;
            return (count + 1, visitedCount);
        }

        // Try Safe: resolve each signer recursively
        try Safe(payable(account)).getOwners() returns (address[] memory signers) {
            if (signers.length > 0) {
                for (uint256 i = 0; i < signers.length && count <= MAX_OWNERS; i++) {
                    (count, visitedCount) = _resolveOwners(signers[i], buffer, count, visited, visitedCount, depth + 1);
                }
                return (count, visitedCount);
            }
        } catch { }

        // Try Ownable: resolve owner() recursively
        try Ownable(account).owner() returns (address ownableOwner) {
            if (ownableOwner != address(0) && ownableOwner != account) {
                return _resolveOwners(ownableOwner, buffer, count, visited, visitedCount, depth + 1);
            }
        } catch { }

        // Unknown contract type: include it as-is since we can't resolve further
        buffer[count] = account;
        return (count + 1, visitedCount);
    }

    /**
     * @notice Sets the locked token factory address
     * @param factoryAddress The address of the ILockedTokenFactory contract
     */
    function setLockedTokenFactory(address factoryAddress) external onlyOwner {
        require(factoryAddress != address(0), "Zero factory address");
        lockedTokenFactory = ILockedTokenFactory(factoryAddress);
    }

    /**
     * @notice Checks if a signer holds a locked token and is approved
     * @param tokenAddress The address of the locked token contract
     * @param signer The address to check
     * @return true if signer has a balance > 0 and is approved
     */
    function isApprovedLock(address tokenAddress, address signer) external view returns (bool) {
        require(tokenAddress != address(0), "Zero token address");
        if (tokenAddress.code.length == 0) return false;
        require(address(lockedTokenFactory) != address(0), "Locked token factory not set");
        ILockedToken lockedToken;
        try lockedTokenFactory.getLockedToken(tokenAddress) returns (ILockedToken lt) {
            lockedToken = lt;
        } catch {
            return false;
        }
        if (address(lockedToken) == address(0)) return false;
        try lockedToken.balanceOf(signer) returns (uint256 balance) {
            if (balance == 0) return false;
            try lockedToken.isApproved(signer) returns (bool approved) {
                return approved;
            } catch {
                return false;
            }
        } catch {
            return false;
        }
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
