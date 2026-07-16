// SPDX-License-Identifier: BSD 3-Clause License
pragma solidity >=0.5.0 ^0.8.0 ^0.8.20 ^0.8.24;

// lib/eigenlayer-contracts/src/contracts/interfaces/IETHPOSDeposit.sol
// ┏━━━┓━┏┓━┏┓━━┏━━━┓━━┏━━━┓━━━━┏━━━┓━━━━━━━━━━━━━━━━━━━┏┓━━━━━┏━━━┓━━━━━━━━━┏┓━━━━━━━━━━━━━━┏┓━
// ┃┏━━┛┏┛┗┓┃┃━━┃┏━┓┃━━┃┏━┓┃━━━━┗┓┏┓┃━━━━━━━━━━━━━━━━━━┏┛┗┓━━━━┃┏━┓┃━━━━━━━━┏┛┗┓━━━━━━━━━━━━┏┛┗┓
// ┃┗━━┓┗┓┏┛┃┗━┓┗┛┏┛┃━━┃┃━┃┃━━━━━┃┃┃┃┏━━┓┏━━┓┏━━┓┏━━┓┏┓┗┓┏┛━━━━┃┃━┗┛┏━━┓┏━┓━┗┓┏┛┏━┓┏━━┓━┏━━┓┗┓┏┛
// ┃┏━━┛━┃┃━┃┏┓┃┏━┛┏┛━━┃┃━┃┃━━━━━┃┃┃┃┃┏┓┃┃┏┓┃┃┏┓┃┃━━┫┣┫━┃┃━━━━━┃┃━┏┓┃┏┓┃┃┏┓┓━┃┃━┃┏┛┗━┓┃━┃┏━┛━┃┃━
// ┃┗━━┓━┃┗┓┃┃┃┃┃┃┗━┓┏┓┃┗━┛┃━━━━┏┛┗┛┃┃┃━┫┃┗┛┃┃┗┛┃┣━━┃┃┃━┃┗┓━━━━┃┗━┛┃┃┗┛┃┃┃┃┃━┃┗┓┃┃━┃┗┛┗┓┃┗━┓━┃┗┓
// ┗━━━┛━┗━┛┗┛┗┛┗━━━┛┗┛┗━━━┛━━━━┗━━━┛┗━━┛┃┏━┛┗━━┛┗━━┛┗┛━┗━┛━━━━┗━━━┛┗━━┛┗┛┗┛━┗━┛┗┛━┗━━━┛┗━━┛━┗━┛
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┃┃━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
// ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┗┛━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

// This interface is designed to be compatible with the Vyper version.
/// @notice This is the Ethereum 2.0 deposit contract interface.
/// For more information see the Phase 0 specification under https://github.com/ethereum/eth2.0-specs
interface IETHPOSDeposit {
    /// @notice A processed deposit event.
    event DepositEvent(bytes pubkey, bytes withdrawal_credentials, bytes amount, bytes signature, bytes index);

    /// @notice Submit a Phase 0 DepositData object.
    /// @param pubkey A BLS12-381 public key.
    /// @param withdrawal_credentials Commitment to a public key for withdrawals.
    /// @param signature A BLS12-381 signature.
    /// @param deposit_data_root The SHA-256 hash of the SSZ-encoded DepositData object.
    /// Used as a protection against malformed input.
    function deposit(
        bytes calldata pubkey,
        bytes calldata withdrawal_credentials,
        bytes calldata signature,
        bytes32 deposit_data_root
    ) external payable;

    /// @notice Query the current deposit root hash.
    /// @return The deposit root hash.
    function get_deposit_root() external view returns (bytes32);

    /// @notice Query the current deposit count.
    /// @return The deposit count encoded as a little endian 64-bit number.
    function get_deposit_count() external view returns (bytes memory);
}

// lib/eigenlayer-contracts/src/contracts/interfaces/IPauserRegistry.sol

/**
 * @title Interface for the `PauserRegistry` contract.
 * @author Layr Labs, Inc.
 * @notice Terms of Service: https://docs.eigenlayer.xyz/overview/terms-of-service
 */
interface IPauserRegistry {
    event PauserStatusChanged(address pauser, bool canPause);

    event UnpauserChanged(address previousUnpauser, address newUnpauser);

    /// @notice Mapping of addresses to whether they hold the pauser role.
    function isPauser(address pauser) external view returns (bool);

    /// @notice Unique address that holds the unpauser role. Capable of changing *both* the pauser and unpauser addresses.
    function unpauser() external view returns (address);
}

// lib/eigenlayer-contracts/src/contracts/interfaces/ISignatureUtils.sol

/**
 * @title The interface for common signature utilities.
 * @author Layr Labs, Inc.
 * @notice Terms of Service: https://docs.eigenlayer.xyz/overview/terms-of-service
 */
interface ISignatureUtils {
    // @notice Struct that bundles together a signature and an expiration time for the signature. Used primarily for stack management.
    struct SignatureWithExpiry {
        // the signature itself, formatted as a single bytes object
        bytes signature;
        // the expiration timestamp (UTC) of the signature
        uint256 expiry;
    }

    // @notice Struct that bundles together a signature, a salt for uniqueness, and an expiration time for the signature. Used primarily for stack management.
    struct SignatureWithSaltAndExpiry {
        // the signature itself, formatted as a single bytes object
        bytes signature;
        // the salt used to generate the signature
        bytes32 salt;
        // the expiration timestamp (UTC) of the signature
        uint256 expiry;
    }
}

// lib/eigenlayer-contracts/src/contracts/libraries/Endian.sol

library Endian {
    /**
     * @notice Converts a little endian-formatted uint64 to a big endian-formatted uint64
     * @param lenum little endian-formatted uint64 input, provided as 'bytes32' type
     * @return n The big endian-formatted uint64
     * @dev Note that the input is formatted as a 'bytes32' type (i.e. 256 bits), but it is immediately truncated to a uint64 (i.e. 64 bits)
     * through a right-shift/shr operation.
     */
    function fromLittleEndianUint64(bytes32 lenum) internal pure returns (uint64 n) {
        // the number needs to be stored in little-endian encoding (ie in bytes 0-8)
        n = uint64(uint256(lenum >> 192));
        // forgefmt: disable-next-item
        return (n >> 56) | 
            ((0x00FF000000000000 & n) >> 40) | 
            ((0x0000FF0000000000 & n) >> 24) | 
            ((0x000000FF00000000 & n) >> 8)  | 
            ((0x00000000FF000000 & n) << 8)  | 
            ((0x0000000000FF0000 & n) << 24) | 
            ((0x000000000000FF00 & n) << 40) | 
            ((0x00000000000000FF & n) << 56);
    }
}

// lib/eigenlayer-contracts/src/contracts/libraries/Merkle.sol

// Adapted from OpenZeppelin Contracts (last updated v4.8.0) (utils/cryptography/MerkleProof.sol)

/**
 * @dev These functions deal with verification of Merkle Tree proofs.
 *
 * The tree and the proofs can be generated using our
 * https://github.com/OpenZeppelin/merkle-tree[JavaScript library].
 * You will find a quickstart guide in the readme.
 *
 * WARNING: You should avoid using leaf values that are 64 bytes long prior to
 * hashing, or use a hash function other than keccak256 for hashing leaves.
 * This is because the concatenation of a sorted pair of internal nodes in
 * the merkle tree could be reinterpreted as a leaf value.
 * OpenZeppelin's JavaScript library generates merkle trees that are safe
 * against this attack out of the box.
 */
library Merkle {
    /**
     * @dev Returns the rebuilt hash obtained by traversing a Merkle tree up
     * from `leaf` using `proof`. A `proof` is valid if and only if the rebuilt
     * hash matches the root of the tree. The tree is built assuming `leaf` is
     * the 0 indexed `index`'th leaf from the bottom left of the tree.
     *
     * Note this is for a Merkle tree using the keccak/sha3 hash function
     */
    function verifyInclusionKeccak(
        bytes memory proof,
        bytes32 root,
        bytes32 leaf,
        uint256 index
    ) internal pure returns (bool) {
        return processInclusionProofKeccak(proof, leaf, index) == root;
    }

    /**
     * @dev Returns the rebuilt hash obtained by traversing a Merkle tree up
     * from `leaf` using `proof`. A `proof` is valid if and only if the rebuilt
     * hash matches the root of the tree. The tree is built assuming `leaf` is
     * the 0 indexed `index`'th leaf from the bottom left of the tree.
     * @dev If the proof length is 0 then the leaf hash is returned.
     *
     * _Available since v4.4._
     *
     * Note this is for a Merkle tree using the keccak/sha3 hash function
     */
    function processInclusionProofKeccak(
        bytes memory proof,
        bytes32 leaf,
        uint256 index
    ) internal pure returns (bytes32) {
        require(proof.length % 32 == 0, "Merkle.processInclusionProofKeccak: proof length should be a multiple of 32");
        bytes32 computedHash = leaf;
        for (uint256 i = 32; i <= proof.length; i += 32) {
            if (index % 2 == 0) {
                // if ith bit of index is 0, then computedHash is a left sibling
                assembly {
                    mstore(0x00, computedHash)
                    mstore(0x20, mload(add(proof, i)))
                    computedHash := keccak256(0x00, 0x40)
                    index := div(index, 2)
                }
            } else {
                // if ith bit of index is 1, then computedHash is a right sibling
                assembly {
                    mstore(0x00, mload(add(proof, i)))
                    mstore(0x20, computedHash)
                    computedHash := keccak256(0x00, 0x40)
                    index := div(index, 2)
                }
            }
        }
        return computedHash;
    }

    /**
     * @dev Returns the rebuilt hash obtained by traversing a Merkle tree up
     * from `leaf` using `proof`. A `proof` is valid if and only if the rebuilt
     * hash matches the root of the tree. The tree is built assuming `leaf` is
     * the 0 indexed `index`'th leaf from the bottom left of the tree.
     *
     * Note this is for a Merkle tree using the sha256 hash function
     */
    function verifyInclusionSha256(
        bytes memory proof,
        bytes32 root,
        bytes32 leaf,
        uint256 index
    ) internal view returns (bool) {
        return processInclusionProofSha256(proof, leaf, index) == root;
    }

    /**
     * @dev Returns the rebuilt hash obtained by traversing a Merkle tree up
     * from `leaf` using `proof`. A `proof` is valid if and only if the rebuilt
     * hash matches the root of the tree. The tree is built assuming `leaf` is
     * the 0 indexed `index`'th leaf from the bottom left of the tree.
     *
     * _Available since v4.4._
     *
     * Note this is for a Merkle tree using the sha256 hash function
     */
    function processInclusionProofSha256(
        bytes memory proof,
        bytes32 leaf,
        uint256 index
    ) internal view returns (bytes32) {
        require(
            proof.length != 0 && proof.length % 32 == 0,
            "Merkle.processInclusionProofSha256: proof length should be a non-zero multiple of 32"
        );
        bytes32[1] memory computedHash = [leaf];
        for (uint256 i = 32; i <= proof.length; i += 32) {
            if (index % 2 == 0) {
                // if ith bit of index is 0, then computedHash is a left sibling
                assembly {
                    mstore(0x00, mload(computedHash))
                    mstore(0x20, mload(add(proof, i)))
                    if iszero(staticcall(sub(gas(), 2000), 2, 0x00, 0x40, computedHash, 0x20)) { revert(0, 0) }
                    index := div(index, 2)
                }
            } else {
                // if ith bit of index is 1, then computedHash is a right sibling
                assembly {
                    mstore(0x00, mload(add(proof, i)))
                    mstore(0x20, mload(computedHash))
                    if iszero(staticcall(sub(gas(), 2000), 2, 0x00, 0x40, computedHash, 0x20)) { revert(0, 0) }
                    index := div(index, 2)
                }
            }
        }
        return computedHash[0];
    }

    /**
     * @notice this function returns the merkle root of a tree created from a set of leaves using sha256 as its hash function
     *  @param leaves the leaves of the merkle tree
     *  @return The computed Merkle root of the tree.
     *  @dev A pre-condition to this function is that leaves.length is a power of two.  If not, the function will merkleize the inputs incorrectly.
     */
    function merkleizeSha256(bytes32[] memory leaves) internal pure returns (bytes32) {
        //there are half as many nodes in the layer above the leaves
        uint256 numNodesInLayer = leaves.length / 2;
        //create a layer to store the internal nodes
        bytes32[] memory layer = new bytes32[](numNodesInLayer);
        //fill the layer with the pairwise hashes of the leaves
        for (uint256 i = 0; i < numNodesInLayer; i++) {
            layer[i] = sha256(abi.encodePacked(leaves[2 * i], leaves[2 * i + 1]));
        }
        //the next layer above has half as many nodes
        numNodesInLayer /= 2;
        //while we haven't computed the root
        while (numNodesInLayer != 0) {
            //overwrite the first numNodesInLayer nodes in layer with the pairwise hashes of their children
            for (uint256 i = 0; i < numNodesInLayer; i++) {
                layer[i] = sha256(abi.encodePacked(layer[2 * i], layer[2 * i + 1]));
            }
            //the next layer above has half as many nodes
            numNodesInLayer /= 2;
        }
        //the first node in the layer is the root
        return layer[0];
    }
}

// lib/openzeppelin-contracts/contracts/access/IAccessControl.sol

// OpenZeppelin Contracts (last updated v5.0.0) (access/IAccessControl.sol)

/**
 * @dev External interface of AccessControl declared to support ERC-165 detection.
 */
interface IAccessControl {
    /**
     * @dev The `account` is missing a role.
     */
    error AccessControlUnauthorizedAccount(address account, bytes32 neededRole);

    /**
     * @dev The caller of a function is not the expected one.
     *
     * NOTE: Don't confuse with {AccessControlUnauthorizedAccount}.
     */
    error AccessControlBadConfirmation();

    /**
     * @dev Emitted when `newAdminRole` is set as ``role``'s admin role, replacing `previousAdminRole`
     *
     * `DEFAULT_ADMIN_ROLE` is the starting admin for all roles, despite
     * {RoleAdminChanged} not being emitted signaling this.
     */
    event RoleAdminChanged(bytes32 indexed role, bytes32 indexed previousAdminRole, bytes32 indexed newAdminRole);

    /**
     * @dev Emitted when `account` is granted `role`.
     *
     * `sender` is the account that originated the contract call. This account bears the admin role (for the granted role).
     * Expected in cases where the role was granted using the internal {AccessControl-_grantRole}.
     */
    event RoleGranted(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Emitted when `account` is revoked `role`.
     *
     * `sender` is the account that originated the contract call:
     *   - if using `revokeRole`, it is the admin role bearer
     *   - if using `renounceRole`, it is the role bearer (i.e. `account`)
     */
    event RoleRevoked(bytes32 indexed role, address indexed account, address indexed sender);

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) external view returns (bool);

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {AccessControl-_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) external view returns (bytes32);

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function grantRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     */
    function revokeRole(bytes32 role, address account) external;

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been granted `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `callerConfirmation`.
     */
    function renounceRole(bytes32 role, address callerConfirmation) external;
}

// lib/openzeppelin-contracts/contracts/proxy/beacon/IBeacon.sol

// OpenZeppelin Contracts (last updated v5.0.0) (proxy/beacon/IBeacon.sol)

/**
 * @dev This is the interface that {BeaconProxy} expects of its beacon.
 */
interface IBeacon {
    /**
     * @dev Must return an address that can be used as a delegate call target.
     *
     * {UpgradeableBeacon} will check that this address is a contract.
     */
    function implementation() external view returns (address);
}

// lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol

// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

/**
 * @dev Interface of the ERC-20 standard as defined in the ERC.
 */
interface IERC20 {
    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /**
     * @dev Returns the value of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the value of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves a `value` amount of tokens from the caller's account to `to`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address to, uint256 value) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets a `value` amount of tokens as the allowance of `spender` over the
     * caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 value) external returns (bool);

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to` using the
     * allowance mechanism. `value` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

// lib/openzeppelin-contracts/contracts/utils/Context.sol

// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// lib/openzeppelin-contracts/contracts/utils/introspection/IERC165.sol

// OpenZeppelin Contracts (last updated v5.0.0) (utils/introspection/IERC165.sol)

/**
 * @dev Interface of the ERC-165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[ERC].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[ERC section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

// lib/openzeppelin-contracts-upgradeable/contracts/proxy/utils/Initializable.sol

// OpenZeppelin Contracts (last updated v5.0.0) (proxy/utils/Initializable.sol)

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * The initialization functions use a version number. Once a version number is used, it is consumed and cannot be
 * reused. This mechanism prevents re-execution of each "step" but allows the creation of new initialization steps in
 * case an upgrade adds a module that needs to be initialized.
 *
 * For example:
 *
 * [.hljs-theme-light.nopadding]
 * ```solidity
 * contract MyToken is ERC20Upgradeable {
 *     function initialize() initializer public {
 *         __ERC20_init("MyToken", "MTK");
 *     }
 * }
 *
 * contract MyTokenV2 is MyToken, ERC20PermitUpgradeable {
 *     function initializeV2() reinitializer(2) public {
 *         __ERC20Permit_init("MyToken");
 *     }
 * }
 * ```
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 *
 * [CAUTION]
 * ====
 * Avoid leaving a contract uninitialized.
 *
 * An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
 * contract, which may impact the proxy. To prevent the implementation contract from being used, you should invoke
 * the {_disableInitializers} function in the constructor to automatically lock it when it is deployed:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * /// @custom:oz-upgrades-unsafe-allow constructor
 * constructor() {
 *     _disableInitializers();
 * }
 * ```
 * ====
 */
abstract contract Initializable {
    /**
     * @dev Storage of the initializable contract.
     *
     * It's implemented on a custom ERC-7201 namespace to reduce the risk of storage collisions
     * when using with upgradeable contracts.
     *
     * @custom:storage-location erc7201:openzeppelin.storage.Initializable
     */
    struct InitializableStorage {
        /**
         * @dev Indicates that the contract has been initialized.
         */
        uint64 _initialized;
        /**
         * @dev Indicates that the contract is in the process of being initialized.
         */
        bool _initializing;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Initializable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant INITIALIZABLE_STORAGE = 0xf0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00;

    /**
     * @dev The contract is already initialized.
     */
    error InvalidInitialization();

    /**
     * @dev The contract is not initializing.
     */
    error NotInitializing();

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint64 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts.
     *
     * Similar to `reinitializer(1)`, except that in the context of a constructor an `initializer` may be invoked any
     * number of times. This behavior in the constructor can be useful during testing and is not expected to be used in
     * production.
     *
     * Emits an {Initialized} event.
     */
    modifier initializer() {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        // Cache values to avoid duplicated sloads
        bool isTopLevelCall = !$._initializing;
        uint64 initialized = $._initialized;

        // Allowed calls:
        // - initialSetup: the contract is not in the initializing state and no previous version was
        //                 initialized
        // - construction: the contract is initialized at version 1 (no reininitialization) and the
        //                 current contract is just being deployed
        bool initialSetup = initialized == 0 && isTopLevelCall;
        bool construction = initialized == 1 && address(this).code.length == 0;

        if (!initialSetup && !construction) {
            revert InvalidInitialization();
        }
        $._initialized = 1;
        if (isTopLevelCall) {
            $._initializing = true;
        }
        _;
        if (isTopLevelCall) {
            $._initializing = false;
            emit Initialized(1);
        }
    }

    /**
     * @dev A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
     * contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
     * used to initialize parent contracts.
     *
     * A reinitializer may be used after the original initialization step. This is essential to configure modules that
     * are added through upgrades and that require initialization.
     *
     * When `version` is 1, this modifier is similar to `initializer`, except that functions marked with `reinitializer`
     * cannot be nested. If one is invoked in the context of another, execution will revert.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
     *
     * WARNING: Setting the version to 2**64 - 1 will prevent any future reinitialization.
     *
     * Emits an {Initialized} event.
     */
    modifier reinitializer(uint64 version) {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing || $._initialized >= version) {
            revert InvalidInitialization();
        }
        $._initialized = version;
        $._initializing = true;
        _;
        $._initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        _checkInitializing();
        _;
    }

    /**
     * @dev Reverts if the contract is not in an initializing state. See {onlyInitializing}.
     */
    function _checkInitializing() internal view virtual {
        if (!_isInitializing()) {
            revert NotInitializing();
        }
    }

    /**
     * @dev Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
     * Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
     * to any version. It is recommended to use this to lock implementation contracts that are designed to be called
     * through proxies.
     *
     * Emits an {Initialized} event the first time it is successfully executed.
     */
    function _disableInitializers() internal virtual {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing) {
            revert InvalidInitialization();
        }
        if ($._initialized != type(uint64).max) {
            $._initialized = type(uint64).max;
            emit Initialized(type(uint64).max);
        }
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function _getInitializedVersion() internal view returns (uint64) {
        return _getInitializableStorage()._initialized;
    }

    /**
     * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
     */
    function _isInitializing() internal view returns (bool) {
        return _getInitializableStorage()._initializing;
    }

    /**
     * @dev Returns a pointer to the storage namespace.
     */
    // solhint-disable-next-line var-name-mixedcase
    function _getInitializableStorage() private pure returns (InitializableStorage storage $) {
        assembly {
            $.slot := INITIALIZABLE_STORAGE
        }
    }
}

// src/interfaces/IWithdrawalQueueManager.sol

interface IWithdrawalQueueManager {

    struct WithdrawalRequest {
        uint256 amount;
        uint256 feeAtRequestTime;
        uint256 redemptionRateAtRequestTime;
        uint256 creationTimestamp;
        bool processed;
        bytes data;
    }

    struct Finalization {
        uint64 startIndex;
        uint64 endIndex;
        uint96 redemptionRate;
    }

    struct WithdrawalClaim {
        uint256 tokenId;
        uint256 finalizationId;
        address receiver;
    }

    function requestWithdrawal(uint256 amount) external returns (uint256);
    function requestWithdrawal(uint256 amount, bytes calldata data) external returns (uint256);
    function claimWithdrawal(WithdrawalClaim memory claim) external;
    function finalizeRequestsUpToIndex(uint256 _lastFinalizedIndex) external returns (uint256);
    function pendingRequestedRedemptionAmount() external view returns (uint256);
    function _tokenIdCounter() external view returns (uint256);
    function lastFinalizedIndex() external view returns (uint256);
}

// lib/eigenlayer-contracts/src/contracts/interfaces/IPausable.sol

/**
 * @title Adds pausability to a contract, with pausing & unpausing controlled by the `pauser` and `unpauser` of a PauserRegistry contract.
 * @author Layr Labs, Inc.
 * @notice Terms of Service: https://docs.eigenlayer.xyz/overview/terms-of-service
 * @notice Contracts that inherit from this contract may define their own `pause` and `unpause` (and/or related) functions.
 * These functions should be permissioned as "onlyPauser" which defers to a `PauserRegistry` for determining access control.
 * @dev Pausability is implemented using a uint256, which allows up to 256 different single bit-flags; each bit can potentially pause different functionality.
 * Inspiration for this was taken from the NearBridge design here https://etherscan.io/address/0x3FEFc5A4B1c02f21cBc8D3613643ba0635b9a873#code.
 * For the `pause` and `unpause` functions we've implemented, if you pause, you can only flip (any number of) switches to on/1 (aka "paused"), and if you unpause,
 * you can only flip (any number of) switches to off/0 (aka "paused").
 * If you want a pauseXYZ function that just flips a single bit / "pausing flag", it will:
 * 1) 'bit-wise and' (aka `&`) a flag with the current paused state (as a uint256)
 * 2) update the paused state to this new value
 * @dev We note as well that we have chosen to identify flags by their *bit index* as opposed to their numerical value, so, e.g. defining `DEPOSITS_PAUSED = 3`
 * indicates specifically that if the *third bit* of `_paused` is flipped -- i.e. it is a '1' -- then deposits should be paused
 */
interface IPausable {
    /// @notice Emitted when the `pauserRegistry` is set to `newPauserRegistry`.
    event PauserRegistrySet(IPauserRegistry pauserRegistry, IPauserRegistry newPauserRegistry);

    /// @notice Emitted when the pause is triggered by `account`, and changed to `newPausedStatus`.
    event Paused(address indexed account, uint256 newPausedStatus);

    /// @notice Emitted when the pause is lifted by `account`, and changed to `newPausedStatus`.
    event Unpaused(address indexed account, uint256 newPausedStatus);

    /// @notice Address of the `PauserRegistry` contract that this contract defers to for determining access control (for pausing).
    function pauserRegistry() external view returns (IPauserRegistry);

    /**
     * @notice This function is used to pause an EigenLayer contract's functionality.
     * It is permissioned to the `pauser` address, which is expected to be a low threshold multisig.
     * @param newPausedStatus represents the new value for `_paused` to take, which means it may flip several bits at once.
     * @dev This function can only pause functionality, and thus cannot 'unflip' any bit in `_paused` from 1 to 0.
     */
    function pause(uint256 newPausedStatus) external;

    /**
     * @notice Alias for `pause(type(uint256).max)`.
     */
    function pauseAll() external;

    /**
     * @notice This function is used to unpause an EigenLayer contract's functionality.
     * It is permissioned to the `unpauser` address, which is expected to be a high threshold multisig or governance contract.
     * @param newPausedStatus represents the new value for `_paused` to take, which means it may flip several bits at once.
     * @dev This function can only unpause functionality, and thus cannot 'flip' any bit in `_paused` from 0 to 1.
     */
    function unpause(uint256 newPausedStatus) external;

    /// @notice Returns the current paused status as a uint256.
    function paused() external view returns (uint256);

    /// @notice Returns 'true' if the `indexed`th bit of `_paused` is 1, and 'false' otherwise
    function paused(uint8 index) external view returns (bool);

    /// @notice Allows the unpauser to set a new pauser registry
    function setPauserRegistry(IPauserRegistry newPauserRegistry) external;
}

// lib/eigenlayer-contracts/src/contracts/interfaces/IStrategy.sol

/**
 * @title Minimal interface for an `Strategy` contract.
 * @author Layr Labs, Inc.
 * @notice Terms of Service: https://docs.eigenlayer.xyz/overview/terms-of-service
 * @notice Custom `Strategy` implementations may expand extensively on this interface.
 */
interface IStrategy {
    /**
     * @notice Used to emit an event for the exchange rate between 1 share and underlying token in a strategy contract
     * @param rate is the exchange rate in wad 18 decimals
     * @dev Tokens that do not have 18 decimals must have offchain services scale the exchange rate by the proper magnitude
     */
    event ExchangeRateEmitted(uint256 rate);

    /**
     * Used to emit the underlying token and its decimals on strategy creation
     * @notice token
     * @param token is the ERC20 token of the strategy
     * @param decimals are the decimals of the ERC20 token in the strategy
     */
    event StrategyTokenSet(IERC20 token, uint8 decimals);

    /**
     * @notice Used to deposit tokens into this Strategy
     * @param token is the ERC20 token being deposited
     * @param amount is the amount of token being deposited
     * @dev This function is only callable by the strategyManager contract. It is invoked inside of the strategyManager's
     * `depositIntoStrategy` function, and individual share balances are recorded in the strategyManager as well.
     * @return newShares is the number of new shares issued at the current exchange ratio.
     */
    function deposit(IERC20 token, uint256 amount) external returns (uint256);

    /**
     * @notice Used to withdraw tokens from this Strategy, to the `recipient`'s address
     * @param recipient is the address to receive the withdrawn funds
     * @param token is the ERC20 token being transferred out
     * @param amountShares is the amount of shares being withdrawn
     * @dev This function is only callable by the strategyManager contract. It is invoked inside of the strategyManager's
     * other functions, and individual share balances are recorded in the strategyManager as well.
     */
    function withdraw(address recipient, IERC20 token, uint256 amountShares) external;

    /**
     * @notice Used to convert a number of shares to the equivalent amount of underlying tokens for this strategy.
     * @notice In contrast to `sharesToUnderlyingView`, this function **may** make state modifications
     * @param amountShares is the amount of shares to calculate its conversion into the underlying token
     * @return The amount of underlying tokens corresponding to the input `amountShares`
     * @dev Implementation for these functions in particular may vary significantly for different strategies
     */
    function sharesToUnderlying(uint256 amountShares) external returns (uint256);

    /**
     * @notice Used to convert an amount of underlying tokens to the equivalent amount of shares in this strategy.
     * @notice In contrast to `underlyingToSharesView`, this function **may** make state modifications
     * @param amountUnderlying is the amount of `underlyingToken` to calculate its conversion into strategy shares
     * @return The amount of underlying tokens corresponding to the input `amountShares`
     * @dev Implementation for these functions in particular may vary significantly for different strategies
     */
    function underlyingToShares(uint256 amountUnderlying) external returns (uint256);

    /**
     * @notice convenience function for fetching the current underlying value of all of the `user`'s shares in
     * this strategy. In contrast to `userUnderlyingView`, this function **may** make state modifications
     */
    function userUnderlying(address user) external returns (uint256);

    /**
     * @notice convenience function for fetching the current total shares of `user` in this strategy, by
     * querying the `strategyManager` contract
     */
    function shares(address user) external view returns (uint256);

    /**
     * @notice Used to convert a number of shares to the equivalent amount of underlying tokens for this strategy.
     * @notice In contrast to `sharesToUnderlying`, this function guarantees no state modifications
     * @param amountShares is the amount of shares to calculate its conversion into the underlying token
     * @return The amount of shares corresponding to the input `amountUnderlying`
     * @dev Implementation for these functions in particular may vary significantly for different strategies
     */
    function sharesToUnderlyingView(uint256 amountShares) external view returns (uint256);

    /**
     * @notice Used to convert an amount of underlying tokens to the equivalent amount of shares in this strategy.
     * @notice In contrast to `underlyingToShares`, this function guarantees no state modifications
     * @param amountUnderlying is the amount of `underlyingToken` to calculate its conversion into strategy shares
     * @return The amount of shares corresponding to the input `amountUnderlying`
     * @dev Implementation for these functions in particular may vary significantly for different strategies
     */
    function underlyingToSharesView(uint256 amountUnderlying) external view returns (uint256);

    /**
     * @notice convenience function for fetching the current underlying value of all of the `user`'s shares in
     * this strategy. In contrast to `userUnderlying`, this function guarantees no state modifications
     */
    function userUnderlyingView(address user) external view returns (uint256);

    /// @notice The underlying token for shares in this Strategy
    function underlyingToken() external view returns (IERC20);

    /// @notice The total number of extant shares in this Strategy
    function totalShares() external view returns (uint256);

    /// @notice Returns either a brief string explaining the strategy's goal & purpose, or a link to metadata that explains in more detail.
    function explanation() external view returns (string memory);
}

// lib/openzeppelin-contracts/contracts/access/Ownable.sol

// OpenZeppelin Contracts (last updated v5.0.0) (access/Ownable.sol)

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * The initial owner is set to the address provided by the deployer. This can
 * later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    /**
     * @dev The caller account is not authorized to perform an operation.
     */
    error OwnableUnauthorizedAccount(address account);

    /**
     * @dev The owner is not a valid owner account. (eg. `address(0)`)
     */
    error OwnableInvalidOwner(address owner);

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the address provided by the deployer as the initial owner.
     */
    constructor(address initialOwner) {
        if (initialOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(initialOwner);
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        _checkOwner();
        _;
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if the sender is not the owner.
     */
    function _checkOwner() internal view virtual {
        if (owner() != _msgSender()) {
            revert OwnableUnauthorizedAccount(_msgSender());
        }
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby disabling any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        if (newOwner == address(0)) {
            revert OwnableInvalidOwner(address(0));
        }
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// lib/openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol

// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Metadata.sol)

/**
 * @dev Interface for the optional metadata functions from the ERC-20 standard.
 */
interface IERC20Metadata is IERC20 {
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals places of the token.
     */
    function decimals() external view returns (uint8);
}

// lib/openzeppelin-contracts-upgradeable/contracts/utils/ContextUpgradeable.sol

// OpenZeppelin Contracts (last updated v5.0.1) (utils/Context.sol)

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract ContextUpgradeable is Initializable {
    function __Context_init() internal onlyInitializing {
    }

    function __Context_init_unchained() internal onlyInitializing {
    }
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }

    function _contextSuffixLength() internal view virtual returns (uint256) {
        return 0;
    }
}

// src/external/lido/IwstETH.sol

interface IwstETH is IERC20 {
    function unwrap(uint256 _wstETHAmount) external returns (uint256);

    function wrap(uint256 _stETHAmount) external returns (uint256);

    function getWstETHByStETH(
        uint256 _stETHAmount
    ) external view returns (uint256);

    function getStETHByWstETH(
        uint256 _wstETHAmount
    ) external view returns (uint256);

    function stEthPerToken() external view returns (uint256);

    function stETH() external view returns (address);
}

// src/interfaces/IAssetRegistry.sol

interface IAssetRegistry {

    enum AssetStatus {
        Unavailable, // Unavailable is 0, all asset default to Nonexistent
        Active,
        Disabled
    }
    struct AssetData {
        AssetStatus status;
    }

    function getAssets() external view returns (IERC20[] memory);
    function assetData(IERC20 asset) external view returns (AssetData memory);
    function addAsset(IERC20 asset) external;
    function disableAsset(IERC20 asset) external;
    function deleteAsset(IERC20 asset) external;
    function totalAssets() external view returns (uint256);
    function convertToUnitOfAccount(IERC20 asset, uint256 amount) external view returns (uint256);
    function convertFromUnitOfAccount(IERC20 asset, uint256 amount) external view returns (uint256);
    function assetIsSupported(IERC20 asset) external view returns (bool);
}

// src/interfaces/IWrapper.sol

interface IWrapper {

    /// @notice Wraps the given amount of the given token.
    /// @param _amount The amount to wrap.
    /// @param _token The token to wrap.
    /// @return The amount of wrapped tokens and the wrapped token.
    function wrap(uint256 _amount, IERC20 _token) external returns (uint256, IERC20);

    /// @notice Unwraps the given amount of the given token.
    /// @param _amount The amount to unwrap.
    /// @param _token The token to unwrap.
    /// @return The amount of unwrapped tokens and the unwrapped token.
    function unwrap(uint256 _amount, IERC20 _token) external returns (uint256, IERC20);

    /// @notice Converts the user's underlying asset amount to the equivalent user asset amount.
    /// @dev This function handles the conversion for wrapped staked ETH (wstETH) and wrapped other ETH (woETH),
    ///      returning the equivalent amount in the respective wrapped token.
    /// @param _asset The ERC20 token for which the conversion is being made.
    /// @param _userUnderlyingView The amount of the underlying asset.
    /// @return The equivalent amount in the user asset denomination.
    function toUserAssetAmount(IERC20 _asset, uint256 _userUnderlyingView) external view returns (uint256);
}

// src/interfaces/IynEigen.sol

interface IynEigen is IERC20 {

    function deposit(
        IERC20 asset,
        uint256 amount,
        address receiver
    ) external returns (uint256 shares);

    function totalAssets() external view returns (uint256);

    function convertToShares(IERC20 asset, uint256 amount) external view returns(uint256 shares);

    function previewDeposit(IERC20 asset, uint256 amount) external view returns (uint256);

    function burn(uint256 amount) external;

    function previewRedeem(IERC20 asset, uint256 shares) external view returns (uint256 assets);
    function previewRedeem(uint256 shares) external view returns (uint256);

    function convertToAssets(IERC20 asset, uint256 shares) external view returns (uint256);

    function retrieveAssets(
        IERC20[] calldata assetsToRetrieve,
        uint256[] calldata amounts
    ) external;

    function processWithdrawn(uint256 _amount, address _asset) external;

    function assetBalances(IERC20[] calldata assetsArray) external view returns (uint256[] memory balances);
    function assetBalance(IERC20 asset) external view returns (uint256 balance);

    function yieldNestStrategyManager() external view returns (address);
}

// lib/eigenlayer-contracts/src/contracts/libraries/BeaconChainProofs.sol

//Utility library for parsing and PHASE0 beacon chain block headers
//SSZ Spec: https://github.com/ethereum/consensus-specs/blob/dev/ssz/simple-serialize.md#merkleization
//BeaconBlockHeader Spec: https://github.com/ethereum/consensus-specs/blob/dev/specs/phase0/beacon-chain.md#beaconblockheader
//BeaconState Spec: https://github.com/ethereum/consensus-specs/blob/dev/specs/phase0/beacon-chain.md#beaconstate
library BeaconChainProofs {
    /// @notice Heights of various merkle trees in the beacon chain
    /// - beaconBlockRoot
    /// |                                             HEIGHT: BEACON_BLOCK_HEADER_TREE_HEIGHT
    /// -- beaconStateRoot
    /// |                                             HEIGHT: BEACON_STATE_TREE_HEIGHT
    /// validatorContainerRoot, balanceContainerRoot
    /// |                       |                     HEIGHT: BALANCE_TREE_HEIGHT
    /// |                       individual balances
    /// |                                             HEIGHT: VALIDATOR_TREE_HEIGHT
    /// individual validators
    uint256 internal constant BEACON_BLOCK_HEADER_TREE_HEIGHT = 3;
    uint256 internal constant BEACON_STATE_TREE_HEIGHT = 5;
    uint256 internal constant BALANCE_TREE_HEIGHT = 38;
    uint256 internal constant VALIDATOR_TREE_HEIGHT = 40;

    /// @notice Index of the beaconStateRoot in the `BeaconBlockHeader` container
    ///
    /// BeaconBlockHeader = [..., state_root, ...]
    ///                      0...      3
    ///
    /// (See https://github.com/ethereum/consensus-specs/blob/dev/specs/phase0/beacon-chain.md#beaconblockheader)
    uint256 internal constant STATE_ROOT_INDEX = 3;

    /// @notice Indices for fields in the `BeaconState` container
    ///
    /// BeaconState = [..., validators, balances, ...]
    ///                0...     11         12
    ///
    /// (See https://github.com/ethereum/consensus-specs/blob/dev/specs/capella/beacon-chain.md#beaconstate)
    uint256 internal constant VALIDATOR_CONTAINER_INDEX = 11;
    uint256 internal constant BALANCE_CONTAINER_INDEX = 12;

    /// @notice Number of fields in the `Validator` container
    /// (See https://github.com/ethereum/consensus-specs/blob/dev/specs/phase0/beacon-chain.md#validator)
    uint256 internal constant VALIDATOR_FIELDS_LENGTH = 8;

    /// @notice Indices for fields in the `Validator` container
    uint256 internal constant VALIDATOR_PUBKEY_INDEX = 0;
    uint256 internal constant VALIDATOR_WITHDRAWAL_CREDENTIALS_INDEX = 1;
    uint256 internal constant VALIDATOR_BALANCE_INDEX = 2;
    uint256 internal constant VALIDATOR_SLASHED_INDEX = 3;
    uint256 internal constant VALIDATOR_ACTIVATION_EPOCH_INDEX = 5;
    uint256 internal constant VALIDATOR_EXIT_EPOCH_INDEX = 6;

    /// @notice Slot/Epoch timings
    uint64 internal constant SECONDS_PER_SLOT = 12;
    uint64 internal constant SLOTS_PER_EPOCH = 32;
    uint64 internal constant SECONDS_PER_EPOCH = SLOTS_PER_EPOCH * SECONDS_PER_SLOT;

    /// @notice `FAR_FUTURE_EPOCH` is used as the default value for certain `Validator`
    /// fields when a `Validator` is first created on the beacon chain
    uint64 internal constant FAR_FUTURE_EPOCH = type(uint64).max;
    bytes8 internal constant UINT64_MASK = 0xffffffffffffffff;

    /// @notice Contains a beacon state root and a merkle proof verifying its inclusion under a beacon block root
    struct StateRootProof {
        bytes32 beaconStateRoot;
        bytes proof;
    }

    /// @notice Contains a validator's fields and a merkle proof of their inclusion under a beacon state root
    struct ValidatorProof {
        bytes32[] validatorFields;
        bytes proof;
    }

    /// @notice Contains a beacon balance container root and a proof of this root under a beacon block root
    struct BalanceContainerProof {
        bytes32 balanceContainerRoot;
        bytes proof;
    }

    /// @notice Contains a validator balance root and a proof of its inclusion under a balance container root
    struct BalanceProof {
        bytes32 pubkeyHash;
        bytes32 balanceRoot;
        bytes proof;
    }

    /**
     *
     *              VALIDATOR FIELDS -> BEACON STATE ROOT -> BEACON BLOCK ROOT
     *
     */

    /// @notice Verify a merkle proof of the beacon state root against a beacon block root
    /// @param beaconBlockRoot merkle root of the beacon block
    /// @param proof the beacon state root and merkle proof of its inclusion under `beaconBlockRoot`
    function verifyStateRoot(bytes32 beaconBlockRoot, StateRootProof calldata proof) internal view {
        require(
            proof.proof.length == 32 * (BEACON_BLOCK_HEADER_TREE_HEIGHT),
            "BeaconChainProofs.verifyStateRoot: Proof has incorrect length"
        );

        /// This merkle proof verifies the `beaconStateRoot` under the `beaconBlockRoot`
        /// - beaconBlockRoot
        /// |                            HEIGHT: BEACON_BLOCK_HEADER_TREE_HEIGHT
        /// -- beaconStateRoot
        require(
            Merkle.verifyInclusionSha256({
                proof: proof.proof,
                root: beaconBlockRoot,
                leaf: proof.beaconStateRoot,
                index: STATE_ROOT_INDEX
            }),
            "BeaconChainProofs.verifyStateRoot: Invalid state root merkle proof"
        );
    }

    /// @notice Verify a merkle proof of a validator container against a `beaconStateRoot`
    /// @dev This proof starts at a validator's container root, proves through the validator container root,
    /// and continues proving to the root of the `BeaconState`
    /// @dev See https://eth2book.info/capella/part3/containers/dependencies/#validator for info on `Validator` containers
    /// @dev See https://eth2book.info/capella/part3/containers/state/#beaconstate for info on `BeaconState` containers
    /// @param beaconStateRoot merkle root of the `BeaconState` container
    /// @param validatorFields an individual validator's fields. These are merklized to form a `validatorRoot`,
    /// which is used as the leaf to prove against `beaconStateRoot`
    /// @param validatorFieldsProof a merkle proof of inclusion of `validatorFields` under `beaconStateRoot`
    /// @param validatorIndex the validator's unique index
    function verifyValidatorFields(
        bytes32 beaconStateRoot,
        bytes32[] calldata validatorFields,
        bytes calldata validatorFieldsProof,
        uint40 validatorIndex
    ) internal view {
        require(
            validatorFields.length == VALIDATOR_FIELDS_LENGTH,
            "BeaconChainProofs.verifyValidatorFields: Validator fields has incorrect length"
        );

        /// Note: the reason we use `VALIDATOR_TREE_HEIGHT + 1` here is because the merklization process for
        /// this container includes hashing the root of the validator tree with the length of the validator list
        require(
            validatorFieldsProof.length == 32 * ((VALIDATOR_TREE_HEIGHT + 1) + BEACON_STATE_TREE_HEIGHT),
            "BeaconChainProofs.verifyValidatorFields: Proof has incorrect length"
        );

        // Merkleize `validatorFields` to get the leaf to prove
        bytes32 validatorRoot = Merkle.merkleizeSha256(validatorFields);

        /// This proof combines two proofs, so its index accounts for the relative position of leaves in two trees:
        /// - beaconStateRoot
        /// |                            HEIGHT: BEACON_STATE_TREE_HEIGHT
        /// -- validatorContainerRoot
        /// |                            HEIGHT: VALIDATOR_TREE_HEIGHT + 1
        /// ---- validatorRoot
        uint256 index = (VALIDATOR_CONTAINER_INDEX << (VALIDATOR_TREE_HEIGHT + 1)) | uint256(validatorIndex);

        require(
            Merkle.verifyInclusionSha256({
                proof: validatorFieldsProof,
                root: beaconStateRoot,
                leaf: validatorRoot,
                index: index
            }),
            "BeaconChainProofs.verifyValidatorFields: Invalid merkle proof"
        );
    }

    /**
     *
     *          VALIDATOR BALANCE -> BALANCE CONTAINER ROOT -> BEACON BLOCK ROOT
     *
     */

    /// @notice Verify a merkle proof of the beacon state's balances container against the beacon block root
    /// @dev This proof starts at the balance container root, proves through the beacon state root, and
    /// continues proving through the beacon block root. As a result, this proof will contain elements
    /// of a `StateRootProof` under the same block root, with the addition of proving the balances field
    /// within the beacon state.
    /// @dev This is used to make checkpoint proofs more efficient, as a checkpoint will verify multiple balances
    /// against the same balance container root.
    /// @param beaconBlockRoot merkle root of the beacon block
    /// @param proof a beacon balance container root and merkle proof of its inclusion under `beaconBlockRoot`
    function verifyBalanceContainer(bytes32 beaconBlockRoot, BalanceContainerProof calldata proof) internal view {
        require(
            proof.proof.length == 32 * (BEACON_BLOCK_HEADER_TREE_HEIGHT + BEACON_STATE_TREE_HEIGHT),
            "BeaconChainProofs.verifyBalanceContainer: Proof has incorrect length"
        );

        /// This proof combines two proofs, so its index accounts for the relative position of leaves in two trees:
        /// - beaconBlockRoot
        /// |                            HEIGHT: BEACON_BLOCK_HEADER_TREE_HEIGHT
        /// -- beaconStateRoot
        /// |                            HEIGHT: BEACON_STATE_TREE_HEIGHT
        /// ---- balancesContainerRoot
        uint256 index = (STATE_ROOT_INDEX << (BEACON_STATE_TREE_HEIGHT)) | BALANCE_CONTAINER_INDEX;

        require(
            Merkle.verifyInclusionSha256({
                proof: proof.proof,
                root: beaconBlockRoot,
                leaf: proof.balanceContainerRoot,
                index: index
            }),
            "BeaconChainProofs.verifyBalanceContainer: invalid balance container proof"
        );
    }

    /// @notice Verify a merkle proof of a validator's balance against the beacon state's `balanceContainerRoot`
    /// @param balanceContainerRoot the merkle root of all validators' current balances
    /// @param validatorIndex the index of the validator whose balance we are proving
    /// @param proof the validator's associated balance root and a merkle proof of inclusion under `balanceContainerRoot`
    /// @return validatorBalanceGwei the validator's current balance (in gwei)
    function verifyValidatorBalance(
        bytes32 balanceContainerRoot,
        uint40 validatorIndex,
        BalanceProof calldata proof
    ) internal view returns (uint64 validatorBalanceGwei) {
        /// Note: the reason we use `BALANCE_TREE_HEIGHT + 1` here is because the merklization process for
        /// this container includes hashing the root of the balances tree with the length of the balances list
        require(
            proof.proof.length == 32 * (BALANCE_TREE_HEIGHT + 1),
            "BeaconChainProofs.verifyValidatorBalance: Proof has incorrect length"
        );

        /// When merkleized, beacon chain balances are combined into groups of 4 called a `balanceRoot`. The merkle
        /// proof here verifies that this validator's `balanceRoot` is included in the `balanceContainerRoot`
        /// - balanceContainerRoot
        /// |                            HEIGHT: BALANCE_TREE_HEIGHT
        /// -- balanceRoot
        uint256 balanceIndex = uint256(validatorIndex / 4);

        require(
            Merkle.verifyInclusionSha256({
                proof: proof.proof,
                root: balanceContainerRoot,
                leaf: proof.balanceRoot,
                index: balanceIndex
            }),
            "BeaconChainProofs.verifyValidatorBalance: Invalid merkle proof"
        );

        /// Extract the individual validator's balance from the `balanceRoot`
        return getBalanceAtIndex(proof.balanceRoot, validatorIndex);
    }

    /**
     * @notice Parses a balanceRoot to get the uint64 balance of a validator.
     * @dev During merkleization of the beacon state balance tree, four uint64 values are treated as a single
     * leaf in the merkle tree. We use validatorIndex % 4 to determine which of the four uint64 values to
     * extract from the balanceRoot.
     * @param balanceRoot is the combination of 4 validator balances being proven for
     * @param validatorIndex is the index of the validator being proven for
     * @return The validator's balance, in Gwei
     */
    function getBalanceAtIndex(bytes32 balanceRoot, uint40 validatorIndex) internal pure returns (uint64) {
        uint256 bitShiftAmount = (validatorIndex % 4) * 64;
        return Endian.fromLittleEndianUint64(bytes32((uint256(balanceRoot) << bitShiftAmount)));
    }

    /// @notice Indices for fields in the `Validator` container:
    /// 0: pubkey
    /// 1: withdrawal credentials
    /// 2: effective balance
    /// 3: slashed?
    /// 4: activation eligibility epoch
    /// 5: activation epoch
    /// 6: exit epoch
    /// 7: withdrawable epoch
    ///
    /// (See https://github.com/ethereum/consensus-specs/blob/dev/specs/phase0/beacon-chain.md#validator)

    /// @dev Retrieves a validator's pubkey hash
    function getPubkeyHash(bytes32[] memory validatorFields) internal pure returns (bytes32) {
        return validatorFields[VALIDATOR_PUBKEY_INDEX];
    }

    /// @dev Retrieves a validator's withdrawal credentials
    function getWithdrawalCredentials(bytes32[] memory validatorFields) internal pure returns (bytes32) {
        return validatorFields[VALIDATOR_WITHDRAWAL_CREDENTIALS_INDEX];
    }

    /// @dev Retrieves a validator's effective balance (in gwei)
    function getEffectiveBalanceGwei(bytes32[] memory validatorFields) internal pure returns (uint64) {
        return Endian.fromLittleEndianUint64(validatorFields[VALIDATOR_BALANCE_INDEX]);
    }

    /// @dev Retrieves a validator's activation epoch
    function getActivationEpoch(bytes32[] memory validatorFields) internal pure returns (uint64) {
        return Endian.fromLittleEndianUint64(validatorFields[VALIDATOR_ACTIVATION_EPOCH_INDEX]);
    }

    /// @dev Retrieves true IFF a validator is marked slashed
    function isValidatorSlashed(bytes32[] memory validatorFields) internal pure returns (bool) {
        return validatorFields[VALIDATOR_SLASHED_INDEX] != 0;
    }

    /// @dev Retrieves a validator's exit epoch
    function getExitEpoch(bytes32[] memory validatorFields) internal pure returns (uint64) {
        return Endian.fromLittleEndianUint64(validatorFields[VALIDATOR_EXIT_EPOCH_INDEX]);
    }
}

// lib/openzeppelin-contracts/contracts/interfaces/IERC4626.sol

// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC4626.sol)

/**
 * @dev Interface of the ERC-4626 "Tokenized Vault Standard", as defined in
 * https://eips.ethereum.org/EIPS/eip-4626[ERC-4626].
 */
interface IERC4626 is IERC20, IERC20Metadata {
    event Deposit(address indexed sender, address indexed owner, uint256 assets, uint256 shares);

    event Withdraw(
        address indexed sender,
        address indexed receiver,
        address indexed owner,
        uint256 assets,
        uint256 shares
    );

    /**
     * @dev Returns the address of the underlying token used for the Vault for accounting, depositing, and withdrawing.
     *
     * - MUST be an ERC-20 token contract.
     * - MUST NOT revert.
     */
    function asset() external view returns (address assetTokenAddress);

    /**
     * @dev Returns the total amount of the underlying asset that is “managed” by Vault.
     *
     * - SHOULD include any compounding that occurs from yield.
     * - MUST be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT revert.
     */
    function totalAssets() external view returns (uint256 totalManagedAssets);

    /**
     * @dev Returns the amount of shares that the Vault would exchange for the amount of assets provided, in an ideal
     * scenario where all the conditions are met.
     *
     * - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT reflect slippage or other on-chain conditions, when performing the actual exchange.
     * - MUST NOT revert.
     *
     * NOTE: This calculation MAY NOT reflect the “per-user” price-per-share, and instead should reflect the
     * “average-user’s” price-per-share, meaning what the average user should expect to see when exchanging to and
     * from.
     */
    function convertToShares(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Returns the amount of assets that the Vault would exchange for the amount of shares provided, in an ideal
     * scenario where all the conditions are met.
     *
     * - MUST NOT be inclusive of any fees that are charged against assets in the Vault.
     * - MUST NOT show any variations depending on the caller.
     * - MUST NOT reflect slippage or other on-chain conditions, when performing the actual exchange.
     * - MUST NOT revert.
     *
     * NOTE: This calculation MAY NOT reflect the “per-user” price-per-share, and instead should reflect the
     * “average-user’s” price-per-share, meaning what the average user should expect to see when exchanging to and
     * from.
     */
    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Returns the maximum amount of the underlying asset that can be deposited into the Vault for the receiver,
     * through a deposit call.
     *
     * - MUST return a limited value if receiver is subject to some deposit limit.
     * - MUST return 2 ** 256 - 1 if there is no limit on the maximum amount of assets that may be deposited.
     * - MUST NOT revert.
     */
    function maxDeposit(address receiver) external view returns (uint256 maxAssets);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their deposit at the current block, given
     * current on-chain conditions.
     *
     * - MUST return as close to and no more than the exact amount of Vault shares that would be minted in a deposit
     *   call in the same transaction. I.e. deposit should return the same or more shares as previewDeposit if called
     *   in the same transaction.
     * - MUST NOT account for deposit limits like those returned from maxDeposit and should always act as though the
     *   deposit would be accepted, regardless if the user has enough tokens approved, etc.
     * - MUST be inclusive of deposit fees. Integrators should be aware of the existence of deposit fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToShares and previewDeposit SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by depositing.
     */
    function previewDeposit(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Mints shares Vault shares to receiver by depositing exactly amount of underlying tokens.
     *
     * - MUST emit the Deposit event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   deposit execution, and are accounted for during deposit.
     * - MUST revert if all of assets cannot be deposited (due to deposit limit being reached, slippage, the user not
     *   approving enough underlying tokens to the Vault contract, etc).
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault’s underlying asset token.
     */
    function deposit(uint256 assets, address receiver) external returns (uint256 shares);

    /**
     * @dev Returns the maximum amount of the Vault shares that can be minted for the receiver, through a mint call.
     * - MUST return a limited value if receiver is subject to some mint limit.
     * - MUST return 2 ** 256 - 1 if there is no limit on the maximum amount of shares that may be minted.
     * - MUST NOT revert.
     */
    function maxMint(address receiver) external view returns (uint256 maxShares);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their mint at the current block, given
     * current on-chain conditions.
     *
     * - MUST return as close to and no fewer than the exact amount of assets that would be deposited in a mint call
     *   in the same transaction. I.e. mint should return the same or fewer assets as previewMint if called in the
     *   same transaction.
     * - MUST NOT account for mint limits like those returned from maxMint and should always act as though the mint
     *   would be accepted, regardless if the user has enough tokens approved, etc.
     * - MUST be inclusive of deposit fees. Integrators should be aware of the existence of deposit fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToAssets and previewMint SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by minting.
     */
    function previewMint(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Mints exactly shares Vault shares to receiver by depositing amount of underlying tokens.
     *
     * - MUST emit the Deposit event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the mint
     *   execution, and are accounted for during mint.
     * - MUST revert if all of shares cannot be minted (due to deposit limit being reached, slippage, the user not
     *   approving enough underlying tokens to the Vault contract, etc).
     *
     * NOTE: most implementations will require pre-approval of the Vault with the Vault’s underlying asset token.
     */
    function mint(uint256 shares, address receiver) external returns (uint256 assets);

    /**
     * @dev Returns the maximum amount of the underlying asset that can be withdrawn from the owner balance in the
     * Vault, through a withdraw call.
     *
     * - MUST return a limited value if owner is subject to some withdrawal limit or timelock.
     * - MUST NOT revert.
     */
    function maxWithdraw(address owner) external view returns (uint256 maxAssets);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their withdrawal at the current block,
     * given current on-chain conditions.
     *
     * - MUST return as close to and no fewer than the exact amount of Vault shares that would be burned in a withdraw
     *   call in the same transaction. I.e. withdraw should return the same or fewer shares as previewWithdraw if
     *   called
     *   in the same transaction.
     * - MUST NOT account for withdrawal limits like those returned from maxWithdraw and should always act as though
     *   the withdrawal would be accepted, regardless if the user has enough shares, etc.
     * - MUST be inclusive of withdrawal fees. Integrators should be aware of the existence of withdrawal fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToShares and previewWithdraw SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by depositing.
     */
    function previewWithdraw(uint256 assets) external view returns (uint256 shares);

    /**
     * @dev Burns shares from owner and sends exactly assets of underlying tokens to receiver.
     *
     * - MUST emit the Withdraw event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   withdraw execution, and are accounted for during withdraw.
     * - MUST revert if all of assets cannot be withdrawn (due to withdrawal limit being reached, slippage, the owner
     *   not having enough shares, etc).
     *
     * Note that some implementations will require pre-requesting to the Vault before a withdrawal may be performed.
     * Those methods should be performed separately.
     */
    function withdraw(uint256 assets, address receiver, address owner) external returns (uint256 shares);

    /**
     * @dev Returns the maximum amount of Vault shares that can be redeemed from the owner balance in the Vault,
     * through a redeem call.
     *
     * - MUST return a limited value if owner is subject to some withdrawal limit or timelock.
     * - MUST return balanceOf(owner) if owner is not subject to any withdrawal limit or timelock.
     * - MUST NOT revert.
     */
    function maxRedeem(address owner) external view returns (uint256 maxShares);

    /**
     * @dev Allows an on-chain or off-chain user to simulate the effects of their redeemption at the current block,
     * given current on-chain conditions.
     *
     * - MUST return as close to and no more than the exact amount of assets that would be withdrawn in a redeem call
     *   in the same transaction. I.e. redeem should return the same or more assets as previewRedeem if called in the
     *   same transaction.
     * - MUST NOT account for redemption limits like those returned from maxRedeem and should always act as though the
     *   redemption would be accepted, regardless if the user has enough shares, etc.
     * - MUST be inclusive of withdrawal fees. Integrators should be aware of the existence of withdrawal fees.
     * - MUST NOT revert.
     *
     * NOTE: any unfavorable discrepancy between convertToAssets and previewRedeem SHOULD be considered slippage in
     * share price or some other type of condition, meaning the depositor will lose assets by redeeming.
     */
    function previewRedeem(uint256 shares) external view returns (uint256 assets);

    /**
     * @dev Burns exactly shares from owner and sends assets of underlying tokens to receiver.
     *
     * - MUST emit the Withdraw event.
     * - MAY support an additional flow in which the underlying tokens are owned by the Vault contract before the
     *   redeem execution, and are accounted for during redeem.
     * - MUST revert if all of shares cannot be redeemed (due to withdrawal limit being reached, slippage, the owner
     *   not having enough shares, etc).
     *
     * NOTE: some implementations will require pre-requesting to the Vault before a withdrawal may be performed.
     * Those methods should be performed separately.
     */
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256 assets);
}

// lib/openzeppelin-contracts-upgradeable/contracts/utils/introspection/ERC165Upgradeable.sol

// OpenZeppelin Contracts (last updated v5.0.0) (utils/introspection/ERC165.sol)

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC-165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 */
abstract contract ERC165Upgradeable is Initializable, IERC165 {
    function __ERC165_init() internal onlyInitializing {
    }

    function __ERC165_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {
        return interfaceId == type(IERC165).interfaceId;
    }
}

// src/interfaces/IRedemptionAssetsVault.sol

interface IRedemptionAssetsVault {

    // Events
    event AssetsDeposited( address indexed asset, address indexed depositor, uint256 amount);
    event AssetTransferred(address indexed asset, address indexed redeemer, address indexed to, uint256 amount);
    event AssetWithdrawn(address indexed asset, address indexed redeemer, address indexed to, uint256 amount);
    event TotalAssetsTransferred(address indexed asset, address indexed from, address indexed to, uint256 amount);

    /// @notice Transfers redemption assets to a specified address based on redemption.
    /// @dev This is only for INTERNAL USE
    /// @param to The address to which the assets will be transferred.
    /// @param amount The amount in unit of account
    /// @param data Extra data payload for redemption request
    function transferRedemptionAssets(address to, uint256 amount, bytes calldata data) external;

    /// @notice Withdraws redemption assets from the queue's balance
    /// @param amount The amount in unit of account
    function withdrawRedemptionAssets(uint256 amount) external;

    /// @notice Retrieves the current redemption rate for the asset in the unit of account.
    /// @return The current redemption rate
    function redemptionRate() external view returns (uint256);

    /// @notice Gets the total amount of redemption assets available for withdrawal in the unit of account.
    /// @return The available amount of redemption assets
    function availableRedemptionAssets() external view returns (uint256);
}

// lib/eigenlayer-contracts/src/contracts/interfaces/IDelegationManager.sol

/**
 * @title DelegationManager
 * @author Layr Labs, Inc.
 * @notice Terms of Service: https://docs.eigenlayer.xyz/overview/terms-of-service
 * @notice  This is the contract for delegation in EigenLayer. The main functionalities of this contract are
 * - enabling anyone to register as an operator in EigenLayer
 * - allowing operators to specify parameters related to stakers who delegate to them
 * - enabling any staker to delegate its stake to the operator of its choice (a given staker can only delegate to a single operator at a time)
 * - enabling a staker to undelegate its assets from the operator it is delegated to (performed as part of the withdrawal process, initiated through the StrategyManager)
 */
interface IDelegationManager is ISignatureUtils {
    // @notice Struct used for storing information about a single operator who has registered with EigenLayer
    struct OperatorDetails {
        /// @notice DEPRECATED -- this field is no longer used, payments are handled in PaymentCoordinator.sol
        address __deprecated_earningsReceiver;
        /**
         * @notice Address to verify signatures when a staker wishes to delegate to the operator, as well as controlling "forced undelegations".
         * @dev Signature verification follows these rules:
         * 1) If this address is left as address(0), then any staker will be free to delegate to the operator, i.e. no signature verification will be performed.
         * 2) If this address is an EOA (i.e. it has no code), then we follow standard ECDSA signature verification for delegations to the operator.
         * 3) If this address is a contract (i.e. it has code) then we forward a call to the contract and verify that it returns the correct EIP-1271 "magic value".
         */
        address delegationApprover;
        /**
         * @notice A minimum delay -- measured in blocks -- enforced between:
         * 1) the operator signalling their intent to register for a service, via calling `Slasher.optIntoSlashing`
         * and
         * 2) the operator completing registration for the service, via the service ultimately calling `Slasher.recordFirstStakeUpdate`
         * @dev note that for a specific operator, this value *cannot decrease*, i.e. if the operator wishes to modify their OperatorDetails,
         * then they are only allowed to either increase this value or keep it the same.
         */
        uint32 stakerOptOutWindowBlocks;
    }

    /**
     * @notice Abstract struct used in calculating an EIP712 signature for a staker to approve that they (the staker themselves) delegate to a specific operator.
     * @dev Used in computing the `STAKER_DELEGATION_TYPEHASH` and as a reference in the computation of the stakerDigestHash in the `delegateToBySignature` function.
     */
    struct StakerDelegation {
        // the staker who is delegating
        address staker;
        // the operator being delegated to
        address operator;
        // the staker's nonce
        uint256 nonce;
        // the expiration timestamp (UTC) of the signature
        uint256 expiry;
    }

    /**
     * @notice Abstract struct used in calculating an EIP712 signature for an operator's delegationApprover to approve that a specific staker delegate to the operator.
     * @dev Used in computing the `DELEGATION_APPROVAL_TYPEHASH` and as a reference in the computation of the approverDigestHash in the `_delegate` function.
     */
    struct DelegationApproval {
        // the staker who is delegating
        address staker;
        // the operator being delegated to
        address operator;
        // the operator's provided salt
        bytes32 salt;
        // the expiration timestamp (UTC) of the signature
        uint256 expiry;
    }

    /**
     * Struct type used to specify an existing queued withdrawal. Rather than storing the entire struct, only a hash is stored.
     * In functions that operate on existing queued withdrawals -- e.g. completeQueuedWithdrawal`, the data is resubmitted and the hash of the submitted
     * data is computed by `calculateWithdrawalRoot` and checked against the stored hash in order to confirm the integrity of the submitted data.
     */
    struct Withdrawal {
        // The address that originated the Withdrawal
        address staker;
        // The address that the staker was delegated to at the time that the Withdrawal was created
        address delegatedTo;
        // The address that can complete the Withdrawal + will receive funds when completing the withdrawal
        address withdrawer;
        // Nonce used to guarantee that otherwise identical withdrawals have unique hashes
        uint256 nonce;
        // Block number when the Withdrawal was created
        uint32 startBlock;
        // Array of strategies that the Withdrawal contains
        IStrategy[] strategies;
        // Array containing the amount of shares in each Strategy in the `strategies` array
        uint256[] shares;
    }

    struct QueuedWithdrawalParams {
        // Array of strategies that the QueuedWithdrawal contains
        IStrategy[] strategies;
        // Array containing the amount of shares in each Strategy in the `strategies` array
        uint256[] shares;
        // The address of the withdrawer
        address withdrawer;
    }

    // @notice Emitted when a new operator registers in EigenLayer and provides their OperatorDetails.
    event OperatorRegistered(address indexed operator, OperatorDetails operatorDetails);

    /// @notice Emitted when an operator updates their OperatorDetails to @param newOperatorDetails
    event OperatorDetailsModified(address indexed operator, OperatorDetails newOperatorDetails);

    /**
     * @notice Emitted when @param operator indicates that they are updating their MetadataURI string
     * @dev Note that these strings are *never stored in storage* and are instead purely emitted in events for off-chain indexing
     */
    event OperatorMetadataURIUpdated(address indexed operator, string metadataURI);

    /// @notice Emitted whenever an operator's shares are increased for a given strategy. Note that shares is the delta in the operator's shares.
    event OperatorSharesIncreased(address indexed operator, address staker, IStrategy strategy, uint256 shares);

    /// @notice Emitted whenever an operator's shares are decreased for a given strategy. Note that shares is the delta in the operator's shares.
    event OperatorSharesDecreased(address indexed operator, address staker, IStrategy strategy, uint256 shares);

    /// @notice Emitted when @param staker delegates to @param operator.
    event StakerDelegated(address indexed staker, address indexed operator);

    /// @notice Emitted when @param staker undelegates from @param operator.
    event StakerUndelegated(address indexed staker, address indexed operator);

    /// @notice Emitted when @param staker is undelegated via a call not originating from the staker themself
    event StakerForceUndelegated(address indexed staker, address indexed operator);

    /**
     * @notice Emitted when a new withdrawal is queued.
     * @param withdrawalRoot Is the hash of the `withdrawal`.
     * @param withdrawal Is the withdrawal itself.
     */
    event WithdrawalQueued(bytes32 withdrawalRoot, Withdrawal withdrawal);

    /// @notice Emitted when a queued withdrawal is completed
    event WithdrawalCompleted(bytes32 withdrawalRoot);

    /// @notice Emitted when the `minWithdrawalDelayBlocks` variable is modified from `previousValue` to `newValue`.
    event MinWithdrawalDelayBlocksSet(uint256 previousValue, uint256 newValue);

    /// @notice Emitted when the `strategyWithdrawalDelayBlocks` variable is modified from `previousValue` to `newValue`.
    event StrategyWithdrawalDelayBlocksSet(IStrategy strategy, uint256 previousValue, uint256 newValue);

    /**
     * @notice Registers the caller as an operator in EigenLayer.
     * @param registeringOperatorDetails is the `OperatorDetails` for the operator.
     * @param metadataURI is a URI for the operator's metadata, i.e. a link providing more details on the operator.
     *
     * @dev Once an operator is registered, they cannot 'deregister' as an operator, and they will forever be considered "delegated to themself".
     * @dev Note that the `metadataURI` is *never stored * and is only emitted in the `OperatorMetadataURIUpdated` event
     */
    function registerAsOperator(
        OperatorDetails calldata registeringOperatorDetails,
        string calldata metadataURI
    ) external;

    /**
     * @notice Updates an operator's stored `OperatorDetails`.
     * @param newOperatorDetails is the updated `OperatorDetails` for the operator, to replace their current OperatorDetails`.
     *
     * @dev The caller must have previously registered as an operator in EigenLayer.
     */
    function modifyOperatorDetails(OperatorDetails calldata newOperatorDetails) external;

    /**
     * @notice Called by an operator to emit an `OperatorMetadataURIUpdated` event indicating the information has updated.
     * @param metadataURI The URI for metadata associated with an operator
     * @dev Note that the `metadataURI` is *never stored * and is only emitted in the `OperatorMetadataURIUpdated` event
     */
    function updateOperatorMetadataURI(string calldata metadataURI) external;

    /**
     * @notice Caller delegates their stake to an operator.
     * @param operator The account (`msg.sender`) is delegating its assets to for use in serving applications built on EigenLayer.
     * @param approverSignatureAndExpiry Verifies the operator approves of this delegation
     * @param approverSalt A unique single use value tied to an individual signature.
     * @dev The approverSignatureAndExpiry is used in the event that:
     *          1) the operator's `delegationApprover` address is set to a non-zero value.
     *                  AND
     *          2) neither the operator nor their `delegationApprover` is the `msg.sender`, since in the event that the operator
     *             or their delegationApprover is the `msg.sender`, then approval is assumed.
     * @dev In the event that `approverSignatureAndExpiry` is not checked, its content is ignored entirely; it's recommended to use an empty input
     * in this case to save on complexity + gas costs
     */
    function delegateTo(
        address operator,
        SignatureWithExpiry memory approverSignatureAndExpiry,
        bytes32 approverSalt
    ) external;

    /**
     * @notice Caller delegates a staker's stake to an operator with valid signatures from both parties.
     * @param staker The account delegating stake to an `operator` account
     * @param operator The account (`staker`) is delegating its assets to for use in serving applications built on EigenLayer.
     * @param stakerSignatureAndExpiry Signed data from the staker authorizing delegating stake to an operator
     * @param approverSignatureAndExpiry is a parameter that will be used for verifying that the operator approves of this delegation action in the event that:
     * @param approverSalt Is a salt used to help guarantee signature uniqueness. Each salt can only be used once by a given approver.
     *
     * @dev If `staker` is an EOA, then `stakerSignature` is verified to be a valid ECDSA stakerSignature from `staker`, indicating their intention for this action.
     * @dev If `staker` is a contract, then `stakerSignature` will be checked according to EIP-1271.
     * @dev the operator's `delegationApprover` address is set to a non-zero value.
     * @dev neither the operator nor their `delegationApprover` is the `msg.sender`, since in the event that the operator or their delegationApprover
     * is the `msg.sender`, then approval is assumed.
     * @dev This function will revert if the current `block.timestamp` is equal to or exceeds the expiry
     * @dev In the case that `approverSignatureAndExpiry` is not checked, its content is ignored entirely; it's recommended to use an empty input
     * in this case to save on complexity + gas costs
     */
    function delegateToBySignature(
        address staker,
        address operator,
        SignatureWithExpiry memory stakerSignatureAndExpiry,
        SignatureWithExpiry memory approverSignatureAndExpiry,
        bytes32 approverSalt
    ) external;

    /**
     * @notice Undelegates the staker from the operator who they are delegated to. Puts the staker into the "undelegation limbo" mode of the EigenPodManager
     * and queues a withdrawal of all of the staker's shares in the StrategyManager (to the staker), if necessary.
     * @param staker The account to be undelegated.
     * @return withdrawalRoot The root of the newly queued withdrawal, if a withdrawal was queued. Otherwise just bytes32(0).
     *
     * @dev Reverts if the `staker` is also an operator, since operators are not allowed to undelegate from themselves.
     * @dev Reverts if the caller is not the staker, nor the operator who the staker is delegated to, nor the operator's specified "delegationApprover"
     * @dev Reverts if the `staker` is already undelegated.
     */
    function undelegate(address staker) external returns (bytes32[] memory withdrawalRoot);

    /**
     * Allows a staker to withdraw some shares. Withdrawn shares/strategies are immediately removed
     * from the staker. If the staker is delegated, withdrawn shares/strategies are also removed from
     * their operator.
     *
     * All withdrawn shares/strategies are placed in a queue and can be fully withdrawn after a delay.
     */
    function queueWithdrawals(QueuedWithdrawalParams[] calldata queuedWithdrawalParams)
        external
        returns (bytes32[] memory);

    /**
     * @notice Used to complete the specified `withdrawal`. The caller must match `withdrawal.withdrawer`
     * @param withdrawal The Withdrawal to complete.
     * @param tokens Array in which the i-th entry specifies the `token` input to the 'withdraw' function of the i-th Strategy in the `withdrawal.strategies` array.
     * This input can be provided with zero length if `receiveAsTokens` is set to 'false' (since in that case, this input will be unused)
     * @param middlewareTimesIndex is the index in the operator that the staker who triggered the withdrawal was delegated to's middleware times array
     * @param receiveAsTokens If true, the shares specified in the withdrawal will be withdrawn from the specified strategies themselves
     * and sent to the caller, through calls to `withdrawal.strategies[i].withdraw`. If false, then the shares in the specified strategies
     * will simply be transferred to the caller directly.
     * @dev middlewareTimesIndex should be calculated off chain before calling this function by finding the first index that satisfies `slasher.canWithdraw`
     * @dev beaconChainETHStrategy shares are non-transferrable, so if `receiveAsTokens = false` and `withdrawal.withdrawer != withdrawal.staker`, note that
     * any beaconChainETHStrategy shares in the `withdrawal` will be _returned to the staker_, rather than transferred to the withdrawer, unlike shares in
     * any other strategies, which will be transferred to the withdrawer.
     */
    function completeQueuedWithdrawal(
        Withdrawal calldata withdrawal,
        IERC20[] calldata tokens,
        uint256 middlewareTimesIndex,
        bool receiveAsTokens
    ) external;

    /**
     * @notice Array-ified version of `completeQueuedWithdrawal`.
     * Used to complete the specified `withdrawals`. The function caller must match `withdrawals[...].withdrawer`
     * @param withdrawals The Withdrawals to complete.
     * @param tokens Array of tokens for each Withdrawal. See `completeQueuedWithdrawal` for the usage of a single array.
     * @param middlewareTimesIndexes One index to reference per Withdrawal. See `completeQueuedWithdrawal` for the usage of a single index.
     * @param receiveAsTokens Whether or not to complete each withdrawal as tokens. See `completeQueuedWithdrawal` for the usage of a single boolean.
     * @dev See `completeQueuedWithdrawal` for relevant dev tags
     */
    function completeQueuedWithdrawals(
        Withdrawal[] calldata withdrawals,
        IERC20[][] calldata tokens,
        uint256[] calldata middlewareTimesIndexes,
        bool[] calldata receiveAsTokens
    ) external;

    /**
     * @notice Increases a staker's delegated share balance in a strategy.
     * @param staker The address to increase the delegated shares for their operator.
     * @param strategy The strategy in which to increase the delegated shares.
     * @param shares The number of shares to increase.
     *
     * @dev *If the staker is actively delegated*, then increases the `staker`'s delegated shares in `strategy` by `shares`. Otherwise does nothing.
     * @dev Callable only by the StrategyManager or EigenPodManager.
     */
    function increaseDelegatedShares(address staker, IStrategy strategy, uint256 shares) external;

    /**
     * @notice Decreases a staker's delegated share balance in a strategy.
     * @param staker The address to increase the delegated shares for their operator.
     * @param strategy The strategy in which to decrease the delegated shares.
     * @param shares The number of shares to decrease.
     *
     * @dev *If the staker is actively delegated*, then decreases the `staker`'s delegated shares in `strategy` by `shares`. Otherwise does nothing.
     * @dev Callable only by the StrategyManager or EigenPodManager.
     */
    function decreaseDelegatedShares(address staker, IStrategy strategy, uint256 shares) external;

    /**
     * @notice returns the address of the operator that `staker` is delegated to.
     * @notice Mapping: staker => operator whom the staker is currently delegated to.
     * @dev Note that returning address(0) indicates that the staker is not actively delegated to any operator.
     */
    function delegatedTo(address staker) external view returns (address);

    /**
     * @notice Returns the OperatorDetails struct associated with an `operator`.
     */
    function operatorDetails(address operator) external view returns (OperatorDetails memory);

    /**
     * @notice Returns the delegationApprover account for an operator
     */
    function delegationApprover(address operator) external view returns (address);

    /**
     * @notice Returns the stakerOptOutWindowBlocks for an operator
     */
    function stakerOptOutWindowBlocks(address operator) external view returns (uint256);

    /**
     * @notice Given array of strategies, returns array of shares for the operator
     */
    function getOperatorShares(
        address operator,
        IStrategy[] memory strategies
    ) external view returns (uint256[] memory);

    /**
     * @notice Given a list of strategies, return the minimum number of blocks that must pass to withdraw
     * from all the inputted strategies. Return value is >= minWithdrawalDelayBlocks as this is the global min withdrawal delay.
     * @param strategies The strategies to check withdrawal delays for
     */
    function getWithdrawalDelay(IStrategy[] calldata strategies) external view returns (uint256);

    /**
     * @notice returns the total number of shares in `strategy` that are delegated to `operator`.
     * @notice Mapping: operator => strategy => total number of shares in the strategy delegated to the operator.
     * @dev By design, the following invariant should hold for each Strategy:
     * (operator's shares in delegation manager) = sum (shares above zero of all stakers delegated to operator)
     * = sum (delegateable shares of all stakers delegated to the operator)
     */
    function operatorShares(address operator, IStrategy strategy) external view returns (uint256);

    /**
     * @notice Returns 'true' if `staker` *is* actively delegated, and 'false' otherwise.
     */
    function isDelegated(address staker) external view returns (bool);

    /**
     * @notice Returns true is an operator has previously registered for delegation.
     */
    function isOperator(address operator) external view returns (bool);

    /// @notice Mapping: staker => number of signed delegation nonces (used in `delegateToBySignature`) from the staker that the contract has already checked
    function stakerNonce(address staker) external view returns (uint256);

    /**
     * @notice Mapping: delegationApprover => 32-byte salt => whether or not the salt has already been used by the delegationApprover.
     * @dev Salts are used in the `delegateTo` and `delegateToBySignature` functions. Note that these functions only process the delegationApprover's
     * signature + the provided salt if the operator being delegated to has specified a nonzero address as their `delegationApprover`.
     */
    function delegationApproverSaltIsSpent(address _delegationApprover, bytes32 salt) external view returns (bool);

    /**
     * @notice Minimum delay enforced by this contract for completing queued withdrawals. Measured in blocks, and adjustable by this contract's owner,
     * up to a maximum of `MAX_WITHDRAWAL_DELAY_BLOCKS`. Minimum value is 0 (i.e. no delay enforced).
     * Note that strategies each have a separate withdrawal delay, which can be greater than this value. So the minimum number of blocks that must pass
     * to withdraw a strategy is MAX(minWithdrawalDelayBlocks, strategyWithdrawalDelayBlocks[strategy])
     */
    function minWithdrawalDelayBlocks() external view returns (uint256);

    /**
     * @notice Minimum delay enforced by this contract per Strategy for completing queued withdrawals. Measured in blocks, and adjustable by this contract's owner,
     * up to a maximum of `MAX_WITHDRAWAL_DELAY_BLOCKS`. Minimum value is 0 (i.e. no delay enforced).
     */
    function strategyWithdrawalDelayBlocks(IStrategy strategy) external view returns (uint256);

    /// @notice return address of the beaconChainETHStrategy
    function beaconChainETHStrategy() external view returns (IStrategy);

    /**
     * @notice Calculates the digestHash for a `staker` to sign to delegate to an `operator`
     * @param staker The signing staker
     * @param operator The operator who is being delegated to
     * @param expiry The desired expiry time of the staker's signature
     */
    function calculateCurrentStakerDelegationDigestHash(
        address staker,
        address operator,
        uint256 expiry
    ) external view returns (bytes32);

    /**
     * @notice Calculates the digest hash to be signed and used in the `delegateToBySignature` function
     * @param staker The signing staker
     * @param _stakerNonce The nonce of the staker. In practice we use the staker's current nonce, stored at `stakerNonce[staker]`
     * @param operator The operator who is being delegated to
     * @param expiry The desired expiry time of the staker's signature
     */
    function calculateStakerDelegationDigestHash(
        address staker,
        uint256 _stakerNonce,
        address operator,
        uint256 expiry
    ) external view returns (bytes32);

    /**
     * @notice Calculates the digest hash to be signed by the operator's delegationApprove and used in the `delegateTo` and `delegateToBySignature` functions.
     * @param staker The account delegating their stake
     * @param operator The account receiving delegated stake
     * @param _delegationApprover the operator's `delegationApprover` who will be signing the delegationHash (in general)
     * @param approverSalt A unique and single use value associated with the approver signature.
     * @param expiry Time after which the approver's signature becomes invalid
     */
    function calculateDelegationApprovalDigestHash(
        address staker,
        address operator,
        address _delegationApprover,
        bytes32 approverSalt,
        uint256 expiry
    ) external view returns (bytes32);

    /// @notice The EIP-712 typehash for the contract's domain
    function DOMAIN_TYPEHASH() external view returns (bytes32);

    /// @notice The EIP-712 typehash for the StakerDelegation struct used by the contract
    function STAKER_DELEGATION_TYPEHASH() external view returns (bytes32);

    /// @notice The EIP-712 typehash for the DelegationApproval struct used by the contract
    function DELEGATION_APPROVAL_TYPEHASH() external view returns (bytes32);

    /**
     * @notice Getter function for the current EIP-712 domain separator for this contract.
     *
     * @dev The domain separator will change in the event of a fork that changes the ChainID.
     * @dev By introducing a domain separator the DApp developers are guaranteed that there can be no signature collision.
     * for more detailed information please read EIP-712.
     */
    function domainSeparator() external view returns (bytes32);

    /// @notice Mapping: staker => cumulative number of queued withdrawals they have ever initiated.
    /// @dev This only increments (doesn't decrement), and is used to help ensure that otherwise identical withdrawals have unique hashes.
    function cumulativeWithdrawalsQueued(address staker) external view returns (uint256);

    /// @notice Returns the keccak256 hash of `withdrawal`.
    function calculateWithdrawalRoot(Withdrawal memory withdrawal) external pure returns (bytes32);
}

// lib/openzeppelin-contracts/contracts/proxy/beacon/UpgradeableBeacon.sol

// OpenZeppelin Contracts (last updated v5.0.0) (proxy/beacon/UpgradeableBeacon.sol)

/**
 * @dev This contract is used in conjunction with one or more instances of {BeaconProxy} to determine their
 * implementation contract, which is where they will delegate all function calls.
 *
 * An owner is able to change the implementation the beacon points to, thus upgrading the proxies that use this beacon.
 */
contract UpgradeableBeacon is IBeacon, Ownable {
    address private _implementation;

    /**
     * @dev The `implementation` of the beacon is invalid.
     */
    error BeaconInvalidImplementation(address implementation);

    /**
     * @dev Emitted when the implementation returned by the beacon is changed.
     */
    event Upgraded(address indexed implementation);

    /**
     * @dev Sets the address of the initial implementation, and the initial owner who can upgrade the beacon.
     */
    constructor(address implementation_, address initialOwner) Ownable(initialOwner) {
        _setImplementation(implementation_);
    }

    /**
     * @dev Returns the current implementation address.
     */
    function implementation() public view virtual returns (address) {
        return _implementation;
    }

    /**
     * @dev Upgrades the beacon to a new implementation.
     *
     * Emits an {Upgraded} event.
     *
     * Requirements:
     *
     * - msg.sender must be the owner of the contract.
     * - `newImplementation` must be a contract.
     */
    function upgradeTo(address newImplementation) public virtual onlyOwner {
        _setImplementation(newImplementation);
    }

    /**
     * @dev Sets the implementation contract address for this beacon
     *
     * Requirements:
     *
     * - `newImplementation` must be a contract.
     */
    function _setImplementation(address newImplementation) private {
        if (newImplementation.code.length == 0) {
            revert BeaconInvalidImplementation(newImplementation);
        }
        _implementation = newImplementation;
        emit Upgraded(newImplementation);
    }
}

// lib/openzeppelin-contracts-upgradeable/contracts/access/AccessControlUpgradeable.sol

// OpenZeppelin Contracts (last updated v5.0.0) (access/AccessControl.sol)

/**
 * @dev Contract module that allows children to implement role-based access
 * control mechanisms. This is a lightweight version that doesn't allow enumerating role
 * members except through off-chain means by accessing the contract event logs. Some
 * applications may benefit from on-chain enumerability, for those cases see
 * {AccessControlEnumerable}.
 *
 * Roles are referred to by their `bytes32` identifier. These should be exposed
 * in the external API and be unique. The best way to achieve this is by
 * using `public constant` hash digests:
 *
 * ```solidity
 * bytes32 public constant MY_ROLE = keccak256("MY_ROLE");
 * ```
 *
 * Roles can be used to represent a set of permissions. To restrict access to a
 * function call, use {hasRole}:
 *
 * ```solidity
 * function foo() public {
 *     require(hasRole(MY_ROLE, msg.sender));
 *     ...
 * }
 * ```
 *
 * Roles can be granted and revoked dynamically via the {grantRole} and
 * {revokeRole} functions. Each role has an associated admin role, and only
 * accounts that have a role's admin role can call {grantRole} and {revokeRole}.
 *
 * By default, the admin role for all roles is `DEFAULT_ADMIN_ROLE`, which means
 * that only accounts with this role will be able to grant or revoke other
 * roles. More complex role relationships can be created by using
 * {_setRoleAdmin}.
 *
 * WARNING: The `DEFAULT_ADMIN_ROLE` is also its own admin: it has permission to
 * grant and revoke this role. Extra precautions should be taken to secure
 * accounts that have been granted it. We recommend using {AccessControlDefaultAdminRules}
 * to enforce additional security measures for this role.
 */
abstract contract AccessControlUpgradeable is Initializable, ContextUpgradeable, IAccessControl, ERC165Upgradeable {
    struct RoleData {
        mapping(address account => bool) hasRole;
        bytes32 adminRole;
    }

    bytes32 public constant DEFAULT_ADMIN_ROLE = 0x00;

    /// @custom:storage-location erc7201:openzeppelin.storage.AccessControl
    struct AccessControlStorage {
        mapping(bytes32 role => RoleData) _roles;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.AccessControl")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant AccessControlStorageLocation = 0x02dd7bc7dec4dceedda775e58dd541e08a116c6c53815c0bd028192f7b626800;

    function _getAccessControlStorage() private pure returns (AccessControlStorage storage $) {
        assembly {
            $.slot := AccessControlStorageLocation
        }
    }

    /**
     * @dev Modifier that checks that an account has a specific role. Reverts
     * with an {AccessControlUnauthorizedAccount} error including the required role.
     */
    modifier onlyRole(bytes32 role) {
        _checkRole(role);
        _;
    }

    function __AccessControl_init() internal onlyInitializing {
    }

    function __AccessControl_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IAccessControl).interfaceId || super.supportsInterface(interfaceId);
    }

    /**
     * @dev Returns `true` if `account` has been granted `role`.
     */
    function hasRole(bytes32 role, address account) public view virtual returns (bool) {
        AccessControlStorage storage $ = _getAccessControlStorage();
        return $._roles[role].hasRole[account];
    }

    /**
     * @dev Reverts with an {AccessControlUnauthorizedAccount} error if `_msgSender()`
     * is missing `role`. Overriding this function changes the behavior of the {onlyRole} modifier.
     */
    function _checkRole(bytes32 role) internal view virtual {
        _checkRole(role, _msgSender());
    }

    /**
     * @dev Reverts with an {AccessControlUnauthorizedAccount} error if `account`
     * is missing `role`.
     */
    function _checkRole(bytes32 role, address account) internal view virtual {
        if (!hasRole(role, account)) {
            revert AccessControlUnauthorizedAccount(account, role);
        }
    }

    /**
     * @dev Returns the admin role that controls `role`. See {grantRole} and
     * {revokeRole}.
     *
     * To change a role's admin, use {_setRoleAdmin}.
     */
    function getRoleAdmin(bytes32 role) public view virtual returns (bytes32) {
        AccessControlStorage storage $ = _getAccessControlStorage();
        return $._roles[role].adminRole;
    }

    /**
     * @dev Grants `role` to `account`.
     *
     * If `account` had not been already granted `role`, emits a {RoleGranted}
     * event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleGranted} event.
     */
    function grantRole(bytes32 role, address account) public virtual onlyRole(getRoleAdmin(role)) {
        _grantRole(role, account);
    }

    /**
     * @dev Revokes `role` from `account`.
     *
     * If `account` had been granted `role`, emits a {RoleRevoked} event.
     *
     * Requirements:
     *
     * - the caller must have ``role``'s admin role.
     *
     * May emit a {RoleRevoked} event.
     */
    function revokeRole(bytes32 role, address account) public virtual onlyRole(getRoleAdmin(role)) {
        _revokeRole(role, account);
    }

    /**
     * @dev Revokes `role` from the calling account.
     *
     * Roles are often managed via {grantRole} and {revokeRole}: this function's
     * purpose is to provide a mechanism for accounts to lose their privileges
     * if they are compromised (such as when a trusted device is misplaced).
     *
     * If the calling account had been revoked `role`, emits a {RoleRevoked}
     * event.
     *
     * Requirements:
     *
     * - the caller must be `callerConfirmation`.
     *
     * May emit a {RoleRevoked} event.
     */
    function renounceRole(bytes32 role, address callerConfirmation) public virtual {
        if (callerConfirmation != _msgSender()) {
            revert AccessControlBadConfirmation();
        }

        _revokeRole(role, callerConfirmation);
    }

    /**
     * @dev Sets `adminRole` as ``role``'s admin role.
     *
     * Emits a {RoleAdminChanged} event.
     */
    function _setRoleAdmin(bytes32 role, bytes32 adminRole) internal virtual {
        AccessControlStorage storage $ = _getAccessControlStorage();
        bytes32 previousAdminRole = getRoleAdmin(role);
        $._roles[role].adminRole = adminRole;
        emit RoleAdminChanged(role, previousAdminRole, adminRole);
    }

    /**
     * @dev Attempts to grant `role` to `account` and returns a boolean indicating if `role` was granted.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleGranted} event.
     */
    function _grantRole(bytes32 role, address account) internal virtual returns (bool) {
        AccessControlStorage storage $ = _getAccessControlStorage();
        if (!hasRole(role, account)) {
            $._roles[role].hasRole[account] = true;
            emit RoleGranted(role, account, _msgSender());
            return true;
        } else {
            return false;
        }
    }

    /**
     * @dev Attempts to revoke `role` to `account` and returns a boolean indicating if `role` was revoked.
     *
     * Internal function without access restriction.
     *
     * May emit a {RoleRevoked} event.
     */
    function _revokeRole(bytes32 role, address account) internal virtual returns (bool) {
        AccessControlStorage storage $ = _getAccessControlStorage();
        if (hasRole(role, account)) {
            $._roles[role].hasRole[account] = false;
            emit RoleRevoked(role, account, _msgSender());
            return true;
        } else {
            return false;
        }
    }
}

// lib/eigenlayer-contracts/src/contracts/interfaces/IEigenPod.sol

/**
 * @title The implementation contract used for restaking beacon chain ETH on EigenLayer
 * @author Layr Labs, Inc.
 * @notice Terms of Service: https://docs.eigenlayer.xyz/overview/terms-of-service
 * @dev Note that all beacon chain balances are stored as gwei within the beacon chain datastructures. We choose
 *   to account balances in terms of gwei in the EigenPod contract and convert to wei when making calls to other contracts
 */
interface IEigenPod {
    /**
     *
     *                                STRUCTS / ENUMS
     *
     */
    enum VALIDATOR_STATUS {
        INACTIVE, // doesnt exist
        ACTIVE, // staked on ethpos and withdrawal credentials are pointed to the EigenPod
        WITHDRAWN // withdrawn from the Beacon Chain

    }

    struct ValidatorInfo {
        // index of the validator in the beacon chain
        uint64 validatorIndex;
        // amount of beacon chain ETH restaked on EigenLayer in gwei
        uint64 restakedBalanceGwei;
        //timestamp of the validator's most recent balance update
        uint64 lastCheckpointedAt;
        // status of the validator
        VALIDATOR_STATUS status;
    }

    struct Checkpoint {
        bytes32 beaconBlockRoot;
        uint24 proofsRemaining;
        uint64 podBalanceGwei;
        int128 balanceDeltasGwei;
    }

    /**
     *
     *                                    EVENTS
     *
     */

    /// @notice Emitted when an ETH validator stakes via this eigenPod
    event EigenPodStaked(bytes pubkey);

    /// @notice Emitted when a pod owner updates the proof submitter address
    event ProofSubmitterUpdated(address prevProofSubmitter, address newProofSubmitter);

    /// @notice Emitted when an ETH validator's withdrawal credentials are successfully verified to be pointed to this eigenPod
    event ValidatorRestaked(uint40 validatorIndex);

    /// @notice Emitted when an ETH validator's  balance is proven to be updated.  Here newValidatorBalanceGwei
    //  is the validator's balance that is credited on EigenLayer.
    event ValidatorBalanceUpdated(uint40 validatorIndex, uint64 balanceTimestamp, uint64 newValidatorBalanceGwei);

    /// @notice Emitted when restaked beacon chain ETH is withdrawn from the eigenPod.
    event RestakedBeaconChainETHWithdrawn(address indexed recipient, uint256 amount);

    /// @notice Emitted when ETH is received via the `receive` fallback
    event NonBeaconChainETHReceived(uint256 amountReceived);

    /// @notice Emitted when a checkpoint is created
    event CheckpointCreated(
        uint64 indexed checkpointTimestamp, bytes32 indexed beaconBlockRoot, uint256 validatorCount
    );

    /// @notice Emitted when a checkpoint is finalized
    event CheckpointFinalized(uint64 indexed checkpointTimestamp, int256 totalShareDeltaWei);

    /// @notice Emitted when a validator is proven for a given checkpoint
    event ValidatorCheckpointed(uint64 indexed checkpointTimestamp, uint40 indexed validatorIndex);

    /// @notice Emitted when a validaor is proven to have 0 balance at a given checkpoint
    event ValidatorWithdrawn(uint64 indexed checkpointTimestamp, uint40 indexed validatorIndex);

    /**
     *
     *                       EXTERNAL STATE-CHANGING METHODS
     *
     */

    /// @notice Used to initialize the pointers to contracts crucial to the pod's functionality, in beacon proxy construction from EigenPodManager
    function initialize(address owner) external;

    /// @notice Called by EigenPodManager when the owner wants to create another ETH validator.
    function stake(bytes calldata pubkey, bytes calldata signature, bytes32 depositDataRoot) external payable;

    /**
     * @notice Transfers `amountWei` in ether from this contract to the specified `recipient` address
     * @notice Called by EigenPodManager to withdrawBeaconChainETH that has been added to the EigenPod's balance due to a withdrawal from the beacon chain.
     * @dev The podOwner must have already proved sufficient withdrawals, so that this pod's `withdrawableRestakedExecutionLayerGwei` exceeds the
     * `amountWei` input (when converted to GWEI).
     * @dev Reverts if `amountWei` is not a whole Gwei amount
     */
    function withdrawRestakedBeaconChainETH(address recipient, uint256 amount) external;

    /**
     * @dev Create a checkpoint used to prove this pod's active validator set. Checkpoints are completed
     * by submitting one checkpoint proof per ACTIVE validator. During the checkpoint process, the total
     * change in ACTIVE validator balance is tracked, and any validators with 0 balance are marked `WITHDRAWN`.
     * @dev Once finalized, the pod owner is awarded shares corresponding to:
     * - the total change in their ACTIVE validator balances
     * - any ETH in the pod not already awarded shares
     * @dev A checkpoint cannot be created if the pod already has an outstanding checkpoint. If
     * this is the case, the pod owner MUST complete the existing checkpoint before starting a new one.
     * @param revertIfNoBalance Forces a revert if the pod ETH balance is 0. This allows the pod owner
     * to prevent accidentally starting a checkpoint that will not increase their shares
     */
    function startCheckpoint(bool revertIfNoBalance) external;

    /**
     * @dev Progress the current checkpoint towards completion by submitting one or more validator
     * checkpoint proofs. Anyone can call this method to submit proofs towards the current checkpoint.
     * For each validator proven, the current checkpoint's `proofsRemaining` decreases.
     * @dev If the checkpoint's `proofsRemaining` reaches 0, the checkpoint is finalized.
     * (see `_updateCheckpoint` for more details)
     * @dev This method can only be called when there is a currently-active checkpoint.
     * @param balanceContainerProof proves the beacon's current balance container root against a checkpoint's `beaconBlockRoot`
     * @param proofs Proofs for one or more validator current balances against the `balanceContainerRoot`
     */
    function verifyCheckpointProofs(
        BeaconChainProofs.BalanceContainerProof calldata balanceContainerProof,
        BeaconChainProofs.BalanceProof[] calldata proofs
    ) external;

    /**
     * @dev Verify one or more validators have their withdrawal credentials pointed at this EigenPod, and award
     * shares based on their effective balance. Proven validators are marked `ACTIVE` within the EigenPod, and
     * future checkpoint proofs will need to include them.
     * @dev Withdrawal credential proofs MUST NOT be older than `currentCheckpointTimestamp`.
     * @dev Validators proven via this method MUST NOT have an exit epoch set already.
     * @param beaconTimestamp the beacon chain timestamp sent to the 4788 oracle contract. Corresponds
     * to the parent beacon block root against which the proof is verified.
     * @param stateRootProof proves a beacon state root against a beacon block root
     * @param validatorIndices a list of validator indices being proven
     * @param validatorFieldsProofs proofs of each validator's `validatorFields` against the beacon state root
     * @param validatorFields the fields of the beacon chain "Validator" container. See consensus specs for
     * details: https://github.com/ethereum/consensus-specs/blob/dev/specs/phase0/beacon-chain.md#validator
     */
    function verifyWithdrawalCredentials(
        uint64 beaconTimestamp,
        BeaconChainProofs.StateRootProof calldata stateRootProof,
        uint40[] calldata validatorIndices,
        bytes[] calldata validatorFieldsProofs,
        bytes32[][] calldata validatorFields
    ) external;

    /**
     * @dev Prove that one of this pod's active validators was slashed on the beacon chain. A successful
     * staleness proof allows the caller to start a checkpoint.
     *
     * @dev Note that in order to start a checkpoint, any existing checkpoint must already be completed!
     * (See `_startCheckpoint` for details)
     *
     * @dev Note that this method allows anyone to start a checkpoint as soon as a slashing occurs on the beacon
     * chain. This is intended to make it easier to external watchers to keep a pod's balance up to date.
     *
     * @dev Note too that beacon chain slashings are not instant. There is a delay between the initial slashing event
     * and the validator's final exit back to the execution layer. During this time, the validator's balance may or
     * may not drop further due to a correlation penalty. This method allows proof of a slashed validator
     * to initiate a checkpoint for as long as the validator remains on the beacon chain. Once the validator
     * has exited and been checkpointed at 0 balance, they are no longer "checkpoint-able" and cannot be proven
     * "stale" via this method.
     * See https://eth2book.info/capella/part3/transition/epoch/#slashings for more info.
     *
     * @param beaconTimestamp the beacon chain timestamp sent to the 4788 oracle contract. Corresponds
     * to the parent beacon block root against which the proof is verified.
     * @param stateRootProof proves a beacon state root against a beacon block root
     * @param proof the fields of the beacon chain "Validator" container, along with a merkle proof against
     * the beacon state root. See the consensus specs for more details:
     * https://github.com/ethereum/consensus-specs/blob/dev/specs/phase0/beacon-chain.md#validator
     *
     * @dev Staleness conditions:
     * - Validator's last checkpoint is older than `beaconTimestamp`
     * - Validator MUST be in `ACTIVE` status in the pod
     * - Validator MUST be slashed on the beacon chain
     */
    function verifyStaleBalance(
        uint64 beaconTimestamp,
        BeaconChainProofs.StateRootProof calldata stateRootProof,
        BeaconChainProofs.ValidatorProof calldata proof
    ) external;

    /// @notice called by owner of a pod to remove any ERC20s deposited in the pod
    function recoverTokens(IERC20[] memory tokenList, uint256[] memory amountsToWithdraw, address recipient) external;

    /// @notice Allows the owner of a pod to update the proof submitter, a permissioned
    /// address that can call `startCheckpoint` and `verifyWithdrawalCredentials`.
    /// @dev Note that EITHER the podOwner OR proofSubmitter can access these methods,
    /// so it's fine to set your proofSubmitter to 0 if you want the podOwner to be the
    /// only address that can call these methods.
    /// @param newProofSubmitter The new proof submitter address. If set to 0, only the
    /// pod owner will be able to call `startCheckpoint` and `verifyWithdrawalCredentials`
    function setProofSubmitter(address newProofSubmitter) external;

    /**
     *
     *                                VIEW METHODS
     *
     */

    /// @notice An address with permissions to call `startCheckpoint` and `verifyWithdrawalCredentials`, set
    /// by the podOwner. This role exists to allow a podOwner to designate a hot wallet that can call
    /// these methods, allowing the podOwner to remain a cold wallet that is only used to manage funds.
    /// @dev If this address is NOT set, only the podOwner can call `startCheckpoint` and `verifyWithdrawalCredentials`
    function proofSubmitter() external view returns (address);

    /// @notice the amount of execution layer ETH in this contract that is staked in EigenLayer (i.e. withdrawn from beaconchain but not EigenLayer),
    function withdrawableRestakedExecutionLayerGwei() external view returns (uint64);

    /// @notice The single EigenPodManager for EigenLayer
    function eigenPodManager() external view returns (IEigenPodManager);

    /// @notice The owner of this EigenPod
    function podOwner() external view returns (address);

    /// @notice Returns the validatorInfo struct for the provided pubkeyHash
    function validatorPubkeyHashToInfo(bytes32 validatorPubkeyHash) external view returns (ValidatorInfo memory);

    /// @notice Returns the validatorInfo struct for the provided pubkey
    function validatorPubkeyToInfo(bytes calldata validatorPubkey) external view returns (ValidatorInfo memory);

    /// @notice This returns the status of a given validator
    function validatorStatus(bytes32 pubkeyHash) external view returns (VALIDATOR_STATUS);

    /// @notice This returns the status of a given validator pubkey
    function validatorStatus(bytes calldata validatorPubkey) external view returns (VALIDATOR_STATUS);

    /// @notice Number of validators with proven withdrawal credentials, who do not have proven full withdrawals
    function activeValidatorCount() external view returns (uint256);

    /// @notice The timestamp of the last checkpoint finalized
    function lastCheckpointTimestamp() external view returns (uint64);

    /// @notice The timestamp of the currently-active checkpoint. Will be 0 if there is not active checkpoint
    function currentCheckpointTimestamp() external view returns (uint64);

    /// @notice Returns the currently-active checkpoint
    function currentCheckpoint() external view returns (Checkpoint memory);

    /// @notice For each checkpoint, the total balance attributed to exited validators, in gwei
    ///
    /// NOTE that the values added to this mapping are NOT guaranteed to capture the entirety of a validator's
    /// exit - rather, they capture the total change in a validator's balance when a checkpoint shows their
    /// balance change from nonzero to zero. While a change from nonzero to zero DOES guarantee that a validator
    /// has been fully exited, it is possible that the magnitude of this change does not capture what is
    /// typically thought of as a "full exit."
    ///
    /// For example:
    /// 1. Consider a validator was last checkpointed at 32 ETH before exiting. Once the exit has been processed,
    /// it is expected that the validator's exited balance is calculated to be `32 ETH`.
    /// 2. However, before `startCheckpoint` is called, a deposit is made to the validator for 1 ETH. The beacon
    /// chain will automatically withdraw this ETH, but not until the withdrawal sweep passes over the validator
    /// again. Until this occurs, the validator's current balance (used for checkpointing) is 1 ETH.
    /// 3. If `startCheckpoint` is called at this point, the balance delta calculated for this validator will be
    /// `-31 ETH`, and because the validator has a nonzero balance, it is not marked WITHDRAWN.
    /// 4. After the exit is processed by the beacon chain, a subsequent `startCheckpoint` and checkpoint proof
    /// will calculate a balance delta of `-1 ETH` and attribute a 1 ETH exit to the validator.
    ///
    /// If this edge case impacts your usecase, it should be possible to mitigate this by monitoring for deposits
    /// to your exited validators, and waiting to call `startCheckpoint` until those deposits have been automatically
    /// exited.
    ///
    /// Additional edge cases this mapping does not cover:
    /// - If a validator is slashed, their balance exited will reflect their original balance rather than the slashed amount
    /// - The final partial withdrawal for an exited validator will be likely be included in this mapping.
    ///   i.e. if a validator was last checkpointed at 32.1 ETH before exiting, the next checkpoint will calculate their
    ///   "exited" amount to be 32.1 ETH rather than 32 ETH.
    function checkpointBalanceExitedGwei(uint64) external view returns (uint64);

    /// @notice Query the 4788 oracle to get the parent block root of the slot with the given `timestamp`
    /// @param timestamp of the block for which the parent block root will be returned. MUST correspond
    /// to an existing slot within the last 24 hours. If the slot at `timestamp` was skipped, this method
    /// will revert.
    function getParentBlockRoot(uint64 timestamp) external view returns (bytes32);
}

// lib/eigenlayer-contracts/src/contracts/interfaces/IEigenPodManager.sol

/**
 * @title Interface for factory that creates and manages solo staking pods that have their withdrawal credentials pointed to EigenLayer.
 * @author Layr Labs, Inc.
 * @notice Terms of Service: https://docs.eigenlayer.xyz/overview/terms-of-service
 */
interface IEigenPodManager is IPausable {
    /// @notice Emitted to notify the deployment of an EigenPod
    event PodDeployed(address indexed eigenPod, address indexed podOwner);

    /// @notice Emitted to notify a deposit of beacon chain ETH recorded in the strategy manager
    event BeaconChainETHDeposited(address indexed podOwner, uint256 amount);

    /// @notice Emitted when the balance of an EigenPod is updated
    event PodSharesUpdated(address indexed podOwner, int256 sharesDelta);

    /// @notice Emitted every time the total shares of a pod are updated
    event NewTotalShares(address indexed podOwner, int256 newTotalShares);

    /// @notice Emitted when a withdrawal of beacon chain ETH is completed
    event BeaconChainETHWithdrawalCompleted(
        address indexed podOwner,
        uint256 shares,
        uint96 nonce,
        address delegatedAddress,
        address withdrawer,
        bytes32 withdrawalRoot
    );

    /**
     * @notice Creates an EigenPod for the sender.
     * @dev Function will revert if the `msg.sender` already has an EigenPod.
     * @dev Returns EigenPod address
     */
    function createPod() external returns (address);

    /**
     * @notice Stakes for a new beacon chain validator on the sender's EigenPod.
     * Also creates an EigenPod for the sender if they don't have one already.
     * @param pubkey The 48 bytes public key of the beacon chain validator.
     * @param signature The validator's signature of the deposit data.
     * @param depositDataRoot The root/hash of the deposit data for the validator's deposit.
     */
    function stake(bytes calldata pubkey, bytes calldata signature, bytes32 depositDataRoot) external payable;

    /**
     * @notice Changes the `podOwner`'s shares by `sharesDelta` and performs a call to the DelegationManager
     * to ensure that delegated shares are also tracked correctly
     * @param podOwner is the pod owner whose balance is being updated.
     * @param sharesDelta is the change in podOwner's beaconChainETHStrategy shares
     * @dev Callable only by the podOwner's EigenPod contract.
     * @dev Reverts if `sharesDelta` is not a whole Gwei amount
     */
    function recordBeaconChainETHBalanceUpdate(address podOwner, int256 sharesDelta) external;

    /// @notice Returns the address of the `podOwner`'s EigenPod if it has been deployed.
    function ownerToPod(address podOwner) external view returns (IEigenPod);

    /// @notice Returns the address of the `podOwner`'s EigenPod (whether it is deployed yet or not).
    function getPod(address podOwner) external view returns (IEigenPod);

    /// @notice The ETH2 Deposit Contract
    function ethPOS() external view returns (IETHPOSDeposit);

    /// @notice Beacon proxy to which the EigenPods point
    function eigenPodBeacon() external view returns (IBeacon);

    /// @notice EigenLayer's StrategyManager contract
    function strategyManager() external view returns (IStrategyManager);

    /// @notice EigenLayer's Slasher contract
    function slasher() external view returns (ISlasher);

    /// @notice Returns 'true' if the `podOwner` has created an EigenPod, and 'false' otherwise.
    function hasPod(address podOwner) external view returns (bool);

    /// @notice Returns the number of EigenPods that have been created
    function numPods() external view returns (uint256);

    /**
     * @notice Mapping from Pod owner owner to the number of shares they have in the virtual beacon chain ETH strategy.
     * @dev The share amount can become negative. This is necessary to accommodate the fact that a pod owner's virtual beacon chain ETH shares can
     * decrease between the pod owner queuing and completing a withdrawal.
     * When the pod owner's shares would otherwise increase, this "deficit" is decreased first _instead_.
     * Likewise, when a withdrawal is completed, this "deficit" is decreased and the withdrawal amount is decreased; We can think of this
     * as the withdrawal "paying off the deficit".
     */
    function podOwnerShares(address podOwner) external view returns (int256);

    /// @notice returns canonical, virtual beaconChainETH strategy
    function beaconChainETHStrategy() external view returns (IStrategy);

    /**
     * @notice Used by the DelegationManager to remove a pod owner's shares while they're in the withdrawal queue.
     * Simply decreases the `podOwner`'s shares by `shares`, down to a minimum of zero.
     * @dev This function reverts if it would result in `podOwnerShares[podOwner]` being less than zero, i.e. it is forbidden for this function to
     * result in the `podOwner` incurring a "share deficit". This behavior prevents a Staker from queuing a withdrawal which improperly removes excessive
     * shares from the operator to whom the staker is delegated.
     * @dev Reverts if `shares` is not a whole Gwei amount
     */
    function removeShares(address podOwner, uint256 shares) external;

    /**
     * @notice Increases the `podOwner`'s shares by `shares`, paying off deficit if possible.
     * Used by the DelegationManager to award a pod owner shares on exiting the withdrawal queue
     * @dev Returns the number of shares added to `podOwnerShares[podOwner]` above zero, which will be less than the `shares` input
     * in the event that the podOwner has an existing shares deficit (i.e. `podOwnerShares[podOwner]` starts below zero)
     * @dev Reverts if `shares` is not a whole Gwei amount
     */
    function addShares(address podOwner, uint256 shares) external returns (uint256);

    /**
     * @notice Used by the DelegationManager to complete a withdrawal, sending tokens to some destination address
     * @dev Prioritizes decreasing the podOwner's share deficit, if they have one
     * @dev Reverts if `shares` is not a whole Gwei amount
     */
    function withdrawSharesAsTokens(address podOwner, address destination, uint256 shares) external;
}

// lib/eigenlayer-contracts/src/contracts/interfaces/ISlasher.sol

/**
 * @title Interface for the primary 'slashing' contract for EigenLayer.
 * @author Layr Labs, Inc.
 * @notice Terms of Service: https://docs.eigenlayer.xyz/overview/terms-of-service
 * @notice See the `Slasher` contract itself for implementation details.
 */
interface ISlasher {
    // struct used to store information about the current state of an operator's obligations to middlewares they are serving
    struct MiddlewareTimes {
        // The update block for the middleware whose most recent update was earliest, i.e. the 'stalest' update out of all middlewares the operator is serving
        uint32 stalestUpdateBlock;
        // The latest 'serveUntilBlock' from all of the middleware that the operator is serving
        uint32 latestServeUntilBlock;
    }

    // struct used to store details relevant to a single middleware that an operator has opted-in to serving
    struct MiddlewareDetails {
        // the block at which the contract begins being able to finalize the operator's registration with the service via calling `recordFirstStakeUpdate`
        uint32 registrationMayBeginAtBlock;
        // the block before which the contract is allowed to slash the user
        uint32 contractCanSlashOperatorUntilBlock;
        // the block at which the middleware's view of the operator's stake was most recently updated
        uint32 latestUpdateBlock;
    }

    /// @notice Emitted when a middleware times is added to `operator`'s array.
    event MiddlewareTimesAdded(
        address operator, uint256 index, uint32 stalestUpdateBlock, uint32 latestServeUntilBlock
    );

    /// @notice Emitted when `operator` begins to allow `contractAddress` to slash them.
    event OptedIntoSlashing(address indexed operator, address indexed contractAddress);

    /// @notice Emitted when `contractAddress` signals that it will no longer be able to slash `operator` after the `contractCanSlashOperatorUntilBlock`.
    event SlashingAbilityRevoked(
        address indexed operator, address indexed contractAddress, uint32 contractCanSlashOperatorUntilBlock
    );

    /**
     * @notice Emitted when `slashingContract` 'freezes' the `slashedOperator`.
     * @dev The `slashingContract` must have permission to slash the `slashedOperator`, i.e. `canSlash(slasherOperator, slashingContract)` must return 'true'.
     */
    event OperatorFrozen(address indexed slashedOperator, address indexed slashingContract);

    /// @notice Emitted when `previouslySlashedAddress` is 'unfrozen', allowing them to again move deposited funds within EigenLayer.
    event FrozenStatusReset(address indexed previouslySlashedAddress);

    /**
     * @notice Gives the `contractAddress` permission to slash the funds of the caller.
     * @dev Typically, this function must be called prior to registering for a middleware.
     */
    function optIntoSlashing(address contractAddress) external;

    /**
     * @notice Used for 'slashing' a certain operator.
     * @param toBeFrozen The operator to be frozen.
     * @dev Technically the operator is 'frozen' (hence the name of this function), and then subject to slashing pending a decision by a human-in-the-loop.
     * @dev The operator must have previously given the caller (which should be a contract) the ability to slash them, through a call to `optIntoSlashing`.
     */
    function freezeOperator(address toBeFrozen) external;

    /**
     * @notice Removes the 'frozen' status from each of the `frozenAddresses`
     * @dev Callable only by the contract owner (i.e. governance).
     */
    function resetFrozenStatus(address[] calldata frozenAddresses) external;

    /**
     * @notice this function is a called by middlewares during an operator's registration to make sure the operator's stake at registration
     *         is slashable until serveUntil
     * @param operator the operator whose stake update is being recorded
     * @param serveUntilBlock the block until which the operator's stake at the current block is slashable
     * @dev adds the middleware's slashing contract to the operator's linked list
     */
    function recordFirstStakeUpdate(address operator, uint32 serveUntilBlock) external;

    /**
     * @notice this function is a called by middlewares during a stake update for an operator (perhaps to free pending withdrawals)
     *         to make sure the operator's stake at updateBlock is slashable until serveUntil
     * @param operator the operator whose stake update is being recorded
     * @param updateBlock the block for which the stake update is being recorded
     * @param serveUntilBlock the block until which the operator's stake at updateBlock is slashable
     * @param insertAfter the element of the operators linked list that the currently updating middleware should be inserted after
     * @dev insertAfter should be calculated offchain before making the transaction that calls this. this is subject to race conditions,
     *      but it is anticipated to be rare and not detrimental.
     */
    function recordStakeUpdate(
        address operator,
        uint32 updateBlock,
        uint32 serveUntilBlock,
        uint256 insertAfter
    ) external;

    /**
     * @notice this function is a called by middlewares during an operator's deregistration to make sure the operator's stake at deregistration
     *         is slashable until serveUntil
     * @param operator the operator whose stake update is being recorded
     * @param serveUntilBlock the block until which the operator's stake at the current block is slashable
     * @dev removes the middleware's slashing contract to the operator's linked list and revokes the middleware's (i.e. caller's) ability to
     * slash `operator` once `serveUntil` is reached
     */
    function recordLastStakeUpdateAndRevokeSlashingAbility(address operator, uint32 serveUntilBlock) external;

    /// @notice The StrategyManager contract of EigenLayer
    function strategyManager() external view returns (IStrategyManager);

    /// @notice The DelegationManager contract of EigenLayer
    function delegation() external view returns (IDelegationManager);

    /**
     * @notice Used to determine whether `staker` is actively 'frozen'. If a staker is frozen, then they are potentially subject to
     * slashing of their funds, and cannot cannot deposit or withdraw from the strategyManager until the slashing process is completed
     * and the staker's status is reset (to 'unfrozen').
     * @param staker The staker of interest.
     * @return Returns 'true' if `staker` themselves has their status set to frozen, OR if the staker is delegated
     * to an operator who has their status set to frozen. Otherwise returns 'false'.
     */
    function isFrozen(address staker) external view returns (bool);

    /// @notice Returns true if `slashingContract` is currently allowed to slash `toBeSlashed`.
    function canSlash(address toBeSlashed, address slashingContract) external view returns (bool);

    /// @notice Returns the block until which `serviceContract` is allowed to slash the `operator`.
    function contractCanSlashOperatorUntilBlock(
        address operator,
        address serviceContract
    ) external view returns (uint32);

    /// @notice Returns the block at which the `serviceContract` last updated its view of the `operator`'s stake
    function latestUpdateBlock(address operator, address serviceContract) external view returns (uint32);

    /// @notice A search routine for finding the correct input value of `insertAfter` to `recordStakeUpdate` / `_updateMiddlewareList`.
    function getCorrectValueForInsertAfter(address operator, uint32 updateBlock) external view returns (uint256);

    /**
     * @notice Returns 'true' if `operator` can currently complete a withdrawal started at the `withdrawalStartBlock`, with `middlewareTimesIndex` used
     * to specify the index of a `MiddlewareTimes` struct in the operator's list (i.e. an index in `operatorToMiddlewareTimes[operator]`). The specified
     * struct is consulted as proof of the `operator`'s ability (or lack thereof) to complete the withdrawal.
     * This function will return 'false' if the operator cannot currently complete a withdrawal started at the `withdrawalStartBlock`, *or* in the event
     * that an incorrect `middlewareTimesIndex` is supplied, even if one or more correct inputs exist.
     * @param operator Either the operator who queued the withdrawal themselves, or if the withdrawing party is a staker who delegated to an operator,
     * this address is the operator *who the staker was delegated to* at the time of the `withdrawalStartBlock`.
     * @param withdrawalStartBlock The block number at which the withdrawal was initiated.
     * @param middlewareTimesIndex Indicates an index in `operatorToMiddlewareTimes[operator]` to consult as proof of the `operator`'s ability to withdraw
     * @dev The correct `middlewareTimesIndex` input should be computable off-chain.
     */
    function canWithdraw(
        address operator,
        uint32 withdrawalStartBlock,
        uint256 middlewareTimesIndex
    ) external returns (bool);

    /**
     * operator =>
     *  [
     *      (
     *          the least recent update block of all of the middlewares it's serving/served,
     *          latest time that the stake bonded at that update needed to serve until
     *      )
     *  ]
     */
    function operatorToMiddlewareTimes(
        address operator,
        uint256 arrayIndex
    ) external view returns (MiddlewareTimes memory);

    /// @notice Getter function for fetching `operatorToMiddlewareTimes[operator].length`
    function middlewareTimesLength(address operator) external view returns (uint256);

    /// @notice Getter function for fetching `operatorToMiddlewareTimes[operator][index].stalestUpdateBlock`.
    function getMiddlewareTimesIndexStalestUpdateBlock(address operator, uint32 index) external view returns (uint32);

    /// @notice Getter function for fetching `operatorToMiddlewareTimes[operator][index].latestServeUntil`.
    function getMiddlewareTimesIndexServeUntilBlock(address operator, uint32 index) external view returns (uint32);

    /// @notice Getter function for fetching `_operatorToWhitelistedContractsByUpdate[operator].size`.
    function operatorWhitelistedContractsLinkedListSize(address operator) external view returns (uint256);

    /// @notice Getter function for fetching a single node in the operator's linked list (`_operatorToWhitelistedContractsByUpdate[operator]`).
    function operatorWhitelistedContractsLinkedListEntry(
        address operator,
        address node
    ) external view returns (bool, uint256, uint256);
}

// lib/eigenlayer-contracts/src/contracts/interfaces/IStrategyManager.sol

/**
 * @title Interface for the primary entrypoint for funds into EigenLayer.
 * @author Layr Labs, Inc.
 * @notice Terms of Service: https://docs.eigenlayer.xyz/overview/terms-of-service
 * @notice See the `StrategyManager` contract itself for implementation details.
 */
interface IStrategyManager {
    /**
     * @notice Emitted when a new deposit occurs on behalf of `staker`.
     * @param staker Is the staker who is depositing funds into EigenLayer.
     * @param strategy Is the strategy that `staker` has deposited into.
     * @param token Is the token that `staker` deposited.
     * @param shares Is the number of new shares `staker` has been granted in `strategy`.
     */
    event Deposit(address staker, IERC20 token, IStrategy strategy, uint256 shares);

    /// @notice Emitted when `thirdPartyTransfersForbidden` is updated for a strategy and value by the owner
    event UpdatedThirdPartyTransfersForbidden(IStrategy strategy, bool value);

    /// @notice Emitted when the `strategyWhitelister` is changed
    event StrategyWhitelisterChanged(address previousAddress, address newAddress);

    /// @notice Emitted when a strategy is added to the approved list of strategies for deposit
    event StrategyAddedToDepositWhitelist(IStrategy strategy);

    /// @notice Emitted when a strategy is removed from the approved list of strategies for deposit
    event StrategyRemovedFromDepositWhitelist(IStrategy strategy);

    /**
     * @notice Deposits `amount` of `token` into the specified `strategy`, with the resultant shares credited to `msg.sender`
     * @param strategy is the specified strategy where deposit is to be made,
     * @param token is the denomination in which the deposit is to be made,
     * @param amount is the amount of token to be deposited in the strategy by the staker
     * @return shares The amount of new shares in the `strategy` created as part of the action.
     * @dev The `msg.sender` must have previously approved this contract to transfer at least `amount` of `token` on their behalf.
     * @dev Cannot be called by an address that is 'frozen' (this function will revert if the `msg.sender` is frozen).
     *
     * WARNING: Depositing tokens that allow reentrancy (eg. ERC-777) into a strategy is not recommended.  This can lead to attack vectors
     *          where the token balance and corresponding strategy shares are not in sync upon reentrancy.
     */
    function depositIntoStrategy(IStrategy strategy, IERC20 token, uint256 amount) external returns (uint256 shares);

    /**
     * @notice Used for depositing an asset into the specified strategy with the resultant shares credited to `staker`,
     * who must sign off on the action.
     * Note that the assets are transferred out/from the `msg.sender`, not from the `staker`; this function is explicitly designed
     * purely to help one address deposit 'for' another.
     * @param strategy is the specified strategy where deposit is to be made,
     * @param token is the denomination in which the deposit is to be made,
     * @param amount is the amount of token to be deposited in the strategy by the staker
     * @param staker the staker that the deposited assets will be credited to
     * @param expiry the timestamp at which the signature expires
     * @param signature is a valid signature from the `staker`. either an ECDSA signature if the `staker` is an EOA, or data to forward
     * following EIP-1271 if the `staker` is a contract
     * @return shares The amount of new shares in the `strategy` created as part of the action.
     * @dev The `msg.sender` must have previously approved this contract to transfer at least `amount` of `token` on their behalf.
     * @dev A signature is required for this function to eliminate the possibility of griefing attacks, specifically those
     * targeting stakers who may be attempting to undelegate.
     * @dev Cannot be called if thirdPartyTransfersForbidden is set to true for this strategy
     *
     *  WARNING: Depositing tokens that allow reentrancy (eg. ERC-777) into a strategy is not recommended.  This can lead to attack vectors
     *          where the token balance and corresponding strategy shares are not in sync upon reentrancy
     */
    function depositIntoStrategyWithSignature(
        IStrategy strategy,
        IERC20 token,
        uint256 amount,
        address staker,
        uint256 expiry,
        bytes memory signature
    ) external returns (uint256 shares);

    /// @notice Used by the DelegationManager to remove a Staker's shares from a particular strategy when entering the withdrawal queue
    function removeShares(address staker, IStrategy strategy, uint256 shares) external;

    /// @notice Used by the DelegationManager to award a Staker some shares that have passed through the withdrawal queue
    function addShares(address staker, IERC20 token, IStrategy strategy, uint256 shares) external;

    /// @notice Used by the DelegationManager to convert withdrawn shares to tokens and send them to a recipient
    function withdrawSharesAsTokens(address recipient, IStrategy strategy, uint256 shares, IERC20 token) external;

    /// @notice Returns the current shares of `user` in `strategy`
    function stakerStrategyShares(address user, IStrategy strategy) external view returns (uint256 shares);

    /**
     * @notice Get all details on the staker's deposits and corresponding shares
     * @return (staker's strategies, shares in these strategies)
     */
    function getDeposits(address staker) external view returns (IStrategy[] memory, uint256[] memory);

    /// @notice Simple getter function that returns `stakerStrategyList[staker].length`.
    function stakerStrategyListLength(address staker) external view returns (uint256);

    /**
     * @notice Owner-only function that adds the provided Strategies to the 'whitelist' of strategies that stakers can deposit into
     * @param strategiesToWhitelist Strategies that will be added to the `strategyIsWhitelistedForDeposit` mapping (if they aren't in it already)
     * @param thirdPartyTransfersForbiddenValues bool values to set `thirdPartyTransfersForbidden` to for each strategy
     */
    function addStrategiesToDepositWhitelist(
        IStrategy[] calldata strategiesToWhitelist,
        bool[] calldata thirdPartyTransfersForbiddenValues
    ) external;

    /**
     * @notice Owner-only function that removes the provided Strategies from the 'whitelist' of strategies that stakers can deposit into
     * @param strategiesToRemoveFromWhitelist Strategies that will be removed to the `strategyIsWhitelistedForDeposit` mapping (if they are in it)
     */
    function removeStrategiesFromDepositWhitelist(IStrategy[] calldata strategiesToRemoveFromWhitelist) external;

    /**
     * If true for a strategy, a user cannot depositIntoStrategyWithSignature into that strategy for another staker
     * and also when performing DelegationManager.queueWithdrawals, a staker can only withdraw to themselves.
     * Defaulted to false for all existing strategies.
     * @param strategy The strategy to set `thirdPartyTransfersForbidden` value to
     * @param value bool value to set `thirdPartyTransfersForbidden` to
     */
    function setThirdPartyTransfersForbidden(IStrategy strategy, bool value) external;

    /// @notice Returns the single, central Delegation contract of EigenLayer
    function delegation() external view returns (IDelegationManager);

    /// @notice Returns the single, central Slasher contract of EigenLayer
    function slasher() external view returns (ISlasher);

    /// @notice Returns the EigenPodManager contract of EigenLayer
    function eigenPodManager() external view returns (IEigenPodManager);

    /// @notice Returns the address of the `strategyWhitelister`
    function strategyWhitelister() external view returns (address);

    /// @notice Returns bool for whether or not `strategy` is whitelisted for deposit
    function strategyIsWhitelistedForDeposit(IStrategy strategy) external view returns (bool);

    /**
     * @notice Returns bool for whether or not `strategy` enables credit transfers. i.e enabling
     * depositIntoStrategyWithSignature calls or queueing withdrawals to a different address than the staker.
     */
    function thirdPartyTransfersForbidden(IStrategy strategy) external view returns (bool);
}

// src/interfaces/ITokenStakingNode.sol

interface ITokenStakingNode {

    /// @notice Configuration for contract initialization.
    struct Init {
        ITokenStakingNodesManager tokenStakingNodesManager;
        uint256 nodeId;
    }

    function nodeId() external returns (uint256);

    function initialize(Init calldata init) external;
    
    function depositAssetsToEigenlayer(
        IERC20[] memory assets,
        uint256[] memory amounts,
        IStrategy[] memory strategies
    ) external;

    function tokenStakingNodesManager() external view returns (ITokenStakingNodesManager);
    
    function implementation() external view returns (address);

    function getInitializedVersion() external view returns (uint64);

    function delegate(
        address operator,
        ISignatureUtils.SignatureWithExpiry memory signature,
        bytes32 approverSalt
    ) external;

    function undelegate() external;

    function getQueuedSharesAndWithdrawn(IStrategy _strategy, IERC20 _asset) external view returns (uint256, uint256);
    function queueWithdrawals(IStrategy _strategy, uint256 _shares) external returns (bytes32[] memory _fullWithdrawalRoots);
    function completeQueuedWithdrawals(
        uint256 _nonce,
        uint32 _startBlock,
        uint256 _shares,
        IStrategy _strategy,
        uint256[] memory _middlewareTimesIndexes,
        bool updateTokenStakingNodesBalances
    ) external;

    function deallocateTokens(IERC20 _token, uint256 _amount) external;

    function queuedShares(IStrategy _strategy) external view returns (uint256);
    function withdrawn(IERC20 _token) external view returns (uint256);
}

// src/interfaces/ITokenStakingNodesManager.sol

interface ITokenStakingNodesManager {

    function createTokenStakingNode() external returns (ITokenStakingNode);
    function registerTokenStakingNode(address _implementationContract) external;
    function upgradeTokenStakingNode(address _implementationContract) external;
    function setMaxNodeCount(uint256 _maxNodeCount) external;
    function hasTokenStakingNodeOperatorRole(address account) external view returns (bool);
    function hasTokenStakingNodeDelegatorRole(address account) external view returns (bool);

    function delegationManager() external view returns (IDelegationManager);
    function strategyManager() external view returns (IStrategyManager);
    function upgradeableBeacon() external view returns (UpgradeableBeacon);

    function getAllNodes() external view returns (ITokenStakingNode[] memory);
    function nodesLength() external view returns (uint256);
    function hasYieldNestStrategyManagerRole(address) external view returns (bool);

    function getNodeById(uint256 nodeId) external view returns (ITokenStakingNode);

    function yieldNestStrategyManager() external view returns (address);
}

// src/interfaces/IWithdrawalsProcessor.sol

interface IWithdrawalsProcessor {

    struct QueuedWithdrawal {
        address node;
        address strategy;
        uint256 nonce;
        uint256 shares;
        uint256 tokenIdToFinalize;
        uint32 startBlock;
        bool completed;
    }

    struct IDs {
        uint256 queued;
        uint256 completed;
        uint256 processed;
    }

    //
    // state variables
    //
    function totalQueuedWithdrawals() external view returns (uint256);
    function minPendingWithdrawalRequestAmount() external view returns (uint256);
    function batch(
        uint256 _fromId
    ) external view returns (uint256 _toId);

    //
    // view functions
    //
    function ids() external view returns (IDs memory);
    function queuedWithdrawals(
        uint256 _id
    ) external view returns (QueuedWithdrawal memory);
    function shouldQueueWithdrawals() external view returns (bool);
    function shouldCompleteQueuedWithdrawals() external view returns (bool);
    function shouldProcessPrincipalWithdrawals() external returns (bool);
    function getPendingWithdrawalRequests() external view returns (uint256 _pendingWithdrawalRequests);
    function getQueueWithdrawalsArgs()
        external
        view
        returns (IERC20 _asset, ITokenStakingNode[] memory _nodes, uint256[] memory _shares);

    //
    // mutative functions
    //
    function queueWithdrawals(
        IERC20 _asset,
        ITokenStakingNode[] memory _nodes,
        uint256[] memory _amounts
    ) external returns (bool);
    function completeQueuedWithdrawals() external;
    function processPrincipalWithdrawals() external;

    //
    // management functions
    //
    function updateMinPendingWithdrawalRequestAmount(
        uint256 _minPendingWithdrawalRequestAmount
    ) external;

    //
    // Errors
    //
    error InvalidInput();
    error PendingWithdrawalRequestsTooLow();
    error NoQueuedWithdrawals();
    error NothingToProcess();
    error SanityCheck();
    error CurrentAvailableAmountIsSufficient();

    //
    // Events
    //
    event MinPendingWithdrawalRequestAmountUpdated(uint256 minPendingWithdrawalRequestAmount);

}

// src/interfaces/IYieldNestStrategyManager.sol

interface IRedemptionAssetsVaultExt is IRedemptionAssetsVault {
    function deposit(uint256 amount, address asset) external;
    function balances(address asset) external view returns (uint256 amount);
    function assetBalances(IERC20[] calldata assetsArray) external view returns (uint256[] memory balances);
}

interface IYieldNestStrategyManager {

    struct WithdrawalAction {
        uint256 nodeId;
        uint256 amountToReinvest;
        uint256 amountToQueue;
        address asset;
    }

    function getStakedAssetsBalances(
        IERC20[] calldata assets
    ) external view returns (uint256[] memory stakedBalances);

    function getStakedAssetBalance(IERC20 asset) external view returns (uint256 stakedBalance);

    function supportsAsset(IERC20 asset) external view returns (bool);

    function tokenStakingNodesManager() external view returns (ITokenStakingNodesManager);

    function processPrincipalWithdrawals(WithdrawalAction[] calldata _actions) external;

    function redemptionAssetsVault() external view returns (IRedemptionAssetsVaultExt);

    function wrapper() external view returns (IWrapper);

    function isStakingNodesWithdrawer(address _address) external view returns (bool);

    function updateTokenStakingNodesBalances(IERC20 asset) external;

    function strategies(IERC20 asset) external view returns (IStrategy);
}

// src/ynEIGEN/WithdrawalsProcessor.sol

contract WithdrawalsProcessor is IWithdrawalsProcessor, Initializable, AccessControlUpgradeable {

    uint256 public totalQueuedWithdrawals; // denominated in unit account

    // minimum amount of pending withdrawal requests to be queued
    uint256 public minPendingWithdrawalRequestAmount; // denominated in unit account

    IDs private _ids;

    mapping(uint256 id => QueuedWithdrawal) private _queuedWithdrawals;
    mapping(uint256 fromId => uint256 toId) public batch;

    // yieldnest
    IWithdrawalQueueManager public immutable withdrawalQueueManager;
    ITokenStakingNodesManager public immutable tokenStakingNodesManager;
    IAssetRegistry public immutable assetRegistry;
    IYieldNestStrategyManager public immutable ynStrategyManager;
    IynEigen public immutable yneigen;
    IRedemptionAssetsVault public immutable redemptionAssetsVault;
    IWrapper public immutable wrapper;

    // eigenlayer
    IDelegationManager public immutable delegationManager;

    // assets
    IERC20 public immutable STETH;
    IwstETH public immutable WSTETH;
    IERC20 public immutable OETH;
    IERC4626 public immutable WOETH;

    // used to prevent rounding errors
    uint256 public constant MIN_DELTA = 1000;

    // roles
    bytes32 public constant KEEPER_ROLE = keccak256("KEEPER_ROLE");

    //
    // Constructor
    //
    constructor(
        address _withdrawalQueueManager,
        address _tokenStakingNodesManager,
        address _assetRegistry,
        address _ynStrategyManager,
        address _delegationManager,
        address _yneigen,
        address _redemptionAssetsVault,
        address _wrapper,
        address _steth,
        address _wsteth,
        address _oeth,
        address _woeth
    ) {
        if (
            _withdrawalQueueManager == address(0) || _tokenStakingNodesManager == address(0)
                || _assetRegistry == address(0) || _ynStrategyManager == address(0) || _delegationManager == address(0)
                || _yneigen == address(0) || _redemptionAssetsVault == address(0) || _wrapper == address(0)
        ) revert InvalidInput();

        withdrawalQueueManager = IWithdrawalQueueManager(_withdrawalQueueManager);
        tokenStakingNodesManager = ITokenStakingNodesManager(_tokenStakingNodesManager);
        assetRegistry = IAssetRegistry(_assetRegistry);
        ynStrategyManager = IYieldNestStrategyManager(_ynStrategyManager);
        delegationManager = IDelegationManager(_delegationManager);
        yneigen = IynEigen(_yneigen);
        redemptionAssetsVault = IRedemptionAssetsVault(_redemptionAssetsVault);
        wrapper = IWrapper(_wrapper);

        STETH = IERC20(_steth);
        WSTETH = IwstETH(_wsteth);
        OETH = IERC20(_oeth);
        WOETH = IERC4626(_woeth);
    }

    function initialize(address _owner, address _keeper) public initializer {
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, _owner);
        _grantRole(KEEPER_ROLE, _keeper);

        minPendingWithdrawalRequestAmount = 0.1 ether;
    }

    //
    // view functions
    //

    /// @notice IDs of the queued, completed, and processed withdrawals, used for internal accounting
    /// @return The IDs
    function ids() external view returns (IDs memory) {
        return _ids;
    }

    /// @notice Gets the queued withdrawal at the given ID
    /// @param _id The ID of the queued withdrawal
    /// @return The queued withdrawal
    function queuedWithdrawals(
        uint256 _id
    ) external view returns (QueuedWithdrawal memory) {
        return _queuedWithdrawals[_id];
    }

    /// @notice Checks if withdrawals should be queued
    /// @dev returns true if there is not enough redemption assets to cover the pending withdrawals considering the minPendingWithdrawalRequestAmount
    /// @return True if withdrawals should be queued, false otherwise
    function shouldQueueWithdrawals() external view returns (bool) {
        uint256 pendingAmount = withdrawalQueueManager.pendingRequestedRedemptionAmount();
        uint256 availableAmount = redemptionAssetsVault.availableRedemptionAssets() + totalQueuedWithdrawals;

        if (pendingAmount <= availableAmount) {
            return false;
        }
        uint256 deficitAmount = pendingAmount - availableAmount;

        return deficitAmount >= minPendingWithdrawalRequestAmount;
    }

    /// @notice Checks if queued withdrawals should be completed
    /// @return True if queued withdrawals should be completed, false otherwise
    function shouldCompleteQueuedWithdrawals() external view returns (bool) {
        uint256 _queuedId = _ids.queued;
        uint256 _completedId = _ids.completed;
        if (_queuedId == _completedId) return false;

        for (; _completedId < _queuedId; ++_completedId) {
            QueuedWithdrawal memory _queuedWithdrawal = _queuedWithdrawals[_completedId];

            IStrategy[] memory _strategies = new IStrategy[](1);
            _strategies[0] = IStrategy(_queuedWithdrawal.strategy);
            uint256 _withdrawalDelay = delegationManager.getWithdrawalDelay(_strategies);
            if (block.number >= _queuedWithdrawal.startBlock + _withdrawalDelay) {
                return true;
            }
        }

        return false;
    }

    /// @notice Checks if principal withdrawals should be processed
    /// @return True if principal withdrawals should be processed, false otherwise
    function shouldProcessPrincipalWithdrawals() external view returns (bool) {
        return _ids.completed != _ids.processed;
    }

    /// @notice Gets the total pending withdrawal requests
    /// @return deficitAmount The total pending withdrawal requests
    function getPendingWithdrawalRequests() public view returns (uint256 deficitAmount) {
        uint256 pendingAmount = withdrawalQueueManager.pendingRequestedRedemptionAmount();
        uint256 availableAmount = redemptionAssetsVault.availableRedemptionAssets() + totalQueuedWithdrawals;
        if (pendingAmount <= availableAmount) {
            revert CurrentAvailableAmountIsSufficient();
        }
         deficitAmount = pendingAmount - availableAmount;
        if (deficitAmount < minPendingWithdrawalRequestAmount) {
            revert PendingWithdrawalRequestsTooLow();
        }
    }

    /// @notice Gets the arguments for `queueWithdrawals`
    /// @param _asset The asset to withdraw - the asset with the highest balance
    /// @param _nodes The list of nodes to withdraw from
    /// @param _shares The share amounts to withdraw from each node to achieve balanced distribution
    function getQueueWithdrawalsArgs()
        external
        view
        returns (IERC20 _asset, ITokenStakingNode[] memory _nodes, uint256[] memory _shares)
    {
        // get `_asset` with the highest balance
        {
            IERC20[] memory _assets = assetRegistry.getAssets();

            uint256 _highestBalance;
            uint256 _assetsLength = _assets.length;
            for (uint256 i = 0; i < _assetsLength; ++i) {
                uint256 _stakedBalance = _stakedBalanceForStrategy(_assets[i]);
                if (_stakedBalance > _highestBalance) {
                    _highestBalance = _stakedBalance;
                    _asset = _assets[i];
                }
            }
        }

        IStrategy _strategy = ynStrategyManager.strategies(_asset);
        ITokenStakingNode[] memory _nodesArray = tokenStakingNodesManager.getAllNodes();
        uint256 _nodesLength = _nodesArray.length;
        uint256 _minNodeShares = type(uint256).max;
        uint256[] memory _nodesShares = new uint256[](_nodesLength);

        // get all nodes and their shares
        {
            _nodes = new ITokenStakingNode[](_nodesLength);

            // populate node shares and find the minimum balance
            for (uint256 i = 0; i < _nodesLength; ++i) {
                ITokenStakingNode _node = _nodesArray[i];
                uint256 _nodeShares = _strategy.shares(address(_node));
                _nodesShares[i] = _nodeShares;
                _nodes[i] = _node;

                if (_nodeShares < _minNodeShares) _minNodeShares = _nodeShares;
            }
        }

        // calculate withdrawal amounts for each node
        {
            _shares = new uint256[](_nodesLength);
            uint256 _pendingWithdrawalRequestsInShares =
                _unitToShares(getPendingWithdrawalRequests(), _asset, _strategy);

            // first pass: equalize all nodes to the minimum balance
            for (uint256 i = 0; i < _nodesLength && _pendingWithdrawalRequestsInShares > 0; ++i) {
                if (_nodesShares[i] > _minNodeShares) {
                    uint256 _availableToWithdraw = _nodesShares[i] - _minNodeShares;
                    uint256 _toWithdraw = _availableToWithdraw < _pendingWithdrawalRequestsInShares
                        ? _availableToWithdraw
                        : _pendingWithdrawalRequestsInShares;
                    _shares[i] = _toWithdraw;
                    _pendingWithdrawalRequestsInShares -= _toWithdraw;
                }
            }

            // second pass: withdraw evenly from all nodes if there is still more to withdraw
                uint256 _equalWithdrawal = _pendingWithdrawalRequestsInShares / _nodesLength + 1;
                for (uint256 i = 0; i < _nodesLength; ++i) {
                    _shares[i] = _equalWithdrawal + MIN_DELTA > _nodesShares[i] ? _nodesShares[i] : _equalWithdrawal;
                }
        }
    }

    //
    // mutative functions
    //

    /// @notice Queues withdrawals
    /// @dev Reverts if the total pending withdrawal requests are below the minimum threshold
    /// @dev Saves the queued withdrawals together in a batch, to be completed in the next step (`completeQueuedWithdrawals`)
    /// @dev Before calling this function, call `getQueueWithdrawalsArgs()` to get the arguments
    /// @param _asset The asset to withdraw
    /// @param _nodes The list of nodes to withdraw from
    /// @param _amounts The share amounts to withdraw from each node
    /// @return True if all pending withdrawal requests were queued, false otherwise
    function queueWithdrawals(
        IERC20 _asset,
        ITokenStakingNode[] memory _nodes,
        uint256[] memory _amounts
    ) external onlyRole(KEEPER_ROLE) returns (bool) {
        uint256 _nodesLength = _nodes.length;
        if (_nodesLength != _amounts.length) revert InvalidInput();

        uint256 _pendingWithdrawalRequests = getPendingWithdrawalRequests(); // NOTE: reverts if too low
        uint256 _toBeQueued = _pendingWithdrawalRequests;

        IStrategy _strategy = ynStrategyManager.strategies(_asset);
        if (_strategy == IStrategy(address(0))) revert InvalidInput();

        uint256 _queuedId = _ids.queued;
        uint256 _pendingWithdrawalRequestsInShares = _unitToShares(_pendingWithdrawalRequests, _asset, _strategy);
        for (uint256 j = 0; j < _nodesLength; ++j) {
            uint256 _toWithdraw = _amounts[j];
            if (_toWithdraw > 0) {
                _toWithdraw > _pendingWithdrawalRequestsInShares
                    ? _pendingWithdrawalRequestsInShares = 0
                    : _pendingWithdrawalRequestsInShares -= _toWithdraw;

                address _node = address(_nodes[j]);
                _queuedWithdrawals[_queuedId++] = QueuedWithdrawal(
                    _node,
                    address(_strategy),
                    delegationManager.cumulativeWithdrawalsQueued(_node), // nonce
                    _toWithdraw,
                    withdrawalQueueManager._tokenIdCounter(),
                    uint32(block.number), // startBlock
                    false // completed
                );
                ITokenStakingNode(_node).queueWithdrawals(_strategy, _toWithdraw);
            }

            if (_pendingWithdrawalRequestsInShares == 0) {
                batch[_ids.queued] = _queuedId;
                _ids.queued = _queuedId;
                totalQueuedWithdrawals += _toBeQueued;
                return true;
            }
        }

        _pendingWithdrawalRequests = _sharesToUnit(_pendingWithdrawalRequestsInShares, _asset, _strategy);

        if (_pendingWithdrawalRequests < _toBeQueued) {
            batch[_ids.queued] = _queuedId;
            _ids.queued = _queuedId;
            totalQueuedWithdrawals += _toBeQueued - _pendingWithdrawalRequests;
        }

        return false;
    }

    /// @notice Completes queued withdrawals
    /// @dev Completes the queued withdrawals in a batch
    function completeQueuedWithdrawals() external onlyRole(KEEPER_ROLE) {
        uint256 _completedId = _ids.completed;
        uint256 _queuedId = batch[_completedId];
        if (_completedId == _queuedId) revert NoQueuedWithdrawals();

        for (; _completedId < _queuedId; ++_completedId) {
            _queuedWithdrawals[_completedId].completed = true;

            QueuedWithdrawal memory queuedWithdrawal_ = _queuedWithdrawals[_completedId];

            uint256[] memory _middlewareTimesIndexes = new uint256[](1);
            _middlewareTimesIndexes[0] = 0;

            ITokenStakingNode(queuedWithdrawal_.node).completeQueuedWithdrawals(
                queuedWithdrawal_.nonce,
                queuedWithdrawal_.startBlock,
                queuedWithdrawal_.shares,
                IStrategy(queuedWithdrawal_.strategy),
                _middlewareTimesIndexes,
                true // updateTokenStakingNodesBalances
            );
        }

        _ids.completed = _completedId;
    }

    /// @notice Processes principal withdrawals
    /// @dev Must be called immediately after `completeQueuedWithdrawals` so that the shares value does't change
    function processPrincipalWithdrawals() external onlyRole(KEEPER_ROLE) {
        uint256 _completedId = _ids.completed;
        uint256 _processedId = _ids.processed;
        if (_completedId == _processedId) revert NothingToProcess();

        uint256 _batchLength = batch[_processedId] - _processedId;
        IYieldNestStrategyManager.WithdrawalAction[] memory _actions =
            new IYieldNestStrategyManager.WithdrawalAction[](_batchLength);

        address _asset;
        address _strategy;
        uint256 _totalWithdrawn;
        uint256 _tokenIdToFinalize;
        uint256 _processedIdAtStart = _processedId;
        for (uint256 i = 0; _processedId < _processedIdAtStart + _batchLength; ++i) {
            QueuedWithdrawal memory queuedWithdrawal_ = _queuedWithdrawals[_processedId++];

            if (_asset == address(0)) {
                _strategy = queuedWithdrawal_.strategy;
                _asset = _underlyingTokenForStrategy(IStrategy(_strategy));
            }

            uint256 _queuedAmountInUnit = _sharesToUnit(queuedWithdrawal_.shares, IERC20(_asset), IStrategy(_strategy));
            _totalWithdrawn += _queuedAmountInUnit;

            _actions[i] = IYieldNestStrategyManager.WithdrawalAction({
                nodeId: ITokenStakingNode(queuedWithdrawal_.node).nodeId(),
                amountToReinvest: 0,
                amountToQueue: assetRegistry.convertFromUnitOfAccount(IERC20(_asset), _queuedAmountInUnit),
                asset: _asset
            });

            if (_tokenIdToFinalize == 0) _tokenIdToFinalize = queuedWithdrawal_.tokenIdToFinalize;
        }

        if (_tokenIdToFinalize == 0) revert SanityCheck();

        _ids.processed = _processedId;

        uint256 _totalQueuedWithdrawals = totalQueuedWithdrawals;
        totalQueuedWithdrawals =
            _totalWithdrawn > _totalQueuedWithdrawals ? 0 : _totalQueuedWithdrawals - _totalWithdrawn;

        ynStrategyManager.processPrincipalWithdrawals(_actions);

        if (withdrawalQueueManager.lastFinalizedIndex() < _tokenIdToFinalize) {
            withdrawalQueueManager.finalizeRequestsUpToIndex(_tokenIdToFinalize);
        }
    }

    //
    // management functions
    //

    /// @notice Updates the minimum pending withdrawal request amount
    /// @param _minPendingWithdrawalRequestAmount The new minimum pending withdrawal request amount
    function updateMinPendingWithdrawalRequestAmount(
        uint256 _minPendingWithdrawalRequestAmount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_minPendingWithdrawalRequestAmount == 0) revert InvalidInput();
        minPendingWithdrawalRequestAmount = _minPendingWithdrawalRequestAmount;
        emit MinPendingWithdrawalRequestAmountUpdated(_minPendingWithdrawalRequestAmount);
    }

    //
    // private functions
    //
    function _stakedBalanceForStrategy(
        IERC20 _asset
    ) public view returns (uint256 _stakedBalance) {
        ITokenStakingNode[] memory _nodesArray = tokenStakingNodesManager.getAllNodes();
        IStrategy _strategy = ynStrategyManager.strategies(_asset);
        uint256 _nodesLength = _nodesArray.length;
        for (uint256 i = 0; i < _nodesLength; ++i) {
            _stakedBalance += _strategy.shares(address(_nodesArray[i]));
        }
    }

    function _underlyingTokenForStrategy(
        IStrategy _strategy
    ) private view returns (address) {
        address _token = address(_strategy.underlyingToken());
        if (_token == address(STETH)) return address(WSTETH);
        if (_token == address(OETH)) return address(WOETH);
        return _token;
    }

    function _unitToShares(uint256 _amount, IERC20 _asset, IStrategy _strategy) private view returns (uint256) {
        return _strategy.underlyingToSharesView(
            (address(_asset) == address(WSTETH) || address(_asset) == address(WOETH))
                ? _amount
                : assetRegistry.convertFromUnitOfAccount(_asset, _amount)
        );
    }

    function _sharesToUnit(uint256 _shares, IERC20 _asset, IStrategy _strategy) private view returns (uint256) {
        uint256 _amount = _strategy.sharesToUnderlyingView(_shares);
        return (address(_asset) == address(WSTETH) || address(_asset) == address(WOETH))
            ? assetRegistry.convertToUnitOfAccount(
                _asset,
                address(_asset) == address(WSTETH) ? WSTETH.getWstETHByStETH(_amount) : WOETH.previewDeposit(_amount)
            )
            : assetRegistry.convertToUnitOfAccount(_asset, _amount);
    }

}