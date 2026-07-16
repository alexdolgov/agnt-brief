// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
pragma experimental ABIEncoderV2;

library Constants {
    address internal constant ETH_ADDRESS = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    uint256 internal constant PRECISION = 1e18;
    uint256 internal constant PRECISION_SUB_ONE = PRECISION - 1;
}

// Panics work for versions >=0.8.0, but we lowered the pragma to make this compatible with Test

library stdError {
    bytes public constant assertionError = abi.encodeWithSignature("Panic(uint256)", 0x01);
    bytes public constant arithmeticError = abi.encodeWithSignature("Panic(uint256)", 0x11);
    bytes public constant divisionError = abi.encodeWithSignature("Panic(uint256)", 0x12);
    bytes public constant enumConversionError = abi.encodeWithSignature("Panic(uint256)", 0x21);
    bytes public constant encodeStorageError = abi.encodeWithSignature("Panic(uint256)", 0x22);
    bytes public constant popError = abi.encodeWithSignature("Panic(uint256)", 0x31);
    bytes public constant indexOOBError = abi.encodeWithSignature("Panic(uint256)", 0x32);
    bytes public constant memOverflowError = abi.encodeWithSignature("Panic(uint256)", 0x41);
    bytes public constant zeroVarError = abi.encodeWithSignature("Panic(uint256)", 0x51);
}

abstract contract StdInvariant {
    struct FuzzSelector {
        address addr;
        bytes4[] selectors;
    }

    struct FuzzInterface {
        address addr;
        string[] artifacts;
    }

    address[] private _excludedContracts;
    address[] private _excludedSenders;
    address[] private _targetedContracts;
    address[] private _targetedSenders;

    string[] private _excludedArtifacts;
    string[] private _targetedArtifacts;

    FuzzSelector[] private _targetedArtifactSelectors;
    FuzzSelector[] private _targetedSelectors;

    FuzzInterface[] private _targetedInterfaces;

    // Functions for users:
    // These are intended to be called in tests.

    function excludeContract(address newExcludedContract_) internal {
        _excludedContracts.push(newExcludedContract_);
    }

    function excludeSender(address newExcludedSender_) internal {
        _excludedSenders.push(newExcludedSender_);
    }

    function excludeArtifact(string memory newExcludedArtifact_) internal {
        _excludedArtifacts.push(newExcludedArtifact_);
    }

    function targetArtifact(string memory newTargetedArtifact_) internal {
        _targetedArtifacts.push(newTargetedArtifact_);
    }

    function targetArtifactSelector(FuzzSelector memory newTargetedArtifactSelector_) internal {
        _targetedArtifactSelectors.push(newTargetedArtifactSelector_);
    }

    function targetContract(address newTargetedContract_) internal {
        _targetedContracts.push(newTargetedContract_);
    }

    function targetSelector(FuzzSelector memory newTargetedSelector_) internal {
        _targetedSelectors.push(newTargetedSelector_);
    }

    function targetSender(address newTargetedSender_) internal {
        _targetedSenders.push(newTargetedSender_);
    }

    function targetInterface(FuzzInterface memory newTargetedInterface_) internal {
        _targetedInterfaces.push(newTargetedInterface_);
    }

    // Functions for forge:
    // These are called by forge to run invariant tests and don't need to be called in tests.

    function excludeArtifacts() public view returns (string[] memory excludedArtifacts_) {
        excludedArtifacts_ = _excludedArtifacts;
    }

    function excludeContracts() public view returns (address[] memory excludedContracts_) {
        excludedContracts_ = _excludedContracts;
    }

    function excludeSenders() public view returns (address[] memory excludedSenders_) {
        excludedSenders_ = _excludedSenders;
    }

    function targetArtifacts() public view returns (string[] memory targetedArtifacts_) {
        targetedArtifacts_ = _targetedArtifacts;
    }

    function targetArtifactSelectors() public view returns (FuzzSelector[] memory targetedArtifactSelectors_) {
        targetedArtifactSelectors_ = _targetedArtifactSelectors;
    }

    function targetContracts() public view returns (address[] memory targetedContracts_) {
        targetedContracts_ = _targetedContracts;
    }

    function targetSelectors() public view returns (FuzzSelector[] memory targetedSelectors_) {
        targetedSelectors_ = _targetedSelectors;
    }

    function targetSenders() public view returns (address[] memory targetedSenders_) {
        targetedSenders_ = _targetedSenders;
    }

    function targetInterfaces() public view returns (FuzzInterface[] memory targetedInterfaces_) {
        targetedInterfaces_ = _targetedInterfaces;
    }
}

library stdMath {
    int256 private constant INT256_MIN = -57896044618658097711785492504343953926634992332820282019728792003956564819968;

    function abs(int256 a) internal pure returns (uint256) {
        // Required or it will fail when `a = type(int256).min`
        if (a == INT256_MIN) {
            return 57896044618658097711785492504343953926634992332820282019728792003956564819968;
        }

        return uint256(a > 0 ? a : -a);
    }

    function delta(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a - b : b - a;
    }

    function delta(int256 a, int256 b) internal pure returns (uint256) {
        // a and b are of the same sign
        // this works thanks to two's complement, the left-most bit is the sign bit
        if ((a ^ b) > -1) {
            return delta(abs(a), abs(b));
        }

        // a and b are of opposite signs
        return abs(a) + abs(b);
    }

    function percentDelta(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 absDelta = delta(a, b);

        return absDelta * 1e18 / b;
    }

    function percentDelta(int256 a, int256 b) internal pure returns (uint256) {
        uint256 absDelta = delta(a, b);
        uint256 absB = abs(b);

        return absDelta * 1e18 / absB;
    }
}

// Automatically @generated by scripts/vm.py. Do not modify manually.

/// The `VmSafe` interface does not allow manipulation of the EVM state or other actions that may
/// result in Script simulations differing from on-chain execution. It is recommended to only use
/// these cheats in scripts.
interface VmSafe {
    /// A modification applied to either `msg.sender` or `tx.origin`. Returned by `readCallers`.
    enum CallerMode {
        // No caller modification is currently active.
        None,
        // A one time broadcast triggered by a `vm.broadcast()` call is currently active.
        Broadcast,
        // A recurrent broadcast triggered by a `vm.startBroadcast()` call is currently active.
        RecurrentBroadcast,
        // A one time prank triggered by a `vm.prank()` call is currently active.
        Prank,
        // A recurrent prank triggered by a `vm.startPrank()` call is currently active.
        RecurrentPrank
    }

    /// The kind of account access that occurred.
    enum AccountAccessKind {
        // The account was called.
        Call,
        // The account was called via delegatecall.
        DelegateCall,
        // The account was called via callcode.
        CallCode,
        // The account was called via staticcall.
        StaticCall,
        // The account was created.
        Create,
        // The account was selfdestructed.
        SelfDestruct,
        // Synthetic access indicating the current context has resumed after a previous sub-context (AccountAccess).
        Resume,
        // The account's balance was read.
        Balance,
        // The account's codesize was read.
        Extcodesize,
        // The account's codehash was read.
        Extcodehash,
        // The account's code was copied.
        Extcodecopy
    }

    /// An Ethereum log. Returned by `getRecordedLogs`.
    struct Log {
        // The topics of the log, including the signature, if any.
        bytes32[] topics;
        // The raw data of the log.
        bytes data;
        // The address of the log's emitter.
        address emitter;
    }

    /// An RPC URL and its alias. Returned by `rpcUrlStructs`.
    struct Rpc {
        // The alias of the RPC URL.
        string key;
        // The RPC URL.
        string url;
    }

    /// An RPC log object. Returned by `eth_getLogs`.
    struct EthGetLogs {
        // The address of the log's emitter.
        address emitter;
        // The topics of the log, including the signature, if any.
        bytes32[] topics;
        // The raw data of the log.
        bytes data;
        // The block hash.
        bytes32 blockHash;
        // The block number.
        uint64 blockNumber;
        // The transaction hash.
        bytes32 transactionHash;
        // The transaction index in the block.
        uint64 transactionIndex;
        // The log index.
        uint256 logIndex;
        // Whether the log was removed.
        bool removed;
    }

    /// A single entry in a directory listing. Returned by `readDir`.
    struct DirEntry {
        // The error message, if any.
        string errorMessage;
        // The path of the entry.
        string path;
        // The depth of the entry.
        uint64 depth;
        // Whether the entry is a directory.
        bool isDir;
        // Whether the entry is a symlink.
        bool isSymlink;
    }

    /// Metadata information about a file.
    /// This structure is returned from the `fsMetadata` function and represents known
    /// metadata about a file such as its permissions, size, modification
    /// times, etc.
    struct FsMetadata {
        // True if this metadata is for a directory.
        bool isDir;
        // True if this metadata is for a symlink.
        bool isSymlink;
        // The size of the file, in bytes, this metadata is for.
        uint256 length;
        // True if this metadata is for a readonly (unwritable) file.
        bool readOnly;
        // The last modification time listed in this metadata.
        uint256 modified;
        // The last access time of this metadata.
        uint256 accessed;
        // The creation time listed in this metadata.
        uint256 created;
    }

    /// A wallet with a public and private key.
    struct Wallet {
        // The wallet's address.
        address addr;
        // The wallet's public key `X`.
        uint256 publicKeyX;
        // The wallet's public key `Y`.
        uint256 publicKeyY;
        // The wallet's private key.
        uint256 privateKey;
    }

    /// The result of a `tryFfi` call.
    struct FfiResult {
        // The exit code of the call.
        int32 exitCode;
        // The optionally hex-decoded `stdout` data.
        bytes stdout;
        // The `stderr` data.
        bytes stderr;
    }

    /// Information on the chain and fork.
    struct ChainInfo {
        // The fork identifier. Set to zero if no fork is active.
        uint256 forkId;
        // The chain ID of the current fork.
        uint256 chainId;
    }

    /// The result of a `stopAndReturnStateDiff` call.
    struct AccountAccess {
        // The chain and fork the access occurred.
        ChainInfo chainInfo;
        // The kind of account access that determines what the account is.
        // If kind is Call, DelegateCall, StaticCall or CallCode, then the account is the callee.
        // If kind is Create, then the account is the newly created account.
        // If kind is SelfDestruct, then the account is the selfdestruct recipient.
        // If kind is a Resume, then account represents a account context that has resumed.
        AccountAccessKind kind;
        // The account that was accessed.
        // It's either the account created, callee or a selfdestruct recipient for CREATE, CALL or SELFDESTRUCT.
        address account;
        // What accessed the account.
        address accessor;
        // If the account was initialized or empty prior to the access.
        // An account is considered initialized if it has code, a
        // non-zero nonce, or a non-zero balance.
        bool initialized;
        // The previous balance of the accessed account.
        uint256 oldBalance;
        // The potential new balance of the accessed account.
        // That is, all balance changes are recorded here, even if reverts occurred.
        uint256 newBalance;
        // Code of the account deployed by CREATE.
        bytes deployedCode;
        // Value passed along with the account access
        uint256 value;
        // Input data provided to the CREATE or CALL
        bytes data;
        // If this access reverted in either the current or parent context.
        bool reverted;
        // An ordered list of storage accesses made during an account access operation.
        StorageAccess[] storageAccesses;
        // Call depth traversed during the recording of state differences
        uint64 depth;
    }

    /// The storage accessed during an `AccountAccess`.
    struct StorageAccess {
        // The account whose storage was accessed.
        address account;
        // The slot that was accessed.
        bytes32 slot;
        // If the access was a write.
        bool isWrite;
        // The previous value of the slot.
        bytes32 previousValue;
        // The new value of the slot.
        bytes32 newValue;
        // If the access was reverted.
        bool reverted;
    }

    // ======== Environment ========

    /// Gets the environment variable `name` and parses it as `address`.
    /// Reverts if the variable was not found or could not be parsed.
    function envAddress(string calldata name) external view returns (address value);

    /// Gets the environment variable `name` and parses it as an array of `address`, delimited by `delim`.
    /// Reverts if the variable was not found or could not be parsed.
    function envAddress(string calldata name, string calldata delim) external view returns (address[] memory value);

    /// Gets the environment variable `name` and parses it as `bool`.
    /// Reverts if the variable was not found or could not be parsed.
    function envBool(string calldata name) external view returns (bool value);

    /// Gets the environment variable `name` and parses it as an array of `bool`, delimited by `delim`.
    /// Reverts if the variable was not found or could not be parsed.
    function envBool(string calldata name, string calldata delim) external view returns (bool[] memory value);

    /// Gets the environment variable `name` and parses it as `bytes32`.
    /// Reverts if the variable was not found or could not be parsed.
    function envBytes32(string calldata name) external view returns (bytes32 value);

    /// Gets the environment variable `name` and parses it as an array of `bytes32`, delimited by `delim`.
    /// Reverts if the variable was not found or could not be parsed.
    function envBytes32(string calldata name, string calldata delim) external view returns (bytes32[] memory value);

    /// Gets the environment variable `name` and parses it as `bytes`.
    /// Reverts if the variable was not found or could not be parsed.
    function envBytes(string calldata name) external view returns (bytes memory value);

    /// Gets the environment variable `name` and parses it as an array of `bytes`, delimited by `delim`.
    /// Reverts if the variable was not found or could not be parsed.
    function envBytes(string calldata name, string calldata delim) external view returns (bytes[] memory value);

    /// Gets the environment variable `name` and parses it as `int256`.
    /// Reverts if the variable was not found or could not be parsed.
    function envInt(string calldata name) external view returns (int256 value);

    /// Gets the environment variable `name` and parses it as an array of `int256`, delimited by `delim`.
    /// Reverts if the variable was not found or could not be parsed.
    function envInt(string calldata name, string calldata delim) external view returns (int256[] memory value);

    /// Gets the environment variable `name` and parses it as `bool`.
    /// Reverts if the variable could not be parsed.
    /// Returns `defaultValue` if the variable was not found.
    function envOr(string calldata name, bool defaultValue) external view returns (bool value);

    /// Gets the environment variable `name` and parses it as `uint256`.
    /// Reverts if the variable could not be parsed.
    /// Returns `defaultValue` if the variable was not found.
    function envOr(string calldata name, uint256 defaultValue) external view returns (uint256 value);

    /// Gets the environment variable `name` and parses it as an array of `address`, delimited by `delim`.
    /// Reverts if the variable could not be parsed.
    /// Returns `defaultValue` if the variable was not found.
    function envOr(string calldata name, string calldata delim, address[] calldata defaultValue)
        external
        view
        returns (address[] memory value);

    /// Gets the environment variable `name` and parses it as an array of `bytes32`, delimited by `delim`.
    /// Reverts if the variable could not be parsed.
    /// Returns `defaultValue` if the variable was not found.
    function envOr(string calldata name, string calldata delim, bytes32[] calldata defaultValue)
        external
        view
        returns (bytes32[] memory value);

    /// Gets the environment variable `name` and parses it as an array of `string`, delimited by `delim`.
    /// Reverts if the variable could not be parsed.
    /// Returns `defaultValue` if the variable was not found.
    function envOr(string calldata name, string calldata delim, string[] calldata defaultValue)
        external
        view
        returns (string[] memory value);

    /// Gets the environment variable `name` and parses it as an array of `bytes`, delimited by `delim`.
    /// Reverts if the variable could not be parsed.
    /// Returns `defaultValue` if the variable was not found.
    function envOr(string calldata name, string calldata delim, bytes[] calldata defaultValue)
        external
        view
        returns (bytes[] memory value);

    /// Gets the environment variable `name` and parses it as `int256`.
    /// Reverts if the variable could not be parsed.
    /// Returns `defaultValue` if the variable was not found.
    function envOr(string calldata name, int256 defaultValue) external view returns (int256 value);

    /// Gets the environment variable `name` and parses it as `address`.
    /// Reverts if the variable could not be parsed.
    /// Returns `defaultValue` if the variable was not found.
    function envOr(string calldata name, address defaultValue) external view returns (address value);

    /// Gets the environment variable `name` and parses it as `bytes32`.
    /// Reverts if the variable could not be parsed.
    /// Returns `defaultValue` if the variable was not found.
    function envOr(string calldata name, bytes32 defaultValue) external view returns (bytes32 value);

    /// Gets the environment variable `name` and parses it as `string`.
    /// Reverts if the variable could not be parsed.
    /// Returns `defaultValue` if the variable was not found.
    function envOr(string calldata name, string calldata defaultValue) external view returns (string memory value);

    /// Gets the environment variable `name` and parses it as `bytes`.
    /// Reverts if the variable could not be parsed.
    /// Returns `defaultValue` if the variable was not found.
    function envOr(string calldata name, bytes calldata defaultValue) external view returns (bytes memory value);

    /// Gets the environment variable `name` and parses it as an array of `bool`, delimited by `delim`.
    /// Reverts if the variable could not be parsed.
    /// Returns `defaultValue` if the variable was not found.
    function envOr(string calldata name, string calldata delim, bool[] calldata defaultValue)
        external
        view
        returns (bool[] memory value);

    /// Gets the environment variable `name` and parses it as an array of `uint256`, delimited by `delim`.
    /// Reverts if the variable could not be parsed.
    /// Returns `defaultValue` if the variable was not found.
    function envOr(string calldata name, string calldata delim, uint256[] calldata defaultValue)
        external
        view
        returns (uint256[] memory value);

    /// Gets the environment variable `name` and parses it as an array of `int256`, delimited by `delim`.
    /// Reverts if the variable could not be parsed.
    /// Returns `defaultValue` if the variable was not found.
    function envOr(string calldata name, string calldata delim, int256[] calldata defaultValue)
        external
        view
        returns (int256[] memory value);

    /// Gets the environment variable `name` and parses it as `string`.
    /// Reverts if the variable was not found or could not be parsed.
    function envString(string calldata name) external view returns (string memory value);

    /// Gets the environment variable `name` and parses it as an array of `string`, delimited by `delim`.
    /// Reverts if the variable was not found or could not be parsed.
    function envString(string calldata name, string calldata delim) external view returns (string[] memory value);

    /// Gets the environment variable `name` and parses it as `uint256`.
    /// Reverts if the variable was not found or could not be parsed.
    function envUint(string calldata name) external view returns (uint256 value);

    /// Gets the environment variable `name` and parses it as an array of `uint256`, delimited by `delim`.
    /// Reverts if the variable was not found or could not be parsed.
    function envUint(string calldata name, string calldata delim) external view returns (uint256[] memory value);

    /// Sets environment variables.
    function setEnv(string calldata name, string calldata value) external;

    // ======== EVM ========

    /// Gets all accessed reads and write slot from a `vm.record` session, for a given address.
    function accesses(address target) external returns (bytes32[] memory readSlots, bytes32[] memory writeSlots);

    /// Gets the address for a given private key.
    function addr(uint256 privateKey) external pure returns (address keyAddr);

    /// Gets all the logs according to specified filter.
    function eth_getLogs(uint256 fromBlock, uint256 toBlock, address target, bytes32[] calldata topics)
        external
        returns (EthGetLogs[] memory logs);

    /// Gets the current `block.number`.
    /// You should use this instead of `block.number` if you use `vm.roll`, as `block.number` is assumed to be constant across a transaction,
    /// and as a result will get optimized out by the compiler.
    /// See https://github.com/foundry-rs/foundry/issues/6180
    function getBlockNumber() external view returns (uint256 height);

    /// Gets the current `block.timestamp`.
    /// You should use this instead of `block.timestamp` if you use `vm.warp`, as `block.timestamp` is assumed to be constant across a transaction,
    /// and as a result will get optimized out by the compiler.
    /// See https://github.com/foundry-rs/foundry/issues/6180
    function getBlockTimestamp() external view returns (uint256 timestamp);

    /// Gets the map key and parent of a mapping at a given slot, for a given address.
    function getMappingKeyAndParentOf(address target, bytes32 elementSlot)
        external
        returns (bool found, bytes32 key, bytes32 parent);

    /// Gets the number of elements in the mapping at the given slot, for a given address.
    function getMappingLength(address target, bytes32 mappingSlot) external returns (uint256 length);

    /// Gets the elements at index idx of the mapping at the given slot, for a given address. The
    /// index must be less than the length of the mapping (i.e. the number of keys in the mapping).
    function getMappingSlotAt(address target, bytes32 mappingSlot, uint256 idx) external returns (bytes32 value);

    /// Gets the nonce of an account.
    function getNonce(address account) external view returns (uint64 nonce);

    /// Gets all the recorded logs.
    function getRecordedLogs() external returns (Log[] memory logs);

    /// Loads a storage slot from an address.
    function load(address target, bytes32 slot) external view returns (bytes32 data);

    /// Pauses gas metering (i.e. gas usage is not counted). Noop if already paused.
    function pauseGasMetering() external;

    /// Records all storage reads and writes.
    function record() external;

    /// Record all the transaction logs.
    function recordLogs() external;

    /// Resumes gas metering (i.e. gas usage is counted again). Noop if already on.
    function resumeGasMetering() external;

    /// Performs an Ethereum JSON-RPC request to the current fork URL.
    function rpc(string calldata method, string calldata params) external returns (bytes memory data);

    /// Signs `digest` with `privateKey` using the secp256r1 curve.
    function signP256(uint256 privateKey, bytes32 digest) external pure returns (bytes32 r, bytes32 s);

    /// Signs `digest` with `privateKey` using the secp256k1 curve.
    function sign(uint256 privateKey, bytes32 digest) external pure returns (uint8 v, bytes32 r, bytes32 s);

    /// Starts recording all map SSTOREs for later retrieval.
    function startMappingRecording() external;

    /// Record all account accesses as part of CREATE, CALL or SELFDESTRUCT opcodes in order,
    /// along with the context of the calls
    function startStateDiffRecording() external;

    /// Returns an ordered array of all account accesses from a `vm.startStateDiffRecording` session.
    function stopAndReturnStateDiff() external returns (AccountAccess[] memory accountAccesses);

    /// Stops recording all map SSTOREs for later retrieval and clears the recorded data.
    function stopMappingRecording() external;

    // ======== Filesystem ========

    /// Closes file for reading, resetting the offset and allowing to read it from beginning with readLine.
    /// `path` is relative to the project root.
    function closeFile(string calldata path) external;

    /// Copies the contents of one file to another. This function will **overwrite** the contents of `to`.
    /// On success, the total number of bytes copied is returned and it is equal to the length of the `to` file as reported by `metadata`.
    /// Both `from` and `to` are relative to the project root.
    function copyFile(string calldata from, string calldata to) external returns (uint64 copied);

    /// Creates a new, empty directory at the provided path.
    /// This cheatcode will revert in the following situations, but is not limited to just these cases:
    /// - User lacks permissions to modify `path`.
    /// - A parent of the given path doesn't exist and `recursive` is false.
    /// - `path` already exists and `recursive` is false.
    /// `path` is relative to the project root.
    function createDir(string calldata path, bool recursive) external;

    /// Returns true if the given path points to an existing entity, else returns false.
    function exists(string calldata path) external returns (bool result);

    /// Performs a foreign function call via the terminal.
    function ffi(string[] calldata commandInput) external returns (bytes memory result);

    /// Given a path, query the file system to get information about a file, directory, etc.
    function fsMetadata(string calldata path) external view returns (FsMetadata memory metadata);

    /// Gets the creation bytecode from an artifact file. Takes in the relative path to the json file.
    function getCode(string calldata artifactPath) external view returns (bytes memory creationBytecode);

    /// Gets the deployed bytecode from an artifact file. Takes in the relative path to the json file.
    function getDeployedCode(string calldata artifactPath) external view returns (bytes memory runtimeBytecode);

    /// Returns true if the path exists on disk and is pointing at a directory, else returns false.
    function isDir(string calldata path) external returns (bool result);

    /// Returns true if the path exists on disk and is pointing at a regular file, else returns false.
    function isFile(string calldata path) external returns (bool result);

    /// Get the path of the current project root.
    function projectRoot() external view returns (string memory path);

    /// Reads the directory at the given path recursively, up to `maxDepth`.
    /// `maxDepth` defaults to 1, meaning only the direct children of the given directory will be returned.
    /// Follows symbolic links if `followLinks` is true.
    function readDir(string calldata path) external view returns (DirEntry[] memory entries);

    /// See `readDir(string)`.
    function readDir(string calldata path, uint64 maxDepth) external view returns (DirEntry[] memory entries);

    /// See `readDir(string)`.
    function readDir(string calldata path, uint64 maxDepth, bool followLinks)
        external
        view
        returns (DirEntry[] memory entries);

    /// Reads the entire content of file to string. `path` is relative to the project root.
    function readFile(string calldata path) external view returns (string memory data);

    /// Reads the entire content of file as binary. `path` is relative to the project root.
    function readFileBinary(string calldata path) external view returns (bytes memory data);

    /// Reads next line of file to string.
    function readLine(string calldata path) external view returns (string memory line);

    /// Reads a symbolic link, returning the path that the link points to.
    /// This cheatcode will revert in the following situations, but is not limited to just these cases:
    /// - `path` is not a symbolic link.
    /// - `path` does not exist.
    function readLink(string calldata linkPath) external view returns (string memory targetPath);

    /// Removes a directory at the provided path.
    /// This cheatcode will revert in the following situations, but is not limited to just these cases:
    /// - `path` doesn't exist.
    /// - `path` isn't a directory.
    /// - User lacks permissions to modify `path`.
    /// - The directory is not empty and `recursive` is false.
    /// `path` is relative to the project root.
    function removeDir(string calldata path, bool recursive) external;

    /// Removes a file from the filesystem.
    /// This cheatcode will revert in the following situations, but is not limited to just these cases:
    /// - `path` points to a directory.
    /// - The file doesn't exist.
    /// - The user lacks permissions to remove the file.
    /// `path` is relative to the project root.
    function removeFile(string calldata path) external;

    /// Performs a foreign function call via terminal and returns the exit code, stdout, and stderr.
    function tryFfi(string[] calldata commandInput) external returns (FfiResult memory result);

    /// Returns the time since unix epoch in milliseconds.
    function unixTime() external returns (uint256 milliseconds);

    /// Writes data to file, creating a file if it does not exist, and entirely replacing its contents if it does.
    /// `path` is relative to the project root.
    function writeFile(string calldata path, string calldata data) external;

    /// Writes binary data to a file, creating a file if it does not exist, and entirely replacing its contents if it does.
    /// `path` is relative to the project root.
    function writeFileBinary(string calldata path, bytes calldata data) external;

    /// Writes line to file, creating a file if it does not exist.
    /// `path` is relative to the project root.
    function writeLine(string calldata path, string calldata data) external;

    // ======== JSON ========

    /// Checks if `key` exists in a JSON object
    /// `keyExists` is being deprecated in favor of `keyExistsJson`. It will be removed in future versions.
    function keyExists(string calldata json, string calldata key) external view returns (bool);

    /// Checks if `key` exists in a JSON object.
    function keyExistsJson(string calldata json, string calldata key) external view returns (bool);

    /// Parses a string of JSON data at `key` and coerces it to `address`.
    function parseJsonAddress(string calldata json, string calldata key) external pure returns (address);

    /// Parses a string of JSON data at `key` and coerces it to `address[]`.
    function parseJsonAddressArray(string calldata json, string calldata key)
        external
        pure
        returns (address[] memory);

    /// Parses a string of JSON data at `key` and coerces it to `bool`.
    function parseJsonBool(string calldata json, string calldata key) external pure returns (bool);

    /// Parses a string of JSON data at `key` and coerces it to `bool[]`.
    function parseJsonBoolArray(string calldata json, string calldata key) external pure returns (bool[] memory);

    /// Parses a string of JSON data at `key` and coerces it to `bytes`.
    function parseJsonBytes(string calldata json, string calldata key) external pure returns (bytes memory);

    /// Parses a string of JSON data at `key` and coerces it to `bytes32`.
    function parseJsonBytes32(string calldata json, string calldata key) external pure returns (bytes32);

    /// Parses a string of JSON data at `key` and coerces it to `bytes32[]`.
    function parseJsonBytes32Array(string calldata json, string calldata key)
        external
        pure
        returns (bytes32[] memory);

    /// Parses a string of JSON data at `key` and coerces it to `bytes[]`.
    function parseJsonBytesArray(string calldata json, string calldata key) external pure returns (bytes[] memory);

    /// Parses a string of JSON data at `key` and coerces it to `int256`.
    function parseJsonInt(string calldata json, string calldata key) external pure returns (int256);

    /// Parses a string of JSON data at `key` and coerces it to `int256[]`.
    function parseJsonIntArray(string calldata json, string calldata key) external pure returns (int256[] memory);

    /// Returns an array of all the keys in a JSON object.
    function parseJsonKeys(string calldata json, string calldata key) external pure returns (string[] memory keys);

    /// Parses a string of JSON data at `key` and coerces it to `string`.
    function parseJsonString(string calldata json, string calldata key) external pure returns (string memory);

    /// Parses a string of JSON data at `key` and coerces it to `string[]`.
    function parseJsonStringArray(string calldata json, string calldata key) external pure returns (string[] memory);

    /// Parses a string of JSON data at `key` and coerces it to `uint256`.
    function parseJsonUint(string calldata json, string calldata key) external pure returns (uint256);

    /// Parses a string of JSON data at `key` and coerces it to `uint256[]`.
    function parseJsonUintArray(string calldata json, string calldata key) external pure returns (uint256[] memory);

    /// ABI-encodes a JSON object.
    function parseJson(string calldata json) external pure returns (bytes memory abiEncodedData);

    /// ABI-encodes a JSON object at `key`.
    function parseJson(string calldata json, string calldata key) external pure returns (bytes memory abiEncodedData);

    /// See `serializeJson`.
    function serializeAddress(string calldata objectKey, string calldata valueKey, address value)
        external
        returns (string memory json);

    /// See `serializeJson`.
    function serializeAddress(string calldata objectKey, string calldata valueKey, address[] calldata values)
        external
        returns (string memory json);

    /// See `serializeJson`.
    function serializeBool(string calldata objectKey, string calldata valueKey, bool value)
        external
        returns (string memory json);

    /// See `serializeJson`.
    function serializeBool(string calldata objectKey, string calldata valueKey, bool[] calldata values)
        external
        returns (string memory json);

    /// See `serializeJson`.
    function serializeBytes32(string calldata objectKey, string calldata valueKey, bytes32 value)
        external
        returns (string memory json);

    /// See `serializeJson`.
    function serializeBytes32(string calldata objectKey, string calldata valueKey, bytes32[] calldata values)
        external
        returns (string memory json);

    /// See `serializeJson`.
    function serializeBytes(string calldata objectKey, string calldata valueKey, bytes calldata value)
        external
        returns (string memory json);

    /// See `serializeJson`.
    function serializeBytes(string calldata objectKey, string calldata valueKey, bytes[] calldata values)
        external
        returns (string memory json);

    /// See `serializeJson`.
    function serializeInt(string calldata objectKey, string calldata valueKey, int256 value)
        external
        returns (string memory json);

    /// See `serializeJson`.
    function serializeInt(string calldata objectKey, string calldata valueKey, int256[] calldata values)
        external
        returns (string memory json);

    /// Serializes a key and value to a JSON object stored in-memory that can be later written to a file.
    /// Returns the stringified version of the specific JSON file up to that moment.
    function serializeJson(string calldata objectKey, string calldata value) external returns (string memory json);

    /// See `serializeJson`.
    function serializeString(string calldata objectKey, string calldata valueKey, string calldata value)
        external
        returns (string memory json);

    /// See `serializeJson`.
    function serializeString(string calldata objectKey, string calldata valueKey, string[] calldata values)
        external
        returns (string memory json);

    /// See `serializeJson`.
    function serializeUint(string calldata objectKey, string calldata valueKey, uint256 value)
        external
        returns (string memory json);

    /// See `serializeJson`.
    function serializeUint(string calldata objectKey, string calldata valueKey, uint256[] calldata values)
        external
        returns (string memory json);

    /// Write a serialized JSON object to a file. If the file exists, it will be overwritten.
    function writeJson(string calldata json, string calldata path) external;

    /// Write a serialized JSON object to an **existing** JSON file, replacing a value with key = <value_key.>
    /// This is useful to replace a specific value of a JSON file, without having to parse the entire thing.
    function writeJson(string calldata json, string calldata path, string calldata valueKey) external;

    // ======== Scripting ========

    /// Using the address that calls the test contract, has the next call (at this call depth only)
    /// create a transaction that can later be signed and sent onchain.
    function broadcast() external;

    /// Has the next call (at this call depth only) create a transaction with the address provided
    /// as the sender that can later be signed and sent onchain.
    function broadcast(address signer) external;

    /// Has the next call (at this call depth only) create a transaction with the private key
    /// provided as the sender that can later be signed and sent onchain.
    function broadcast(uint256 privateKey) external;

    /// Using the address that calls the test contract, has all subsequent calls
    /// (at this call depth only) create transactions that can later be signed and sent onchain.
    function startBroadcast() external;

    /// Has all subsequent calls (at this call depth only) create transactions with the address
    /// provided that can later be signed and sent onchain.
    function startBroadcast(address signer) external;

    /// Has all subsequent calls (at this call depth only) create transactions with the private key
    /// provided that can later be signed and sent onchain.
    function startBroadcast(uint256 privateKey) external;

    /// Stops collecting onchain transactions.
    function stopBroadcast() external;

    // ======== String ========

    /// Parses the given `string` into an `address`.
    function parseAddress(string calldata stringifiedValue) external pure returns (address parsedValue);

    /// Parses the given `string` into a `bool`.
    function parseBool(string calldata stringifiedValue) external pure returns (bool parsedValue);

    /// Parses the given `string` into `bytes`.
    function parseBytes(string calldata stringifiedValue) external pure returns (bytes memory parsedValue);

    /// Parses the given `string` into a `bytes32`.
    function parseBytes32(string calldata stringifiedValue) external pure returns (bytes32 parsedValue);

    /// Parses the given `string` into a `int256`.
    function parseInt(string calldata stringifiedValue) external pure returns (int256 parsedValue);

    /// Parses the given `string` into a `uint256`.
    function parseUint(string calldata stringifiedValue) external pure returns (uint256 parsedValue);

    /// Replaces occurrences of `from` in the given `string` with `to`.
    function replace(string calldata input, string calldata from, string calldata to)
        external
        pure
        returns (string memory output);

    /// Splits the given `string` into an array of strings divided by the `delimiter`.
    function split(string calldata input, string calldata delimiter) external pure returns (string[] memory outputs);

    /// Converts the given `string` value to Lowercase.
    function toLowercase(string calldata input) external pure returns (string memory output);

    /// Converts the given value to a `string`.
    function toString(address value) external pure returns (string memory stringifiedValue);

    /// Converts the given value to a `string`.
    function toString(bytes calldata value) external pure returns (string memory stringifiedValue);

    /// Converts the given value to a `string`.
    function toString(bytes32 value) external pure returns (string memory stringifiedValue);

    /// Converts the given value to a `string`.
    function toString(bool value) external pure returns (string memory stringifiedValue);

    /// Converts the given value to a `string`.
    function toString(uint256 value) external pure returns (string memory stringifiedValue);

    /// Converts the given value to a `string`.
    function toString(int256 value) external pure returns (string memory stringifiedValue);

    /// Converts the given `string` value to Uppercase.
    function toUppercase(string calldata input) external pure returns (string memory output);

    /// Trims leading and trailing whitespace from the given `string` value.
    function trim(string calldata input) external pure returns (string memory output);

    // ======== Testing ========

    /// Compares two `uint256` values. Expects difference to be less than or equal to `maxDelta`.
    /// Formats values with decimals in failure message.
    function assertApproxEqAbsDecimal(uint256 left, uint256 right, uint256 maxDelta, uint256 decimals) external pure;

    /// Compares two `uint256` values. Expects difference to be less than or equal to `maxDelta`.
    /// Formats values with decimals in failure message. Includes error message into revert string on failure.
    function assertApproxEqAbsDecimal(
        uint256 left,
        uint256 right,
        uint256 maxDelta,
        uint256 decimals,
        string calldata error
    ) external pure;

    /// Compares two `int256` values. Expects difference to be less than or equal to `maxDelta`.
    /// Formats values with decimals in failure message.
    function assertApproxEqAbsDecimal(int256 left, int256 right, uint256 maxDelta, uint256 decimals) external pure;

    /// Compares two `int256` values. Expects difference to be less than or equal to `maxDelta`.
    /// Formats values with decimals in failure message. Includes error message into revert string on failure.
    function assertApproxEqAbsDecimal(
        int256 left,
        int256 right,
        uint256 maxDelta,
        uint256 decimals,
        string calldata error
    ) external pure;

    /// Compares two `uint256` values. Expects difference to be less than or equal to `maxDelta`.
    function assertApproxEqAbs(uint256 left, uint256 right, uint256 maxDelta) external pure;

    /// Compares two `uint256` values. Expects difference to be less than or equal to `maxDelta`.
    /// Includes error message into revert string on failure.
    function assertApproxEqAbs(uint256 left, uint256 right, uint256 maxDelta, string calldata error) external pure;

    /// Compares two `int256` values. Expects difference to be less than or equal to `maxDelta`.
    function assertApproxEqAbs(int256 left, int256 right, uint256 maxDelta) external pure;

    /// Compares two `int256` values. Expects difference to be less than or equal to `maxDelta`.
    /// Includes error message into revert string on failure.
    function assertApproxEqAbs(int256 left, int256 right, uint256 maxDelta, string calldata error) external pure;

    /// Compares two `uint256` values. Expects relative difference in percents to be less than or equal to `maxPercentDelta`.
    /// `maxPercentDelta` is an 18 decimal fixed point number, where 1e18 == 100%
    /// Formats values with decimals in failure message.
    function assertApproxEqRelDecimal(uint256 left, uint256 right, uint256 maxPercentDelta, uint256 decimals)
        external
        pure;

    /// Compares two `uint256` values. Expects relative difference in percents to be less than or equal to `maxPercentDelta`.
    /// `maxPercentDelta` is an 18 decimal fixed point number, where 1e18 == 100%
    /// Formats values with decimals in failure message. Includes error message into revert string on failure.
    function assertApproxEqRelDecimal(
        uint256 left,
        uint256 right,
        uint256 maxPercentDelta,
        uint256 decimals,
        string calldata error
    ) external pure;

    /// Compares two `int256` values. Expects relative difference in percents to be less than or equal to `maxPercentDelta`.
    /// `maxPercentDelta` is an 18 decimal fixed point number, where 1e18 == 100%
    /// Formats values with decimals in failure message.
    function assertApproxEqRelDecimal(int256 left, int256 right, uint256 maxPercentDelta, uint256 decimals)
        external
        pure;

    /// Compares two `int256` values. Expects relative difference in percents to be less than or equal to `maxPercentDelta`.
    /// `maxPercentDelta` is an 18 decimal fixed point number, where 1e18 == 100%
    /// Formats values with decimals in failure message. Includes error message into revert string on failure.
    function assertApproxEqRelDecimal(
        int256 left,
        int256 right,
        uint256 maxPercentDelta,
        uint256 decimals,
        string calldata error
    ) external pure;

    /// Compares two `uint256` values. Expects relative difference in percents to be less than or equal to `maxPercentDelta`.
    /// `maxPercentDelta` is an 18 decimal fixed point number, where 1e18 == 100%
    function assertApproxEqRel(uint256 left, uint256 right, uint256 maxPercentDelta) external pure;

    /// Compares two `uint256` values. Expects relative difference in percents to be less than or equal to `maxPercentDelta`.
    /// `maxPercentDelta` is an 18 decimal fixed point number, where 1e18 == 100%
    /// Includes error message into revert string on failure.
    function assertApproxEqRel(uint256 left, uint256 right, uint256 maxPercentDelta, string calldata error)
        external
        pure;

    /// Compares two `int256` values. Expects relative difference in percents to be less than or equal to `maxPercentDelta`.
    /// `maxPercentDelta` is an 18 decimal fixed point number, where 1e18 == 100%
    function assertApproxEqRel(int256 left, int256 right, uint256 maxPercentDelta) external pure;

    /// Compares two `int256` values. Expects relative difference in percents to be less than or equal to `maxPercentDelta`.
    /// `maxPercentDelta` is an 18 decimal fixed point number, where 1e18 == 100%
    /// Includes error message into revert string on failure.
    function assertApproxEqRel(int256 left, int256 right, uint256 maxPercentDelta, string calldata error)
        external
        pure;

    /// Asserts that two `uint256` values are equal, formatting them with decimals in failure message.
    function assertEqDecimal(uint256 left, uint256 right, uint256 decimals) external pure;

    /// Asserts that two `uint256` values are equal, formatting them with decimals in failure message.
    /// Includes error message into revert string on failure.
    function assertEqDecimal(uint256 left, uint256 right, uint256 decimals, string calldata error) external pure;

    /// Asserts that two `int256` values are equal, formatting them with decimals in failure message.
    function assertEqDecimal(int256 left, int256 right, uint256 decimals) external pure;

    /// Asserts that two `int256` values are equal, formatting them with decimals in failure message.
    /// Includes error message into revert string on failure.
    function assertEqDecimal(int256 left, int256 right, uint256 decimals, string calldata error) external pure;

    /// Asserts that two `bool` values are equal.
    function assertEq(bool left, bool right) external pure;

    /// Asserts that two `bool` values are equal and includes error message into revert string on failure.
    function assertEq(bool left, bool right, string calldata error) external pure;

    /// Asserts that two `string` values are equal.
    function assertEq(string calldata left, string calldata right) external pure;

    /// Asserts that two `string` values are equal and includes error message into revert string on failure.
    function assertEq(string calldata left, string calldata right, string calldata error) external pure;

    /// Asserts that two `bytes` values are equal.
    function assertEq(bytes calldata left, bytes calldata right) external pure;

    /// Asserts that two `bytes` values are equal and includes error message into revert string on failure.
    function assertEq(bytes calldata left, bytes calldata right, string calldata error) external pure;

    /// Asserts that two arrays of `bool` values are equal.
    function assertEq(bool[] calldata left, bool[] calldata right) external pure;

    /// Asserts that two arrays of `bool` values are equal and includes error message into revert string on failure.
    function assertEq(bool[] calldata left, bool[] calldata right, string calldata error) external pure;

    /// Asserts that two arrays of `uint256 values are equal.
    function assertEq(uint256[] calldata left, uint256[] calldata right) external pure;

    /// Asserts that two arrays of `uint256` values are equal and includes error message into revert string on failure.
    function assertEq(uint256[] calldata left, uint256[] calldata right, string calldata error) external pure;

    /// Asserts that two arrays of `int256` values are equal.
    function assertEq(int256[] calldata left, int256[] calldata right) external pure;

    /// Asserts that two arrays of `int256` values are equal and includes error message into revert string on failure.
    function assertEq(int256[] calldata left, int256[] calldata right, string calldata error) external pure;

    /// Asserts that two `uint256` values are equal.
    function assertEq(uint256 left, uint256 right) external pure;

    /// Asserts that two arrays of `address` values are equal.
    function assertEq(address[] calldata left, address[] calldata right) external pure;

    /// Asserts that two arrays of `address` values are equal and includes error message into revert string on failure.
    function assertEq(address[] calldata left, address[] calldata right, string calldata error) external pure;

    /// Asserts that two arrays of `bytes32` values are equal.
    function assertEq(bytes32[] calldata left, bytes32[] calldata right) external pure;

    /// Asserts that two arrays of `bytes32` values are equal and includes error message into revert string on failure.
    function assertEq(bytes32[] calldata left, bytes32[] calldata right, string calldata error) external pure;

    /// Asserts that two arrays of `string` values are equal.
    function assertEq(string[] calldata left, string[] calldata right) external pure;

    /// Asserts that two arrays of `string` values are equal and includes error message into revert string on failure.
    function assertEq(string[] calldata left, string[] calldata right, string calldata error) external pure;

    /// Asserts that two arrays of `bytes` values are equal.
    function assertEq(bytes[] calldata left, bytes[] calldata right) external pure;

    /// Asserts that two arrays of `bytes` values are equal and includes error message into revert string on failure.
    function assertEq(bytes[] calldata left, bytes[] calldata right, string calldata error) external pure;

    /// Asserts that two `uint256` values are equal and includes error message into revert string on failure.
    function assertEq(uint256 left, uint256 right, string calldata error) external pure;

    /// Asserts that two `int256` values are equal.
    function assertEq(int256 left, int256 right) external pure;

    /// Asserts that two `int256` values are equal and includes error message into revert string on failure.
    function assertEq(int256 left, int256 right, string calldata error) external pure;

    /// Asserts that two `address` values are equal.
    function assertEq(address left, address right) external pure;

    /// Asserts that two `address` values are equal and includes error message into revert string on failure.
    function assertEq(address left, address right, string calldata error) external pure;

    /// Asserts that two `bytes32` values are equal.
    function assertEq(bytes32 left, bytes32 right) external pure;

    /// Asserts that two `bytes32` values are equal and includes error message into revert string on failure.
    function assertEq(bytes32 left, bytes32 right, string calldata error) external pure;

    /// Asserts that the given condition is false.
    function assertFalse(bool condition) external pure;

    /// Asserts that the given condition is false and includes error message into revert string on failure.
    function assertFalse(bool condition, string calldata error) external pure;

    /// Compares two `uint256` values. Expects first value to be greater than or equal to second.
    /// Formats values with decimals in failure message.
    function assertGeDecimal(uint256 left, uint256 right, uint256 decimals) external pure;

    /// Compares two `uint256` values. Expects first value to be greater than or equal to second.
    /// Formats values with decimals in failure message. Includes error message into revert string on failure.
    function assertGeDecimal(uint256 left, uint256 right, uint256 decimals, string calldata error) external pure;

    /// Compares two `int256` values. Expects first value to be greater than or equal to second.
    /// Formats values with decimals in failure message.
    function assertGeDecimal(int256 left, int256 right, uint256 decimals) external pure;

    /// Compares two `int256` values. Expects first value to be greater than or equal to second.
    /// Formats values with decimals in failure message. Includes error message into revert string on failure.
    function assertGeDecimal(int256 left, int256 right, uint256 decimals, string calldata error) external pure;

    /// Compares two `uint256` values. Expects first value to be greater than or equal to second.
    function assertGe(uint256 left, uint256 right) external pure;

    /// Compares two `uint256` values. Expects first value to be greater than or equal to second.
    /// Includes error message into revert string on failure.
    function assertGe(uint256 left, uint256 right, string calldata error) external pure;

    /// Compares two `int256` values. Expects first value to be greater than or equal to second.
    function assertGe(int256 left, int256 right) external pure;

    /// Compares two `int256` values. Expects first value to be greater than or equal to second.
    /// Includes error message into revert string on failure.
    function assertGe(int256 left, int256 right, string calldata error) external pure;

    /// Compares two `uint256` values. Expects first value to be greater than second.
    /// Formats values with decimals in failure message.
    function assertGtDecimal(uint256 left, uint256 right, uint256 decimals) external pure;

    /// Compares two `uint256` values. Expects first value to be greater than second.
    /// Formats values with decimals in failure message. Includes error message into revert string on failure.
    function assertGtDecimal(uint256 left, uint256 right, uint256 decimals, string calldata error) external pure;

    /// Compares two `int256` values. Expects first value to be greater than second.
    /// Formats values with decimals in failure message.
    function assertGtDecimal(int256 left, int256 right, uint256 decimals) external pure;

    /// Compares two `int256` values. Expects first value to be greater than second.
    /// Formats values with decimals in failure message. Includes error message into revert string on failure.
    function assertGtDecimal(int256 left, int256 right, uint256 decimals, string calldata error) external pure;

    /// Compares two `uint256` values. Expects first value to be greater than second.
    function assertGt(uint256 left, uint256 right) external pure;

    /// Compares two `uint256` values. Expects first value to be greater than second.
    /// Includes error message into revert string on failure.
    function assertGt(uint256 left, uint256 right, string calldata error) external pure;

    /// Compares two `int256` values. Expects first value to be greater than second.
    function assertGt(int256 left, int256 right) external pure;

    /// Compares two `int256` values. Expects first value to be greater than second.
    /// Includes error message into revert string on failure.
    function assertGt(int256 left, int256 right, string calldata error) external pure;

    /// Compares two `uint256` values. Expects first value to be less than or equal to second.
    /// Formats values with decimals in failure message.
    function assertLeDecimal(uint256 left, uint256 right, uint256 decimals) external pure;

    /// Compares two `uint256` values. Expects first value to be less than or equal to second.
    /// Formats values with decimals in failure message. Includes error message into revert string on failure.
    function assertLeDecimal(uint256 left, uint256 right, uint256 decimals, string calldata error) external pure;

    /// Compares two `int256` values. Expects first value to be less than or equal to second.
    /// Formats values with decimals in failure message.
    function assertLeDecimal(int256 left, int256 right, uint256 decimals) external pure;

    /// Compares two `int256` values. Expects first value to be less than or equal to second.
    /// Formats values with decimals in failure message. Includes error message into revert string on failure.
    function assertLeDecimal(int256 left, int256 right, uint256 decimals, string calldata error) external pure;

    /// Compares two `uint256` values. Expects first value to be less than or equal to second.
    function assertLe(uint256 left, uint256 right) external pure;

    /// Compares two `uint256` values. Expects first value to be less than or equal to second.
    /// Includes error message into revert string on failure.
    function assertLe(uint256 left, uint256 right, string calldata error) external pure;

    /// Compares two `int256` values. Expects first value to be less than or equal to second.
    function assertLe(int256 left, int256 right) external pure;

    /// Compares two `int256` values. Expects first value to be less than or equal to second.
    /// Includes error message into revert string on failure.
    function assertLe(int256 left, int256 right, string calldata error) external pure;

    /// Compares two `uint256` values. Expects first value to be less than second.
    /// Formats values with decimals in failure message.
    function assertLtDecimal(uint256 left, uint256 right, uint256 decimals) external pure;

    /// Compares two `uint256` values. Expects first value to be less than second.
    /// Formats values with decimals in failure message. Includes error message into revert string on failure.
    function assertLtDecimal(uint256 left, uint256 right, uint256 decimals, string calldata error) external pure;

    /// Compares two `int256` values. Expects first value to be less than second.
    /// Formats values with decimals in failure message.
    function assertLtDecimal(int256 left, int256 right, uint256 decimals) external pure;

    /// Compares two `int256` values. Expects first value to be less than second.
    /// Formats values with decimals in failure message. Includes error message into revert string on failure.
    function assertLtDecimal(int256 left, int256 right, uint256 decimals, string calldata error) external pure;

    /// Compares two `uint256` values. Expects first value to be less than second.
    function assertLt(uint256 left, uint256 right) external pure;

    /// Compares two `uint256` values. Expects first value to be less than second.
    /// Includes error message into revert string on failure.
    function assertLt(uint256 left, uint256 right, string calldata error) external pure;

    /// Compares two `int256` values. Expects first value to be less than second.
    function assertLt(int256 left, int256 right) external pure;

    /// Compares two `int256` values. Expects first value to be less than second.
    /// Includes error message into revert string on failure.
    function assertLt(int256 left, int256 right, string calldata error) external pure;

    /// Asserts that two `uint256` values are not equal, formatting them with decimals in failure message.
    function assertNotEqDecimal(uint256 left, uint256 right, uint256 decimals) external pure;

    /// Asserts that two `uint256` values are not equal, formatting them with decimals in failure message.
    /// Includes error message into revert string on failure.
    function assertNotEqDecimal(uint256 left, uint256 right, uint256 decimals, string calldata error) external pure;

    /// Asserts that two `int256` values are not equal, formatting them with decimals in failure message.
    function assertNotEqDecimal(int256 left, int256 right, uint256 decimals) external pure;

    /// Asserts that two `int256` values are not equal, formatting them with decimals in failure message.
    /// Includes error message into revert string on failure.
    function assertNotEqDecimal(int256 left, int256 right, uint256 decimals, string calldata error) external pure;

    /// Asserts that two `bool` values are not equal.
    function assertNotEq(bool left, bool right) external pure;

    /// Asserts that two `bool` values are not equal and includes error message into revert string on failure.
    function assertNotEq(bool left, bool right, string calldata error) external pure;

    /// Asserts that two `string` values are not equal.
    function assertNotEq(string calldata left, string calldata right) external pure;

    /// Asserts that two `string` values are not equal and includes error message into revert string on failure.
    function assertNotEq(string calldata left, string calldata right, string calldata error) external pure;

    /// Asserts that two `bytes` values are not equal.
    function assertNotEq(bytes calldata left, bytes calldata right) external pure;

    /// Asserts that two `bytes` values are not equal and includes error message into revert string on failure.
    function assertNotEq(bytes calldata left, bytes calldata right, string calldata error) external pure;

    /// Asserts that two arrays of `bool` values are not equal.
    function assertNotEq(bool[] calldata left, bool[] calldata right) external pure;

    /// Asserts that two arrays of `bool` values are not equal and includes error message into revert string on failure.
    function assertNotEq(bool[] calldata left, bool[] calldata right, string calldata error) external pure;

    /// Asserts that two arrays of `uint256` values are not equal.
    function assertNotEq(uint256[] calldata left, uint256[] calldata right) external pure;

    /// Asserts that two arrays of `uint256` values are not equal and includes error message into revert string on failure.
    function assertNotEq(uint256[] calldata left, uint256[] calldata right, string calldata error) external pure;

    /// Asserts that two arrays of `int256` values are not equal.
    function assertNotEq(int256[] calldata left, int256[] calldata right) external pure;

    /// Asserts that two arrays of `int256` values are not equal and includes error message into revert string on failure.
    function assertNotEq(int256[] calldata left, int256[] calldata right, string calldata error) external pure;

    /// Asserts that two `uint256` values are not equal.
    function assertNotEq(uint256 left, uint256 right) external pure;

    /// Asserts that two arrays of `address` values are not equal.
    function assertNotEq(address[] calldata left, address[] calldata right) external pure;

    /// Asserts that two arrays of `address` values are not equal and includes error message into revert string on failure.
    function assertNotEq(address[] calldata left, address[] calldata right, string calldata error) external pure;

    /// Asserts that two arrays of `bytes32` values are not equal.
    function assertNotEq(bytes32[] calldata left, bytes32[] calldata right) external pure;

    /// Asserts that two arrays of `bytes32` values are not equal and includes error message into revert string on failure.
    function assertNotEq(bytes32[] calldata left, bytes32[] calldata right, string calldata error) external pure;

    /// Asserts that two arrays of `string` values are not equal.
    function assertNotEq(string[] calldata left, string[] calldata right) external pure;

    /// Asserts that two arrays of `string` values are not equal and includes error message into revert string on failure.
    function assertNotEq(string[] calldata left, string[] calldata right, string calldata error) external pure;

    /// Asserts that two arrays of `bytes` values are not equal.
    function assertNotEq(bytes[] calldata left, bytes[] calldata right) external pure;

    /// Asserts that two arrays of `bytes` values are not equal and includes error message into revert string on failure.
    function assertNotEq(bytes[] calldata left, bytes[] calldata right, string calldata error) external pure;

    /// Asserts that two `uint256` values are not equal and includes error message into revert string on failure.
    function assertNotEq(uint256 left, uint256 right, string calldata error) external pure;

    /// Asserts that two `int256` values are not equal.
    function assertNotEq(int256 left, int256 right) external pure;

    /// Asserts that two `int256` values are not equal and includes error message into revert string on failure.
    function assertNotEq(int256 left, int256 right, string calldata error) external pure;

    /// Asserts that two `address` values are not equal.
    function assertNotEq(address left, address right) external pure;

    /// Asserts that two `address` values are not equal and includes error message into revert string on failure.
    function assertNotEq(address left, address right, string calldata error) external pure;

    /// Asserts that two `bytes32` values are not equal.
    function assertNotEq(bytes32 left, bytes32 right) external pure;

    /// Asserts that two `bytes32` values are not equal and includes error message into revert string on failure.
    function assertNotEq(bytes32 left, bytes32 right, string calldata error) external pure;

    /// Asserts that the given condition is true.
    function assertTrue(bool condition) external pure;

    /// Asserts that the given condition is true and includes error message into revert string on failure.
    function assertTrue(bool condition, string calldata error) external pure;

    /// If the condition is false, discard this run's fuzz inputs and generate new ones.
    function assume(bool condition) external pure;

    /// Writes a breakpoint to jump to in the debugger.
    function breakpoint(string calldata char) external;

    /// Writes a conditional breakpoint to jump to in the debugger.
    function breakpoint(string calldata char, bool value) external;

    /// Returns the RPC url for the given alias.
    function rpcUrl(string calldata rpcAlias) external view returns (string memory json);

    /// Returns all rpc urls and their aliases as structs.
    function rpcUrlStructs() external view returns (Rpc[] memory urls);

    /// Returns all rpc urls and their aliases `[alias, url][]`.
    function rpcUrls() external view returns (string[2][] memory urls);

    /// Suspends execution of the main thread for `duration` milliseconds.
    function sleep(uint256 duration) external;

    // ======== Toml ========

    /// Checks if `key` exists in a TOML table.
    function keyExistsToml(string calldata toml, string calldata key) external view returns (bool);

    /// Parses a string of TOML data at `key` and coerces it to `address`.
    function parseTomlAddress(string calldata toml, string calldata key) external pure returns (address);

    /// Parses a string of TOML data at `key` and coerces it to `address[]`.
    function parseTomlAddressArray(string calldata toml, string calldata key)
        external
        pure
        returns (address[] memory);

    /// Parses a string of TOML data at `key` and coerces it to `bool`.
    function parseTomlBool(string calldata toml, string calldata key) external pure returns (bool);

    /// Parses a string of TOML data at `key` and coerces it to `bool[]`.
    function parseTomlBoolArray(string calldata toml, string calldata key) external pure returns (bool[] memory);

    /// Parses a string of TOML data at `key` and coerces it to `bytes`.
    function parseTomlBytes(string calldata toml, string calldata key) external pure returns (bytes memory);

    /// Parses a string of TOML data at `key` and coerces it to `bytes32`.
    function parseTomlBytes32(string calldata toml, string calldata key) external pure returns (bytes32);

    /// Parses a string of TOML data at `key` and coerces it to `bytes32[]`.
    function parseTomlBytes32Array(string calldata toml, string calldata key)
        external
        pure
        returns (bytes32[] memory);

    /// Parses a string of TOML data at `key` and coerces it to `bytes[]`.
    function parseTomlBytesArray(string calldata toml, string calldata key) external pure returns (bytes[] memory);

    /// Parses a string of TOML data at `key` and coerces it to `int256`.
    function parseTomlInt(string calldata toml, string calldata key) external pure returns (int256);

    /// Parses a string of TOML data at `key` and coerces it to `int256[]`.
    function parseTomlIntArray(string calldata toml, string calldata key) external pure returns (int256[] memory);

    /// Returns an array of all the keys in a TOML table.
    function parseTomlKeys(string calldata toml, string calldata key) external pure returns (string[] memory keys);

    /// Parses a string of TOML data at `key` and coerces it to `string`.
    function parseTomlString(string calldata toml, string calldata key) external pure returns (string memory);

    /// Parses a string of TOML data at `key` and coerces it to `string[]`.
    function parseTomlStringArray(string calldata toml, string calldata key) external pure returns (string[] memory);

    /// Parses a string of TOML data at `key` and coerces it to `uint256`.
    function parseTomlUint(string calldata toml, string calldata key) external pure returns (uint256);

    /// Parses a string of TOML data at `key` and coerces it to `uint256[]`.
    function parseTomlUintArray(string calldata toml, string calldata key) external pure returns (uint256[] memory);

    /// ABI-encodes a TOML table.
    function parseToml(string calldata toml) external pure returns (bytes memory abiEncodedData);

    /// ABI-encodes a TOML table at `key`.
    function parseToml(string calldata toml, string calldata key) external pure returns (bytes memory abiEncodedData);

    /// Takes serialized JSON, converts to TOML and write a serialized TOML to a file.
    function writeToml(string calldata json, string calldata path) external;

    /// Takes serialized JSON, converts to TOML and write a serialized TOML table to an **existing** TOML file, replacing a value with key = <value_key.>
    /// This is useful to replace a specific value of a TOML file, without having to parse the entire thing.
    function writeToml(string calldata json, string calldata path, string calldata valueKey) external;

    // ======== Utilities ========

    /// Compute the address of a contract created with CREATE2 using the given CREATE2 deployer.
    function computeCreate2Address(bytes32 salt, bytes32 initCodeHash, address deployer)
        external
        pure
        returns (address);

    /// Compute the address of a contract created with CREATE2 using the default CREATE2 deployer.
    function computeCreate2Address(bytes32 salt, bytes32 initCodeHash) external pure returns (address);

    /// Compute the address a contract will be deployed at for a given deployer address and nonce.
    function computeCreateAddress(address deployer, uint256 nonce) external pure returns (address);

    /// Derives a private key from the name, labels the account with that name, and returns the wallet.
    function createWallet(string calldata walletLabel) external returns (Wallet memory wallet);

    /// Generates a wallet from the private key and returns the wallet.
    function createWallet(uint256 privateKey) external returns (Wallet memory wallet);

    /// Generates a wallet from the private key, labels the account with that name, and returns the wallet.
    function createWallet(uint256 privateKey, string calldata walletLabel) external returns (Wallet memory wallet);

    /// Derive a private key from a provided mnenomic string (or mnenomic file path)
    /// at the derivation path `m/44'/60'/0'/0/{index}`.
    function deriveKey(string calldata mnemonic, uint32 index) external pure returns (uint256 privateKey);

    /// Derive a private key from a provided mnenomic string (or mnenomic file path)
    /// at `{derivationPath}{index}`.
    function deriveKey(string calldata mnemonic, string calldata derivationPath, uint32 index)
        external
        pure
        returns (uint256 privateKey);

    /// Derive a private key from a provided mnenomic string (or mnenomic file path) in the specified language
    /// at the derivation path `m/44'/60'/0'/0/{index}`.
    function deriveKey(string calldata mnemonic, uint32 index, string calldata language)
        external
        pure
        returns (uint256 privateKey);

    /// Derive a private key from a provided mnenomic string (or mnenomic file path) in the specified language
    /// at `{derivationPath}{index}`.
    function deriveKey(string calldata mnemonic, string calldata derivationPath, uint32 index, string calldata language)
        external
        pure
        returns (uint256 privateKey);

    /// Gets the label for the specified address.
    function getLabel(address account) external view returns (string memory currentLabel);

    /// Get a `Wallet`'s nonce.
    function getNonce(Wallet calldata wallet) external returns (uint64 nonce);

    /// Labels an address in call traces.
    function label(address account, string calldata newLabel) external;

    /// Adds a private key to the local forge wallet and returns the address.
    function rememberKey(uint256 privateKey) external returns (address keyAddr);

    /// Signs data with a `Wallet`.
    function sign(Wallet calldata wallet, bytes32 digest) external returns (uint8 v, bytes32 r, bytes32 s);

    /// Encodes a `bytes` value to a base64url string.
    function toBase64URL(bytes calldata data) external pure returns (string memory);

    /// Encodes a `string` value to a base64url string.
    function toBase64URL(string calldata data) external pure returns (string memory);

    /// Encodes a `bytes` value to a base64 string.
    function toBase64(bytes calldata data) external pure returns (string memory);

    /// Encodes a `string` value to a base64 string.
    function toBase64(string calldata data) external pure returns (string memory);
}

/// The `Vm` interface does allow manipulation of the EVM state. These are all intended to be used
/// in tests, but it is not recommended to use these cheats in scripts.
interface Vm is VmSafe {
    // ======== EVM ========

    /// Returns the identifier of the currently active fork. Reverts if no fork is currently active.
    function activeFork() external view returns (uint256 forkId);

    /// In forking mode, explicitly grant the given address cheatcode access.
    function allowCheatcodes(address account) external;

    /// Sets `block.chainid`.
    function chainId(uint256 newChainId) external;

    /// Clears all mocked calls.
    function clearMockedCalls() external;

    /// Sets `block.coinbase`.
    function coinbase(address newCoinbase) external;

    /// Creates a new fork with the given endpoint and the _latest_ block and returns the identifier of the fork.
    function createFork(string calldata urlOrAlias) external returns (uint256 forkId);

    /// Creates a new fork with the given endpoint and block and returns the identifier of the fork.
    function createFork(string calldata urlOrAlias, uint256 blockNumber) external returns (uint256 forkId);

    /// Creates a new fork with the given endpoint and at the block the given transaction was mined in,
    /// replays all transaction mined in the block before the transaction, and returns the identifier of the fork.
    function createFork(string calldata urlOrAlias, bytes32 txHash) external returns (uint256 forkId);

    /// Creates and also selects a new fork with the given endpoint and the latest block and returns the identifier of the fork.
    function createSelectFork(string calldata urlOrAlias) external returns (uint256 forkId);

    /// Creates and also selects a new fork with the given endpoint and block and returns the identifier of the fork.
    function createSelectFork(string calldata urlOrAlias, uint256 blockNumber) external returns (uint256 forkId);

    /// Creates and also selects new fork with the given endpoint and at the block the given transaction was mined in,
    /// replays all transaction mined in the block before the transaction, returns the identifier of the fork.
    function createSelectFork(string calldata urlOrAlias, bytes32 txHash) external returns (uint256 forkId);

    /// Sets an address' balance.
    function deal(address account, uint256 newBalance) external;

    /// Removes the snapshot with the given ID created by `snapshot`.
    /// Takes the snapshot ID to delete.
    /// Returns `true` if the snapshot was successfully deleted.
    /// Returns `false` if the snapshot does not exist.
    function deleteSnapshot(uint256 snapshotId) external returns (bool success);

    /// Removes _all_ snapshots previously created by `snapshot`.
    function deleteSnapshots() external;

    /// Sets `block.difficulty`.
    /// Not available on EVM versions from Paris onwards. Use `prevrandao` instead.
    /// Reverts if used on unsupported EVM versions.
    function difficulty(uint256 newDifficulty) external;

    /// Dump a genesis JSON file's `allocs` to disk.
    function dumpState(string calldata pathToStateJson) external;

    /// Sets an address' code.
    function etch(address target, bytes calldata newRuntimeBytecode) external;

    /// Sets `block.basefee`.
    function fee(uint256 newBasefee) external;

    /// Returns true if the account is marked as persistent.
    function isPersistent(address account) external view returns (bool persistent);

    /// Load a genesis JSON file's `allocs` into the in-memory revm state.
    function loadAllocs(string calldata pathToAllocsJson) external;

    /// Marks that the account(s) should use persistent storage across fork swaps in a multifork setup
    /// Meaning, changes made to the state of this account will be kept when switching forks.
    function makePersistent(address account) external;

    /// See `makePersistent(address)`.
    function makePersistent(address account0, address account1) external;

    /// See `makePersistent(address)`.
    function makePersistent(address account0, address account1, address account2) external;

    /// See `makePersistent(address)`.
    function makePersistent(address[] calldata accounts) external;

    /// Reverts a call to an address with specified revert data.
    function mockCallRevert(address callee, bytes calldata data, bytes calldata revertData) external;

    /// Reverts a call to an address with a specific `msg.value`, with specified revert data.
    function mockCallRevert(address callee, uint256 msgValue, bytes calldata data, bytes calldata revertData)
        external;

    /// Mocks a call to an address, returning specified data.
    /// Calldata can either be strict or a partial match, e.g. if you only
    /// pass a Solidity selector to the expected calldata, then the entire Solidity
    /// function will be mocked.
    function mockCall(address callee, bytes calldata data, bytes calldata returnData) external;

    /// Mocks a call to an address with a specific `msg.value`, returning specified data.
    /// Calldata match takes precedence over `msg.value` in case of ambiguity.
    function mockCall(address callee, uint256 msgValue, bytes calldata data, bytes calldata returnData) external;

    /// Sets the *next* call's `msg.sender` to be the input address.
    function prank(address msgSender) external;

    /// Sets the *next* call's `msg.sender` to be the input address, and the `tx.origin` to be the second input.
    function prank(address msgSender, address txOrigin) external;

    /// Sets `block.prevrandao`.
    /// Not available on EVM versions before Paris. Use `difficulty` instead.
    /// If used on unsupported EVM versions it will revert.
    function prevrandao(bytes32 newPrevrandao) external;

    /// Reads the current `msg.sender` and `tx.origin` from state and reports if there is any active caller modification.
    function readCallers() external returns (CallerMode callerMode, address msgSender, address txOrigin);

    /// Resets the nonce of an account to 0 for EOAs and 1 for contract accounts.
    function resetNonce(address account) external;

    /// Revert the state of the EVM to a previous snapshot
    /// Takes the snapshot ID to revert to.
    /// Returns `true` if the snapshot was successfully reverted.
    /// Returns `false` if the snapshot does not exist.
    /// **Note:** This does not automatically delete the snapshot. To delete the snapshot use `deleteSnapshot`.
    function revertTo(uint256 snapshotId) external returns (bool success);

    /// Revert the state of the EVM to a previous snapshot and automatically deletes the snapshots
    /// Takes the snapshot ID to revert to.
    /// Returns `true` if the snapshot was successfully reverted and deleted.
    /// Returns `false` if the snapshot does not exist.
    function revertToAndDelete(uint256 snapshotId) external returns (bool success);

    /// Revokes persistent status from the address, previously added via `makePersistent`.
    function revokePersistent(address account) external;

    /// See `revokePersistent(address)`.
    function revokePersistent(address[] calldata accounts) external;

    /// Sets `block.height`.
    function roll(uint256 newHeight) external;

    /// Updates the currently active fork to given block number
    /// This is similar to `roll` but for the currently active fork.
    function rollFork(uint256 blockNumber) external;

    /// Updates the currently active fork to given transaction. This will `rollFork` with the number
    /// of the block the transaction was mined in and replays all transaction mined before it in the block.
    function rollFork(bytes32 txHash) external;

    /// Updates the given fork to given block number.
    function rollFork(uint256 forkId, uint256 blockNumber) external;

    /// Updates the given fork to block number of the given transaction and replays all transaction mined before it in the block.
    function rollFork(uint256 forkId, bytes32 txHash) external;

    /// Takes a fork identifier created by `createFork` and sets the corresponding forked state as active.
    function selectFork(uint256 forkId) external;

    /// Sets the nonce of an account. Must be higher than the current nonce of the account.
    function setNonce(address account, uint64 newNonce) external;

    /// Sets the nonce of an account to an arbitrary value.
    function setNonceUnsafe(address account, uint64 newNonce) external;

    /// Snapshot the current state of the evm.
    /// Returns the ID of the snapshot that was created.
    /// To revert a snapshot use `revertTo`.
    function snapshot() external returns (uint256 snapshotId);

    /// Sets all subsequent calls' `msg.sender` to be the input address until `stopPrank` is called.
    function startPrank(address msgSender) external;

    /// Sets all subsequent calls' `msg.sender` to be the input address until `stopPrank` is called, and the `tx.origin` to be the second input.
    function startPrank(address msgSender, address txOrigin) external;

    /// Resets subsequent calls' `msg.sender` to be `address(this)`.
    function stopPrank() external;

    /// Stores a value to an address' storage slot.
    function store(address target, bytes32 slot, bytes32 value) external;

    /// Fetches the given transaction from the active fork and executes it on the current state.
    function transact(bytes32 txHash) external;

    /// Fetches the given transaction from the given fork and executes it on the current state.
    function transact(uint256 forkId, bytes32 txHash) external;

    /// Sets `tx.gasprice`.
    function txGasPrice(uint256 newGasPrice) external;

    /// Sets `block.timestamp`.
    function warp(uint256 newTimestamp) external;

    // ======== Testing ========

    /// Expect a call to an address with the specified `msg.value` and calldata, and a *minimum* amount of gas.
    function expectCallMinGas(address callee, uint256 msgValue, uint64 minGas, bytes calldata data) external;

    /// Expect given number of calls to an address with the specified `msg.value` and calldata, and a *minimum* amount of gas.
    function expectCallMinGas(address callee, uint256 msgValue, uint64 minGas, bytes calldata data, uint64 count)
        external;

    /// Expects a call to an address with the specified calldata.
    /// Calldata can either be a strict or a partial match.
    function expectCall(address callee, bytes calldata data) external;

    /// Expects given number of calls to an address with the specified calldata.
    function expectCall(address callee, bytes calldata data, uint64 count) external;

    /// Expects a call to an address with the specified `msg.value` and calldata.
    function expectCall(address callee, uint256 msgValue, bytes calldata data) external;

    /// Expects given number of calls to an address with the specified `msg.value` and calldata.
    function expectCall(address callee, uint256 msgValue, bytes calldata data, uint64 count) external;

    /// Expect a call to an address with the specified `msg.value`, gas, and calldata.
    function expectCall(address callee, uint256 msgValue, uint64 gas, bytes calldata data) external;

    /// Expects given number of calls to an address with the specified `msg.value`, gas, and calldata.
    function expectCall(address callee, uint256 msgValue, uint64 gas, bytes calldata data, uint64 count) external;

    /// Prepare an expected log with (bool checkTopic1, bool checkTopic2, bool checkTopic3, bool checkData.).
    /// Call this function, then emit an event, then call a function. Internally after the call, we check if
    /// logs were emitted in the expected order with the expected topics and data (as specified by the booleans).
    function expectEmit(bool checkTopic1, bool checkTopic2, bool checkTopic3, bool checkData) external;

    /// Same as the previous method, but also checks supplied address against emitting contract.
    function expectEmit(bool checkTopic1, bool checkTopic2, bool checkTopic3, bool checkData, address emitter)
        external;

    /// Prepare an expected log with all topic and data checks enabled.
    /// Call this function, then emit an event, then call a function. Internally after the call, we check if
    /// logs were emitted in the expected order with the expected topics and data.
    function expectEmit() external;

    /// Same as the previous method, but also checks supplied address against emitting contract.
    function expectEmit(address emitter) external;

    /// Expects an error on next call with any revert data.
    function expectRevert() external;

    /// Expects an error on next call that starts with the revert data.
    function expectRevert(bytes4 revertData) external;

    /// Expects an error on next call that exactly matches the revert data.
    function expectRevert(bytes calldata revertData) external;

    /// Only allows memory writes to offsets [0x00, 0x60) ∪ [min, max) in the current subcontext. If any other
    /// memory is written to, the test will fail. Can be called multiple times to add more ranges to the set.
    function expectSafeMemory(uint64 min, uint64 max) external;

    /// Only allows memory writes to offsets [0x00, 0x60) ∪ [min, max) in the next created subcontext.
    /// If any other memory is written to, the test will fail. Can be called multiple times to add more ranges
    /// to the set.
    function expectSafeMemoryCall(uint64 min, uint64 max) external;

    /// Marks a test as skipped. Must be called at the top of the test.
    function skip(bool skipTest) external;

    /// Stops all safe memory expectation in the current subcontext.
    function stopExpectSafeMemory() external;
}

library console {
    address constant CONSOLE_ADDRESS = address(0x000000000000000000636F6e736F6c652e6c6f67);

    function _sendLogPayload(bytes memory payload) private view {
        uint256 payloadLength = payload.length;
        address consoleAddress = CONSOLE_ADDRESS;
        /// @solidity memory-safe-assembly
        assembly {
            let payloadStart := add(payload, 32)
            let r := staticcall(gas(), consoleAddress, payloadStart, payloadLength, 0, 0)
        }
    }

    function log() internal view {
        _sendLogPayload(abi.encodeWithSignature("log()"));
    }

    function logInt(int p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(int)", p0));
    }

    function logUint(uint p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint)", p0));
    }

    function logString(string memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string)", p0));
    }

    function logBool(bool p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool)", p0));
    }

    function logAddress(address p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address)", p0));
    }

    function logBytes(bytes memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes)", p0));
    }

    function logBytes1(bytes1 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes1)", p0));
    }

    function logBytes2(bytes2 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes2)", p0));
    }

    function logBytes3(bytes3 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes3)", p0));
    }

    function logBytes4(bytes4 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes4)", p0));
    }

    function logBytes5(bytes5 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes5)", p0));
    }

    function logBytes6(bytes6 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes6)", p0));
    }

    function logBytes7(bytes7 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes7)", p0));
    }

    function logBytes8(bytes8 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes8)", p0));
    }

    function logBytes9(bytes9 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes9)", p0));
    }

    function logBytes10(bytes10 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes10)", p0));
    }

    function logBytes11(bytes11 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes11)", p0));
    }

    function logBytes12(bytes12 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes12)", p0));
    }

    function logBytes13(bytes13 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes13)", p0));
    }

    function logBytes14(bytes14 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes14)", p0));
    }

    function logBytes15(bytes15 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes15)", p0));
    }

    function logBytes16(bytes16 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes16)", p0));
    }

    function logBytes17(bytes17 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes17)", p0));
    }

    function logBytes18(bytes18 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes18)", p0));
    }

    function logBytes19(bytes19 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes19)", p0));
    }

    function logBytes20(bytes20 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes20)", p0));
    }

    function logBytes21(bytes21 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes21)", p0));
    }

    function logBytes22(bytes22 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes22)", p0));
    }

    function logBytes23(bytes23 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes23)", p0));
    }

    function logBytes24(bytes24 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes24)", p0));
    }

    function logBytes25(bytes25 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes25)", p0));
    }

    function logBytes26(bytes26 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes26)", p0));
    }

    function logBytes27(bytes27 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes27)", p0));
    }

    function logBytes28(bytes28 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes28)", p0));
    }

    function logBytes29(bytes29 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes29)", p0));
    }

    function logBytes30(bytes30 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes30)", p0));
    }

    function logBytes31(bytes31 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes31)", p0));
    }

    function logBytes32(bytes32 p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bytes32)", p0));
    }

    function log(uint p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint)", p0));
    }

    function log(string memory p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string)", p0));
    }

    function log(bool p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool)", p0));
    }

    function log(address p0) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address)", p0));
    }

    function log(uint p0, uint p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint)", p0, p1));
    }

    function log(uint p0, string memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string)", p0, p1));
    }

    function log(uint p0, bool p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool)", p0, p1));
    }

    function log(uint p0, address p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address)", p0, p1));
    }

    function log(string memory p0, uint p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint)", p0, p1));
    }

    function log(string memory p0, string memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string)", p0, p1));
    }

    function log(string memory p0, bool p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool)", p0, p1));
    }

    function log(string memory p0, address p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address)", p0, p1));
    }

    function log(bool p0, uint p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint)", p0, p1));
    }

    function log(bool p0, string memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string)", p0, p1));
    }

    function log(bool p0, bool p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool)", p0, p1));
    }

    function log(bool p0, address p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address)", p0, p1));
    }

    function log(address p0, uint p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint)", p0, p1));
    }

    function log(address p0, string memory p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string)", p0, p1));
    }

    function log(address p0, bool p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool)", p0, p1));
    }

    function log(address p0, address p1) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address)", p0, p1));
    }

    function log(uint p0, uint p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,uint)", p0, p1, p2));
    }

    function log(uint p0, uint p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,string)", p0, p1, p2));
    }

    function log(uint p0, uint p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,bool)", p0, p1, p2));
    }

    function log(uint p0, uint p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,address)", p0, p1, p2));
    }

    function log(uint p0, string memory p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,uint)", p0, p1, p2));
    }

    function log(uint p0, string memory p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,string)", p0, p1, p2));
    }

    function log(uint p0, string memory p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,bool)", p0, p1, p2));
    }

    function log(uint p0, string memory p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,address)", p0, p1, p2));
    }

    function log(uint p0, bool p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,uint)", p0, p1, p2));
    }

    function log(uint p0, bool p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,string)", p0, p1, p2));
    }

    function log(uint p0, bool p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,bool)", p0, p1, p2));
    }

    function log(uint p0, bool p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,address)", p0, p1, p2));
    }

    function log(uint p0, address p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,uint)", p0, p1, p2));
    }

    function log(uint p0, address p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,string)", p0, p1, p2));
    }

    function log(uint p0, address p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,bool)", p0, p1, p2));
    }

    function log(uint p0, address p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,address)", p0, p1, p2));
    }

    function log(string memory p0, uint p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,uint)", p0, p1, p2));
    }

    function log(string memory p0, uint p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,string)", p0, p1, p2));
    }

    function log(string memory p0, uint p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,bool)", p0, p1, p2));
    }

    function log(string memory p0, uint p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,address)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address)", p0, p1, p2));
    }

    function log(string memory p0, address p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint)", p0, p1, p2));
    }

    function log(string memory p0, address p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string)", p0, p1, p2));
    }

    function log(string memory p0, address p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool)", p0, p1, p2));
    }

    function log(string memory p0, address p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address)", p0, p1, p2));
    }

    function log(bool p0, uint p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,uint)", p0, p1, p2));
    }

    function log(bool p0, uint p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,string)", p0, p1, p2));
    }

    function log(bool p0, uint p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,bool)", p0, p1, p2));
    }

    function log(bool p0, uint p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,address)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address)", p0, p1, p2));
    }

    function log(bool p0, bool p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint)", p0, p1, p2));
    }

    function log(bool p0, bool p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string)", p0, p1, p2));
    }

    function log(bool p0, bool p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool)", p0, p1, p2));
    }

    function log(bool p0, bool p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address)", p0, p1, p2));
    }

    function log(bool p0, address p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint)", p0, p1, p2));
    }

    function log(bool p0, address p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string)", p0, p1, p2));
    }

    function log(bool p0, address p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool)", p0, p1, p2));
    }

    function log(bool p0, address p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address)", p0, p1, p2));
    }

    function log(address p0, uint p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,uint)", p0, p1, p2));
    }

    function log(address p0, uint p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,string)", p0, p1, p2));
    }

    function log(address p0, uint p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,bool)", p0, p1, p2));
    }

    function log(address p0, uint p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,address)", p0, p1, p2));
    }

    function log(address p0, string memory p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint)", p0, p1, p2));
    }

    function log(address p0, string memory p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string)", p0, p1, p2));
    }

    function log(address p0, string memory p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool)", p0, p1, p2));
    }

    function log(address p0, string memory p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address)", p0, p1, p2));
    }

    function log(address p0, bool p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint)", p0, p1, p2));
    }

    function log(address p0, bool p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string)", p0, p1, p2));
    }

    function log(address p0, bool p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool)", p0, p1, p2));
    }

    function log(address p0, bool p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address)", p0, p1, p2));
    }

    function log(address p0, address p1, uint p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint)", p0, p1, p2));
    }

    function log(address p0, address p1, string memory p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string)", p0, p1, p2));
    }

    function log(address p0, address p1, bool p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool)", p0, p1, p2));
    }

    function log(address p0, address p1, address p2) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address)", p0, p1, p2));
    }

    function log(uint p0, uint p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,uint,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,uint,string)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,uint,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,uint,address)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,string,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,string,string)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,string,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,string,address)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,bool,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,bool,string)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,bool,address)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,address,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,address,string)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,address,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, uint p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,uint,address,address)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,uint,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,uint,string)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,uint,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,uint,address)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,string,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,string,string)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,string,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,string,address)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,bool,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,bool,string)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,bool,address)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,address,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,address,string)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,address,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, string memory p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,string,address,address)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,uint,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,uint,string)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,uint,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,uint,address)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,string,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,string,string)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,string,address)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,bool,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,address,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,address,string)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, bool p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,bool,address,address)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,uint,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,uint,string)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,uint,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,uint,address)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,string,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,string,string)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,string,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,string,address)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,bool,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,bool,string)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,bool,address)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,address,uint)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,address,string)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,address,bool)", p0, p1, p2, p3));
    }

    function log(uint p0, address p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(uint,address,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,uint,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,uint,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,uint,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,uint,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,string,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,bool,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,address,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,uint)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,uint,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,uint,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,uint,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,uint,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,string,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,bool,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,address,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,uint)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,uint,uint)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,uint,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,uint,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,uint,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,string,uint)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,bool,uint)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,address,uint)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint,uint)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,uint)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,uint)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,uint)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint,uint)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,uint)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,uint)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,uint)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint,uint)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,uint)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,uint)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, uint p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,uint)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, string memory p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, bool p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, address p3) internal view {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,address)", p0, p1, p2, p3));
    }

}

/// @dev The original console.sol uses `int` and `uint` for computing function selectors, but it should
/// use `int256` and `uint256`. This modified version fixes that. This version is recommended
/// over `console.sol` if you don't need compatibility with Hardhat as the logs will show up in
/// forge stack traces. If you do need compatibility with Hardhat, you must use `console.sol`.
/// Reference: https://github.com/NomicFoundation/hardhat/issues/2178
library console2 {
    address constant CONSOLE_ADDRESS = address(0x000000000000000000636F6e736F6c652e6c6f67);

    function _castLogPayloadViewToPure(
        function(bytes memory) internal view fnIn
    ) internal pure returns (function(bytes memory) internal pure fnOut) {
        assembly {
            fnOut := fnIn
        }
    }

    function _sendLogPayload(bytes memory payload) internal pure {
        _castLogPayloadViewToPure(_sendLogPayloadView)(payload);
    }

    function _sendLogPayloadView(bytes memory payload) private view {
        uint256 payloadLength = payload.length;
        address consoleAddress = CONSOLE_ADDRESS;
        /// @solidity memory-safe-assembly
        assembly {
            let payloadStart := add(payload, 32)
            let r := staticcall(gas(), consoleAddress, payloadStart, payloadLength, 0, 0)
        }
    }

    function log() internal pure {
        _sendLogPayload(abi.encodeWithSignature("log()"));
    }

    function logInt(int256 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(int256)", p0));
    }

    function logUint(uint256 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256)", p0));
    }

    function logString(string memory p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string)", p0));
    }

    function logBool(bool p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool)", p0));
    }

    function logAddress(address p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address)", p0));
    }

    function logBytes(bytes memory p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes)", p0));
    }

    function logBytes1(bytes1 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes1)", p0));
    }

    function logBytes2(bytes2 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes2)", p0));
    }

    function logBytes3(bytes3 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes3)", p0));
    }

    function logBytes4(bytes4 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes4)", p0));
    }

    function logBytes5(bytes5 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes5)", p0));
    }

    function logBytes6(bytes6 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes6)", p0));
    }

    function logBytes7(bytes7 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes7)", p0));
    }

    function logBytes8(bytes8 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes8)", p0));
    }

    function logBytes9(bytes9 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes9)", p0));
    }

    function logBytes10(bytes10 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes10)", p0));
    }

    function logBytes11(bytes11 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes11)", p0));
    }

    function logBytes12(bytes12 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes12)", p0));
    }

    function logBytes13(bytes13 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes13)", p0));
    }

    function logBytes14(bytes14 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes14)", p0));
    }

    function logBytes15(bytes15 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes15)", p0));
    }

    function logBytes16(bytes16 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes16)", p0));
    }

    function logBytes17(bytes17 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes17)", p0));
    }

    function logBytes18(bytes18 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes18)", p0));
    }

    function logBytes19(bytes19 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes19)", p0));
    }

    function logBytes20(bytes20 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes20)", p0));
    }

    function logBytes21(bytes21 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes21)", p0));
    }

    function logBytes22(bytes22 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes22)", p0));
    }

    function logBytes23(bytes23 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes23)", p0));
    }

    function logBytes24(bytes24 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes24)", p0));
    }

    function logBytes25(bytes25 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes25)", p0));
    }

    function logBytes26(bytes26 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes26)", p0));
    }

    function logBytes27(bytes27 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes27)", p0));
    }

    function logBytes28(bytes28 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes28)", p0));
    }

    function logBytes29(bytes29 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes29)", p0));
    }

    function logBytes30(bytes30 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes30)", p0));
    }

    function logBytes31(bytes31 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes31)", p0));
    }

    function logBytes32(bytes32 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bytes32)", p0));
    }

    function log(uint256 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256)", p0));
    }

    function log(int256 p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(int256)", p0));
    }

    function log(string memory p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string)", p0));
    }

    function log(bool p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool)", p0));
    }

    function log(address p0) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address)", p0));
    }

    function log(uint256 p0, uint256 p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256)", p0, p1));
    }

    function log(uint256 p0, string memory p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string)", p0, p1));
    }

    function log(uint256 p0, bool p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool)", p0, p1));
    }

    function log(uint256 p0, address p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address)", p0, p1));
    }

    function log(string memory p0, uint256 p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256)", p0, p1));
    }

    function log(string memory p0, int256 p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,int256)", p0, p1));
    }

    function log(string memory p0, string memory p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string)", p0, p1));
    }

    function log(string memory p0, bool p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool)", p0, p1));
    }

    function log(string memory p0, address p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address)", p0, p1));
    }

    function log(bool p0, uint256 p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256)", p0, p1));
    }

    function log(bool p0, string memory p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string)", p0, p1));
    }

    function log(bool p0, bool p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool)", p0, p1));
    }

    function log(bool p0, address p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address)", p0, p1));
    }

    function log(address p0, uint256 p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256)", p0, p1));
    }

    function log(address p0, string memory p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string)", p0, p1));
    }

    function log(address p0, bool p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool)", p0, p1));
    }

    function log(address p0, address p1) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address)", p0, p1));
    }

    function log(uint256 p0, uint256 p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool)", p0, p1, p2));
    }

    function log(uint256 p0, string memory p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool)", p0, p1, p2));
    }

    function log(uint256 p0, bool p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool)", p0, p1, p2));
    }

    function log(uint256 p0, address p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool)", p0, p1, p2));
    }

    function log(string memory p0, uint256 p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool)", p0, p1, p2));
    }

    function log(string memory p0, string memory p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool)", p0, p1, p2));
    }

    function log(string memory p0, bool p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address)", p0, p1, p2));
    }

    function log(string memory p0, address p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256)", p0, p1, p2));
    }

    function log(string memory p0, address p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string)", p0, p1, p2));
    }

    function log(string memory p0, address p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool)", p0, p1, p2));
    }

    function log(string memory p0, address p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool)", p0, p1, p2));
    }

    function log(bool p0, uint256 p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool)", p0, p1, p2));
    }

    function log(bool p0, string memory p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address)", p0, p1, p2));
    }

    function log(bool p0, bool p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256)", p0, p1, p2));
    }

    function log(bool p0, bool p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string)", p0, p1, p2));
    }

    function log(bool p0, bool p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool)", p0, p1, p2));
    }

    function log(bool p0, bool p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address)", p0, p1, p2));
    }

    function log(bool p0, address p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256)", p0, p1, p2));
    }

    function log(bool p0, address p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string)", p0, p1, p2));
    }

    function log(bool p0, address p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool)", p0, p1, p2));
    }

    function log(bool p0, address p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool)", p0, p1, p2));
    }

    function log(address p0, uint256 p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address)", p0, p1, p2));
    }

    function log(address p0, string memory p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256)", p0, p1, p2));
    }

    function log(address p0, string memory p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string)", p0, p1, p2));
    }

    function log(address p0, string memory p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool)", p0, p1, p2));
    }

    function log(address p0, string memory p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address)", p0, p1, p2));
    }

    function log(address p0, bool p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256)", p0, p1, p2));
    }

    function log(address p0, bool p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string)", p0, p1, p2));
    }

    function log(address p0, bool p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool)", p0, p1, p2));
    }

    function log(address p0, bool p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address)", p0, p1, p2));
    }

    function log(address p0, address p1, uint256 p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256)", p0, p1, p2));
    }

    function log(address p0, address p1, string memory p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string)", p0, p1, p2));
    }

    function log(address p0, address p1, bool p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool)", p0, p1, p2));
    }

    function log(address p0, address p1, address p2) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address)", p0, p1, p2));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, uint256 p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, string memory p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,string,address,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, bool p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,bool,address,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,string,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,bool,address)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,string)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,bool)", p0, p1, p2, p3));
    }

    function log(uint256 p0, address p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(uint256,address,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, uint256 p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, string memory p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, bool p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,bool,address,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,string,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,bool,address)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,string)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,bool)", p0, p1, p2, p3));
    }

    function log(string memory p0, address p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,address,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, uint256 p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, string memory p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,string,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, bool p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,bool,address,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,string,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,bool,address)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,string)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,bool)", p0, p1, p2, p3));
    }

    function log(bool p0, address p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(bool,address,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, uint256 p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,uint256,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, string memory p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,string,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, bool p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,bool,address,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, uint256 p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,uint256,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, string memory p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,string,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, bool p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,bool,address)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, uint256 p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,uint256)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, string memory p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,string)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, bool p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,bool)", p0, p1, p2, p3));
    }

    function log(address p0, address p1, address p2, address p3) internal pure {
        _sendLogPayload(abi.encodeWithSignature("log(address,address,address,address)", p0, p1, p2, p3));
    }

}

interface IERC165_0 {
    /// @notice Query if a contract implements an interface
    /// @param interfaceID The interface identifier, as specified in ERC-165
    /// @dev Interface identification is specified in ERC-165. This function
    /// uses less than 30,000 gas.
    /// @return `true` if the contract implements `interfaceID` and
    /// `interfaceID` is not 0xffffffff, `false` otherwise
    function supportsInterface(bytes4 interfaceID) external view returns (bool);
}

/// @dev Interface of the ERC20 standard as defined in the EIP.
/// @dev This includes the optional name, symbol, and decimals metadata.
interface IERC20_0 {
    /// @dev Emitted when `value` tokens are moved from one account (`from`) to another (`to`).
    event Transfer(address indexed from, address indexed to, uint256 value);

    /// @dev Emitted when the allowance of a `spender` for an `owner` is set, where `value`
    /// is the new allowance.
    event Approval(address indexed owner, address indexed spender, uint256 value);

    /// @notice Returns the amount of tokens in existence.
    function totalSupply() external view returns (uint256);

    /// @notice Returns the amount of tokens owned by `account`.
    function balanceOf(address account) external view returns (uint256);

    /// @notice Moves `amount` tokens from the caller's account to `to`.
    function transfer(address to, uint256 amount) external returns (bool);

    /// @notice Returns the remaining number of tokens that `spender` is allowed
    /// to spend on behalf of `owner`
    function allowance(address owner, address spender) external view returns (uint256);

    /// @notice Sets `amount` as the allowance of `spender` over the caller's tokens.
    /// @dev Be aware of front-running risks: https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
    function approve(address spender, uint256 amount) external returns (bool);

    /// @notice Moves `amount` tokens from `from` to `to` using the allowance mechanism.
    /// `amount` is then deducted from the caller's allowance.
    function transferFrom(address from, address to, uint256 amount) external returns (bool);

    /// @notice Returns the name of the token.
    function name() external view returns (string memory);

    /// @notice Returns the symbol of the token.
    function symbol() external view returns (string memory);

    /// @notice Returns the decimals places of the token.
    function decimals() external view returns (uint8);
}

interface IMulticall3 {
    struct Call {
        address target;
        bytes callData;
    }

    struct Call3 {
        address target;
        bool allowFailure;
        bytes callData;
    }

    struct Call3Value {
        address target;
        bool allowFailure;
        uint256 value;
        bytes callData;
    }

    struct Result {
        bool success;
        bytes returnData;
    }

    function aggregate(Call[] calldata calls)
        external
        payable
        returns (uint256 blockNumber, bytes[] memory returnData);

    function aggregate3(Call3[] calldata calls) external payable returns (Result[] memory returnData);

    function aggregate3Value(Call3Value[] calldata calls) external payable returns (Result[] memory returnData);

    function blockAndAggregate(Call[] calldata calls)
        external
        payable
        returns (uint256 blockNumber, bytes32 blockHash, Result[] memory returnData);

    function getBasefee() external view returns (uint256 basefee);

    function getBlockHash(uint256 blockNumber) external view returns (bytes32 blockHash);

    function getBlockNumber() external view returns (uint256 blockNumber);

    function getChainId() external view returns (uint256 chainid);

    function getCurrentBlockCoinbase() external view returns (address coinbase);

    function getCurrentBlockDifficulty() external view returns (uint256 difficulty);

    function getCurrentBlockGasLimit() external view returns (uint256 gaslimit);

    function getCurrentBlockTimestamp() external view returns (uint256 timestamp);

    function getEthBalance(address addr) external view returns (uint256 balance);

    function getLastBlockHash() external view returns (bytes32 blockHash);

    function tryAggregate(bool requireSuccess, Call[] calldata calls)
        external
        payable
        returns (Result[] memory returnData);

    function tryBlockAndAggregate(bool requireSuccess, Call[] calldata calls)
        external
        payable
        returns (uint256 blockNumber, bytes32 blockHash, Result[] memory returnData);
}

/// @author philogy <https://github.com/philogy>
/// @dev Code generated automatically by script.
library safeconsole {
    uint256 constant CONSOLE_ADDR = 0x000000000000000000000000000000000000000000636F6e736F6c652e6c6f67;

    // Credit to [0age](https://twitter.com/z0age/status/1654922202930888704) and [0xdapper](https://github.com/foundry-rs/forge-std/pull/374)
    // for the view-to-pure log trick.
    function _sendLogPayload(uint256 offset, uint256 size) private pure {
        function(uint256, uint256) internal view fnIn = _sendLogPayloadView;
        function(uint256, uint256) internal pure pureSendLogPayload;
        assembly {
            pureSendLogPayload := fnIn
        }
        pureSendLogPayload(offset, size);
    }

    function _sendLogPayloadView(uint256 offset, uint256 size) private view {
        assembly {
            pop(staticcall(gas(), CONSOLE_ADDR, offset, size, 0x0, 0x0))
        }
    }

    function _memcopy(uint256 fromOffset, uint256 toOffset, uint256 length) private pure {
        function(uint256, uint256, uint256) internal view fnIn = _memcopyView;
        function(uint256, uint256, uint256) internal pure pureMemcopy;
        assembly {
            pureMemcopy := fnIn
        }
        pureMemcopy(fromOffset, toOffset, length);
    }

    function _memcopyView(uint256 fromOffset, uint256 toOffset, uint256 length) private view {
        assembly {
            pop(staticcall(gas(), 0x4, fromOffset, length, toOffset, length))
        }
    }

    function logMemory(uint256 offset, uint256 length) internal pure {
        if (offset >= 0x60) {
            // Sufficient memory before slice to prepare call header.
            bytes32 m0;
            bytes32 m1;
            bytes32 m2;
            assembly {
                m0 := mload(sub(offset, 0x60))
                m1 := mload(sub(offset, 0x40))
                m2 := mload(sub(offset, 0x20))
                // Selector of `logBytes(bytes)`.
                mstore(sub(offset, 0x60), 0xe17bf956)
                mstore(sub(offset, 0x40), 0x20)
                mstore(sub(offset, 0x20), length)
            }
            _sendLogPayload(offset - 0x44, length + 0x44);
            assembly {
                mstore(sub(offset, 0x60), m0)
                mstore(sub(offset, 0x40), m1)
                mstore(sub(offset, 0x20), m2)
            }
        } else {
            // Insufficient space, so copy slice forward, add header and reverse.
            bytes32 m0;
            bytes32 m1;
            bytes32 m2;
            uint256 endOffset = offset + length;
            assembly {
                m0 := mload(add(endOffset, 0x00))
                m1 := mload(add(endOffset, 0x20))
                m2 := mload(add(endOffset, 0x40))
            }
            _memcopy(offset, offset + 0x60, length);
            assembly {
                // Selector of `logBytes(bytes)`.
                mstore(add(offset, 0x00), 0xe17bf956)
                mstore(add(offset, 0x20), 0x20)
                mstore(add(offset, 0x40), length)
            }
            _sendLogPayload(offset + 0x1c, length + 0x44);
            _memcopy(offset + 0x60, offset, length);
            assembly {
                mstore(add(endOffset, 0x00), m0)
                mstore(add(endOffset, 0x20), m1)
                mstore(add(endOffset, 0x40), m2)
            }
        }
    }

    function log(address p0) internal pure {
        bytes32 m0;
        bytes32 m1;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            // Selector of `log(address)`.
            mstore(0x00, 0x2c2ecbc2)
            mstore(0x20, p0)
        }
        _sendLogPayload(0x1c, 0x24);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
        }
    }

    function log(bool p0) internal pure {
        bytes32 m0;
        bytes32 m1;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            // Selector of `log(bool)`.
            mstore(0x00, 0x32458eed)
            mstore(0x20, p0)
        }
        _sendLogPayload(0x1c, 0x24);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
        }
    }

    function log(uint256 p0) internal pure {
        bytes32 m0;
        bytes32 m1;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            // Selector of `log(uint256)`.
            mstore(0x00, 0xf82c50f1)
            mstore(0x20, p0)
        }
        _sendLogPayload(0x1c, 0x24);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
        }
    }

    function log(bytes32 p0) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(string)`.
            mstore(0x00, 0x41304fac)
            mstore(0x20, 0x20)
            writeString(0x40, p0)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, address p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            // Selector of `log(address,address)`.
            mstore(0x00, 0xdaf0d4aa)
            mstore(0x20, p0)
            mstore(0x40, p1)
        }
        _sendLogPayload(0x1c, 0x44);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
        }
    }

    function log(address p0, bool p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            // Selector of `log(address,bool)`.
            mstore(0x00, 0x75b605d3)
            mstore(0x20, p0)
            mstore(0x40, p1)
        }
        _sendLogPayload(0x1c, 0x44);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
        }
    }

    function log(address p0, uint256 p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            // Selector of `log(address,uint256)`.
            mstore(0x00, 0x8309e8a8)
            mstore(0x20, p0)
            mstore(0x40, p1)
        }
        _sendLogPayload(0x1c, 0x44);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
        }
    }

    function log(address p0, bytes32 p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,string)`.
            mstore(0x00, 0x759f86bb)
            mstore(0x20, p0)
            mstore(0x40, 0x40)
            writeString(0x60, p1)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            // Selector of `log(bool,address)`.
            mstore(0x00, 0x853c4849)
            mstore(0x20, p0)
            mstore(0x40, p1)
        }
        _sendLogPayload(0x1c, 0x44);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
        }
    }

    function log(bool p0, bool p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            // Selector of `log(bool,bool)`.
            mstore(0x00, 0x2a110e83)
            mstore(0x20, p0)
            mstore(0x40, p1)
        }
        _sendLogPayload(0x1c, 0x44);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
        }
    }

    function log(bool p0, uint256 p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            // Selector of `log(bool,uint256)`.
            mstore(0x00, 0x399174d3)
            mstore(0x20, p0)
            mstore(0x40, p1)
        }
        _sendLogPayload(0x1c, 0x44);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
        }
    }

    function log(bool p0, bytes32 p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,string)`.
            mstore(0x00, 0x8feac525)
            mstore(0x20, p0)
            mstore(0x40, 0x40)
            writeString(0x60, p1)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            // Selector of `log(uint256,address)`.
            mstore(0x00, 0x69276c86)
            mstore(0x20, p0)
            mstore(0x40, p1)
        }
        _sendLogPayload(0x1c, 0x44);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
        }
    }

    function log(uint256 p0, bool p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            // Selector of `log(uint256,bool)`.
            mstore(0x00, 0x1c9d7eb3)
            mstore(0x20, p0)
            mstore(0x40, p1)
        }
        _sendLogPayload(0x1c, 0x44);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
        }
    }

    function log(uint256 p0, uint256 p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            // Selector of `log(uint256,uint256)`.
            mstore(0x00, 0xf666715a)
            mstore(0x20, p0)
            mstore(0x40, p1)
        }
        _sendLogPayload(0x1c, 0x44);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
        }
    }

    function log(uint256 p0, bytes32 p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,string)`.
            mstore(0x00, 0x643fd0df)
            mstore(0x20, p0)
            mstore(0x40, 0x40)
            writeString(0x60, p1)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bytes32 p0, address p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(string,address)`.
            mstore(0x00, 0x319af333)
            mstore(0x20, 0x40)
            mstore(0x40, p1)
            writeString(0x60, p0)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bytes32 p0, bool p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(string,bool)`.
            mstore(0x00, 0xc3b55635)
            mstore(0x20, 0x40)
            mstore(0x40, p1)
            writeString(0x60, p0)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bytes32 p0, uint256 p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(string,uint256)`.
            mstore(0x00, 0xb60e72cc)
            mstore(0x20, 0x40)
            mstore(0x40, p1)
            writeString(0x60, p0)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bytes32 p0, bytes32 p1) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,string)`.
            mstore(0x00, 0x4b5c4277)
            mstore(0x20, 0x40)
            mstore(0x40, 0x80)
            writeString(0x60, p0)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, address p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(address,address,address)`.
            mstore(0x00, 0x018c84c2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, address p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(address,address,bool)`.
            mstore(0x00, 0xf2a66286)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, address p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(address,address,uint256)`.
            mstore(0x00, 0x17fe6185)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, address p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(address,address,string)`.
            mstore(0x00, 0x007150be)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x60)
            writeString(0x80, p2)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(address p0, bool p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(address,bool,address)`.
            mstore(0x00, 0xf11699ed)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, bool p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(address,bool,bool)`.
            mstore(0x00, 0xeb830c92)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, bool p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(address,bool,uint256)`.
            mstore(0x00, 0x9c4f99fb)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, bool p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(address,bool,string)`.
            mstore(0x00, 0x212255cc)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x60)
            writeString(0x80, p2)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(address p0, uint256 p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(address,uint256,address)`.
            mstore(0x00, 0x7bc0d848)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, uint256 p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(address,uint256,bool)`.
            mstore(0x00, 0x678209a8)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, uint256 p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(address,uint256,uint256)`.
            mstore(0x00, 0xb69bcaf6)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(address p0, uint256 p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(address,uint256,string)`.
            mstore(0x00, 0xa1f2e8aa)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x60)
            writeString(0x80, p2)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(address p0, bytes32 p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(address,string,address)`.
            mstore(0x00, 0xf08744e8)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, p2)
            writeString(0x80, p1)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(address p0, bytes32 p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(address,string,bool)`.
            mstore(0x00, 0xcf020fb1)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, p2)
            writeString(0x80, p1)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(address p0, bytes32 p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(address,string,uint256)`.
            mstore(0x00, 0x67dd6ff1)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, p2)
            writeString(0x80, p1)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(address p0, bytes32 p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            // Selector of `log(address,string,string)`.
            mstore(0x00, 0xfb772265)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, 0xa0)
            writeString(0x80, p1)
            writeString(0xc0, p2)
        }
        _sendLogPayload(0x1c, 0xe4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
        }
    }

    function log(bool p0, address p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(bool,address,address)`.
            mstore(0x00, 0xd2763667)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(bool p0, address p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(bool,address,bool)`.
            mstore(0x00, 0x18c9c746)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(bool p0, address p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(bool,address,uint256)`.
            mstore(0x00, 0x5f7b9afb)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(bool p0, address p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(bool,address,string)`.
            mstore(0x00, 0xde9a9270)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x60)
            writeString(0x80, p2)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bool p0, bool p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(bool,bool,address)`.
            mstore(0x00, 0x1078f68d)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(bool p0, bool p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(bool,bool,bool)`.
            mstore(0x00, 0x50709698)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(bool p0, bool p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(bool,bool,uint256)`.
            mstore(0x00, 0x12f21602)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(bool p0, bool p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(bool,bool,string)`.
            mstore(0x00, 0x2555fa46)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x60)
            writeString(0x80, p2)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bool p0, uint256 p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(bool,uint256,address)`.
            mstore(0x00, 0x088ef9d2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(bool p0, uint256 p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(bool,uint256,bool)`.
            mstore(0x00, 0xe8defba9)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(bool p0, uint256 p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(bool,uint256,uint256)`.
            mstore(0x00, 0x37103367)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(bool p0, uint256 p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(bool,uint256,string)`.
            mstore(0x00, 0xc3fc3970)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x60)
            writeString(0x80, p2)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bool p0, bytes32 p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(bool,string,address)`.
            mstore(0x00, 0x9591b953)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, p2)
            writeString(0x80, p1)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bool p0, bytes32 p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(bool,string,bool)`.
            mstore(0x00, 0xdbb4c247)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, p2)
            writeString(0x80, p1)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bool p0, bytes32 p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(bool,string,uint256)`.
            mstore(0x00, 0x1093ee11)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, p2)
            writeString(0x80, p1)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bool p0, bytes32 p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            // Selector of `log(bool,string,string)`.
            mstore(0x00, 0xb076847f)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, 0xa0)
            writeString(0x80, p1)
            writeString(0xc0, p2)
        }
        _sendLogPayload(0x1c, 0xe4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
        }
    }

    function log(uint256 p0, address p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(uint256,address,address)`.
            mstore(0x00, 0xbcfd9be0)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(uint256 p0, address p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(uint256,address,bool)`.
            mstore(0x00, 0x9b6ec042)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(uint256 p0, address p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(uint256,address,uint256)`.
            mstore(0x00, 0x5a9b5ed5)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(uint256 p0, address p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(uint256,address,string)`.
            mstore(0x00, 0x63cb41f9)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x60)
            writeString(0x80, p2)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(uint256 p0, bool p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(uint256,bool,address)`.
            mstore(0x00, 0x35085f7b)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(uint256 p0, bool p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(uint256,bool,bool)`.
            mstore(0x00, 0x20718650)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(uint256 p0, bool p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(uint256,bool,uint256)`.
            mstore(0x00, 0x20098014)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(uint256 p0, bool p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(uint256,bool,string)`.
            mstore(0x00, 0x85775021)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x60)
            writeString(0x80, p2)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(uint256 p0, uint256 p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(uint256,uint256,address)`.
            mstore(0x00, 0x5c96b331)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(uint256 p0, uint256 p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(uint256,uint256,bool)`.
            mstore(0x00, 0x4766da72)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(uint256 p0, uint256 p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            // Selector of `log(uint256,uint256,uint256)`.
            mstore(0x00, 0xd1ed7a3c)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
        }
        _sendLogPayload(0x1c, 0x64);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
        }
    }

    function log(uint256 p0, uint256 p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(uint256,uint256,string)`.
            mstore(0x00, 0x71d04af2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x60)
            writeString(0x80, p2)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(uint256 p0, bytes32 p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(uint256,string,address)`.
            mstore(0x00, 0x7afac959)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, p2)
            writeString(0x80, p1)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(uint256 p0, bytes32 p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(uint256,string,bool)`.
            mstore(0x00, 0x4ceda75a)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, p2)
            writeString(0x80, p1)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(uint256 p0, bytes32 p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(uint256,string,uint256)`.
            mstore(0x00, 0x37aa7d4c)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, p2)
            writeString(0x80, p1)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(uint256 p0, bytes32 p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            // Selector of `log(uint256,string,string)`.
            mstore(0x00, 0xb115611f)
            mstore(0x20, p0)
            mstore(0x40, 0x60)
            mstore(0x60, 0xa0)
            writeString(0x80, p1)
            writeString(0xc0, p2)
        }
        _sendLogPayload(0x1c, 0xe4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
        }
    }

    function log(bytes32 p0, address p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(string,address,address)`.
            mstore(0x00, 0xfcec75e0)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, p2)
            writeString(0x80, p0)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bytes32 p0, address p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(string,address,bool)`.
            mstore(0x00, 0xc91d5ed4)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, p2)
            writeString(0x80, p0)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bytes32 p0, address p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(string,address,uint256)`.
            mstore(0x00, 0x0d26b925)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, p2)
            writeString(0x80, p0)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bytes32 p0, address p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            // Selector of `log(string,address,string)`.
            mstore(0x00, 0xe0e9ad4f)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, 0xa0)
            writeString(0x80, p0)
            writeString(0xc0, p2)
        }
        _sendLogPayload(0x1c, 0xe4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
        }
    }

    function log(bytes32 p0, bool p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(string,bool,address)`.
            mstore(0x00, 0x932bbb38)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, p2)
            writeString(0x80, p0)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bytes32 p0, bool p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(string,bool,bool)`.
            mstore(0x00, 0x850b7ad6)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, p2)
            writeString(0x80, p0)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bytes32 p0, bool p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(string,bool,uint256)`.
            mstore(0x00, 0xc95958d6)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, p2)
            writeString(0x80, p0)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bytes32 p0, bool p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            // Selector of `log(string,bool,string)`.
            mstore(0x00, 0xe298f47d)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, 0xa0)
            writeString(0x80, p0)
            writeString(0xc0, p2)
        }
        _sendLogPayload(0x1c, 0xe4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
        }
    }

    function log(bytes32 p0, uint256 p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(string,uint256,address)`.
            mstore(0x00, 0x1c7ec448)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, p2)
            writeString(0x80, p0)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bytes32 p0, uint256 p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(string,uint256,bool)`.
            mstore(0x00, 0xca7733b1)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, p2)
            writeString(0x80, p0)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bytes32 p0, uint256 p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            // Selector of `log(string,uint256,uint256)`.
            mstore(0x00, 0xca47c4eb)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, p2)
            writeString(0x80, p0)
        }
        _sendLogPayload(0x1c, 0xa4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
        }
    }

    function log(bytes32 p0, uint256 p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            // Selector of `log(string,uint256,string)`.
            mstore(0x00, 0x5970e089)
            mstore(0x20, 0x60)
            mstore(0x40, p1)
            mstore(0x60, 0xa0)
            writeString(0x80, p0)
            writeString(0xc0, p2)
        }
        _sendLogPayload(0x1c, 0xe4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
        }
    }

    function log(bytes32 p0, bytes32 p1, address p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            // Selector of `log(string,string,address)`.
            mstore(0x00, 0x95ed0195)
            mstore(0x20, 0x60)
            mstore(0x40, 0xa0)
            mstore(0x60, p2)
            writeString(0x80, p0)
            writeString(0xc0, p1)
        }
        _sendLogPayload(0x1c, 0xe4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
        }
    }

    function log(bytes32 p0, bytes32 p1, bool p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            // Selector of `log(string,string,bool)`.
            mstore(0x00, 0xb0e0f9b5)
            mstore(0x20, 0x60)
            mstore(0x40, 0xa0)
            mstore(0x60, p2)
            writeString(0x80, p0)
            writeString(0xc0, p1)
        }
        _sendLogPayload(0x1c, 0xe4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
        }
    }

    function log(bytes32 p0, bytes32 p1, uint256 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            // Selector of `log(string,string,uint256)`.
            mstore(0x00, 0x5821efa1)
            mstore(0x20, 0x60)
            mstore(0x40, 0xa0)
            mstore(0x60, p2)
            writeString(0x80, p0)
            writeString(0xc0, p1)
        }
        _sendLogPayload(0x1c, 0xe4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
        }
    }

    function log(bytes32 p0, bytes32 p1, bytes32 p2) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            // Selector of `log(string,string,string)`.
            mstore(0x00, 0x2ced7cef)
            mstore(0x20, 0x60)
            mstore(0x40, 0xa0)
            mstore(0x60, 0xe0)
            writeString(0x80, p0)
            writeString(0xc0, p1)
            writeString(0x100, p2)
        }
        _sendLogPayload(0x1c, 0x124);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
        }
    }

    function log(address p0, address p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,address,address,address)`.
            mstore(0x00, 0x665bf134)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, address p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,address,address,bool)`.
            mstore(0x00, 0x0e378994)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, address p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,address,address,uint256)`.
            mstore(0x00, 0x94250d77)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, address p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,address,address,string)`.
            mstore(0x00, 0xf808da20)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, address p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,address,bool,address)`.
            mstore(0x00, 0x9f1bc36e)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, address p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,address,bool,bool)`.
            mstore(0x00, 0x2cd4134a)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, address p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,address,bool,uint256)`.
            mstore(0x00, 0x3971e78c)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, address p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,address,bool,string)`.
            mstore(0x00, 0xaa6540c8)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, address p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,address,uint256,address)`.
            mstore(0x00, 0x8da6def5)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, address p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,address,uint256,bool)`.
            mstore(0x00, 0x9b4254e2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, address p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,address,uint256,uint256)`.
            mstore(0x00, 0xbe553481)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, address p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,address,uint256,string)`.
            mstore(0x00, 0xfdb4f990)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, address p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,address,string,address)`.
            mstore(0x00, 0x8f736d16)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, address p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,address,string,bool)`.
            mstore(0x00, 0x6f1a594e)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, address p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,address,string,uint256)`.
            mstore(0x00, 0xef1cefe7)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, address p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(address,address,string,string)`.
            mstore(0x00, 0x21bdaf25)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, 0xc0)
            writeString(0xa0, p2)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(address p0, bool p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,bool,address,address)`.
            mstore(0x00, 0x660375dd)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, bool p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,bool,address,bool)`.
            mstore(0x00, 0xa6f50b0f)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, bool p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,bool,address,uint256)`.
            mstore(0x00, 0xa75c59de)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, bool p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,bool,address,string)`.
            mstore(0x00, 0x2dd778e6)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bool p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,bool,bool,address)`.
            mstore(0x00, 0xcf394485)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, bool p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,bool,bool,bool)`.
            mstore(0x00, 0xcac43479)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, bool p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,bool,bool,uint256)`.
            mstore(0x00, 0x8c4e5de6)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, bool p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,bool,bool,string)`.
            mstore(0x00, 0xdfc4a2e8)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bool p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,bool,uint256,address)`.
            mstore(0x00, 0xccf790a1)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, bool p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,bool,uint256,bool)`.
            mstore(0x00, 0xc4643e20)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, bool p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,bool,uint256,uint256)`.
            mstore(0x00, 0x386ff5f4)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, bool p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,bool,uint256,string)`.
            mstore(0x00, 0x0aa6cfad)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bool p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,bool,string,address)`.
            mstore(0x00, 0x19fd4956)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bool p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,bool,string,bool)`.
            mstore(0x00, 0x50ad461d)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bool p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,bool,string,uint256)`.
            mstore(0x00, 0x80e6a20b)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bool p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(address,bool,string,string)`.
            mstore(0x00, 0x475c5c33)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, 0xc0)
            writeString(0xa0, p2)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(address p0, uint256 p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,uint256,address,address)`.
            mstore(0x00, 0x478d1c62)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, uint256 p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,uint256,address,bool)`.
            mstore(0x00, 0xa1bcc9b3)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, uint256 p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,uint256,address,uint256)`.
            mstore(0x00, 0x100f650e)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, uint256 p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,uint256,address,string)`.
            mstore(0x00, 0x1da986ea)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, uint256 p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,uint256,bool,address)`.
            mstore(0x00, 0xa31bfdcc)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, uint256 p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,uint256,bool,bool)`.
            mstore(0x00, 0x3bf5e537)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, uint256 p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,uint256,bool,uint256)`.
            mstore(0x00, 0x22f6b999)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, uint256 p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,uint256,bool,string)`.
            mstore(0x00, 0xc5ad85f9)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, uint256 p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,uint256,uint256,address)`.
            mstore(0x00, 0x20e3984d)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, uint256 p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,uint256,uint256,bool)`.
            mstore(0x00, 0x66f1bc67)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(address,uint256,uint256,uint256)`.
            mstore(0x00, 0x34f0e636)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(address p0, uint256 p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,uint256,uint256,string)`.
            mstore(0x00, 0x4a28c017)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, uint256 p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,uint256,string,address)`.
            mstore(0x00, 0x5c430d47)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, uint256 p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,uint256,string,bool)`.
            mstore(0x00, 0xcf18105c)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, uint256 p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,uint256,string,uint256)`.
            mstore(0x00, 0xbf01f891)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, uint256 p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(address,uint256,string,string)`.
            mstore(0x00, 0x88a8c406)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, 0xc0)
            writeString(0xa0, p2)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(address p0, bytes32 p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,string,address,address)`.
            mstore(0x00, 0x0d36fa20)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bytes32 p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,string,address,bool)`.
            mstore(0x00, 0x0df12b76)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bytes32 p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,string,address,uint256)`.
            mstore(0x00, 0x457fe3cf)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bytes32 p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(address,string,address,string)`.
            mstore(0x00, 0xf7e36245)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p1)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(address p0, bytes32 p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,string,bool,address)`.
            mstore(0x00, 0x205871c2)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bytes32 p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,string,bool,bool)`.
            mstore(0x00, 0x5f1d5c9f)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bytes32 p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,string,bool,uint256)`.
            mstore(0x00, 0x515e38b6)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bytes32 p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(address,string,bool,string)`.
            mstore(0x00, 0xbc0b61fe)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p1)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(address p0, bytes32 p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,string,uint256,address)`.
            mstore(0x00, 0x63183678)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bytes32 p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,string,uint256,bool)`.
            mstore(0x00, 0x0ef7e050)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bytes32 p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(address,string,uint256,uint256)`.
            mstore(0x00, 0x1dc8e1b8)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(address p0, bytes32 p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(address,string,uint256,string)`.
            mstore(0x00, 0x448830a8)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p1)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(address p0, bytes32 p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(address,string,string,address)`.
            mstore(0x00, 0xa04e2f87)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(address p0, bytes32 p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(address,string,string,bool)`.
            mstore(0x00, 0x35a5071f)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(address p0, bytes32 p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(address,string,string,uint256)`.
            mstore(0x00, 0x159f8927)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(address p0, bytes32 p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(address,string,string,string)`.
            mstore(0x00, 0x5d02c50b)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, 0x100)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
            writeString(0x120, p3)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bool p0, address p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,address,address,address)`.
            mstore(0x00, 0x1d14d001)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,address,address,bool)`.
            mstore(0x00, 0x46600be0)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,address,address,uint256)`.
            mstore(0x00, 0x0c66d1be)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,address,address,string)`.
            mstore(0x00, 0xd812a167)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, address p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,address,bool,address)`.
            mstore(0x00, 0x1c41a336)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,address,bool,bool)`.
            mstore(0x00, 0x6a9c478b)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,address,bool,uint256)`.
            mstore(0x00, 0x07831502)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,address,bool,string)`.
            mstore(0x00, 0x4a66cb34)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, address p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,address,uint256,address)`.
            mstore(0x00, 0x136b05dd)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,address,uint256,bool)`.
            mstore(0x00, 0xd6019f1c)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,address,uint256,uint256)`.
            mstore(0x00, 0x7bf181a1)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, address p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,address,uint256,string)`.
            mstore(0x00, 0x51f09ff8)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, address p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,address,string,address)`.
            mstore(0x00, 0x6f7c603e)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, address p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,address,string,bool)`.
            mstore(0x00, 0xe2bfd60b)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, address p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,address,string,uint256)`.
            mstore(0x00, 0xc21f64c7)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, address p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(bool,address,string,string)`.
            mstore(0x00, 0xa73c1db6)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, 0xc0)
            writeString(0xa0, p2)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bool p0, bool p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,bool,address,address)`.
            mstore(0x00, 0xf4880ea4)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, bool p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,bool,address,bool)`.
            mstore(0x00, 0xc0a302d8)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, bool p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,bool,address,uint256)`.
            mstore(0x00, 0x4c123d57)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, bool p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,bool,address,string)`.
            mstore(0x00, 0xa0a47963)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bool p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,bool,bool,address)`.
            mstore(0x00, 0x8c329b1a)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, bool p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,bool,bool,bool)`.
            mstore(0x00, 0x3b2a5ce0)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, bool p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,bool,bool,uint256)`.
            mstore(0x00, 0x6d7045c1)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, bool p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,bool,bool,string)`.
            mstore(0x00, 0x2ae408d4)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bool p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,bool,uint256,address)`.
            mstore(0x00, 0x54a7a9a0)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, bool p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,bool,uint256,bool)`.
            mstore(0x00, 0x619e4d0e)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, bool p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,bool,uint256,uint256)`.
            mstore(0x00, 0x0bb00eab)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, bool p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,bool,uint256,string)`.
            mstore(0x00, 0x7dd4d0e0)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bool p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,bool,string,address)`.
            mstore(0x00, 0xf9ad2b89)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bool p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,bool,string,bool)`.
            mstore(0x00, 0xb857163a)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bool p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,bool,string,uint256)`.
            mstore(0x00, 0xe3a9ca2f)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bool p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(bool,bool,string,string)`.
            mstore(0x00, 0x6d1e8751)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, 0xc0)
            writeString(0xa0, p2)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bool p0, uint256 p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,uint256,address,address)`.
            mstore(0x00, 0x26f560a8)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, uint256 p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,uint256,address,bool)`.
            mstore(0x00, 0xb4c314ff)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, uint256 p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,uint256,address,uint256)`.
            mstore(0x00, 0x1537dc87)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, uint256 p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,uint256,address,string)`.
            mstore(0x00, 0x1bb3b09a)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, uint256 p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,uint256,bool,address)`.
            mstore(0x00, 0x9acd3616)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, uint256 p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,uint256,bool,bool)`.
            mstore(0x00, 0xceb5f4d7)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, uint256 p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,uint256,bool,uint256)`.
            mstore(0x00, 0x7f9bbca2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, uint256 p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,uint256,bool,string)`.
            mstore(0x00, 0x9143dbb1)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, uint256 p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,uint256,uint256,address)`.
            mstore(0x00, 0x00dd87b9)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, uint256 p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,uint256,uint256,bool)`.
            mstore(0x00, 0xbe984353)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(bool,uint256,uint256,uint256)`.
            mstore(0x00, 0x374bb4b2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(bool p0, uint256 p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,uint256,uint256,string)`.
            mstore(0x00, 0x8e69fb5d)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, uint256 p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,uint256,string,address)`.
            mstore(0x00, 0xfedd1fff)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, uint256 p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,uint256,string,bool)`.
            mstore(0x00, 0xe5e70b2b)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, uint256 p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,uint256,string,uint256)`.
            mstore(0x00, 0x6a1199e2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, uint256 p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(bool,uint256,string,string)`.
            mstore(0x00, 0xf5bc2249)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, 0xc0)
            writeString(0xa0, p2)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bool p0, bytes32 p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,string,address,address)`.
            mstore(0x00, 0x2b2b18dc)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bytes32 p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,string,address,bool)`.
            mstore(0x00, 0x6dd434ca)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bytes32 p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,string,address,uint256)`.
            mstore(0x00, 0xa5cada94)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bytes32 p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(bool,string,address,string)`.
            mstore(0x00, 0x12d6c788)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p1)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bool p0, bytes32 p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,string,bool,address)`.
            mstore(0x00, 0x538e06ab)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bytes32 p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,string,bool,bool)`.
            mstore(0x00, 0xdc5e935b)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bytes32 p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,string,bool,uint256)`.
            mstore(0x00, 0x1606a393)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bytes32 p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(bool,string,bool,string)`.
            mstore(0x00, 0x483d0416)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p1)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bool p0, bytes32 p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,string,uint256,address)`.
            mstore(0x00, 0x1596a1ce)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bytes32 p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,string,uint256,bool)`.
            mstore(0x00, 0x6b0e5d53)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bytes32 p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(bool,string,uint256,uint256)`.
            mstore(0x00, 0x28863fcb)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bool p0, bytes32 p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(bool,string,uint256,string)`.
            mstore(0x00, 0x1ad96de6)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p1)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bool p0, bytes32 p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(bool,string,string,address)`.
            mstore(0x00, 0x97d394d8)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bool p0, bytes32 p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(bool,string,string,bool)`.
            mstore(0x00, 0x1e4b87e5)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bool p0, bytes32 p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(bool,string,string,uint256)`.
            mstore(0x00, 0x7be0c3eb)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bool p0, bytes32 p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(bool,string,string,string)`.
            mstore(0x00, 0x1762e32a)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, 0x100)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
            writeString(0x120, p3)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(uint256 p0, address p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,address,address,address)`.
            mstore(0x00, 0x2488b414)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,address,address,bool)`.
            mstore(0x00, 0x091ffaf5)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,address,address,uint256)`.
            mstore(0x00, 0x736efbb6)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,address,address,string)`.
            mstore(0x00, 0x031c6f73)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, address p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,address,bool,address)`.
            mstore(0x00, 0xef72c513)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,address,bool,bool)`.
            mstore(0x00, 0xe351140f)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,address,bool,uint256)`.
            mstore(0x00, 0x5abd992a)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,address,bool,string)`.
            mstore(0x00, 0x90fb06aa)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, address p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,address,uint256,address)`.
            mstore(0x00, 0x15c127b5)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,address,uint256,bool)`.
            mstore(0x00, 0x5f743a7c)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,address,uint256,uint256)`.
            mstore(0x00, 0x0c9cd9c1)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, address p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,address,uint256,string)`.
            mstore(0x00, 0xddb06521)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, address p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,address,string,address)`.
            mstore(0x00, 0x9cba8fff)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, address p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,address,string,bool)`.
            mstore(0x00, 0xcc32ab07)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, address p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,address,string,uint256)`.
            mstore(0x00, 0x46826b5d)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, address p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(uint256,address,string,string)`.
            mstore(0x00, 0x3e128ca3)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, 0xc0)
            writeString(0xa0, p2)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(uint256 p0, bool p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,bool,address,address)`.
            mstore(0x00, 0xa1ef4cbb)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, bool p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,bool,address,bool)`.
            mstore(0x00, 0x454d54a5)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, bool p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,bool,address,uint256)`.
            mstore(0x00, 0x078287f5)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, bool p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,bool,address,string)`.
            mstore(0x00, 0xade052c7)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bool p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,bool,bool,address)`.
            mstore(0x00, 0x69640b59)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, bool p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,bool,bool,bool)`.
            mstore(0x00, 0xb6f577a1)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, bool p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,bool,bool,uint256)`.
            mstore(0x00, 0x7464ce23)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, bool p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,bool,bool,string)`.
            mstore(0x00, 0xdddb9561)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bool p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,bool,uint256,address)`.
            mstore(0x00, 0x88cb6041)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, bool p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,bool,uint256,bool)`.
            mstore(0x00, 0x91a02e2a)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, bool p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,bool,uint256,uint256)`.
            mstore(0x00, 0xc6acc7a8)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, bool p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,bool,uint256,string)`.
            mstore(0x00, 0xde03e774)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bool p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,bool,string,address)`.
            mstore(0x00, 0xef529018)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bool p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,bool,string,bool)`.
            mstore(0x00, 0xeb928d7f)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bool p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,bool,string,uint256)`.
            mstore(0x00, 0x2c1d0746)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bool p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(uint256,bool,string,string)`.
            mstore(0x00, 0x68c8b8bd)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, 0xc0)
            writeString(0xa0, p2)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(uint256 p0, uint256 p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,uint256,address,address)`.
            mstore(0x00, 0x56a5d1b1)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, uint256 p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,uint256,address,bool)`.
            mstore(0x00, 0x15cac476)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, uint256 p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,uint256,address,uint256)`.
            mstore(0x00, 0x88f6e4b2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, uint256 p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,uint256,address,string)`.
            mstore(0x00, 0x6cde40b8)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, uint256 p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,uint256,bool,address)`.
            mstore(0x00, 0x9a816a83)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, uint256 p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,uint256,bool,bool)`.
            mstore(0x00, 0xab085ae6)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, uint256 p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,uint256,bool,uint256)`.
            mstore(0x00, 0xeb7f6fd2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, uint256 p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,uint256,bool,string)`.
            mstore(0x00, 0xa5b4fc99)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, uint256 p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,uint256,uint256,address)`.
            mstore(0x00, 0xfa8185af)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, uint256 p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,uint256,uint256,bool)`.
            mstore(0x00, 0xc598d185)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        assembly {
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            // Selector of `log(uint256,uint256,uint256,uint256)`.
            mstore(0x00, 0x193fb800)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
        }
        _sendLogPayload(0x1c, 0x84);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
        }
    }

    function log(uint256 p0, uint256 p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,uint256,uint256,string)`.
            mstore(0x00, 0x59cfcbe3)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0x80)
            writeString(0xa0, p3)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, uint256 p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,uint256,string,address)`.
            mstore(0x00, 0x42d21db7)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, uint256 p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,uint256,string,bool)`.
            mstore(0x00, 0x7af6ab25)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, uint256 p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,uint256,string,uint256)`.
            mstore(0x00, 0x5da297eb)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, p3)
            writeString(0xa0, p2)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, uint256 p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(uint256,uint256,string,string)`.
            mstore(0x00, 0x27d8afd2)
            mstore(0x20, p0)
            mstore(0x40, p1)
            mstore(0x60, 0x80)
            mstore(0x80, 0xc0)
            writeString(0xa0, p2)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(uint256 p0, bytes32 p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,string,address,address)`.
            mstore(0x00, 0x6168ed61)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bytes32 p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,string,address,bool)`.
            mstore(0x00, 0x90c30a56)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bytes32 p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,string,address,uint256)`.
            mstore(0x00, 0xe8d3018d)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bytes32 p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(uint256,string,address,string)`.
            mstore(0x00, 0x9c3adfa1)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p1)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(uint256 p0, bytes32 p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,string,bool,address)`.
            mstore(0x00, 0xae2ec581)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bytes32 p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,string,bool,bool)`.
            mstore(0x00, 0xba535d9c)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bytes32 p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,string,bool,uint256)`.
            mstore(0x00, 0xcf009880)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bytes32 p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(uint256,string,bool,string)`.
            mstore(0x00, 0xd2d423cd)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p1)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(uint256 p0, bytes32 p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,string,uint256,address)`.
            mstore(0x00, 0x3b2279b4)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bytes32 p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,string,uint256,bool)`.
            mstore(0x00, 0x691a8f74)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bytes32 p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(uint256,string,uint256,uint256)`.
            mstore(0x00, 0x82c25b74)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p1)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(uint256 p0, bytes32 p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(uint256,string,uint256,string)`.
            mstore(0x00, 0xb7b914ca)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p1)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(uint256 p0, bytes32 p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(uint256,string,string,address)`.
            mstore(0x00, 0xd583c602)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(uint256 p0, bytes32 p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(uint256,string,string,bool)`.
            mstore(0x00, 0xb3a6b6bd)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(uint256 p0, bytes32 p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(uint256,string,string,uint256)`.
            mstore(0x00, 0xb028c9bd)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(uint256 p0, bytes32 p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(uint256,string,string,string)`.
            mstore(0x00, 0x21ad0683)
            mstore(0x20, p0)
            mstore(0x40, 0x80)
            mstore(0x60, 0xc0)
            mstore(0x80, 0x100)
            writeString(0xa0, p1)
            writeString(0xe0, p2)
            writeString(0x120, p3)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, address p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,address,address,address)`.
            mstore(0x00, 0xed8f28f6)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, address p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,address,address,bool)`.
            mstore(0x00, 0xb59dbd60)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, address p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,address,address,uint256)`.
            mstore(0x00, 0x8ef3f399)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, address p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,address,address,string)`.
            mstore(0x00, 0x800a1c67)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p0)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, address p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,address,bool,address)`.
            mstore(0x00, 0x223603bd)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, address p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,address,bool,bool)`.
            mstore(0x00, 0x79884c2b)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, address p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,address,bool,uint256)`.
            mstore(0x00, 0x3e9f866a)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, address p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,address,bool,string)`.
            mstore(0x00, 0x0454c079)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p0)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, address p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,address,uint256,address)`.
            mstore(0x00, 0x63fb8bc5)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, address p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,address,uint256,bool)`.
            mstore(0x00, 0xfc4845f0)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, address p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,address,uint256,uint256)`.
            mstore(0x00, 0xf8f51b1e)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, address p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,address,uint256,string)`.
            mstore(0x00, 0x5a477632)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p0)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, address p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,address,string,address)`.
            mstore(0x00, 0xaabc9a31)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, address p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,address,string,bool)`.
            mstore(0x00, 0x5f15d28c)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, address p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,address,string,uint256)`.
            mstore(0x00, 0x91d1112e)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, address p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(string,address,string,string)`.
            mstore(0x00, 0x245986f2)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, 0x100)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
            writeString(0x120, p3)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, bool p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,bool,address,address)`.
            mstore(0x00, 0x33e9dd1d)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, bool p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,bool,address,bool)`.
            mstore(0x00, 0x958c28c6)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, bool p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,bool,address,uint256)`.
            mstore(0x00, 0x5d08bb05)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, bool p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,bool,address,string)`.
            mstore(0x00, 0x2d8e33a4)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p0)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bool p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,bool,bool,address)`.
            mstore(0x00, 0x7190a529)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, bool p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,bool,bool,bool)`.
            mstore(0x00, 0x895af8c5)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, bool p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,bool,bool,uint256)`.
            mstore(0x00, 0x8e3f78a9)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, bool p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,bool,bool,string)`.
            mstore(0x00, 0x9d22d5dd)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p0)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bool p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,bool,uint256,address)`.
            mstore(0x00, 0x935e09bf)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, bool p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,bool,uint256,bool)`.
            mstore(0x00, 0x8af7cf8a)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, bool p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,bool,uint256,uint256)`.
            mstore(0x00, 0x64b5bb67)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, bool p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,bool,uint256,string)`.
            mstore(0x00, 0x742d6ee7)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p0)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bool p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,bool,string,address)`.
            mstore(0x00, 0xe0625b29)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bool p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,bool,string,bool)`.
            mstore(0x00, 0x3f8a701d)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bool p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,bool,string,uint256)`.
            mstore(0x00, 0x24f91465)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bool p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(string,bool,string,string)`.
            mstore(0x00, 0xa826caeb)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, 0x100)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
            writeString(0x120, p3)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, uint256 p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,uint256,address,address)`.
            mstore(0x00, 0x5ea2b7ae)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, uint256 p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,uint256,address,bool)`.
            mstore(0x00, 0x82112a42)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, uint256 p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,uint256,address,uint256)`.
            mstore(0x00, 0x4f04fdc6)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, uint256 p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,uint256,address,string)`.
            mstore(0x00, 0x9ffb2f93)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p0)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, uint256 p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,uint256,bool,address)`.
            mstore(0x00, 0xe0e95b98)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, uint256 p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,uint256,bool,bool)`.
            mstore(0x00, 0x354c36d6)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, uint256 p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,uint256,bool,uint256)`.
            mstore(0x00, 0xe41b6f6f)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, uint256 p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,uint256,bool,string)`.
            mstore(0x00, 0xabf73a98)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p0)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, uint256 p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,uint256,uint256,address)`.
            mstore(0x00, 0xe21de278)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, uint256 p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,uint256,uint256,bool)`.
            mstore(0x00, 0x7626db92)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, uint256 p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            // Selector of `log(string,uint256,uint256,uint256)`.
            mstore(0x00, 0xa7a87853)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
        }
        _sendLogPayload(0x1c, 0xc4);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
        }
    }

    function log(bytes32 p0, uint256 p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,uint256,uint256,string)`.
            mstore(0x00, 0x854b3496)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, p2)
            mstore(0x80, 0xc0)
            writeString(0xa0, p0)
            writeString(0xe0, p3)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, uint256 p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,uint256,string,address)`.
            mstore(0x00, 0x7c4632a4)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, uint256 p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,uint256,string,bool)`.
            mstore(0x00, 0x7d24491d)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, uint256 p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,uint256,string,uint256)`.
            mstore(0x00, 0xc67ea9d1)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, uint256 p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(string,uint256,string,string)`.
            mstore(0x00, 0x5ab84e1f)
            mstore(0x20, 0x80)
            mstore(0x40, p1)
            mstore(0x60, 0xc0)
            mstore(0x80, 0x100)
            writeString(0xa0, p0)
            writeString(0xe0, p2)
            writeString(0x120, p3)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, bytes32 p1, address p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,string,address,address)`.
            mstore(0x00, 0x439c7bef)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bytes32 p1, address p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,string,address,bool)`.
            mstore(0x00, 0x5ccd4e37)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bytes32 p1, address p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,string,address,uint256)`.
            mstore(0x00, 0x7cc3c607)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bytes32 p1, address p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(string,string,address,string)`.
            mstore(0x00, 0xeb1bff80)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, 0x100)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
            writeString(0x120, p3)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, bytes32 p1, bool p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,string,bool,address)`.
            mstore(0x00, 0xc371c7db)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bytes32 p1, bool p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,string,bool,bool)`.
            mstore(0x00, 0x40785869)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bytes32 p1, bool p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,string,bool,uint256)`.
            mstore(0x00, 0xd6aefad2)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bytes32 p1, bool p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(string,string,bool,string)`.
            mstore(0x00, 0x5e84b0ea)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, 0x100)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
            writeString(0x120, p3)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, bytes32 p1, uint256 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,string,uint256,address)`.
            mstore(0x00, 0x1023f7b2)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bytes32 p1, uint256 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,string,uint256,bool)`.
            mstore(0x00, 0xc3a8a654)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bytes32 p1, uint256 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            // Selector of `log(string,string,uint256,uint256)`.
            mstore(0x00, 0xf45d7d2c)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
        }
        _sendLogPayload(0x1c, 0x104);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
        }
    }

    function log(bytes32 p0, bytes32 p1, uint256 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(string,string,uint256,string)`.
            mstore(0x00, 0x5d1a971a)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, p2)
            mstore(0x80, 0x100)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
            writeString(0x120, p3)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, bytes32 p1, bytes32 p2, address p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(string,string,string,address)`.
            mstore(0x00, 0x6d572f44)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, 0x100)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
            writeString(0x120, p2)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, bytes32 p1, bytes32 p2, bool p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(string,string,string,bool)`.
            mstore(0x00, 0x2c1754ed)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, 0x100)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
            writeString(0x120, p2)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, bytes32 p1, bytes32 p2, uint256 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            // Selector of `log(string,string,string,uint256)`.
            mstore(0x00, 0x8eafb02b)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, 0x100)
            mstore(0x80, p3)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
            writeString(0x120, p2)
        }
        _sendLogPayload(0x1c, 0x144);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
        }
    }

    function log(bytes32 p0, bytes32 p1, bytes32 p2, bytes32 p3) internal pure {
        bytes32 m0;
        bytes32 m1;
        bytes32 m2;
        bytes32 m3;
        bytes32 m4;
        bytes32 m5;
        bytes32 m6;
        bytes32 m7;
        bytes32 m8;
        bytes32 m9;
        bytes32 m10;
        bytes32 m11;
        bytes32 m12;
        assembly {
            function writeString(pos, w) {
                let length := 0
                for {} lt(length, 0x20) { length := add(length, 1) } { if iszero(byte(length, w)) { break } }
                mstore(pos, length)
                let shift := sub(256, shl(3, length))
                mstore(add(pos, 0x20), shl(shift, shr(shift, w)))
            }
            m0 := mload(0x00)
            m1 := mload(0x20)
            m2 := mload(0x40)
            m3 := mload(0x60)
            m4 := mload(0x80)
            m5 := mload(0xa0)
            m6 := mload(0xc0)
            m7 := mload(0xe0)
            m8 := mload(0x100)
            m9 := mload(0x120)
            m10 := mload(0x140)
            m11 := mload(0x160)
            m12 := mload(0x180)
            // Selector of `log(string,string,string,string)`.
            mstore(0x00, 0xde68f20a)
            mstore(0x20, 0x80)
            mstore(0x40, 0xc0)
            mstore(0x60, 0x100)
            mstore(0x80, 0x140)
            writeString(0xa0, p0)
            writeString(0xe0, p1)
            writeString(0x120, p2)
            writeString(0x160, p3)
        }
        _sendLogPayload(0x1c, 0x184);
        assembly {
            mstore(0x00, m0)
            mstore(0x20, m1)
            mstore(0x40, m2)
            mstore(0x60, m3)
            mstore(0x80, m4)
            mstore(0xa0, m5)
            mstore(0xc0, m6)
            mstore(0xe0, m7)
            mstore(0x100, m8)
            mstore(0x120, m9)
            mstore(0x140, m10)
            mstore(0x160, m11)
            mstore(0x180, m12)
        }
    }
}

/**
 * @title RateLimiter
 * @dev Abstract contract for implementing rate limiting functionality. This contract provides a basic framework for
 * rate limiting how often a function can be executed. It is designed to be inherited by other contracts requiring rate
 * limiting capabilities to protect resources or services from excessive use.
 *
 * Example 1: Max rate limit reached at beginning of window. As time continues the amount of in flights comes down.
 *
 * Rate Limit Config:
 *   limit: 100 units
 *   window: 60 seconds
 *
 *                              Amount in Flight (units) vs. Time Graph (seconds)
 *
 *      100 | * - (Max limit reached at beginning of window)
 *          |   *
 *          |     *
 *          |       *
 *       50 |         * (After 30 seconds only 50 units in flight)
 *          |           *
 *          |             *
 *          |               *
 *       0  +--|---|---|---|---|-->(After 60 seconds 0 units are in flight)
 *             0  15  30  45  60 (seconds)
 *
 * Example 2: Max rate limit reached at beginning of window. As time continues the amount of in flights comes down
 * allowing for more to be sent. At the 90 second mark, more in flights come in.
 *
 * Rate Limit Config:
 *   limit: 100 units
 *   window: 60 seconds
 *
 *                              Amount in Flight (units) vs. Time Graph (seconds)
 *
 *      100 | * - (Max limit reached at beginning of window)
 *          |   *
 *          |     *
 *          |       *
 *       50 |         *          * (50 inflight)
 *          |           *          *
 *          |             *          *
 *          |               *          *
 *        0  +--|--|--|--|--|--|--|--|--|--> Time
 *              0 15 30 45 60 75 90 105 120  (seconds)
 *
 * Example 3: Max rate limit reached at beginning of window. At the 15 second mark, the window gets updated to 60
 * seconds and the limit gets updated to 50 units. This scenario shows the direct depiction of "in flight" from the
 * previous window affecting the current window.
 *
 * Initial Rate Limit Config: For first 15 seconds
 *   limit: 100 units
 *   window: 30 seconds
 *
 * Updated Rate Limit Config: Updated at 15 second mark
 *   limit: 50 units
 *   window: 60 seconds
 *
 *                              Amount in Flight (units) vs. Time Graph (seconds)
 *      100 - *
 *            |*
 *            | *
 *            |  *
 *            |   *
 *            |    *
 *            |     *
 *       75 - |      *
 *            |       *
 *            |        *
 *            |         *
 *            |          *
 *            |           *
 *            |            *
 *            |             *
 *       50 - |              𐫰 <--(Slope changes at the 15 second mark because of the update.
 *            |               ✧ *      Window extended to 60 seconds and limit reduced to 50 units.
 *            |                ✧ ︎   *      Because amountInFlight/lastUpdated do not reset, 50 units are
 *            |                 ✧       *      considered in flight from the previous window and the corresponding
 *            |                  ✧ ︎          *     decay from the previous rate.)
 *            |                   ✧              *
 *       25 - |                    ✧                 *
 *            |                     ✧                    *
 *            |                      ✧                        *
 *            |                       ✧                           *
 *            |                        ✧                              *
 *            |                         ✧                                  *
 *            |                          ✧                                     *
 *            |                           ✧                                        *
 *        0 - +---|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----|----> Time
 *            0   5    10   15   20   25   30   35   40   45   50   55   60   65   70   75   80   85   90 (seconds)
 *            [  Initial 30 Second Window  ]
 *                          [ --------------- Extended 60 Second Window --------------- ]
 */
abstract contract RateLimiter {
    /**
     * @notice Rate Limit struct.
     * @param amountInFlight The amount in the current window.
     * @param lastUpdated Timestamp representing the last time the rate limit was checked or updated.
     * @param limit This represents the maximum allowed amount within a given window.
     * @param window Defines the duration of the rate limiting window.
     */
    struct RateLimit {
        uint256 amountInFlight;
        uint256 lastUpdated;
        uint256 limit;
        uint256 window;
    }

    /**
     * @notice Rate Limit Configuration struct.
     * @param dstEid The destination endpoint id.
     * @param limit This represents the maximum allowed amount within a given window.
     * @param window Defines the duration of the rate limiting window.
     */
    struct RateLimitConfig {
        uint32 dstEid;
        uint256 limit;
        uint256 window;
    }

    /**
     * @dev Mapping from destination endpoint id to RateLimit Configurations.
     */
    mapping(uint32 dstEid => RateLimit limit) public rateLimits;

    /**
     * @notice Emitted when _setRateLimits occurs.
     * @param rateLimitConfigs An array of `RateLimitConfig` structs representing the rate limit configurations set.
     * - `dstEid`: The destination endpoint id.
     * - `limit`: This represents the maximum allowed amount within a given window.
     * - `window`: Defines the duration of the rate limiting window.
     */
    event RateLimitsChanged(RateLimitConfig[] rateLimitConfigs);

    /**
     * @notice Error that is thrown when an amount exceeds the rate_limit.
     */
    error RateLimitExceeded();

    /**
     * @notice Get the current amount that can be sent to this destination endpoint id for the given rate limit window.
     * @param _dstEid The destination endpoint id.
     * @return currentAmountInFlight The current amount that was sent.
     * @return amountCanBeSent The amount that can be sent.
     */
    function getAmountCanBeSent(
        uint32 _dstEid
    ) external view virtual returns (uint256 currentAmountInFlight, uint256 amountCanBeSent) {
        RateLimit memory rl = rateLimits[_dstEid];
        return _amountCanBeSent(rl.amountInFlight, rl.lastUpdated, rl.limit, rl.window);
    }

    /**
     * @notice Sets the Rate Limit.
     * @param _rateLimitConfigs A `RateLimitConfig` struct representing the rate limit configuration.
     * - `dstEid`: The destination endpoint id.
     * - `limit`: This represents the maximum allowed amount within a given window.
     * - `window`: Defines the duration of the rate limiting window.
     */
    function _setRateLimits(RateLimitConfig[] memory _rateLimitConfigs) internal virtual {
        unchecked {
            for (uint256 i = 0; i < _rateLimitConfigs.length; i++) {
                RateLimit storage rl = rateLimits[_rateLimitConfigs[i].dstEid];

                // @dev Ensure we checkpoint the existing rate limit as to not retroactively apply the new decay rate.
                _checkAndUpdateRateLimit(_rateLimitConfigs[i].dstEid, 0);

                // @dev Does NOT reset the amountInFlight/lastUpdated of an existing rate limit.
                rl.limit = _rateLimitConfigs[i].limit;
                rl.window = _rateLimitConfigs[i].window;
            }
        }
        emit RateLimitsChanged(_rateLimitConfigs);
    }

    /**
     * @notice Checks current amount in flight and amount that can be sent for a given rate limit window.
     * @param _amountInFlight The amount in the current window.
     * @param _lastUpdated Timestamp representing the last time the rate limit was checked or updated.
     * @param _limit This represents the maximum allowed amount within a given window.
     * @param _window Defines the duration of the rate limiting window.
     * @return currentAmountInFlight The amount in the current window.
     * @return amountCanBeSent The amount that can be sent.
     */
    function _amountCanBeSent(
        uint256 _amountInFlight,
        uint256 _lastUpdated,
        uint256 _limit,
        uint256 _window
    ) internal view virtual returns (uint256 currentAmountInFlight, uint256 amountCanBeSent) {
        uint256 timeSinceLastDeposit = block.timestamp - _lastUpdated;
        if (timeSinceLastDeposit >= _window) {
            currentAmountInFlight = 0;
            amountCanBeSent = _limit;
        } else {
            // @dev Presumes linear decay.
            uint256 decay = (_limit * timeSinceLastDeposit) / _window;
            currentAmountInFlight = _amountInFlight <= decay ? 0 : _amountInFlight - decay;
            // @dev In the event the _limit is lowered, and the 'in-flight' amount is higher than the _limit, set to 0.
            amountCanBeSent = _limit <= currentAmountInFlight ? 0 : _limit - currentAmountInFlight;
        }
    }

    /**
     * @notice Verifies whether the specified amount falls within the rate limit constraints for the targeted
     * endpoint ID. On successful verification, it updates amountInFlight and lastUpdated. If the amount exceeds
     * the rate limit, the operation reverts.
     * @param _dstEid The destination endpoint id.
     * @param _amount The amount to check for rate limit constraints.
     */
    function _checkAndUpdateRateLimit(uint32 _dstEid, uint256 _amount) internal virtual {
        // @dev By default dstEid that have not been explicitly set will return amountCanBeSent == 0.
        RateLimit storage rl = rateLimits[_dstEid];

        (uint256 currentAmountInFlight, uint256 amountCanBeSent) = _amountCanBeSent(
            rl.amountInFlight,
            rl.lastUpdated,
            rl.limit,
            rl.window
        );
        if (_amount > amountCanBeSent) revert RateLimitExceeded();

        // @dev Update the storage to contain the new amount and current timestamp.
        rl.amountInFlight = currentAmountInFlight + _amount;
        rl.lastUpdated = block.timestamp;
    }
}

struct SetConfigParam {
    uint32 eid;
    uint32 configType;
    bytes config;
}

interface IMessageLibManager {
    struct Timeout {
        address lib;
        uint256 expiry;
    }

    event LibraryRegistered(address newLib);
    event DefaultSendLibrarySet(uint32 eid, address newLib);
    event DefaultReceiveLibrarySet(uint32 eid, address newLib);
    event DefaultReceiveLibraryTimeoutSet(uint32 eid, address oldLib, uint256 expiry);
    event SendLibrarySet(address sender, uint32 eid, address newLib);
    event ReceiveLibrarySet(address receiver, uint32 eid, address newLib);
    event ReceiveLibraryTimeoutSet(address receiver, uint32 eid, address oldLib, uint256 timeout);

    function registerLibrary(address _lib) external;

    function isRegisteredLibrary(address _lib) external view returns (bool);

    function getRegisteredLibraries() external view returns (address[] memory);

    function setDefaultSendLibrary(uint32 _eid, address _newLib) external;

    function defaultSendLibrary(uint32 _eid) external view returns (address);

    function setDefaultReceiveLibrary(uint32 _eid, address _newLib, uint256 _timeout) external;

    function defaultReceiveLibrary(uint32 _eid) external view returns (address);

    function setDefaultReceiveLibraryTimeout(uint32 _eid, address _lib, uint256 _expiry) external;

    function defaultReceiveLibraryTimeout(uint32 _eid) external view returns (address lib, uint256 expiry);

    function isSupportedEid(uint32 _eid) external view returns (bool);

    function isValidReceiveLibrary(address _receiver, uint32 _eid, address _lib) external view returns (bool);

    /// ------------------- OApp interfaces -------------------
    function setSendLibrary(address _oapp, uint32 _eid, address _newLib) external;

    function getSendLibrary(address _sender, uint32 _eid) external view returns (address lib);

    function isDefaultSendLibrary(address _sender, uint32 _eid) external view returns (bool);

    function setReceiveLibrary(address _oapp, uint32 _eid, address _newLib, uint256 _gracePeriod) external;

    function getReceiveLibrary(address _receiver, uint32 _eid) external view returns (address lib, bool isDefault);

    function setReceiveLibraryTimeout(address _oapp, uint32 _eid, address _lib, uint256 _gracePeriod) external;

    function receiveLibraryTimeout(address _receiver, uint32 _eid) external view returns (address lib, uint256 expiry);

    function setConfig(address _oapp, address _lib, SetConfigParam[] calldata _params) external;

    function getConfig(
        address _oapp,
        address _lib,
        uint32 _eid,
        uint32 _configType
    ) external view returns (bytes memory config);
}

interface IMessagingChannel {
    event InboundNonceSkipped(uint32 srcEid, bytes32 sender, address receiver, uint64 nonce);
    event PacketNilified(uint32 srcEid, bytes32 sender, address receiver, uint64 nonce, bytes32 payloadHash);
    event PacketBurnt(uint32 srcEid, bytes32 sender, address receiver, uint64 nonce, bytes32 payloadHash);

    function eid() external view returns (uint32);

    // this is an emergency function if a message cannot be verified for some reasons
    // required to provide _nextNonce to avoid race condition
    function skip(address _oapp, uint32 _srcEid, bytes32 _sender, uint64 _nonce) external;

    function nilify(address _oapp, uint32 _srcEid, bytes32 _sender, uint64 _nonce, bytes32 _payloadHash) external;

    function burn(address _oapp, uint32 _srcEid, bytes32 _sender, uint64 _nonce, bytes32 _payloadHash) external;

    function nextGuid(address _sender, uint32 _dstEid, bytes32 _receiver) external view returns (bytes32);

    function inboundNonce(address _receiver, uint32 _srcEid, bytes32 _sender) external view returns (uint64);

    function outboundNonce(address _sender, uint32 _dstEid, bytes32 _receiver) external view returns (uint64);

    function inboundPayloadHash(
        address _receiver,
        uint32 _srcEid,
        bytes32 _sender,
        uint64 _nonce
    ) external view returns (bytes32);

    function lazyInboundNonce(address _receiver, uint32 _srcEid, bytes32 _sender) external view returns (uint64);
}

interface IMessagingComposer {
    event ComposeSent(address from, address to, bytes32 guid, uint16 index, bytes message);
    event ComposeDelivered(address from, address to, bytes32 guid, uint16 index);
    event LzComposeAlert(
        address indexed from,
        address indexed to,
        address indexed executor,
        bytes32 guid,
        uint16 index,
        uint256 gas,
        uint256 value,
        bytes message,
        bytes extraData,
        bytes reason
    );

    function composeQueue(
        address _from,
        address _to,
        bytes32 _guid,
        uint16 _index
    ) external view returns (bytes32 messageHash);

    function sendCompose(address _to, bytes32 _guid, uint16 _index, bytes calldata _message) external;

    function lzCompose(
        address _from,
        address _to,
        bytes32 _guid,
        uint16 _index,
        bytes calldata _message,
        bytes calldata _extraData
    ) external payable;
}

interface IMessagingContext {
    function isSendingMessage() external view returns (bool);

    function getSendContext() external view returns (uint32 dstEid, address sender);
}

library AddressCast {
    error AddressCast_InvalidSizeForAddress();
    error AddressCast_InvalidAddress();

    function toBytes32(bytes calldata _addressBytes) internal pure returns (bytes32 result) {
        if (_addressBytes.length > 32) revert AddressCast_InvalidAddress();
        result = bytes32(_addressBytes);
        unchecked {
            uint256 offset = 32 - _addressBytes.length;
            result = result >> (offset * 8);
        }
    }

    function toBytes32(address _address) internal pure returns (bytes32 result) {
        result = bytes32(uint256(uint160(_address)));
    }

    function toBytes(bytes32 _addressBytes32, uint256 _size) internal pure returns (bytes memory result) {
        if (_size == 0 || _size > 32) revert AddressCast_InvalidSizeForAddress();
        result = new bytes(_size);
        unchecked {
            uint256 offset = 256 - _size * 8;
            assembly {
                mstore(add(result, 32), shl(offset, _addressBytes32))
            }
        }
    }

    function toAddress(bytes32 _addressBytes32) internal pure returns (address result) {
        result = address(uint160(uint256(_addressBytes32)));
    }

    function toAddress(bytes calldata _addressBytes) internal pure returns (address result) {
        if (_addressBytes.length != 20) revert AddressCast_InvalidAddress();
        result = address(bytes20(_addressBytes));
    }
}

// OpenZeppelin Contracts (last updated v5.0.0) (access/IAccessControl.sol)

/**
 * @dev External interface of AccessControl declared to support ERC165 detection.
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
     * `sender` is the account that originated the contract call, an admin role
     * bearer except when using {AccessControl-_setupRole}.
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

// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/IERC1967.sol)

/**
 * @dev ERC-1967: Proxy Storage Slots. This interface contains the events defined in the ERC.
 */
interface IERC1967 {
    /**
     * @dev Emitted when the implementation is upgraded.
     */
    event Upgraded(address indexed implementation);

    /**
     * @dev Emitted when the admin account has changed.
     */
    event AdminChanged(address previousAdmin, address newAdmin);

    /**
     * @dev Emitted when the beacon is changed.
     */
    event BeaconUpgraded(address indexed beacon);
}

// OpenZeppelin Contracts (last updated v5.0.0) (interfaces/draft-IERC6093.sol)

/**
 * @dev Standard ERC20 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC20 tokens.
 */
interface IERC20Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientBalance(address sender, uint256 balance, uint256 needed);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC20InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC20InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `spender`’s `allowance`. Used in transfers.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     * @param allowance Amount of tokens a `spender` is allowed to operate with.
     * @param needed Minimum amount required to perform a transfer.
     */
    error ERC20InsufficientAllowance(address spender, uint256 allowance, uint256 needed);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC20InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `spender` to be approved. Used in approvals.
     * @param spender Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC20InvalidSpender(address spender);
}

/**
 * @dev Standard ERC721 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC721 tokens.
 */
interface IERC721Errors {
    /**
     * @dev Indicates that an address can't be an owner. For example, `address(0)` is a forbidden owner in EIP-20.
     * Used in balance queries.
     * @param owner Address of the current owner of a token.
     */
    error ERC721InvalidOwner(address owner);

    /**
     * @dev Indicates a `tokenId` whose `owner` is the zero address.
     * @param tokenId Identifier number of a token.
     */
    error ERC721NonexistentToken(uint256 tokenId);

    /**
     * @dev Indicates an error related to the ownership over a particular token. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param tokenId Identifier number of a token.
     * @param owner Address of the current owner of a token.
     */
    error ERC721IncorrectOwner(address sender, uint256 tokenId, address owner);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC721InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC721InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param tokenId Identifier number of a token.
     */
    error ERC721InsufficientApproval(address operator, uint256 tokenId);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC721InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC721InvalidOperator(address operator);
}

/**
 * @dev Standard ERC1155 Errors
 * Interface of the https://eips.ethereum.org/EIPS/eip-6093[ERC-6093] custom errors for ERC1155 tokens.
 */
interface IERC1155Errors {
    /**
     * @dev Indicates an error related to the current `balance` of a `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     * @param balance Current balance for the interacting account.
     * @param needed Minimum amount required to perform a transfer.
     * @param tokenId Identifier number of a token.
     */
    error ERC1155InsufficientBalance(address sender, uint256 balance, uint256 needed, uint256 tokenId);

    /**
     * @dev Indicates a failure with the token `sender`. Used in transfers.
     * @param sender Address whose tokens are being transferred.
     */
    error ERC1155InvalidSender(address sender);

    /**
     * @dev Indicates a failure with the token `receiver`. Used in transfers.
     * @param receiver Address to which tokens are being transferred.
     */
    error ERC1155InvalidReceiver(address receiver);

    /**
     * @dev Indicates a failure with the `operator`’s approval. Used in transfers.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     * @param owner Address of the current owner of a token.
     */
    error ERC1155MissingApprovalForAll(address operator, address owner);

    /**
     * @dev Indicates a failure with the `approver` of a token to be approved. Used in approvals.
     * @param approver Address initiating an approval operation.
     */
    error ERC1155InvalidApprover(address approver);

    /**
     * @dev Indicates a failure with the `operator` to be approved. Used in approvals.
     * @param operator Address that may be allowed to operate on tokens without being their owner.
     */
    error ERC1155InvalidOperator(address operator);

    /**
     * @dev Indicates an array length mismatch between ids and values in a safeBatchTransferFrom operation.
     * Used in batch transfers.
     * @param idsLength Length of the array of token identifiers
     * @param valuesLength Length of the array of token amounts
     */
    error ERC1155InvalidArrayLength(uint256 idsLength, uint256 valuesLength);
}

// OpenZeppelin Contracts (last updated v5.0.0) (proxy/Proxy.sol)

/**
 * @dev This abstract contract provides a fallback function that delegates all calls to another contract using the EVM
 * instruction `delegatecall`. We refer to the second contract as the _implementation_ behind the proxy, and it has to
 * be specified by overriding the virtual {_implementation} function.
 *
 * Additionally, delegation to the implementation can be triggered manually through the {_fallback} function, or to a
 * different contract through the {_delegate} function.
 *
 * The success and return data of the delegated call will be returned back to the caller of the proxy.
 */
abstract contract Proxy {
    /**
     * @dev Delegates the current call to `implementation`.
     *
     * This function does not return to its internal call site, it will return directly to the external caller.
     */
    function _delegate(address implementation) internal virtual {
        assembly {
            // Copy msg.data. We take full control of memory in this inline assembly
            // block because it will not return to Solidity code. We overwrite the
            // Solidity scratch pad at memory position 0.
            calldatacopy(0, 0, calldatasize())

            // Call the implementation.
            // out and outsize are 0 because we don't know the size yet.
            let result := delegatecall(gas(), implementation, 0, calldatasize(), 0, 0)

            // Copy the returned data.
            returndatacopy(0, 0, returndatasize())

            switch result
            // delegatecall returns 0 on error.
            case 0 {
                revert(0, returndatasize())
            }
            default {
                return(0, returndatasize())
            }
        }
    }

    /**
     * @dev This is a virtual function that should be overridden so it returns the address to which the fallback
     * function and {_fallback} should delegate.
     */
    function _implementation() internal view virtual returns (address);

    /**
     * @dev Delegates the current call to the address returned by `_implementation()`.
     *
     * This function does not return to its internal call site, it will return directly to the external caller.
     */
    function _fallback() internal virtual {
        _delegate(_implementation());
    }

    /**
     * @dev Fallback function that delegates calls to the address returned by `_implementation()`. Will run if no other
     * function in the contract matches the call data.
     */
    fallback() external payable virtual {
        _fallback();
    }
}

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

// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/IERC20.sol)

/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20_1 {
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

// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Permit.sol)

/**
 * @dev Interface of the ERC20 Permit extension allowing approvals to be made via signatures, as defined in
 * https://eips.ethereum.org/EIPS/eip-2612[EIP-2612].
 *
 * Adds the {permit} method, which can be used to change an account's ERC20 allowance (see {IERC20-allowance}) by
 * presenting a message signed by the account. By not relying on {IERC20-approve}, the token holder account doesn't
 * need to send a transaction, and thus is not required to hold Ether at all.
 *
 * ==== Security Considerations
 *
 * There are two important considerations concerning the use of `permit`. The first is that a valid permit signature
 * expresses an allowance, and it should not be assumed to convey additional meaning. In particular, it should not be
 * considered as an intention to spend the allowance in any specific way. The second is that because permits have
 * built-in replay protection and can be submitted by anyone, they can be frontrun. A protocol that uses permits should
 * take this into consideration and allow a `permit` call to fail. Combining these two aspects, a pattern that may be
 * generally recommended is:
 *
 * ```solidity
 * function doThingWithPermit(..., uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) public {
 *     try token.permit(msg.sender, address(this), value, deadline, v, r, s) {} catch {}
 *     doThing(..., value);
 * }
 *
 * function doThing(..., uint256 value) public {
 *     token.safeTransferFrom(msg.sender, address(this), value);
 *     ...
 * }
 * ```
 *
 * Observe that: 1) `msg.sender` is used as the owner, leaving no ambiguity as to the signer intent, and 2) the use of
 * `try/catch` allows the permit to fail and makes the code tolerant to frontrunning. (See also
 * {SafeERC20-safeTransferFrom}).
 *
 * Additionally, note that smart contract wallets (such as Argent or Safe) are not able to produce permit signatures, so
 * contracts should have entry points that don't rely on permit.
 */
interface IERC20Permit {
    /**
     * @dev Sets `value` as the allowance of `spender` over ``owner``'s tokens,
     * given ``owner``'s signed approval.
     *
     * IMPORTANT: The same issues {IERC20-approve} has related to transaction
     * ordering also apply here.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `deadline` must be a timestamp in the future.
     * - `v`, `r` and `s` must be a valid `secp256k1` signature from `owner`
     * over the EIP712-formatted function arguments.
     * - the signature must use ``owner``'s current nonce (see {nonces}).
     *
     * For more information on the signature format, see the
     * https://eips.ethereum.org/EIPS/eip-2612#specification[relevant EIP
     * section].
     *
     * CAUTION: See Security Considerations above.
     */
    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /**
     * @dev Returns the current nonce for `owner`. This value must be
     * included whenever a signature is generated for {permit}.
     *
     * Every successful call to {permit} increases ``owner``'s nonce by one. This
     * prevents a signature from being used multiple times.
     */
    function nonces(address owner) external view returns (uint256);

    /**
     * @dev Returns the domain separator used in the encoding of the signature for {permit}, as defined by {EIP712}.
     */
    // solhint-disable-next-line func-name-mixedcase
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}

// OpenZeppelin Contracts (last updated v5.0.0) (utils/Address.sol)

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev The ETH balance of the account is not enough to perform the operation.
     */
    error AddressInsufficientBalance(address account);

    /**
     * @dev There's no code at `target` (it is not a contract).
     */
    error AddressEmptyCode(address target);

    /**
     * @dev A call to an address target failed. The target may have reverted.
     */
    error FailedInnerCall();

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.8.20/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        if (address(this).balance < amount) {
            revert AddressInsufficientBalance(address(this));
        }

        (bool success, ) = recipient.call{value: amount}("");
        if (!success) {
            revert FailedInnerCall();
        }
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason or custom error, it is bubbled
     * up by this function (like regular Solidity function calls). However, if
     * the call reverted with no returned reason, this function reverts with a
     * {FailedInnerCall} error.
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        if (address(this).balance < value) {
            revert AddressInsufficientBalance(address(this));
        }
        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResultFromTarget(target, success, returndata);
    }

    /**
     * @dev Tool to verify that a low level call to smart-contract was successful, and reverts if the target
     * was not a contract or bubbling up the revert reason (falling back to {FailedInnerCall}) in case of an
     * unsuccessful call.
     */
    function verifyCallResultFromTarget(
        address target,
        bool success,
        bytes memory returndata
    ) internal view returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            // only check if target is a contract if the call was successful and the return data is empty
            // otherwise we already know that it was a contract
            if (returndata.length == 0 && target.code.length == 0) {
                revert AddressEmptyCode(target);
            }
            return returndata;
        }
    }

    /**
     * @dev Tool to verify that a low level call was successful, and reverts if it wasn't, either by bubbling the
     * revert reason or with a default {FailedInnerCall} error.
     */
    function verifyCallResult(bool success, bytes memory returndata) internal pure returns (bytes memory) {
        if (!success) {
            _revert(returndata);
        } else {
            return returndata;
        }
    }

    /**
     * @dev Reverts with returndata if present. Otherwise reverts with {FailedInnerCall}.
     */
    function _revert(bytes memory returndata) private pure {
        // Look for revert reason and bubble it up if present
        if (returndata.length > 0) {
            // The easiest way to bubble the revert reason is using memory via assembly
            /// @solidity memory-safe-assembly
            assembly {
                let returndata_size := mload(returndata)
                revert(add(32, returndata), returndata_size)
            }
        } else {
            revert FailedInnerCall();
        }
    }
}

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

// OpenZeppelin Contracts (last updated v5.0.0) (utils/StorageSlot.sol)
// This file was procedurally generated from scripts/generate/templates/StorageSlot.js.

/**
 * @dev Library for reading and writing primitive types to specific storage slots.
 *
 * Storage slots are often used to avoid storage conflict when dealing with upgradeable contracts.
 * This library helps with reading and writing to such slots without the need for inline assembly.
 *
 * The functions in this library return Slot structs that contain a `value` member that can be used to read or write.
 *
 * Example usage to set ERC1967 implementation slot:
 * ```solidity
 * contract ERC1967 {
 *     bytes32 internal constant _IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
 *
 *     function _getImplementation() internal view returns (address) {
 *         return StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value;
 *     }
 *
 *     function _setImplementation(address newImplementation) internal {
 *         require(newImplementation.code.length > 0);
 *         StorageSlot.getAddressSlot(_IMPLEMENTATION_SLOT).value = newImplementation;
 *     }
 * }
 * ```
 */
library StorageSlot {
    struct AddressSlot {
        address value;
    }

    struct BooleanSlot {
        bool value;
    }

    struct Bytes32Slot {
        bytes32 value;
    }

    struct Uint256Slot {
        uint256 value;
    }

    struct StringSlot {
        string value;
    }

    struct BytesSlot {
        bytes value;
    }

    /**
     * @dev Returns an `AddressSlot` with member `value` located at `slot`.
     */
    function getAddressSlot(bytes32 slot) internal pure returns (AddressSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BooleanSlot` with member `value` located at `slot`.
     */
    function getBooleanSlot(bytes32 slot) internal pure returns (BooleanSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Bytes32Slot` with member `value` located at `slot`.
     */
    function getBytes32Slot(bytes32 slot) internal pure returns (Bytes32Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `Uint256Slot` with member `value` located at `slot`.
     */
    function getUint256Slot(bytes32 slot) internal pure returns (Uint256Slot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` with member `value` located at `slot`.
     */
    function getStringSlot(bytes32 slot) internal pure returns (StringSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `StringSlot` representation of the string storage pointer `store`.
     */
    function getStringSlot(string storage store) internal pure returns (StringSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := store.slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` with member `value` located at `slot`.
     */
    function getBytesSlot(bytes32 slot) internal pure returns (BytesSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := slot
        }
    }

    /**
     * @dev Returns an `BytesSlot` representation of the bytes storage pointer `store`.
     */
    function getBytesSlot(bytes storage store) internal pure returns (BytesSlot storage r) {
        /// @solidity memory-safe-assembly
        assembly {
            r.slot := store.slot
        }
    }
}

// OpenZeppelin Contracts (last updated v5.0.0) (utils/introspection/IERC165.sol)

/**
 * @dev Interface of the ERC165 standard, as defined in the
 * https://eips.ethereum.org/EIPS/eip-165[EIP].
 *
 * Implementers can declare support of contract interfaces, which can then be
 * queried by others ({ERC165Checker}).
 *
 * For an implementation, see {ERC165}.
 */
interface IERC165_1 {
    /**
     * @dev Returns true if this contract implements the interface defined by
     * `interfaceId`. See the corresponding
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[EIP section]
     * to learn more about how these ids are created.
     *
     * This function call must use less than 30 000 gas.
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}

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

/**
 * @title IOAppMsgInspector
 * @dev Interface for the OApp Message Inspector, allowing examination of message and options contents.
 */
interface IOAppMsgInspector {
    // Custom error message for inspection failure
    error InspectionFailed(bytes message, bytes options);

    /**
     * @notice Allows the inspector to examine LayerZero message contents and optionally throw a revert if invalid.
     * @param _message The message payload to be inspected.
     * @param _options Additional options or parameters for inspection.
     * @return valid A boolean indicating whether the inspection passed (true) or failed (false).
     *
     * @dev Optionally done as a revert, OR use the boolean provided to handle the failure.
     */
    function inspect(bytes calldata _message, bytes calldata _options) external view returns (bool valid);
}

/**
 * @dev Struct representing enforced option parameters.
 */
struct EnforcedOptionParam {
    uint32 eid; // Endpoint ID
    uint16 msgType; // Message Type
    bytes options; // Additional options
}

/**
 * @title IOAppOptionsType3
 * @dev Interface for the OApp with Type 3 Options, allowing the setting and combining of enforced options.
 */
interface IOAppOptionsType3 {
    // Custom error message for invalid options
    error InvalidOptions(bytes options);

    // Event emitted when enforced options are set
    event EnforcedOptionSet(EnforcedOptionParam[] _enforcedOptions);

    /**
     * @notice Sets enforced options for specific endpoint and message type combinations.
     * @param _enforcedOptions An array of EnforcedOptionParam structures specifying enforced options.
     */
    function setEnforcedOptions(EnforcedOptionParam[] calldata _enforcedOptions) external;

    /**
     * @notice Combines options for a given endpoint and message type.
     * @param _eid The endpoint ID.
     * @param _msgType The OApp message type.
     * @param _extraOptions Additional options passed by the caller.
     * @return options The combination of caller specified options AND enforced options.
     */
    function combineOptions(
        uint32 _eid,
        uint16 _msgType,
        bytes calldata _extraOptions
    ) external view returns (bytes memory options);
}

library OFTComposeMsgCodec {
    // Offset constants for decoding composed messages
    uint8 private constant NONCE_OFFSET = 8;
    uint8 private constant SRC_EID_OFFSET = 12;
    uint8 private constant AMOUNT_LD_OFFSET = 44;
    uint8 private constant COMPOSE_FROM_OFFSET = 76;

    /**
     * @dev Encodes a OFT composed message.
     * @param _nonce The nonce value.
     * @param _srcEid The source endpoint ID.
     * @param _amountLD The amount in local decimals.
     * @param _composeMsg The composed message.
     * @return _msg The encoded Composed message.
     */
    function encode(
        uint64 _nonce,
        uint32 _srcEid,
        uint256 _amountLD,
        bytes memory _composeMsg // 0x[composeFrom][composeMsg]
    ) internal pure returns (bytes memory _msg) {
        _msg = abi.encodePacked(_nonce, _srcEid, _amountLD, _composeMsg);
    }

    /**
     * @dev Retrieves the nonce from the composed message.
     * @param _msg The message.
     * @return The nonce value.
     */
    function nonce(bytes calldata _msg) internal pure returns (uint64) {
        return uint64(bytes8(_msg[:NONCE_OFFSET]));
    }

    /**
     * @dev Retrieves the source endpoint ID from the composed message.
     * @param _msg The message.
     * @return The source endpoint ID.
     */
    function srcEid(bytes calldata _msg) internal pure returns (uint32) {
        return uint32(bytes4(_msg[NONCE_OFFSET:SRC_EID_OFFSET]));
    }

    /**
     * @dev Retrieves the amount in local decimals from the composed message.
     * @param _msg The message.
     * @return The amount in local decimals.
     */
    function amountLD(bytes calldata _msg) internal pure returns (uint256) {
        return uint256(bytes32(_msg[SRC_EID_OFFSET:AMOUNT_LD_OFFSET]));
    }

    /**
     * @dev Retrieves the composeFrom value from the composed message.
     * @param _msg The message.
     * @return The composeFrom value.
     */
    function composeFrom(bytes calldata _msg) internal pure returns (bytes32) {
        return bytes32(_msg[AMOUNT_LD_OFFSET:COMPOSE_FROM_OFFSET]);
    }

    /**
     * @dev Retrieves the composed message.
     * @param _msg The message.
     * @return The composed message.
     */
    function composeMsg(bytes calldata _msg) internal pure returns (bytes memory) {
        return _msg[COMPOSE_FROM_OFFSET:];
    }

    /**
     * @dev Converts an address to bytes32.
     * @param _addr The address to convert.
     * @return The bytes32 representation of the address.
     */
    function addressToBytes32(address _addr) internal pure returns (bytes32) {
        return bytes32(uint256(uint160(_addr)));
    }

    /**
     * @dev Converts bytes32 to an address.
     * @param _b The bytes32 value to convert.
     * @return The address representation of bytes32.
     */
    function bytes32ToAddress(bytes32 _b) internal pure returns (address) {
        return address(uint160(uint256(_b)));
    }
}

library OFTMsgCodec {
    // Offset constants for encoding and decoding OFT messages
    uint8 private constant SEND_TO_OFFSET = 32;
    uint8 private constant SEND_AMOUNT_SD_OFFSET = 40;

    /**
     * @dev Encodes an OFT LayerZero message.
     * @param _sendTo The recipient address.
     * @param _amountShared The amount in shared decimals.
     * @param _composeMsg The composed message.
     * @return _msg The encoded message.
     * @return hasCompose A boolean indicating whether the message has a composed payload.
     */
    function encode(
        bytes32 _sendTo,
        uint64 _amountShared,
        bytes memory _composeMsg
    ) internal view returns (bytes memory _msg, bool hasCompose) {
        hasCompose = _composeMsg.length > 0;
        // @dev Remote chains will want to know the composed function caller ie. msg.sender on the src.
        _msg = hasCompose
            ? abi.encodePacked(_sendTo, _amountShared, addressToBytes32(msg.sender), _composeMsg)
            : abi.encodePacked(_sendTo, _amountShared);
    }

    /**
     * @dev Checks if the OFT message is composed.
     * @param _msg The OFT message.
     * @return A boolean indicating whether the message is composed.
     */
    function isComposed(bytes calldata _msg) internal pure returns (bool) {
        return _msg.length > SEND_AMOUNT_SD_OFFSET;
    }

    /**
     * @dev Retrieves the recipient address from the OFT message.
     * @param _msg The OFT message.
     * @return The recipient address.
     */
    function sendTo(bytes calldata _msg) internal pure returns (bytes32) {
        return bytes32(_msg[:SEND_TO_OFFSET]);
    }

    /**
     * @dev Retrieves the amount in shared decimals from the OFT message.
     * @param _msg The OFT message.
     * @return The amount in shared decimals.
     */
    function amountSD(bytes calldata _msg) internal pure returns (uint64) {
        return uint64(bytes8(_msg[SEND_TO_OFFSET:SEND_AMOUNT_SD_OFFSET]));
    }

    /**
     * @dev Retrieves the composed message from the OFT message.
     * @param _msg The OFT message.
     * @return The composed message.
     */
    function composeMsg(bytes calldata _msg) internal pure returns (bytes memory) {
        return _msg[SEND_AMOUNT_SD_OFFSET:];
    }

    /**
     * @dev Converts an address to bytes32.
     * @param _addr The address to convert.
     * @return The bytes32 representation of the address.
     */
    function addressToBytes32(address _addr) internal pure returns (bytes32) {
        return bytes32(uint256(uint160(_addr)));
    }

    /**
     * @dev Converts bytes32 to an address.
     * @param _b The bytes32 value to convert.
     * @return The address representation of bytes32.
     */
    function bytes32ToAddress(bytes32 _b) internal pure returns (address) {
        return address(uint160(uint256(_b)));
    }
}

struct PreCrimePeer {
    uint32 eid;
    bytes32 preCrime;
    bytes32 oApp;
}

// TODO not done yet
interface IPreCrime {
    error OnlyOffChain();

    // for simulate()
    error PacketOversize(uint256 max, uint256 actual);
    error PacketUnsorted();
    error SimulationFailed(bytes reason);

    // for preCrime()
    error SimulationResultNotFound(uint32 eid);
    error InvalidSimulationResult(uint32 eid, bytes reason);
    error CrimeFound(bytes crime);

    function getConfig(bytes[] calldata _packets, uint256[] calldata _packetMsgValues) external returns (bytes memory);

    function simulate(
        bytes[] calldata _packets,
        uint256[] calldata _packetMsgValues
    ) external payable returns (bytes memory);

    function buildSimulationResult() external view returns (bytes memory);

    function preCrime(
        bytes[] calldata _packets,
        uint256[] calldata _packetMsgValues,
        bytes[] calldata _simulations
    ) external;

    function version() external view returns (uint64 major, uint8 minor);
}

interface IMintableERC20 is IERC20_1 {
    function mint(address account, uint256 amount) external;
}

abstract contract StdAssertions {
    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));

    event log(string);
    event logs(bytes);

    event log_address(address);
    event log_bytes32(bytes32);
    event log_int(int256);
    event log_uint(uint256);
    event log_bytes(bytes);
    event log_string(string);

    event log_named_address(string key, address val);
    event log_named_bytes32(string key, bytes32 val);
    event log_named_decimal_int(string key, int256 val, uint256 decimals);
    event log_named_decimal_uint(string key, uint256 val, uint256 decimals);
    event log_named_int(string key, int256 val);
    event log_named_uint(string key, uint256 val);
    event log_named_bytes(string key, bytes val);
    event log_named_string(string key, string val);

    event log_array(uint256[] val);
    event log_array(int256[] val);
    event log_array(address[] val);
    event log_named_array(string key, uint256[] val);
    event log_named_array(string key, int256[] val);
    event log_named_array(string key, address[] val);

    bool private _failed;

    function failed() public view returns (bool) {
        if (_failed) {
            return _failed;
        } else {
            return vm.load(address(vm), bytes32("failed")) != bytes32(0);
        }
    }

    function fail() internal virtual {
        vm.store(address(vm), bytes32("failed"), bytes32(uint256(1)));
        _failed = true;
    }

    function assertTrue(bool data) internal pure virtual {
        vm.assertTrue(data);
    }

    function assertTrue(bool data, string memory err) internal pure virtual {
        vm.assertTrue(data, err);
    }

    function assertFalse(bool data) internal pure virtual {
        vm.assertFalse(data);
    }

    function assertFalse(bool data, string memory err) internal pure virtual {
        vm.assertFalse(data, err);
    }

    function assertEq(bool left, bool right) internal pure virtual {
        vm.assertEq(left, right);
    }

    function assertEq(bool left, bool right, string memory err) internal pure virtual {
        vm.assertEq(left, right, err);
    }

    function assertEq(uint256 left, uint256 right) internal pure virtual {
        vm.assertEq(left, right);
    }

    function assertEq(uint256 left, uint256 right, string memory err) internal pure virtual {
        vm.assertEq(left, right, err);
    }

    function assertEqDecimal(uint256 left, uint256 right, uint256 decimals) internal pure virtual {
        vm.assertEqDecimal(left, right, decimals);
    }

    function assertEqDecimal(uint256 left, uint256 right, uint256 decimals, string memory err) internal pure virtual {
        vm.assertEqDecimal(left, right, decimals, err);
    }

    function assertEq(int256 left, int256 right) internal pure virtual {
        vm.assertEq(left, right);
    }

    function assertEq(int256 left, int256 right, string memory err) internal pure virtual {
        vm.assertEq(left, right, err);
    }

    function assertEqDecimal(int256 left, int256 right, uint256 decimals) internal pure virtual {
        vm.assertEqDecimal(left, right, decimals);
    }

    function assertEqDecimal(int256 left, int256 right, uint256 decimals, string memory err) internal pure virtual {
        vm.assertEqDecimal(left, right, decimals, err);
    }

    function assertEq(address left, address right) internal pure virtual {
        vm.assertEq(left, right);
    }

    function assertEq(address left, address right, string memory err) internal pure virtual {
        vm.assertEq(left, right, err);
    }

    function assertEq(bytes32 left, bytes32 right) internal pure virtual {
        vm.assertEq(left, right);
    }

    function assertEq(bytes32 left, bytes32 right, string memory err) internal pure virtual {
        vm.assertEq(left, right, err);
    }

    function assertEq32(bytes32 left, bytes32 right) internal pure virtual {
        assertEq(left, right);
    }

    function assertEq32(bytes32 left, bytes32 right, string memory err) internal pure virtual {
        assertEq(left, right, err);
    }

    function assertEq(string memory left, string memory right) internal pure virtual {
        vm.assertEq(left, right);
    }

    function assertEq(string memory left, string memory right, string memory err) internal pure virtual {
        vm.assertEq(left, right, err);
    }

    function assertEq(bytes memory left, bytes memory right) internal pure virtual {
        vm.assertEq(left, right);
    }

    function assertEq(bytes memory left, bytes memory right, string memory err) internal pure virtual {
        vm.assertEq(left, right, err);
    }

    function assertEq(bool[] memory left, bool[] memory right) internal pure virtual {
        vm.assertEq(left, right);
    }

    function assertEq(bool[] memory left, bool[] memory right, string memory err) internal pure virtual {
        vm.assertEq(left, right, err);
    }

    function assertEq(uint256[] memory left, uint256[] memory right) internal pure virtual {
        vm.assertEq(left, right);
    }

    function assertEq(uint256[] memory left, uint256[] memory right, string memory err) internal pure virtual {
        vm.assertEq(left, right, err);
    }

    function assertEq(int256[] memory left, int256[] memory right) internal pure virtual {
        vm.assertEq(left, right);
    }

    function assertEq(int256[] memory left, int256[] memory right, string memory err) internal pure virtual {
        vm.assertEq(left, right, err);
    }

    function assertEq(address[] memory left, address[] memory right) internal pure virtual {
        vm.assertEq(left, right);
    }

    function assertEq(address[] memory left, address[] memory right, string memory err) internal pure virtual {
        vm.assertEq(left, right, err);
    }

    function assertEq(bytes32[] memory left, bytes32[] memory right) internal pure virtual {
        vm.assertEq(left, right);
    }

    function assertEq(bytes32[] memory left, bytes32[] memory right, string memory err) internal pure virtual {
        vm.assertEq(left, right, err);
    }

    function assertEq(string[] memory left, string[] memory right) internal pure virtual {
        vm.assertEq(left, right);
    }

    function assertEq(string[] memory left, string[] memory right, string memory err) internal pure virtual {
        vm.assertEq(left, right, err);
    }

    function assertEq(bytes[] memory left, bytes[] memory right) internal pure virtual {
        vm.assertEq(left, right);
    }

    function assertEq(bytes[] memory left, bytes[] memory right, string memory err) internal pure virtual {
        vm.assertEq(left, right, err);
    }

    // Legacy helper
    function assertEqUint(uint256 left, uint256 right) internal pure virtual {
        assertEq(left, right);
    }

    function assertNotEq(bool left, bool right) internal pure virtual {
        vm.assertNotEq(left, right);
    }

    function assertNotEq(bool left, bool right, string memory err) internal pure virtual {
        vm.assertNotEq(left, right, err);
    }

    function assertNotEq(uint256 left, uint256 right) internal pure virtual {
        vm.assertNotEq(left, right);
    }

    function assertNotEq(uint256 left, uint256 right, string memory err) internal pure virtual {
        vm.assertNotEq(left, right, err);
    }

    function assertNotEqDecimal(uint256 left, uint256 right, uint256 decimals) internal pure virtual {
        vm.assertNotEqDecimal(left, right, decimals);
    }

    function assertNotEqDecimal(uint256 left, uint256 right, uint256 decimals, string memory err)
        internal
        pure
        virtual
    {
        vm.assertNotEqDecimal(left, right, decimals, err);
    }

    function assertNotEq(int256 left, int256 right) internal pure virtual {
        vm.assertNotEq(left, right);
    }

    function assertNotEq(int256 left, int256 right, string memory err) internal pure virtual {
        vm.assertNotEq(left, right, err);
    }

    function assertNotEqDecimal(int256 left, int256 right, uint256 decimals) internal pure virtual {
        vm.assertNotEqDecimal(left, right, decimals);
    }

    function assertNotEqDecimal(int256 left, int256 right, uint256 decimals, string memory err) internal pure virtual {
        vm.assertNotEqDecimal(left, right, decimals, err);
    }

    function assertNotEq(address left, address right) internal pure virtual {
        vm.assertNotEq(left, right);
    }

    function assertNotEq(address left, address right, string memory err) internal pure virtual {
        vm.assertNotEq(left, right, err);
    }

    function assertNotEq(bytes32 left, bytes32 right) internal pure virtual {
        vm.assertNotEq(left, right);
    }

    function assertNotEq(bytes32 left, bytes32 right, string memory err) internal pure virtual {
        vm.assertNotEq(left, right, err);
    }

    function assertNotEq32(bytes32 left, bytes32 right) internal pure virtual {
        assertNotEq(left, right);
    }

    function assertNotEq32(bytes32 left, bytes32 right, string memory err) internal pure virtual {
        assertNotEq(left, right, err);
    }

    function assertNotEq(string memory left, string memory right) internal pure virtual {
        vm.assertNotEq(left, right);
    }

    function assertNotEq(string memory left, string memory right, string memory err) internal pure virtual {
        vm.assertNotEq(left, right, err);
    }

    function assertNotEq(bytes memory left, bytes memory right) internal pure virtual {
        vm.assertNotEq(left, right);
    }

    function assertNotEq(bytes memory left, bytes memory right, string memory err) internal pure virtual {
        vm.assertNotEq(left, right, err);
    }

    function assertNotEq(bool[] memory left, bool[] memory right) internal pure virtual {
        vm.assertNotEq(left, right);
    }

    function assertNotEq(bool[] memory left, bool[] memory right, string memory err) internal pure virtual {
        vm.assertNotEq(left, right, err);
    }

    function assertNotEq(uint256[] memory left, uint256[] memory right) internal pure virtual {
        vm.assertNotEq(left, right);
    }

    function assertNotEq(uint256[] memory left, uint256[] memory right, string memory err) internal pure virtual {
        vm.assertNotEq(left, right, err);
    }

    function assertNotEq(int256[] memory left, int256[] memory right) internal pure virtual {
        vm.assertNotEq(left, right);
    }

    function assertNotEq(int256[] memory left, int256[] memory right, string memory err) internal pure virtual {
        vm.assertNotEq(left, right, err);
    }

    function assertNotEq(address[] memory left, address[] memory right) internal pure virtual {
        vm.assertNotEq(left, right);
    }

    function assertNotEq(address[] memory left, address[] memory right, string memory err) internal pure virtual {
        vm.assertNotEq(left, right, err);
    }

    function assertNotEq(bytes32[] memory left, bytes32[] memory right) internal pure virtual {
        vm.assertNotEq(left, right);
    }

    function assertNotEq(bytes32[] memory left, bytes32[] memory right, string memory err) internal pure virtual {
        vm.assertNotEq(left, right, err);
    }

    function assertNotEq(string[] memory left, string[] memory right) internal pure virtual {
        vm.assertNotEq(left, right);
    }

    function assertNotEq(string[] memory left, string[] memory right, string memory err) internal pure virtual {
        vm.assertNotEq(left, right, err);
    }

    function assertNotEq(bytes[] memory left, bytes[] memory right) internal pure virtual {
        vm.assertNotEq(left, right);
    }

    function assertNotEq(bytes[] memory left, bytes[] memory right, string memory err) internal pure virtual {
        vm.assertNotEq(left, right, err);
    }

    function assertLt(uint256 left, uint256 right) internal pure virtual {
        vm.assertLt(left, right);
    }

    function assertLt(uint256 left, uint256 right, string memory err) internal pure virtual {
        vm.assertLt(left, right, err);
    }

    function assertLtDecimal(uint256 left, uint256 right, uint256 decimals) internal pure virtual {
        vm.assertLtDecimal(left, right, decimals);
    }

    function assertLtDecimal(uint256 left, uint256 right, uint256 decimals, string memory err) internal pure virtual {
        vm.assertLtDecimal(left, right, decimals, err);
    }

    function assertLt(int256 left, int256 right) internal pure virtual {
        vm.assertLt(left, right);
    }

    function assertLt(int256 left, int256 right, string memory err) internal pure virtual {
        vm.assertLt(left, right, err);
    }

    function assertLtDecimal(int256 left, int256 right, uint256 decimals) internal pure virtual {
        vm.assertLtDecimal(left, right, decimals);
    }

    function assertLtDecimal(int256 left, int256 right, uint256 decimals, string memory err) internal pure virtual {
        vm.assertLtDecimal(left, right, decimals, err);
    }

    function assertGt(uint256 left, uint256 right) internal pure virtual {
        vm.assertGt(left, right);
    }

    function assertGt(uint256 left, uint256 right, string memory err) internal pure virtual {
        vm.assertGt(left, right, err);
    }

    function assertGtDecimal(uint256 left, uint256 right, uint256 decimals) internal pure virtual {
        vm.assertGtDecimal(left, right, decimals);
    }

    function assertGtDecimal(uint256 left, uint256 right, uint256 decimals, string memory err) internal pure virtual {
        vm.assertGtDecimal(left, right, decimals, err);
    }

    function assertGt(int256 left, int256 right) internal pure virtual {
        vm.assertGt(left, right);
    }

    function assertGt(int256 left, int256 right, string memory err) internal pure virtual {
        vm.assertGt(left, right, err);
    }

    function assertGtDecimal(int256 left, int256 right, uint256 decimals) internal pure virtual {
        vm.assertGtDecimal(left, right, decimals);
    }

    function assertGtDecimal(int256 left, int256 right, uint256 decimals, string memory err) internal pure virtual {
        vm.assertGtDecimal(left, right, decimals, err);
    }

    function assertLe(uint256 left, uint256 right) internal pure virtual {
        vm.assertLe(left, right);
    }

    function assertLe(uint256 left, uint256 right, string memory err) internal pure virtual {
        vm.assertLe(left, right, err);
    }

    function assertLeDecimal(uint256 left, uint256 right, uint256 decimals) internal pure virtual {
        vm.assertLeDecimal(left, right, decimals);
    }

    function assertLeDecimal(uint256 left, uint256 right, uint256 decimals, string memory err) internal pure virtual {
        vm.assertLeDecimal(left, right, decimals, err);
    }

    function assertLe(int256 left, int256 right) internal pure virtual {
        vm.assertLe(left, right);
    }

    function assertLe(int256 left, int256 right, string memory err) internal pure virtual {
        vm.assertLe(left, right, err);
    }

    function assertLeDecimal(int256 left, int256 right, uint256 decimals) internal pure virtual {
        vm.assertLeDecimal(left, right, decimals);
    }

    function assertLeDecimal(int256 left, int256 right, uint256 decimals, string memory err) internal pure virtual {
        vm.assertLeDecimal(left, right, decimals, err);
    }

    function assertGe(uint256 left, uint256 right) internal pure virtual {
        vm.assertGe(left, right);
    }

    function assertGe(uint256 left, uint256 right, string memory err) internal pure virtual {
        vm.assertGe(left, right, err);
    }

    function assertGeDecimal(uint256 left, uint256 right, uint256 decimals) internal pure virtual {
        vm.assertGeDecimal(left, right, decimals);
    }

    function assertGeDecimal(uint256 left, uint256 right, uint256 decimals, string memory err) internal pure virtual {
        vm.assertGeDecimal(left, right, decimals, err);
    }

    function assertGe(int256 left, int256 right) internal pure virtual {
        vm.assertGe(left, right);
    }

    function assertGe(int256 left, int256 right, string memory err) internal pure virtual {
        vm.assertGe(left, right, err);
    }

    function assertGeDecimal(int256 left, int256 right, uint256 decimals) internal pure virtual {
        vm.assertGeDecimal(left, right, decimals);
    }

    function assertGeDecimal(int256 left, int256 right, uint256 decimals, string memory err) internal pure virtual {
        vm.assertGeDecimal(left, right, decimals, err);
    }

    function assertApproxEqAbs(uint256 left, uint256 right, uint256 maxDelta) internal pure virtual {
        vm.assertApproxEqAbs(left, right, maxDelta);
    }

    function assertApproxEqAbs(uint256 left, uint256 right, uint256 maxDelta, string memory err)
        internal
        pure
        virtual
    {
        vm.assertApproxEqAbs(left, right, maxDelta, err);
    }

    function assertApproxEqAbsDecimal(uint256 left, uint256 right, uint256 maxDelta, uint256 decimals)
        internal
        pure
        virtual
    {
        vm.assertApproxEqAbsDecimal(left, right, maxDelta, decimals);
    }

    function assertApproxEqAbsDecimal(
        uint256 left,
        uint256 right,
        uint256 maxDelta,
        uint256 decimals,
        string memory err
    ) internal pure virtual {
        vm.assertApproxEqAbsDecimal(left, right, maxDelta, decimals, err);
    }

    function assertApproxEqAbs(int256 left, int256 right, uint256 maxDelta) internal pure virtual {
        vm.assertApproxEqAbs(left, right, maxDelta);
    }

    function assertApproxEqAbs(int256 left, int256 right, uint256 maxDelta, string memory err) internal pure virtual {
        vm.assertApproxEqAbs(left, right, maxDelta, err);
    }

    function assertApproxEqAbsDecimal(int256 left, int256 right, uint256 maxDelta, uint256 decimals)
        internal
        pure
        virtual
    {
        vm.assertApproxEqAbsDecimal(left, right, maxDelta, decimals);
    }

    function assertApproxEqAbsDecimal(int256 left, int256 right, uint256 maxDelta, uint256 decimals, string memory err)
        internal
        pure
        virtual
    {
        vm.assertApproxEqAbsDecimal(left, right, maxDelta, decimals, err);
    }

    function assertApproxEqRel(
        uint256 left,
        uint256 right,
        uint256 maxPercentDelta // An 18 decimal fixed point number, where 1e18 == 100%
    ) internal pure virtual {
        vm.assertApproxEqRel(left, right, maxPercentDelta);
    }

    function assertApproxEqRel(
        uint256 left,
        uint256 right,
        uint256 maxPercentDelta, // An 18 decimal fixed point number, where 1e18 == 100%
        string memory err
    ) internal pure virtual {
        vm.assertApproxEqRel(left, right, maxPercentDelta, err);
    }

    function assertApproxEqRelDecimal(
        uint256 left,
        uint256 right,
        uint256 maxPercentDelta, // An 18 decimal fixed point number, where 1e18 == 100%
        uint256 decimals
    ) internal pure virtual {
        vm.assertApproxEqRelDecimal(left, right, maxPercentDelta, decimals);
    }

    function assertApproxEqRelDecimal(
        uint256 left,
        uint256 right,
        uint256 maxPercentDelta, // An 18 decimal fixed point number, where 1e18 == 100%
        uint256 decimals,
        string memory err
    ) internal pure virtual {
        vm.assertApproxEqRelDecimal(left, right, maxPercentDelta, decimals, err);
    }

    function assertApproxEqRel(int256 left, int256 right, uint256 maxPercentDelta) internal pure virtual {
        vm.assertApproxEqRel(left, right, maxPercentDelta);
    }

    function assertApproxEqRel(
        int256 left,
        int256 right,
        uint256 maxPercentDelta, // An 18 decimal fixed point number, where 1e18 == 100%
        string memory err
    ) internal pure virtual {
        vm.assertApproxEqRel(left, right, maxPercentDelta, err);
    }

    function assertApproxEqRelDecimal(
        int256 left,
        int256 right,
        uint256 maxPercentDelta, // An 18 decimal fixed point number, where 1e18 == 100%
        uint256 decimals
    ) internal pure virtual {
        vm.assertApproxEqRelDecimal(left, right, maxPercentDelta, decimals);
    }

    function assertApproxEqRelDecimal(
        int256 left,
        int256 right,
        uint256 maxPercentDelta, // An 18 decimal fixed point number, where 1e18 == 100%
        uint256 decimals,
        string memory err
    ) internal pure virtual {
        vm.assertApproxEqRelDecimal(left, right, maxPercentDelta, decimals, err);
    }

    // Inhertied from DSTest, not used but kept for backwards-compatibility
    function checkEq0(bytes memory left, bytes memory right) internal pure returns (bool) {
        return keccak256(left) == keccak256(right);
    }

    function assertEq0(bytes memory left, bytes memory right) internal pure virtual {
        assertEq(left, right);
    }

    function assertEq0(bytes memory left, bytes memory right, string memory err) internal pure virtual {
        assertEq(left, right, err);
    }

    function assertNotEq0(bytes memory left, bytes memory right) internal pure virtual {
        assertNotEq(left, right);
    }

    function assertNotEq0(bytes memory left, bytes memory right, string memory err) internal pure virtual {
        assertNotEq(left, right, err);
    }

    function assertEqCall(address target, bytes memory callDataA, bytes memory callDataB) internal virtual {
        assertEqCall(target, callDataA, target, callDataB, true);
    }

    function assertEqCall(address targetA, bytes memory callDataA, address targetB, bytes memory callDataB)
        internal
        virtual
    {
        assertEqCall(targetA, callDataA, targetB, callDataB, true);
    }

    function assertEqCall(address target, bytes memory callDataA, bytes memory callDataB, bool strictRevertData)
        internal
        virtual
    {
        assertEqCall(target, callDataA, target, callDataB, strictRevertData);
    }

    function assertEqCall(
        address targetA,
        bytes memory callDataA,
        address targetB,
        bytes memory callDataB,
        bool strictRevertData
    ) internal virtual {
        (bool successA, bytes memory returnDataA) = address(targetA).call(callDataA);
        (bool successB, bytes memory returnDataB) = address(targetB).call(callDataB);

        if (successA && successB) {
            assertEq(returnDataA, returnDataB, "Call return data does not match");
        }

        if (!successA && !successB && strictRevertData) {
            assertEq(returnDataA, returnDataB, "Call revert data does not match");
        }

        if (!successA && successB) {
            emit log("Error: Calls were not equal");
            emit log_named_bytes("  Left call revert data", returnDataA);
            emit log_named_bytes(" Right call return data", returnDataB);
            revert("assertion failed");
        }

        if (successA && !successB) {
            emit log("Error: Calls were not equal");
            emit log_named_bytes("  Left call return data", returnDataA);
            emit log_named_bytes(" Right call revert data", returnDataB);
            revert("assertion failed");
        }
    }
}

/**
 * StdChains provides information about EVM compatible chains that can be used in scripts/tests.
 * For each chain, the chain's name, chain ID, and a default RPC URL are provided. Chains are
 * identified by their alias, which is the same as the alias in the `[rpc_endpoints]` section of
 * the `foundry.toml` file. For best UX, ensure the alias in the `foundry.toml` file match the
 * alias used in this contract, which can be found as the first argument to the
 * `setChainWithDefaultRpcUrl` call in the `initializeStdChains` function.
 *
 * There are two main ways to use this contract:
 *   1. Set a chain with `setChain(string memory chainAlias, ChainData memory chain)` or
 *      `setChain(string memory chainAlias, Chain memory chain)`
 *   2. Get a chain with `getChain(string memory chainAlias)` or `getChain(uint256 chainId)`.
 *
 * The first time either of those are used, chains are initialized with the default set of RPC URLs.
 * This is done in `initializeStdChains`, which uses `setChainWithDefaultRpcUrl`. Defaults are recorded in
 * `defaultRpcUrls`.
 *
 * The `setChain` function is straightforward, and it simply saves off the given chain data.
 *
 * The `getChain` methods use `getChainWithUpdatedRpcUrl` to return a chain. For example, let's say
 * we want to retrieve the RPC URL for `mainnet`:
 *   - If you have specified data with `setChain`, it will return that.
 *   - If you have configured a mainnet RPC URL in `foundry.toml`, it will return the URL, provided it
 *     is valid (e.g. a URL is specified, or an environment variable is given and exists).
 *   - If neither of the above conditions is met, the default data is returned.
 *
 * Summarizing the above, the prioritization hierarchy is `setChain` -> `foundry.toml` -> environment variable -> defaults.
 */
abstract contract StdChains {
    VmSafe private constant vm = VmSafe(address(uint160(uint256(keccak256("hevm cheat code")))));

    bool private stdChainsInitialized;

    struct ChainData {
        string name;
        uint256 chainId;
        string rpcUrl;
    }

    struct Chain {
        // The chain name.
        string name;
        // The chain's Chain ID.
        uint256 chainId;
        // The chain's alias. (i.e. what gets specified in `foundry.toml`).
        string chainAlias;
        // A default RPC endpoint for this chain.
        // NOTE: This default RPC URL is included for convenience to facilitate quick tests and
        // experimentation. Do not use this RPC URL for production test suites, CI, or other heavy
        // usage as you will be throttled and this is a disservice to others who need this endpoint.
        string rpcUrl;
    }

    // Maps from the chain's alias (matching the alias in the `foundry.toml` file) to chain data.
    mapping(string => Chain) private chains;
    // Maps from the chain's alias to it's default RPC URL.
    mapping(string => string) private defaultRpcUrls;
    // Maps from a chain ID to it's alias.
    mapping(uint256 => string) private idToAlias;

    bool private fallbackToDefaultRpcUrls = true;

    // The RPC URL will be fetched from config or defaultRpcUrls if possible.
    function getChain(string memory chainAlias) internal virtual returns (Chain memory chain) {
        require(bytes(chainAlias).length != 0, "StdChains getChain(string): Chain alias cannot be the empty string.");

        initializeStdChains();
        chain = chains[chainAlias];
        require(
            chain.chainId != 0,
            string(abi.encodePacked("StdChains getChain(string): Chain with alias \"", chainAlias, "\" not found."))
        );

        chain = getChainWithUpdatedRpcUrl(chainAlias, chain);
    }

    function getChain(uint256 chainId) internal virtual returns (Chain memory chain) {
        require(chainId != 0, "StdChains getChain(uint256): Chain ID cannot be 0.");
        initializeStdChains();
        string memory chainAlias = idToAlias[chainId];

        chain = chains[chainAlias];

        require(
            chain.chainId != 0,
            string(abi.encodePacked("StdChains getChain(uint256): Chain with ID ", vm.toString(chainId), " not found."))
        );

        chain = getChainWithUpdatedRpcUrl(chainAlias, chain);
    }

    // set chain info, with priority to argument's rpcUrl field.
    function setChain(string memory chainAlias, ChainData memory chain) internal virtual {
        require(
            bytes(chainAlias).length != 0,
            "StdChains setChain(string,ChainData): Chain alias cannot be the empty string."
        );

        require(chain.chainId != 0, "StdChains setChain(string,ChainData): Chain ID cannot be 0.");

        initializeStdChains();
        string memory foundAlias = idToAlias[chain.chainId];

        require(
            bytes(foundAlias).length == 0 || keccak256(bytes(foundAlias)) == keccak256(bytes(chainAlias)),
            string(
                abi.encodePacked(
                    "StdChains setChain(string,ChainData): Chain ID ",
                    vm.toString(chain.chainId),
                    " already used by \"",
                    foundAlias,
                    "\"."
                )
            )
        );

        uint256 oldChainId = chains[chainAlias].chainId;
        delete idToAlias[oldChainId];

        chains[chainAlias] =
            Chain({name: chain.name, chainId: chain.chainId, chainAlias: chainAlias, rpcUrl: chain.rpcUrl});
        idToAlias[chain.chainId] = chainAlias;
    }

    // set chain info, with priority to argument's rpcUrl field.
    function setChain(string memory chainAlias, Chain memory chain) internal virtual {
        setChain(chainAlias, ChainData({name: chain.name, chainId: chain.chainId, rpcUrl: chain.rpcUrl}));
    }

    function _toUpper(string memory str) private pure returns (string memory) {
        bytes memory strb = bytes(str);
        bytes memory copy = new bytes(strb.length);
        for (uint256 i = 0; i < strb.length; i++) {
            bytes1 b = strb[i];
            if (b >= 0x61 && b <= 0x7A) {
                copy[i] = bytes1(uint8(b) - 32);
            } else {
                copy[i] = b;
            }
        }
        return string(copy);
    }

    // lookup rpcUrl, in descending order of priority:
    // current -> config (foundry.toml) -> environment variable -> default
    function getChainWithUpdatedRpcUrl(string memory chainAlias, Chain memory chain)
        private
        view
        returns (Chain memory)
    {
        if (bytes(chain.rpcUrl).length == 0) {
            try vm.rpcUrl(chainAlias) returns (string memory configRpcUrl) {
                chain.rpcUrl = configRpcUrl;
            } catch (bytes memory err) {
                string memory envName = string(abi.encodePacked(_toUpper(chainAlias), "_RPC_URL"));
                if (fallbackToDefaultRpcUrls) {
                    chain.rpcUrl = vm.envOr(envName, defaultRpcUrls[chainAlias]);
                } else {
                    chain.rpcUrl = vm.envString(envName);
                }
                // Distinguish 'not found' from 'cannot read'
                // The upstream error thrown by forge for failing cheats changed so we check both the old and new versions
                bytes memory oldNotFoundError =
                    abi.encodeWithSignature("CheatCodeError", string(abi.encodePacked("invalid rpc url ", chainAlias)));
                bytes memory newNotFoundError = abi.encodeWithSignature(
                    "CheatcodeError(string)", string(abi.encodePacked("invalid rpc url: ", chainAlias))
                );
                bytes32 errHash = keccak256(err);
                if (
                    (errHash != keccak256(oldNotFoundError) && errHash != keccak256(newNotFoundError))
                        || bytes(chain.rpcUrl).length == 0
                ) {
                    /// @solidity memory-safe-assembly
                    assembly {
                        revert(add(32, err), mload(err))
                    }
                }
            }
        }
        return chain;
    }

    function setFallbackToDefaultRpcUrls(bool useDefault) internal {
        fallbackToDefaultRpcUrls = useDefault;
    }

    function initializeStdChains() private {
        if (stdChainsInitialized) return;

        stdChainsInitialized = true;

        // If adding an RPC here, make sure to test the default RPC URL in `testRpcs`
        setChainWithDefaultRpcUrl("anvil", ChainData("Anvil", 31337, "http://127.0.0.1:8545"));
        setChainWithDefaultRpcUrl(
            "mainnet", ChainData("Mainnet", 1, "https://eth-mainnet.alchemyapi.io/v2/pwc5rmJhrdoaSEfimoKEmsvOjKSmPDrP")
        );
        setChainWithDefaultRpcUrl(
            "goerli", ChainData("Goerli", 5, "https://goerli.infura.io/v3/b9794ad1ddf84dfb8c34d6bb5dca2001")
        );
        setChainWithDefaultRpcUrl(
            "sepolia", ChainData("Sepolia", 11155111, "https://sepolia.infura.io/v3/b9794ad1ddf84dfb8c34d6bb5dca2001")
        );
        setChainWithDefaultRpcUrl("optimism", ChainData("Optimism", 10, "https://mainnet.optimism.io"));
        setChainWithDefaultRpcUrl("optimism_goerli", ChainData("Optimism Goerli", 420, "https://goerli.optimism.io"));
        setChainWithDefaultRpcUrl("arbitrum_one", ChainData("Arbitrum One", 42161, "https://arb1.arbitrum.io/rpc"));
        setChainWithDefaultRpcUrl(
            "arbitrum_one_goerli", ChainData("Arbitrum One Goerli", 421613, "https://goerli-rollup.arbitrum.io/rpc")
        );
        setChainWithDefaultRpcUrl("arbitrum_nova", ChainData("Arbitrum Nova", 42170, "https://nova.arbitrum.io/rpc"));
        setChainWithDefaultRpcUrl("polygon", ChainData("Polygon", 137, "https://polygon-rpc.com"));
        setChainWithDefaultRpcUrl(
            "polygon_mumbai", ChainData("Polygon Mumbai", 80001, "https://rpc-mumbai.maticvigil.com")
        );
        setChainWithDefaultRpcUrl("avalanche", ChainData("Avalanche", 43114, "https://api.avax.network/ext/bc/C/rpc"));
        setChainWithDefaultRpcUrl(
            "avalanche_fuji", ChainData("Avalanche Fuji", 43113, "https://api.avax-test.network/ext/bc/C/rpc")
        );
        setChainWithDefaultRpcUrl(
            "bnb_smart_chain", ChainData("BNB Smart Chain", 56, "https://bsc-dataseed1.binance.org")
        );
        setChainWithDefaultRpcUrl(
            "bnb_smart_chain_testnet",
            ChainData("BNB Smart Chain Testnet", 97, "https://rpc.ankr.com/bsc_testnet_chapel")
        );
        setChainWithDefaultRpcUrl("gnosis_chain", ChainData("Gnosis Chain", 100, "https://rpc.gnosischain.com"));
        setChainWithDefaultRpcUrl("moonbeam", ChainData("Moonbeam", 1284, "https://rpc.api.moonbeam.network"));
        setChainWithDefaultRpcUrl(
            "moonriver", ChainData("Moonriver", 1285, "https://rpc.api.moonriver.moonbeam.network")
        );
        setChainWithDefaultRpcUrl("moonbase", ChainData("Moonbase", 1287, "https://rpc.testnet.moonbeam.network"));
        setChainWithDefaultRpcUrl("base_goerli", ChainData("Base Goerli", 84531, "https://goerli.base.org"));
        setChainWithDefaultRpcUrl("base", ChainData("Base", 8453, "https://mainnet.base.org"));
        setChainWithDefaultRpcUrl("fraxtal", ChainData("Fraxtal", 252, "https://rpc.frax.com"));
        setChainWithDefaultRpcUrl("fraxtal_testnet", ChainData("Fraxtal Testnet", 2522, "https://rpc.testnet.frax.com"));
    }

    // set chain info, with priority to chainAlias' rpc url in foundry.toml
    function setChainWithDefaultRpcUrl(string memory chainAlias, ChainData memory chain) private {
        string memory rpcUrl = chain.rpcUrl;
        defaultRpcUrls[chainAlias] = rpcUrl;
        chain.rpcUrl = "";
        setChain(chainAlias, chain);
        chain.rpcUrl = rpcUrl; // restore argument
    }
}

// Helpers for parsing and writing JSON files
// To parse:
// ```
// using stdJson for string;
// string memory json = vm.readFile("<some_path>");
// json.readUint("<json_path>");
// ```
// To write:
// ```
// using stdJson for string;
// string memory json = "json";
// json.serialize("a", uint256(123));
// string memory semiFinal = json.serialize("b", string("test"));
// string memory finalJson = json.serialize("c", semiFinal);
// finalJson.write("<some_path>");
// ```

library stdJson {
    VmSafe private constant vm = VmSafe(address(uint160(uint256(keccak256("hevm cheat code")))));

    function parseRaw(string memory json, string memory key) internal pure returns (bytes memory) {
        return vm.parseJson(json, key);
    }

    function readUint(string memory json, string memory key) internal pure returns (uint256) {
        return vm.parseJsonUint(json, key);
    }

    function readUintArray(string memory json, string memory key) internal pure returns (uint256[] memory) {
        return vm.parseJsonUintArray(json, key);
    }

    function readInt(string memory json, string memory key) internal pure returns (int256) {
        return vm.parseJsonInt(json, key);
    }

    function readIntArray(string memory json, string memory key) internal pure returns (int256[] memory) {
        return vm.parseJsonIntArray(json, key);
    }

    function readBytes32(string memory json, string memory key) internal pure returns (bytes32) {
        return vm.parseJsonBytes32(json, key);
    }

    function readBytes32Array(string memory json, string memory key) internal pure returns (bytes32[] memory) {
        return vm.parseJsonBytes32Array(json, key);
    }

    function readString(string memory json, string memory key) internal pure returns (string memory) {
        return vm.parseJsonString(json, key);
    }

    function readStringArray(string memory json, string memory key) internal pure returns (string[] memory) {
        return vm.parseJsonStringArray(json, key);
    }

    function readAddress(string memory json, string memory key) internal pure returns (address) {
        return vm.parseJsonAddress(json, key);
    }

    function readAddressArray(string memory json, string memory key) internal pure returns (address[] memory) {
        return vm.parseJsonAddressArray(json, key);
    }

    function readBool(string memory json, string memory key) internal pure returns (bool) {
        return vm.parseJsonBool(json, key);
    }

    function readBoolArray(string memory json, string memory key) internal pure returns (bool[] memory) {
        return vm.parseJsonBoolArray(json, key);
    }

    function readBytes(string memory json, string memory key) internal pure returns (bytes memory) {
        return vm.parseJsonBytes(json, key);
    }

    function readBytesArray(string memory json, string memory key) internal pure returns (bytes[] memory) {
        return vm.parseJsonBytesArray(json, key);
    }

    function serialize(string memory jsonKey, string memory rootObject) internal returns (string memory) {
        return vm.serializeJson(jsonKey, rootObject);
    }

    function serialize(string memory jsonKey, string memory key, bool value) internal returns (string memory) {
        return vm.serializeBool(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, bool[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeBool(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, uint256 value) internal returns (string memory) {
        return vm.serializeUint(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, uint256[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeUint(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, int256 value) internal returns (string memory) {
        return vm.serializeInt(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, int256[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeInt(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, address value) internal returns (string memory) {
        return vm.serializeAddress(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, address[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeAddress(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, bytes32 value) internal returns (string memory) {
        return vm.serializeBytes32(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, bytes32[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeBytes32(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, bytes memory value) internal returns (string memory) {
        return vm.serializeBytes(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, bytes[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeBytes(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, string memory value)
        internal
        returns (string memory)
    {
        return vm.serializeString(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, string[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeString(jsonKey, key, value);
    }

    function write(string memory jsonKey, string memory path) internal {
        vm.writeJson(jsonKey, path);
    }

    function write(string memory jsonKey, string memory path, string memory valueKey) internal {
        vm.writeJson(jsonKey, path, valueKey);
    }
}

struct FindData {
    uint256 slot;
    uint256 offsetLeft;
    uint256 offsetRight;
    bool found;
}

struct StdStorage {
    mapping(address => mapping(bytes4 => mapping(bytes32 => FindData))) finds;
    bytes32[] _keys;
    bytes4 _sig;
    uint256 _depth;
    address _target;
    bytes32 _set;
    bool _enable_packed_slots;
    bytes _calldata;
}

library stdStorageSafe {
    event SlotFound(address who, bytes4 fsig, bytes32 keysHash, uint256 slot);
    event WARNING_UninitedSlot(address who, uint256 slot);

    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));
    uint256 constant UINT256_MAX = 115792089237316195423570985008687907853269984665640564039457584007913129639935;

    function sigs(string memory sigStr) internal pure returns (bytes4) {
        return bytes4(keccak256(bytes(sigStr)));
    }

    function getCallParams(StdStorage storage self) internal view returns (bytes memory) {
        if (self._calldata.length == 0) {
            return flatten(self._keys);
        } else {
            return self._calldata;
        }
    }

    // Calls target contract with configured parameters
    function callTarget(StdStorage storage self) internal view returns (bool, bytes32) {
        bytes memory cald = abi.encodePacked(self._sig, getCallParams(self));
        (bool success, bytes memory rdat) = self._target.staticcall(cald);
        bytes32 result = bytesToBytes32(rdat, 32 * self._depth);

        return (success, result);
    }

    // Tries mutating slot value to determine if the targeted value is stored in it.
    // If current value is 0, then we are setting slot value to type(uint256).max
    // Otherwise, we set it to 0. That way, return value should always be affected.
    function checkSlotMutatesCall(StdStorage storage self, bytes32 slot) internal returns (bool) {
        bytes32 prevSlotValue = vm.load(self._target, slot);
        (bool success, bytes32 prevReturnValue) = callTarget(self);

        bytes32 testVal = prevReturnValue == bytes32(0) ? bytes32(UINT256_MAX) : bytes32(0);
        vm.store(self._target, slot, testVal);

        (, bytes32 newReturnValue) = callTarget(self);

        vm.store(self._target, slot, prevSlotValue);

        return (success && (prevReturnValue != newReturnValue));
    }

    // Tries setting one of the bits in slot to 1 until return value changes.
    // Index of resulted bit is an offset packed slot has from left/right side
    function findOffset(StdStorage storage self, bytes32 slot, bool left) internal returns (bool, uint256) {
        for (uint256 offset = 0; offset < 256; offset++) {
            uint256 valueToPut = left ? (1 << (255 - offset)) : (1 << offset);
            vm.store(self._target, slot, bytes32(valueToPut));

            (bool success, bytes32 data) = callTarget(self);

            if (success && (uint256(data) > 0)) {
                return (true, offset);
            }
        }
        return (false, 0);
    }

    function findOffsets(StdStorage storage self, bytes32 slot) internal returns (bool, uint256, uint256) {
        bytes32 prevSlotValue = vm.load(self._target, slot);

        (bool foundLeft, uint256 offsetLeft) = findOffset(self, slot, true);
        (bool foundRight, uint256 offsetRight) = findOffset(self, slot, false);

        // `findOffset` may mutate slot value, so we are setting it to initial value
        vm.store(self._target, slot, prevSlotValue);
        return (foundLeft && foundRight, offsetLeft, offsetRight);
    }

    function find(StdStorage storage self) internal returns (FindData storage) {
        return find(self, true);
    }

    /// @notice find an arbitrary storage slot given a function sig, input data, address of the contract and a value to check against
    // slot complexity:
    //  if flat, will be bytes32(uint256(uint));
    //  if map, will be keccak256(abi.encode(key, uint(slot)));
    //  if deep map, will be keccak256(abi.encode(key1, keccak256(abi.encode(key0, uint(slot)))));
    //  if map struct, will be bytes32(uint256(keccak256(abi.encode(key1, keccak256(abi.encode(key0, uint(slot)))))) + structFieldDepth);
    function find(StdStorage storage self, bool _clear) internal returns (FindData storage) {
        address who = self._target;
        bytes4 fsig = self._sig;
        uint256 field_depth = self._depth;
        bytes memory params = getCallParams(self);

        // calldata to test against
        if (self.finds[who][fsig][keccak256(abi.encodePacked(params, field_depth))].found) {
            if (_clear) {
                clear(self);
            }
            return self.finds[who][fsig][keccak256(abi.encodePacked(params, field_depth))];
        }
        vm.record();
        (, bytes32 callResult) = callTarget(self);
        (bytes32[] memory reads,) = vm.accesses(address(who));

        if (reads.length == 0) {
            revert("stdStorage find(StdStorage): No storage use detected for target.");
        } else {
            for (uint256 i = 0; i < reads.length; i++) {
                bytes32 prev = vm.load(who, reads[i]);
                if (prev == bytes32(0)) {
                    emit WARNING_UninitedSlot(who, uint256(reads[i]));
                }

                if (!checkSlotMutatesCall(self, reads[i])) {
                    continue;
                }

                (uint256 offsetLeft, uint256 offsetRight) = (0, 0);

                if (self._enable_packed_slots) {
                    bool found;
                    (found, offsetLeft, offsetRight) = findOffsets(self, reads[i]);
                    if (!found) {
                        continue;
                    }
                }

                // Check that value between found offsets is equal to the current call result
                uint256 curVal = (uint256(prev) & getMaskByOffsets(offsetLeft, offsetRight)) >> offsetRight;

                if (uint256(callResult) != curVal) {
                    continue;
                }

                emit SlotFound(who, fsig, keccak256(abi.encodePacked(params, field_depth)), uint256(reads[i]));
                self.finds[who][fsig][keccak256(abi.encodePacked(params, field_depth))] =
                    FindData(uint256(reads[i]), offsetLeft, offsetRight, true);
                break;
            }
        }

        require(
            self.finds[who][fsig][keccak256(abi.encodePacked(params, field_depth))].found,
            "stdStorage find(StdStorage): Slot(s) not found."
        );

        if (_clear) {
            clear(self);
        }
        return self.finds[who][fsig][keccak256(abi.encodePacked(params, field_depth))];
    }

    function target(StdStorage storage self, address _target) internal returns (StdStorage storage) {
        self._target = _target;
        return self;
    }

    function sig(StdStorage storage self, bytes4 _sig) internal returns (StdStorage storage) {
        self._sig = _sig;
        return self;
    }

    function sig(StdStorage storage self, string memory _sig) internal returns (StdStorage storage) {
        self._sig = sigs(_sig);
        return self;
    }

    function with_calldata(StdStorage storage self, bytes memory _calldata) internal returns (StdStorage storage) {
        self._calldata = _calldata;
        return self;
    }

    function with_key(StdStorage storage self, address who) internal returns (StdStorage storage) {
        self._keys.push(bytes32(uint256(uint160(who))));
        return self;
    }

    function with_key(StdStorage storage self, uint256 amt) internal returns (StdStorage storage) {
        self._keys.push(bytes32(amt));
        return self;
    }

    function with_key(StdStorage storage self, bytes32 key) internal returns (StdStorage storage) {
        self._keys.push(key);
        return self;
    }

    function enable_packed_slots(StdStorage storage self) internal returns (StdStorage storage) {
        self._enable_packed_slots = true;
        return self;
    }

    function depth(StdStorage storage self, uint256 _depth) internal returns (StdStorage storage) {
        self._depth = _depth;
        return self;
    }

    function read(StdStorage storage self) private returns (bytes memory) {
        FindData storage data = find(self, false);
        uint256 mask = getMaskByOffsets(data.offsetLeft, data.offsetRight);
        uint256 value = (uint256(vm.load(self._target, bytes32(data.slot))) & mask) >> data.offsetRight;
        clear(self);
        return abi.encode(value);
    }

    function read_bytes32(StdStorage storage self) internal returns (bytes32) {
        return abi.decode(read(self), (bytes32));
    }

    function read_bool(StdStorage storage self) internal returns (bool) {
        int256 v = read_int(self);
        if (v == 0) return false;
        if (v == 1) return true;
        revert("stdStorage read_bool(StdStorage): Cannot decode. Make sure you are reading a bool.");
    }

    function read_address(StdStorage storage self) internal returns (address) {
        return abi.decode(read(self), (address));
    }

    function read_uint(StdStorage storage self) internal returns (uint256) {
        return abi.decode(read(self), (uint256));
    }

    function read_int(StdStorage storage self) internal returns (int256) {
        return abi.decode(read(self), (int256));
    }

    function parent(StdStorage storage self) internal returns (uint256, bytes32) {
        address who = self._target;
        uint256 field_depth = self._depth;
        vm.startMappingRecording();
        uint256 child = find(self, true).slot - field_depth;
        (bool found, bytes32 key, bytes32 parent_slot) = vm.getMappingKeyAndParentOf(who, bytes32(child));
        if (!found) {
            revert(
                "stdStorage read_bool(StdStorage): Cannot find parent. Make sure you give a slot and startMappingRecording() has been called."
            );
        }
        return (uint256(parent_slot), key);
    }

    function root(StdStorage storage self) internal returns (uint256) {
        address who = self._target;
        uint256 field_depth = self._depth;
        vm.startMappingRecording();
        uint256 child = find(self, true).slot - field_depth;
        bool found;
        bytes32 root_slot;
        bytes32 parent_slot;
        (found,, parent_slot) = vm.getMappingKeyAndParentOf(who, bytes32(child));
        if (!found) {
            revert(
                "stdStorage read_bool(StdStorage): Cannot find parent. Make sure you give a slot and startMappingRecording() has been called."
            );
        }
        while (found) {
            root_slot = parent_slot;
            (found,, parent_slot) = vm.getMappingKeyAndParentOf(who, bytes32(root_slot));
        }
        return uint256(root_slot);
    }

    function bytesToBytes32(bytes memory b, uint256 offset) private pure returns (bytes32) {
        bytes32 out;

        uint256 max = b.length > 32 ? 32 : b.length;
        for (uint256 i = 0; i < max; i++) {
            out |= bytes32(b[offset + i] & 0xFF) >> (i * 8);
        }
        return out;
    }

    function flatten(bytes32[] memory b) private pure returns (bytes memory) {
        bytes memory result = new bytes(b.length * 32);
        for (uint256 i = 0; i < b.length; i++) {
            bytes32 k = b[i];
            /// @solidity memory-safe-assembly
            assembly {
                mstore(add(result, add(32, mul(32, i))), k)
            }
        }

        return result;
    }

    function clear(StdStorage storage self) internal {
        delete self._target;
        delete self._sig;
        delete self._keys;
        delete self._depth;
        delete self._enable_packed_slots;
        delete self._calldata;
    }

    // Returns mask which contains non-zero bits for values between `offsetLeft` and `offsetRight`
    // (slotValue & mask) >> offsetRight will be the value of the given packed variable
    function getMaskByOffsets(uint256 offsetLeft, uint256 offsetRight) internal pure returns (uint256 mask) {
        // mask = ((1 << (256 - (offsetRight + offsetLeft))) - 1) << offsetRight;
        // using assembly because (1 << 256) causes overflow
        assembly {
            mask := shl(offsetRight, sub(shl(sub(256, add(offsetRight, offsetLeft)), 1), 1))
        }
    }

    // Returns slot value with updated packed variable.
    function getUpdatedSlotValue(bytes32 curValue, uint256 varValue, uint256 offsetLeft, uint256 offsetRight)
        internal
        pure
        returns (bytes32 newValue)
    {
        return bytes32((uint256(curValue) & ~getMaskByOffsets(offsetLeft, offsetRight)) | (varValue << offsetRight));
    }
}

library stdStorage {
    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));

    function sigs(string memory sigStr) internal pure returns (bytes4) {
        return stdStorageSafe.sigs(sigStr);
    }

    function find(StdStorage storage self) internal returns (uint256) {
        return find(self, true);
    }

    function find(StdStorage storage self, bool _clear) internal returns (uint256) {
        return stdStorageSafe.find(self, _clear).slot;
    }

    function target(StdStorage storage self, address _target) internal returns (StdStorage storage) {
        return stdStorageSafe.target(self, _target);
    }

    function sig(StdStorage storage self, bytes4 _sig) internal returns (StdStorage storage) {
        return stdStorageSafe.sig(self, _sig);
    }

    function sig(StdStorage storage self, string memory _sig) internal returns (StdStorage storage) {
        return stdStorageSafe.sig(self, _sig);
    }

    function with_key(StdStorage storage self, address who) internal returns (StdStorage storage) {
        return stdStorageSafe.with_key(self, who);
    }

    function with_key(StdStorage storage self, uint256 amt) internal returns (StdStorage storage) {
        return stdStorageSafe.with_key(self, amt);
    }

    function with_key(StdStorage storage self, bytes32 key) internal returns (StdStorage storage) {
        return stdStorageSafe.with_key(self, key);
    }

    function with_calldata(StdStorage storage self, bytes memory _calldata) internal returns (StdStorage storage) {
        return stdStorageSafe.with_calldata(self, _calldata);
    }

    function enable_packed_slots(StdStorage storage self) internal returns (StdStorage storage) {
        return stdStorageSafe.enable_packed_slots(self);
    }

    function depth(StdStorage storage self, uint256 _depth) internal returns (StdStorage storage) {
        return stdStorageSafe.depth(self, _depth);
    }

    function clear(StdStorage storage self) internal {
        stdStorageSafe.clear(self);
    }

    function checked_write(StdStorage storage self, address who) internal {
        checked_write(self, bytes32(uint256(uint160(who))));
    }

    function checked_write(StdStorage storage self, uint256 amt) internal {
        checked_write(self, bytes32(amt));
    }

    function checked_write_int(StdStorage storage self, int256 val) internal {
        checked_write(self, bytes32(uint256(val)));
    }

    function checked_write(StdStorage storage self, bool write) internal {
        bytes32 t;
        /// @solidity memory-safe-assembly
        assembly {
            t := write
        }
        checked_write(self, t);
    }

    function checked_write(StdStorage storage self, bytes32 set) internal {
        address who = self._target;
        bytes4 fsig = self._sig;
        uint256 field_depth = self._depth;
        bytes memory params = stdStorageSafe.getCallParams(self);

        if (!self.finds[who][fsig][keccak256(abi.encodePacked(params, field_depth))].found) {
            find(self, false);
        }
        FindData storage data = self.finds[who][fsig][keccak256(abi.encodePacked(params, field_depth))];
        if ((data.offsetLeft + data.offsetRight) > 0) {
            uint256 maxVal = 2 ** (256 - (data.offsetLeft + data.offsetRight));
            require(
                uint256(set) < maxVal,
                string(
                    abi.encodePacked(
                        "stdStorage find(StdStorage): Packed slot. We can't fit value greater than ",
                        vm.toString(maxVal)
                    )
                )
            );
        }
        bytes32 curVal = vm.load(who, bytes32(data.slot));
        bytes32 valToSet = stdStorageSafe.getUpdatedSlotValue(curVal, uint256(set), data.offsetLeft, data.offsetRight);

        vm.store(who, bytes32(data.slot), valToSet);

        (bool success, bytes32 callResult) = stdStorageSafe.callTarget(self);

        if (!success || callResult != set) {
            vm.store(who, bytes32(data.slot), curVal);
            revert("stdStorage find(StdStorage): Failed to write value.");
        }
        clear(self);
    }

    function read_bytes32(StdStorage storage self) internal returns (bytes32) {
        return stdStorageSafe.read_bytes32(self);
    }

    function read_bool(StdStorage storage self) internal returns (bool) {
        return stdStorageSafe.read_bool(self);
    }

    function read_address(StdStorage storage self) internal returns (address) {
        return stdStorageSafe.read_address(self);
    }

    function read_uint(StdStorage storage self) internal returns (uint256) {
        return stdStorageSafe.read_uint(self);
    }

    function read_int(StdStorage storage self) internal returns (int256) {
        return stdStorageSafe.read_int(self);
    }

    function parent(StdStorage storage self) internal returns (uint256, bytes32) {
        return stdStorageSafe.parent(self);
    }

    function root(StdStorage storage self) internal returns (uint256) {
        return stdStorageSafe.root(self);
    }
}

library StdStyle {
    VmSafe private constant vm = VmSafe(address(uint160(uint256(keccak256("hevm cheat code")))));

    string constant RED = "\u001b[91m";
    string constant GREEN = "\u001b[92m";
    string constant YELLOW = "\u001b[93m";
    string constant BLUE = "\u001b[94m";
    string constant MAGENTA = "\u001b[95m";
    string constant CYAN = "\u001b[96m";
    string constant BOLD = "\u001b[1m";
    string constant DIM = "\u001b[2m";
    string constant ITALIC = "\u001b[3m";
    string constant UNDERLINE = "\u001b[4m";
    string constant INVERSE = "\u001b[7m";
    string constant RESET = "\u001b[0m";

    function styleConcat(string memory style, string memory self) private pure returns (string memory) {
        return string(abi.encodePacked(style, self, RESET));
    }

    function red(string memory self) internal pure returns (string memory) {
        return styleConcat(RED, self);
    }

    function red(uint256 self) internal pure returns (string memory) {
        return red(vm.toString(self));
    }

    function red(int256 self) internal pure returns (string memory) {
        return red(vm.toString(self));
    }

    function red(address self) internal pure returns (string memory) {
        return red(vm.toString(self));
    }

    function red(bool self) internal pure returns (string memory) {
        return red(vm.toString(self));
    }

    function redBytes(bytes memory self) internal pure returns (string memory) {
        return red(vm.toString(self));
    }

    function redBytes32(bytes32 self) internal pure returns (string memory) {
        return red(vm.toString(self));
    }

    function green(string memory self) internal pure returns (string memory) {
        return styleConcat(GREEN, self);
    }

    function green(uint256 self) internal pure returns (string memory) {
        return green(vm.toString(self));
    }

    function green(int256 self) internal pure returns (string memory) {
        return green(vm.toString(self));
    }

    function green(address self) internal pure returns (string memory) {
        return green(vm.toString(self));
    }

    function green(bool self) internal pure returns (string memory) {
        return green(vm.toString(self));
    }

    function greenBytes(bytes memory self) internal pure returns (string memory) {
        return green(vm.toString(self));
    }

    function greenBytes32(bytes32 self) internal pure returns (string memory) {
        return green(vm.toString(self));
    }

    function yellow(string memory self) internal pure returns (string memory) {
        return styleConcat(YELLOW, self);
    }

    function yellow(uint256 self) internal pure returns (string memory) {
        return yellow(vm.toString(self));
    }

    function yellow(int256 self) internal pure returns (string memory) {
        return yellow(vm.toString(self));
    }

    function yellow(address self) internal pure returns (string memory) {
        return yellow(vm.toString(self));
    }

    function yellow(bool self) internal pure returns (string memory) {
        return yellow(vm.toString(self));
    }

    function yellowBytes(bytes memory self) internal pure returns (string memory) {
        return yellow(vm.toString(self));
    }

    function yellowBytes32(bytes32 self) internal pure returns (string memory) {
        return yellow(vm.toString(self));
    }

    function blue(string memory self) internal pure returns (string memory) {
        return styleConcat(BLUE, self);
    }

    function blue(uint256 self) internal pure returns (string memory) {
        return blue(vm.toString(self));
    }

    function blue(int256 self) internal pure returns (string memory) {
        return blue(vm.toString(self));
    }

    function blue(address self) internal pure returns (string memory) {
        return blue(vm.toString(self));
    }

    function blue(bool self) internal pure returns (string memory) {
        return blue(vm.toString(self));
    }

    function blueBytes(bytes memory self) internal pure returns (string memory) {
        return blue(vm.toString(self));
    }

    function blueBytes32(bytes32 self) internal pure returns (string memory) {
        return blue(vm.toString(self));
    }

    function magenta(string memory self) internal pure returns (string memory) {
        return styleConcat(MAGENTA, self);
    }

    function magenta(uint256 self) internal pure returns (string memory) {
        return magenta(vm.toString(self));
    }

    function magenta(int256 self) internal pure returns (string memory) {
        return magenta(vm.toString(self));
    }

    function magenta(address self) internal pure returns (string memory) {
        return magenta(vm.toString(self));
    }

    function magenta(bool self) internal pure returns (string memory) {
        return magenta(vm.toString(self));
    }

    function magentaBytes(bytes memory self) internal pure returns (string memory) {
        return magenta(vm.toString(self));
    }

    function magentaBytes32(bytes32 self) internal pure returns (string memory) {
        return magenta(vm.toString(self));
    }

    function cyan(string memory self) internal pure returns (string memory) {
        return styleConcat(CYAN, self);
    }

    function cyan(uint256 self) internal pure returns (string memory) {
        return cyan(vm.toString(self));
    }

    function cyan(int256 self) internal pure returns (string memory) {
        return cyan(vm.toString(self));
    }

    function cyan(address self) internal pure returns (string memory) {
        return cyan(vm.toString(self));
    }

    function cyan(bool self) internal pure returns (string memory) {
        return cyan(vm.toString(self));
    }

    function cyanBytes(bytes memory self) internal pure returns (string memory) {
        return cyan(vm.toString(self));
    }

    function cyanBytes32(bytes32 self) internal pure returns (string memory) {
        return cyan(vm.toString(self));
    }

    function bold(string memory self) internal pure returns (string memory) {
        return styleConcat(BOLD, self);
    }

    function bold(uint256 self) internal pure returns (string memory) {
        return bold(vm.toString(self));
    }

    function bold(int256 self) internal pure returns (string memory) {
        return bold(vm.toString(self));
    }

    function bold(address self) internal pure returns (string memory) {
        return bold(vm.toString(self));
    }

    function bold(bool self) internal pure returns (string memory) {
        return bold(vm.toString(self));
    }

    function boldBytes(bytes memory self) internal pure returns (string memory) {
        return bold(vm.toString(self));
    }

    function boldBytes32(bytes32 self) internal pure returns (string memory) {
        return bold(vm.toString(self));
    }

    function dim(string memory self) internal pure returns (string memory) {
        return styleConcat(DIM, self);
    }

    function dim(uint256 self) internal pure returns (string memory) {
        return dim(vm.toString(self));
    }

    function dim(int256 self) internal pure returns (string memory) {
        return dim(vm.toString(self));
    }

    function dim(address self) internal pure returns (string memory) {
        return dim(vm.toString(self));
    }

    function dim(bool self) internal pure returns (string memory) {
        return dim(vm.toString(self));
    }

    function dimBytes(bytes memory self) internal pure returns (string memory) {
        return dim(vm.toString(self));
    }

    function dimBytes32(bytes32 self) internal pure returns (string memory) {
        return dim(vm.toString(self));
    }

    function italic(string memory self) internal pure returns (string memory) {
        return styleConcat(ITALIC, self);
    }

    function italic(uint256 self) internal pure returns (string memory) {
        return italic(vm.toString(self));
    }

    function italic(int256 self) internal pure returns (string memory) {
        return italic(vm.toString(self));
    }

    function italic(address self) internal pure returns (string memory) {
        return italic(vm.toString(self));
    }

    function italic(bool self) internal pure returns (string memory) {
        return italic(vm.toString(self));
    }

    function italicBytes(bytes memory self) internal pure returns (string memory) {
        return italic(vm.toString(self));
    }

    function italicBytes32(bytes32 self) internal pure returns (string memory) {
        return italic(vm.toString(self));
    }

    function underline(string memory self) internal pure returns (string memory) {
        return styleConcat(UNDERLINE, self);
    }

    function underline(uint256 self) internal pure returns (string memory) {
        return underline(vm.toString(self));
    }

    function underline(int256 self) internal pure returns (string memory) {
        return underline(vm.toString(self));
    }

    function underline(address self) internal pure returns (string memory) {
        return underline(vm.toString(self));
    }

    function underline(bool self) internal pure returns (string memory) {
        return underline(vm.toString(self));
    }

    function underlineBytes(bytes memory self) internal pure returns (string memory) {
        return underline(vm.toString(self));
    }

    function underlineBytes32(bytes32 self) internal pure returns (string memory) {
        return underline(vm.toString(self));
    }

    function inverse(string memory self) internal pure returns (string memory) {
        return styleConcat(INVERSE, self);
    }

    function inverse(uint256 self) internal pure returns (string memory) {
        return inverse(vm.toString(self));
    }

    function inverse(int256 self) internal pure returns (string memory) {
        return inverse(vm.toString(self));
    }

    function inverse(address self) internal pure returns (string memory) {
        return inverse(vm.toString(self));
    }

    function inverse(bool self) internal pure returns (string memory) {
        return inverse(vm.toString(self));
    }

    function inverseBytes(bytes memory self) internal pure returns (string memory) {
        return inverse(vm.toString(self));
    }

    function inverseBytes32(bytes32 self) internal pure returns (string memory) {
        return inverse(vm.toString(self));
    }
}

// Helpers for parsing and writing TOML files
// To parse:
// ```
// using stdToml for string;
// string memory toml = vm.readFile("<some_path>");
// toml.readUint("<json_path>");
// ```
// To write:
// ```
// using stdToml for string;
// string memory json = "json";
// json.serialize("a", uint256(123));
// string memory semiFinal = json.serialize("b", string("test"));
// string memory finalJson = json.serialize("c", semiFinal);
// finalJson.write("<some_path>");
// ```

library stdToml {
    VmSafe private constant vm = VmSafe(address(uint160(uint256(keccak256("hevm cheat code")))));

    function parseRaw(string memory toml, string memory key) internal pure returns (bytes memory) {
        return vm.parseToml(toml, key);
    }

    function readUint(string memory toml, string memory key) internal pure returns (uint256) {
        return vm.parseTomlUint(toml, key);
    }

    function readUintArray(string memory toml, string memory key) internal pure returns (uint256[] memory) {
        return vm.parseTomlUintArray(toml, key);
    }

    function readInt(string memory toml, string memory key) internal pure returns (int256) {
        return vm.parseTomlInt(toml, key);
    }

    function readIntArray(string memory toml, string memory key) internal pure returns (int256[] memory) {
        return vm.parseTomlIntArray(toml, key);
    }

    function readBytes32(string memory toml, string memory key) internal pure returns (bytes32) {
        return vm.parseTomlBytes32(toml, key);
    }

    function readBytes32Array(string memory toml, string memory key) internal pure returns (bytes32[] memory) {
        return vm.parseTomlBytes32Array(toml, key);
    }

    function readString(string memory toml, string memory key) internal pure returns (string memory) {
        return vm.parseTomlString(toml, key);
    }

    function readStringArray(string memory toml, string memory key) internal pure returns (string[] memory) {
        return vm.parseTomlStringArray(toml, key);
    }

    function readAddress(string memory toml, string memory key) internal pure returns (address) {
        return vm.parseTomlAddress(toml, key);
    }

    function readAddressArray(string memory toml, string memory key) internal pure returns (address[] memory) {
        return vm.parseTomlAddressArray(toml, key);
    }

    function readBool(string memory toml, string memory key) internal pure returns (bool) {
        return vm.parseTomlBool(toml, key);
    }

    function readBoolArray(string memory toml, string memory key) internal pure returns (bool[] memory) {
        return vm.parseTomlBoolArray(toml, key);
    }

    function readBytes(string memory toml, string memory key) internal pure returns (bytes memory) {
        return vm.parseTomlBytes(toml, key);
    }

    function readBytesArray(string memory toml, string memory key) internal pure returns (bytes[] memory) {
        return vm.parseTomlBytesArray(toml, key);
    }

    function serialize(string memory jsonKey, string memory rootObject) internal returns (string memory) {
        return vm.serializeJson(jsonKey, rootObject);
    }

    function serialize(string memory jsonKey, string memory key, bool value) internal returns (string memory) {
        return vm.serializeBool(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, bool[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeBool(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, uint256 value) internal returns (string memory) {
        return vm.serializeUint(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, uint256[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeUint(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, int256 value) internal returns (string memory) {
        return vm.serializeInt(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, int256[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeInt(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, address value) internal returns (string memory) {
        return vm.serializeAddress(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, address[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeAddress(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, bytes32 value) internal returns (string memory) {
        return vm.serializeBytes32(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, bytes32[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeBytes32(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, bytes memory value) internal returns (string memory) {
        return vm.serializeBytes(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, bytes[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeBytes(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, string memory value)
        internal
        returns (string memory)
    {
        return vm.serializeString(jsonKey, key, value);
    }

    function serialize(string memory jsonKey, string memory key, string[] memory value)
        internal
        returns (string memory)
    {
        return vm.serializeString(jsonKey, key, value);
    }

    function write(string memory jsonKey, string memory path) internal {
        vm.writeToml(jsonKey, path);
    }

    function write(string memory jsonKey, string memory path, string memory valueKey) internal {
        vm.writeToml(jsonKey, path, valueKey);
    }
}

/// @title ERC-721 Non-Fungible Token Standard
/// @dev See https://eips.ethereum.org/EIPS/eip-721
/// Note: the ERC-165 identifier for this interface is 0x80ac58cd.
interface IERC721 is IERC165_0 {
    /// @dev This emits when ownership of any NFT changes by any mechanism.
    /// This event emits when NFTs are created (`from` == 0) and destroyed
    /// (`to` == 0). Exception: during contract creation, any number of NFTs
    /// may be created and assigned without emitting Transfer. At the time of
    /// any transfer, the approved address for that NFT (if any) is reset to none.
    event Transfer(address indexed _from, address indexed _to, uint256 indexed _tokenId);

    /// @dev This emits when the approved address for an NFT is changed or
    /// reaffirmed. The zero address indicates there is no approved address.
    /// When a Transfer event emits, this also indicates that the approved
    /// address for that NFT (if any) is reset to none.
    event Approval(address indexed _owner, address indexed _approved, uint256 indexed _tokenId);

    /// @dev This emits when an operator is enabled or disabled for an owner.
    /// The operator can manage all NFTs of the owner.
    event ApprovalForAll(address indexed _owner, address indexed _operator, bool _approved);

    /// @notice Count all NFTs assigned to an owner
    /// @dev NFTs assigned to the zero address are considered invalid, and this
    /// function throws for queries about the zero address.
    /// @param _owner An address for whom to query the balance
    /// @return The number of NFTs owned by `_owner`, possibly zero
    function balanceOf(address _owner) external view returns (uint256);

    /// @notice Find the owner of an NFT
    /// @dev NFTs assigned to zero address are considered invalid, and queries
    /// about them do throw.
    /// @param _tokenId The identifier for an NFT
    /// @return The address of the owner of the NFT
    function ownerOf(uint256 _tokenId) external view returns (address);

    /// @notice Transfers the ownership of an NFT from one address to another address
    /// @dev Throws unless `msg.sender` is the current owner, an authorized
    /// operator, or the approved address for this NFT. Throws if `_from` is
    /// not the current owner. Throws if `_to` is the zero address. Throws if
    /// `_tokenId` is not a valid NFT. When transfer is complete, this function
    /// checks if `_to` is a smart contract (code size > 0). If so, it calls
    /// `onERC721Received` on `_to` and throws if the return value is not
    /// `bytes4(keccak256("onERC721Received(address,address,uint256,bytes)"))`.
    /// @param _from The current owner of the NFT
    /// @param _to The new owner
    /// @param _tokenId The NFT to transfer
    /// @param data Additional data with no specified format, sent in call to `_to`
    function safeTransferFrom(address _from, address _to, uint256 _tokenId, bytes calldata data) external payable;

    /// @notice Transfers the ownership of an NFT from one address to another address
    /// @dev This works identically to the other function with an extra data parameter,
    /// except this function just sets data to "".
    /// @param _from The current owner of the NFT
    /// @param _to The new owner
    /// @param _tokenId The NFT to transfer
    function safeTransferFrom(address _from, address _to, uint256 _tokenId) external payable;

    /// @notice Transfer ownership of an NFT -- THE CALLER IS RESPONSIBLE
    /// TO CONFIRM THAT `_to` IS CAPABLE OF RECEIVING NFTS OR ELSE
    /// THEY MAY BE PERMANENTLY LOST
    /// @dev Throws unless `msg.sender` is the current owner, an authorized
    /// operator, or the approved address for this NFT. Throws if `_from` is
    /// not the current owner. Throws if `_to` is the zero address. Throws if
    /// `_tokenId` is not a valid NFT.
    /// @param _from The current owner of the NFT
    /// @param _to The new owner
    /// @param _tokenId The NFT to transfer
    function transferFrom(address _from, address _to, uint256 _tokenId) external payable;

    /// @notice Change or reaffirm the approved address for an NFT
    /// @dev The zero address indicates there is no approved address.
    /// Throws unless `msg.sender` is the current NFT owner, or an authorized
    /// operator of the current owner.
    /// @param _approved The new approved NFT controller
    /// @param _tokenId The NFT to approve
    function approve(address _approved, uint256 _tokenId) external payable;

    /// @notice Enable or disable approval for a third party ("operator") to manage
    /// all of `msg.sender`'s assets
    /// @dev Emits the ApprovalForAll event. The contract MUST allow
    /// multiple operators per owner.
    /// @param _operator Address to add to the set of authorized operators
    /// @param _approved True if the operator is approved, false to revoke approval
    function setApprovalForAll(address _operator, bool _approved) external;

    /// @notice Get the approved address for a single NFT
    /// @dev Throws if `_tokenId` is not a valid NFT.
    /// @param _tokenId The NFT to find the approved address for
    /// @return The approved address for this NFT, or the zero address if there is none
    function getApproved(uint256 _tokenId) external view returns (address);

    /// @notice Query if an address is an authorized operator for another address
    /// @param _owner The address that owns the NFTs
    /// @param _operator The address that acts on behalf of the owner
    /// @return True if `_operator` is an approved operator for `_owner`, false otherwise
    function isApprovedForAll(address _owner, address _operator) external view returns (bool);
}

/// @dev Note: the ERC-165 identifier for this interface is 0x150b7a02.
interface IERC721TokenReceiver_0 {
    /// @notice Handle the receipt of an NFT
    /// @dev The ERC721 smart contract calls this function on the recipient
    /// after a `transfer`. This function MAY throw to revert and reject the
    /// transfer. Return of other than the magic value MUST result in the
    /// transaction being reverted.
    /// Note: the contract address is always the message sender.
    /// @param _operator The address which called `safeTransferFrom` function
    /// @param _from The address which previously owned the token
    /// @param _tokenId The NFT identifier which is being transferred
    /// @param _data Additional data with no specified format
    /// @return `bytes4(keccak256("onERC721Received(address,address,uint256,bytes)"))`
    ///  unless throwing
    function onERC721Received(address _operator, address _from, uint256 _tokenId, bytes calldata _data)
        external
        returns (bytes4);
}

/// @title ERC-721 Non-Fungible Token Standard, optional metadata extension
/// @dev See https://eips.ethereum.org/EIPS/eip-721
/// Note: the ERC-165 identifier for this interface is 0x5b5e139f.
interface IERC721Metadata is IERC721 {
    /// @notice A descriptive name for a collection of NFTs in this contract
    function name() external view returns (string memory _name);

    /// @notice An abbreviated name for NFTs in this contract
    function symbol() external view returns (string memory _symbol);

    /// @notice A distinct Uniform Resource Identifier (URI) for a given asset.
    /// @dev Throws if `_tokenId` is not a valid NFT. URIs are defined in RFC
    /// 3986. The URI may point to a JSON file that conforms to the "ERC721
    /// Metadata JSON Schema".
    function tokenURI(uint256 _tokenId) external view returns (string memory);
}

/// @title ERC-721 Non-Fungible Token Standard, optional enumeration extension
/// @dev See https://eips.ethereum.org/EIPS/eip-721
/// Note: the ERC-165 identifier for this interface is 0x780e9d63.
interface IERC721Enumerable is IERC721 {
    /// @notice Count NFTs tracked by this contract
    /// @return A count of valid NFTs tracked by this contract, where each one of
    /// them has an assigned and queryable owner not equal to the zero address
    function totalSupply() external view returns (uint256);

    /// @notice Enumerate valid NFTs
    /// @dev Throws if `_index` >= `totalSupply()`.
    /// @param _index A counter less than `totalSupply()`
    /// @return The token identifier for the `_index`th NFT,
    /// (sort order not specified)
    function tokenByIndex(uint256 _index) external view returns (uint256);

    /// @notice Enumerate NFTs assigned to an owner
    /// @dev Throws if `_index` >= `balanceOf(_owner)` or if
    /// `_owner` is the zero address, representing invalid NFTs.
    /// @param _owner An address where we are interested in NFTs owned by them
    /// @param _index A counter less than `balanceOf(_owner)`
    /// @return The token identifier for the `_index`th NFT assigned to `_owner`,
    /// (sort order not specified)
    function tokenOfOwnerByIndex(address _owner, uint256 _index) external view returns (uint256);
}

/// @notice This is a mock contract of the ERC20 standard for testing purposes only, it SHOULD NOT be used in production.
/// @dev Forked from: https://github.com/transmissions11/solmate/blob/0384dbaaa4fcb5715738a9254a7c0a4cb62cf458/src/tokens/ERC20.sol
contract MockERC20 is IERC20_0 {
    /*//////////////////////////////////////////////////////////////
                            METADATA STORAGE
    //////////////////////////////////////////////////////////////*/

    string internal _name;

    string internal _symbol;

    uint8 internal _decimals;

    function name() external view override returns (string memory) {
        return _name;
    }

    function symbol() external view override returns (string memory) {
        return _symbol;
    }

    function decimals() external view override returns (uint8) {
        return _decimals;
    }

    /*//////////////////////////////////////////////////////////////
                              ERC20 STORAGE
    //////////////////////////////////////////////////////////////*/

    uint256 internal _totalSupply;

    mapping(address => uint256) internal _balanceOf;

    mapping(address => mapping(address => uint256)) internal _allowance;

    function totalSupply() external view override returns (uint256) {
        return _totalSupply;
    }

    function balanceOf(address owner) external view override returns (uint256) {
        return _balanceOf[owner];
    }

    function allowance(address owner, address spender) external view override returns (uint256) {
        return _allowance[owner][spender];
    }

    /*//////////////////////////////////////////////////////////////
                            EIP-2612 STORAGE
    //////////////////////////////////////////////////////////////*/

    uint256 internal INITIAL_CHAIN_ID;

    bytes32 internal INITIAL_DOMAIN_SEPARATOR;

    mapping(address => uint256) public nonces;

    /*//////////////////////////////////////////////////////////////
                               INITIALIZE
    //////////////////////////////////////////////////////////////*/

    /// @dev A bool to track whether the contract has been initialized.
    bool private initialized;

    /// @dev To hide constructor warnings across solc versions due to different constructor visibility requirements and
    /// syntaxes, we add an initialization function that can be called only once.
    function initialize(string memory name_, string memory symbol_, uint8 decimals_) public {
        require(!initialized, "ALREADY_INITIALIZED");

        _name = name_;
        _symbol = symbol_;
        _decimals = decimals_;

        INITIAL_CHAIN_ID = _pureChainId();
        INITIAL_DOMAIN_SEPARATOR = computeDomainSeparator();

        initialized = true;
    }

    /*//////////////////////////////////////////////////////////////
                               ERC20 LOGIC
    //////////////////////////////////////////////////////////////*/

    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        _allowance[msg.sender][spender] = amount;

        emit Approval(msg.sender, spender, amount);

        return true;
    }

    function transfer(address to, uint256 amount) public virtual override returns (bool) {
        _balanceOf[msg.sender] = _sub(_balanceOf[msg.sender], amount);
        _balanceOf[to] = _add(_balanceOf[to], amount);

        emit Transfer(msg.sender, to, amount);

        return true;
    }

    function transferFrom(address from, address to, uint256 amount) public virtual override returns (bool) {
        uint256 allowed = _allowance[from][msg.sender]; // Saves gas for limited approvals.

        if (allowed != ~uint256(0)) _allowance[from][msg.sender] = _sub(allowed, amount);

        _balanceOf[from] = _sub(_balanceOf[from], amount);
        _balanceOf[to] = _add(_balanceOf[to], amount);

        emit Transfer(from, to, amount);

        return true;
    }

    /*//////////////////////////////////////////////////////////////
                             EIP-2612 LOGIC
    //////////////////////////////////////////////////////////////*/

    function permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
        public
        virtual
    {
        require(deadline >= block.timestamp, "PERMIT_DEADLINE_EXPIRED");

        address recoveredAddress = ecrecover(
            keccak256(
                abi.encodePacked(
                    "\x19\x01",
                    DOMAIN_SEPARATOR(),
                    keccak256(
                        abi.encode(
                            keccak256(
                                "Permit(address owner,address spender,uint256 value,uint256 nonce,uint256 deadline)"
                            ),
                            owner,
                            spender,
                            value,
                            nonces[owner]++,
                            deadline
                        )
                    )
                )
            ),
            v,
            r,
            s
        );

        require(recoveredAddress != address(0) && recoveredAddress == owner, "INVALID_SIGNER");

        _allowance[recoveredAddress][spender] = value;

        emit Approval(owner, spender, value);
    }

    function DOMAIN_SEPARATOR() public view virtual returns (bytes32) {
        return _pureChainId() == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator();
    }

    function computeDomainSeparator() internal view virtual returns (bytes32) {
        return keccak256(
            abi.encode(
                keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"),
                keccak256(bytes(_name)),
                keccak256("1"),
                _pureChainId(),
                address(this)
            )
        );
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL MINT/BURN LOGIC
    //////////////////////////////////////////////////////////////*/

    function _mint(address to, uint256 amount) internal virtual {
        _totalSupply = _add(_totalSupply, amount);
        _balanceOf[to] = _add(_balanceOf[to], amount);

        emit Transfer(address(0), to, amount);
    }

    function _burn(address from, uint256 amount) internal virtual {
        _balanceOf[from] = _sub(_balanceOf[from], amount);
        _totalSupply = _sub(_totalSupply, amount);

        emit Transfer(from, address(0), amount);
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL SAFE MATH LOGIC
    //////////////////////////////////////////////////////////////*/

    function _add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "ERC20: addition overflow");
        return c;
    }

    function _sub(uint256 a, uint256 b) internal pure returns (uint256) {
        require(a >= b, "ERC20: subtraction underflow");
        return a - b;
    }

    /*//////////////////////////////////////////////////////////////
                                HELPERS
    //////////////////////////////////////////////////////////////*/

    // We use this complex approach of `_viewChainId` and `_pureChainId` to ensure there are no
    // compiler warnings when accessing chain ID in any solidity version supported by forge-std. We
    // can't simply access the chain ID in a normal view or pure function because the solc View Pure
    // Checker changed `chainid` from pure to view in 0.8.0.
    function _viewChainId() private view returns (uint256 chainId) {
        // Assembly required since `block.chainid` was introduced in 0.8.0.
        assembly {
            chainId := chainid()
        }

        address(this); // Silence warnings in older Solc versions.
    }

    function _pureChainId() private pure returns (uint256 chainId) {
        function() internal view returns (uint256) fnIn = _viewChainId;
        function() internal pure returns (uint256) pureChainId;
        assembly {
            pureChainId := fnIn
        }
        chainId = pureChainId();
    }
}

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

// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/extensions/IERC20Metadata.sol)

/**
 * @dev Interface for the optional metadata functions from the ERC20 standard.
 */
interface IERC20Metadata is IERC20_1 {
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

abstract contract CommonBase {
    // Cheat code address, 0x7109709ECfa91a80626fF3989D68f67F5b1DD12D.
    address internal constant VM_ADDRESS = address(uint160(uint256(keccak256("hevm cheat code"))));
    // console.sol and console2.sol work by executing a staticcall to this address.
    address internal constant CONSOLE = 0x000000000000000000636F6e736F6c652e6c6f67;
    // Used when deploying with create2, https://github.com/Arachnid/deterministic-deployment-proxy.
    address internal constant CREATE2_FACTORY = 0x4e59b44847b379578588920cA78FbF26c0B4956C;
    // Default address for tx.origin and msg.sender, 0x1804c8AB1F12E6bbf3894d4083f33e07309d1f38.
    address internal constant DEFAULT_SENDER = address(uint160(uint256(keccak256("foundry default caller"))));
    // Address of the test contract, deployed by the DEFAULT_SENDER.
    address internal constant DEFAULT_TEST_CONTRACT = 0x5615dEB798BB3E4dFa0139dFa1b3D433Cc23b72f;
    // Deterministic deployment address of the Multicall3 contract.
    address internal constant MULTICALL3_ADDRESS = 0xcA11bde05977b3631167028862bE2a173976CA11;
    // The order of the secp256k1 curve.
    uint256 internal constant SECP256K1_ORDER =
        115792089237316195423570985008687907852837564279074904382605163141518161494337;

    uint256 internal constant UINT256_MAX =
        115792089237316195423570985008687907853269984665640564039457584007913129639935;

    Vm internal constant vm = Vm(VM_ADDRESS);
    StdStorage internal stdstore;
}

abstract contract TestBase is CommonBase {}

abstract contract ScriptBase is CommonBase {
    VmSafe internal constant vmSafe = VmSafe(VM_ADDRESS);
}

/// @notice This is a mock contract of the ERC721 standard for testing purposes only, it SHOULD NOT be used in production.
/// @dev Forked from: https://github.com/transmissions11/solmate/blob/0384dbaaa4fcb5715738a9254a7c0a4cb62cf458/src/tokens/ERC721.sol
contract MockERC721 is IERC721Metadata {
    /*//////////////////////////////////////////////////////////////
                         METADATA STORAGE/LOGIC
    //////////////////////////////////////////////////////////////*/

    string internal _name;

    string internal _symbol;

    function name() external view override returns (string memory) {
        return _name;
    }

    function symbol() external view override returns (string memory) {
        return _symbol;
    }

    function tokenURI(uint256 id) public view virtual override returns (string memory) {}

    /*//////////////////////////////////////////////////////////////
                      ERC721 BALANCE/OWNER STORAGE
    //////////////////////////////////////////////////////////////*/

    mapping(uint256 => address) internal _ownerOf;

    mapping(address => uint256) internal _balanceOf;

    function ownerOf(uint256 id) public view virtual override returns (address owner) {
        require((owner = _ownerOf[id]) != address(0), "NOT_MINTED");
    }

    function balanceOf(address owner) public view virtual override returns (uint256) {
        require(owner != address(0), "ZERO_ADDRESS");

        return _balanceOf[owner];
    }

    /*//////////////////////////////////////////////////////////////
                         ERC721 APPROVAL STORAGE
    //////////////////////////////////////////////////////////////*/

    mapping(uint256 => address) internal _getApproved;

    mapping(address => mapping(address => bool)) internal _isApprovedForAll;

    function getApproved(uint256 id) public view virtual override returns (address) {
        return _getApproved[id];
    }

    function isApprovedForAll(address owner, address operator) public view virtual override returns (bool) {
        return _isApprovedForAll[owner][operator];
    }

    /*//////////////////////////////////////////////////////////////
                               INITIALIZE
    //////////////////////////////////////////////////////////////*/

    /// @dev A bool to track whether the contract has been initialized.
    bool private initialized;

    /// @dev To hide constructor warnings across solc versions due to different constructor visibility requirements and
    /// syntaxes, we add an initialization function that can be called only once.
    function initialize(string memory name_, string memory symbol_) public {
        require(!initialized, "ALREADY_INITIALIZED");

        _name = name_;
        _symbol = symbol_;

        initialized = true;
    }

    /*//////////////////////////////////////////////////////////////
                              ERC721 LOGIC
    //////////////////////////////////////////////////////////////*/

    function approve(address spender, uint256 id) public payable virtual override {
        address owner = _ownerOf[id];

        require(msg.sender == owner || _isApprovedForAll[owner][msg.sender], "NOT_AUTHORIZED");

        _getApproved[id] = spender;

        emit Approval(owner, spender, id);
    }

    function setApprovalForAll(address operator, bool approved) public virtual override {
        _isApprovedForAll[msg.sender][operator] = approved;

        emit ApprovalForAll(msg.sender, operator, approved);
    }

    function transferFrom(address from, address to, uint256 id) public payable virtual override {
        require(from == _ownerOf[id], "WRONG_FROM");

        require(to != address(0), "INVALID_RECIPIENT");

        require(
            msg.sender == from || _isApprovedForAll[from][msg.sender] || msg.sender == _getApproved[id],
            "NOT_AUTHORIZED"
        );

        // Underflow of the sender's balance is impossible because we check for
        // ownership above and the recipient's balance can't realistically overflow.
        _balanceOf[from]--;

        _balanceOf[to]++;

        _ownerOf[id] = to;

        delete _getApproved[id];

        emit Transfer(from, to, id);
    }

    function safeTransferFrom(address from, address to, uint256 id) public payable virtual override {
        transferFrom(from, to, id);

        require(
            !_isContract(to)
                || IERC721TokenReceiver_1(to).onERC721Received(msg.sender, from, id, "")
                    == IERC721TokenReceiver_1.onERC721Received.selector,
            "UNSAFE_RECIPIENT"
        );
    }

    function safeTransferFrom(address from, address to, uint256 id, bytes memory data)
        public
        payable
        virtual
        override
    {
        transferFrom(from, to, id);

        require(
            !_isContract(to)
                || IERC721TokenReceiver_1(to).onERC721Received(msg.sender, from, id, data)
                    == IERC721TokenReceiver_1.onERC721Received.selector,
            "UNSAFE_RECIPIENT"
        );
    }

    /*//////////////////////////////////////////////////////////////
                              ERC165 LOGIC
    //////////////////////////////////////////////////////////////*/

    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == 0x01ffc9a7 // ERC165 Interface ID for ERC165
            || interfaceId == 0x80ac58cd // ERC165 Interface ID for ERC721
            || interfaceId == 0x5b5e139f; // ERC165 Interface ID for ERC721Metadata
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL MINT/BURN LOGIC
    //////////////////////////////////////////////////////////////*/

    function _mint(address to, uint256 id) internal virtual {
        require(to != address(0), "INVALID_RECIPIENT");

        require(_ownerOf[id] == address(0), "ALREADY_MINTED");

        // Counter overflow is incredibly unrealistic.

        _balanceOf[to]++;

        _ownerOf[id] = to;

        emit Transfer(address(0), to, id);
    }

    function _burn(uint256 id) internal virtual {
        address owner = _ownerOf[id];

        require(owner != address(0), "NOT_MINTED");

        _balanceOf[owner]--;

        delete _ownerOf[id];

        delete _getApproved[id];

        emit Transfer(owner, address(0), id);
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL SAFE MINT LOGIC
    //////////////////////////////////////////////////////////////*/

    function _safeMint(address to, uint256 id) internal virtual {
        _mint(to, id);

        require(
            !_isContract(to)
                || IERC721TokenReceiver_1(to).onERC721Received(msg.sender, address(0), id, "")
                    == IERC721TokenReceiver_1.onERC721Received.selector,
            "UNSAFE_RECIPIENT"
        );
    }

    function _safeMint(address to, uint256 id, bytes memory data) internal virtual {
        _mint(to, id);

        require(
            !_isContract(to)
                || IERC721TokenReceiver_1(to).onERC721Received(msg.sender, address(0), id, data)
                    == IERC721TokenReceiver_1.onERC721Received.selector,
            "UNSAFE_RECIPIENT"
        );
    }

    /*//////////////////////////////////////////////////////////////
                                HELPERS
    //////////////////////////////////////////////////////////////*/

    function _isContract(address _addr) private view returns (bool) {
        uint256 codeLength;

        // Assembly required for versions < 0.8.0 to check extcodesize.
        assembly {
            codeLength := extcodesize(_addr)
        }

        return codeLength > 0;
    }
}

interface IERC721TokenReceiver_1 {
    function onERC721Received(address, address, uint256, bytes calldata) external returns (bytes4);
}

enum MessageLibType {
    Send,
    Receive,
    SendAndReceive
}

interface IMessageLib is IERC165_1 {
    function setConfig(address _oapp, SetConfigParam[] calldata _config) external;

    function getConfig(uint32 _eid, address _oapp, uint32 _configType) external view returns (bytes memory config);

    function isSupportedEid(uint32 _eid) external view returns (bool);

    // message libs of same major version are compatible
    function version() external view returns (uint64 major, uint8 minor, uint8 endpointVersion);

    function messageLibType() external view returns (MessageLibType);
}

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
abstract contract OwnableUpgradeable is Initializable, ContextUpgradeable {
    /// @custom:storage-location erc7201:openzeppelin.storage.Ownable
    struct OwnableStorage {
        address _owner;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Ownable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant OwnableStorageLocation = 0x9016d09d72d40fdae2fd8ceac6b6234c7706214fd39c1cd1e609a0528c199300;

    function _getOwnableStorage() private pure returns (OwnableStorage storage $) {
        assembly {
            $.slot := OwnableStorageLocation
        }
    }

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
    function __Ownable_init(address initialOwner) internal onlyInitializing {
        __Ownable_init_unchained(initialOwner);
    }

    function __Ownable_init_unchained(address initialOwner) internal onlyInitializing {
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
        OwnableStorage storage $ = _getOwnableStorage();
        return $._owner;
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
        OwnableStorage storage $ = _getOwnableStorage();
        address oldOwner = $._owner;
        $._owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// OpenZeppelin Contracts (last updated v5.0.0) (utils/introspection/ERC165.sol)

/**
 * @dev Implementation of the {IERC165} interface.
 *
 * Contracts that want to implement ERC165 should inherit from this contract and override {supportsInterface} to check
 * for the additional interface id that will be supported. For example:
 *
 * ```solidity
 * function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
 *     return interfaceId == type(MyInterface).interfaceId || super.supportsInterface(interfaceId);
 * }
 * ```
 */
abstract contract ERC165Upgradeable is Initializable, IERC165_1 {
    function __ERC165_init() internal onlyInitializing {
    }

    function __ERC165_init_unchained() internal onlyInitializing {
    }
    /**
     * @dev See {IERC165-supportsInterface}.
     */
    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {
        return interfaceId == type(IERC165_1).interfaceId;
    }
}

abstract contract StdCheatsSafe {
    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));

    uint256 private constant UINT256_MAX =
        115792089237316195423570985008687907853269984665640564039457584007913129639935;

    bool private gasMeteringOff;

    // Data structures to parse Transaction objects from the broadcast artifact
    // that conform to EIP1559. The Raw structs is what is parsed from the JSON
    // and then converted to the one that is used by the user for better UX.

    struct RawTx1559 {
        string[] arguments;
        address contractAddress;
        string contractName;
        // json value name = function
        string functionSig;
        bytes32 hash;
        // json value name = tx
        RawTx1559Detail txDetail;
        // json value name = type
        string opcode;
    }

    struct RawTx1559Detail {
        AccessList[] accessList;
        bytes data;
        address from;
        bytes gas;
        bytes nonce;
        address to;
        bytes txType;
        bytes value;
    }

    struct Tx1559 {
        string[] arguments;
        address contractAddress;
        string contractName;
        string functionSig;
        bytes32 hash;
        Tx1559Detail txDetail;
        string opcode;
    }

    struct Tx1559Detail {
        AccessList[] accessList;
        bytes data;
        address from;
        uint256 gas;
        uint256 nonce;
        address to;
        uint256 txType;
        uint256 value;
    }

    // Data structures to parse Transaction objects from the broadcast artifact
    // that DO NOT conform to EIP1559. The Raw structs is what is parsed from the JSON
    // and then converted to the one that is used by the user for better UX.

    struct TxLegacy {
        string[] arguments;
        address contractAddress;
        string contractName;
        string functionSig;
        string hash;
        string opcode;
        TxDetailLegacy transaction;
    }

    struct TxDetailLegacy {
        AccessList[] accessList;
        uint256 chainId;
        bytes data;
        address from;
        uint256 gas;
        uint256 gasPrice;
        bytes32 hash;
        uint256 nonce;
        bytes1 opcode;
        bytes32 r;
        bytes32 s;
        uint256 txType;
        address to;
        uint8 v;
        uint256 value;
    }

    struct AccessList {
        address accessAddress;
        bytes32[] storageKeys;
    }

    // Data structures to parse Receipt objects from the broadcast artifact.
    // The Raw structs is what is parsed from the JSON
    // and then converted to the one that is used by the user for better UX.

    struct RawReceipt {
        bytes32 blockHash;
        bytes blockNumber;
        address contractAddress;
        bytes cumulativeGasUsed;
        bytes effectiveGasPrice;
        address from;
        bytes gasUsed;
        RawReceiptLog[] logs;
        bytes logsBloom;
        bytes status;
        address to;
        bytes32 transactionHash;
        bytes transactionIndex;
    }

    struct Receipt {
        bytes32 blockHash;
        uint256 blockNumber;
        address contractAddress;
        uint256 cumulativeGasUsed;
        uint256 effectiveGasPrice;
        address from;
        uint256 gasUsed;
        ReceiptLog[] logs;
        bytes logsBloom;
        uint256 status;
        address to;
        bytes32 transactionHash;
        uint256 transactionIndex;
    }

    // Data structures to parse the entire broadcast artifact, assuming the
    // transactions conform to EIP1559.

    struct EIP1559ScriptArtifact {
        string[] libraries;
        string path;
        string[] pending;
        Receipt[] receipts;
        uint256 timestamp;
        Tx1559[] transactions;
        TxReturn[] txReturns;
    }

    struct RawEIP1559ScriptArtifact {
        string[] libraries;
        string path;
        string[] pending;
        RawReceipt[] receipts;
        TxReturn[] txReturns;
        uint256 timestamp;
        RawTx1559[] transactions;
    }

    struct RawReceiptLog {
        // json value = address
        address logAddress;
        bytes32 blockHash;
        bytes blockNumber;
        bytes data;
        bytes logIndex;
        bool removed;
        bytes32[] topics;
        bytes32 transactionHash;
        bytes transactionIndex;
        bytes transactionLogIndex;
    }

    struct ReceiptLog {
        // json value = address
        address logAddress;
        bytes32 blockHash;
        uint256 blockNumber;
        bytes data;
        uint256 logIndex;
        bytes32[] topics;
        uint256 transactionIndex;
        uint256 transactionLogIndex;
        bool removed;
    }

    struct TxReturn {
        string internalType;
        string value;
    }

    struct Account {
        address addr;
        uint256 key;
    }

    enum AddressType {
        Payable,
        NonPayable,
        ZeroAddress,
        Precompile,
        ForgeAddress
    }

    // Checks that `addr` is not blacklisted by token contracts that have a blacklist.
    function assumeNotBlacklisted(address token, address addr) internal view virtual {
        // Nothing to check if `token` is not a contract.
        uint256 tokenCodeSize;
        assembly {
            tokenCodeSize := extcodesize(token)
        }
        require(tokenCodeSize > 0, "StdCheats assumeNotBlacklisted(address,address): Token address is not a contract.");

        bool success;
        bytes memory returnData;

        // 4-byte selector for `isBlacklisted(address)`, used by USDC.
        (success, returnData) = token.staticcall(abi.encodeWithSelector(0xfe575a87, addr));
        vm.assume(!success || abi.decode(returnData, (bool)) == false);

        // 4-byte selector for `isBlackListed(address)`, used by USDT.
        (success, returnData) = token.staticcall(abi.encodeWithSelector(0xe47d6060, addr));
        vm.assume(!success || abi.decode(returnData, (bool)) == false);
    }

    // Checks that `addr` is not blacklisted by token contracts that have a blacklist.
    // This is identical to `assumeNotBlacklisted(address,address)` but with a different name, for
    // backwards compatibility, since this name was used in the original PR which has already has
    // a release. This function can be removed in a future release once we want a breaking change.
    function assumeNoBlacklisted(address token, address addr) internal view virtual {
        assumeNotBlacklisted(token, addr);
    }

    function assumeAddressIsNot(address addr, AddressType addressType) internal virtual {
        if (addressType == AddressType.Payable) {
            assumeNotPayable(addr);
        } else if (addressType == AddressType.NonPayable) {
            assumePayable(addr);
        } else if (addressType == AddressType.ZeroAddress) {
            assumeNotZeroAddress(addr);
        } else if (addressType == AddressType.Precompile) {
            assumeNotPrecompile(addr);
        } else if (addressType == AddressType.ForgeAddress) {
            assumeNotForgeAddress(addr);
        }
    }

    function assumeAddressIsNot(address addr, AddressType addressType1, AddressType addressType2) internal virtual {
        assumeAddressIsNot(addr, addressType1);
        assumeAddressIsNot(addr, addressType2);
    }

    function assumeAddressIsNot(
        address addr,
        AddressType addressType1,
        AddressType addressType2,
        AddressType addressType3
    ) internal virtual {
        assumeAddressIsNot(addr, addressType1);
        assumeAddressIsNot(addr, addressType2);
        assumeAddressIsNot(addr, addressType3);
    }

    function assumeAddressIsNot(
        address addr,
        AddressType addressType1,
        AddressType addressType2,
        AddressType addressType3,
        AddressType addressType4
    ) internal virtual {
        assumeAddressIsNot(addr, addressType1);
        assumeAddressIsNot(addr, addressType2);
        assumeAddressIsNot(addr, addressType3);
        assumeAddressIsNot(addr, addressType4);
    }

    // This function checks whether an address, `addr`, is payable. It works by sending 1 wei to
    // `addr` and checking the `success` return value.
    // NOTE: This function may result in state changes depending on the fallback/receive logic
    // implemented by `addr`, which should be taken into account when this function is used.
    function _isPayable(address addr) private returns (bool) {
        require(
            addr.balance < UINT256_MAX,
            "StdCheats _isPayable(address): Balance equals max uint256, so it cannot receive any more funds"
        );
        uint256 origBalanceTest = address(this).balance;
        uint256 origBalanceAddr = address(addr).balance;

        vm.deal(address(this), 1);
        (bool success,) = payable(addr).call{value: 1}("");

        // reset balances
        vm.deal(address(this), origBalanceTest);
        vm.deal(addr, origBalanceAddr);

        return success;
    }

    // NOTE: This function may result in state changes depending on the fallback/receive logic
    // implemented by `addr`, which should be taken into account when this function is used. See the
    // `_isPayable` method for more information.
    function assumePayable(address addr) internal virtual {
        vm.assume(_isPayable(addr));
    }

    function assumeNotPayable(address addr) internal virtual {
        vm.assume(!_isPayable(addr));
    }

    function assumeNotZeroAddress(address addr) internal pure virtual {
        vm.assume(addr != address(0));
    }

    function assumeNotPrecompile(address addr) internal pure virtual {
        assumeNotPrecompile(addr, _pureChainId());
    }

    function assumeNotPrecompile(address addr, uint256 chainId) internal pure virtual {
        // Note: For some chains like Optimism these are technically predeploys (i.e. bytecode placed at a specific
        // address), but the same rationale for excluding them applies so we include those too.

        // These should be present on all EVM-compatible chains.
        vm.assume(addr < address(0x1) || addr > address(0x9));

        // forgefmt: disable-start
        if (chainId == 10 || chainId == 420) {
            // https://github.com/ethereum-optimism/optimism/blob/eaa371a0184b56b7ca6d9eb9cb0a2b78b2ccd864/op-bindings/predeploys/addresses.go#L6-L21
            vm.assume(addr < address(0x4200000000000000000000000000000000000000) || addr > address(0x4200000000000000000000000000000000000800));
        } else if (chainId == 42161 || chainId == 421613) {
            // https://developer.arbitrum.io/useful-addresses#arbitrum-precompiles-l2-same-on-all-arb-chains
            vm.assume(addr < address(0x0000000000000000000000000000000000000064) || addr > address(0x0000000000000000000000000000000000000068));
        } else if (chainId == 43114 || chainId == 43113) {
            // https://github.com/ava-labs/subnet-evm/blob/47c03fd007ecaa6de2c52ea081596e0a88401f58/precompile/params.go#L18-L59
            vm.assume(addr < address(0x0100000000000000000000000000000000000000) || addr > address(0x01000000000000000000000000000000000000ff));
            vm.assume(addr < address(0x0200000000000000000000000000000000000000) || addr > address(0x02000000000000000000000000000000000000FF));
            vm.assume(addr < address(0x0300000000000000000000000000000000000000) || addr > address(0x03000000000000000000000000000000000000Ff));
        }
        // forgefmt: disable-end
    }

    function assumeNotForgeAddress(address addr) internal pure virtual {
        // vm, console, and Create2Deployer addresses
        vm.assume(
            addr != address(vm) && addr != 0x000000000000000000636F6e736F6c652e6c6f67
                && addr != 0x4e59b44847b379578588920cA78FbF26c0B4956C
        );
    }

    function readEIP1559ScriptArtifact(string memory path)
        internal
        view
        virtual
        returns (EIP1559ScriptArtifact memory)
    {
        string memory data = vm.readFile(path);
        bytes memory parsedData = vm.parseJson(data);
        RawEIP1559ScriptArtifact memory rawArtifact = abi.decode(parsedData, (RawEIP1559ScriptArtifact));
        EIP1559ScriptArtifact memory artifact;
        artifact.libraries = rawArtifact.libraries;
        artifact.path = rawArtifact.path;
        artifact.timestamp = rawArtifact.timestamp;
        artifact.pending = rawArtifact.pending;
        artifact.txReturns = rawArtifact.txReturns;
        artifact.receipts = rawToConvertedReceipts(rawArtifact.receipts);
        artifact.transactions = rawToConvertedEIPTx1559s(rawArtifact.transactions);
        return artifact;
    }

    function rawToConvertedEIPTx1559s(RawTx1559[] memory rawTxs) internal pure virtual returns (Tx1559[] memory) {
        Tx1559[] memory txs = new Tx1559[](rawTxs.length);
        for (uint256 i; i < rawTxs.length; i++) {
            txs[i] = rawToConvertedEIPTx1559(rawTxs[i]);
        }
        return txs;
    }

    function rawToConvertedEIPTx1559(RawTx1559 memory rawTx) internal pure virtual returns (Tx1559 memory) {
        Tx1559 memory transaction;
        transaction.arguments = rawTx.arguments;
        transaction.contractName = rawTx.contractName;
        transaction.functionSig = rawTx.functionSig;
        transaction.hash = rawTx.hash;
        transaction.txDetail = rawToConvertedEIP1559Detail(rawTx.txDetail);
        transaction.opcode = rawTx.opcode;
        return transaction;
    }

    function rawToConvertedEIP1559Detail(RawTx1559Detail memory rawDetail)
        internal
        pure
        virtual
        returns (Tx1559Detail memory)
    {
        Tx1559Detail memory txDetail;
        txDetail.data = rawDetail.data;
        txDetail.from = rawDetail.from;
        txDetail.to = rawDetail.to;
        txDetail.nonce = _bytesToUint(rawDetail.nonce);
        txDetail.txType = _bytesToUint(rawDetail.txType);
        txDetail.value = _bytesToUint(rawDetail.value);
        txDetail.gas = _bytesToUint(rawDetail.gas);
        txDetail.accessList = rawDetail.accessList;
        return txDetail;
    }

    function readTx1559s(string memory path) internal view virtual returns (Tx1559[] memory) {
        string memory deployData = vm.readFile(path);
        bytes memory parsedDeployData = vm.parseJson(deployData, ".transactions");
        RawTx1559[] memory rawTxs = abi.decode(parsedDeployData, (RawTx1559[]));
        return rawToConvertedEIPTx1559s(rawTxs);
    }

    function readTx1559(string memory path, uint256 index) internal view virtual returns (Tx1559 memory) {
        string memory deployData = vm.readFile(path);
        string memory key = string(abi.encodePacked(".transactions[", vm.toString(index), "]"));
        bytes memory parsedDeployData = vm.parseJson(deployData, key);
        RawTx1559 memory rawTx = abi.decode(parsedDeployData, (RawTx1559));
        return rawToConvertedEIPTx1559(rawTx);
    }

    // Analogous to readTransactions, but for receipts.
    function readReceipts(string memory path) internal view virtual returns (Receipt[] memory) {
        string memory deployData = vm.readFile(path);
        bytes memory parsedDeployData = vm.parseJson(deployData, ".receipts");
        RawReceipt[] memory rawReceipts = abi.decode(parsedDeployData, (RawReceipt[]));
        return rawToConvertedReceipts(rawReceipts);
    }

    function readReceipt(string memory path, uint256 index) internal view virtual returns (Receipt memory) {
        string memory deployData = vm.readFile(path);
        string memory key = string(abi.encodePacked(".receipts[", vm.toString(index), "]"));
        bytes memory parsedDeployData = vm.parseJson(deployData, key);
        RawReceipt memory rawReceipt = abi.decode(parsedDeployData, (RawReceipt));
        return rawToConvertedReceipt(rawReceipt);
    }

    function rawToConvertedReceipts(RawReceipt[] memory rawReceipts) internal pure virtual returns (Receipt[] memory) {
        Receipt[] memory receipts = new Receipt[](rawReceipts.length);
        for (uint256 i; i < rawReceipts.length; i++) {
            receipts[i] = rawToConvertedReceipt(rawReceipts[i]);
        }
        return receipts;
    }

    function rawToConvertedReceipt(RawReceipt memory rawReceipt) internal pure virtual returns (Receipt memory) {
        Receipt memory receipt;
        receipt.blockHash = rawReceipt.blockHash;
        receipt.to = rawReceipt.to;
        receipt.from = rawReceipt.from;
        receipt.contractAddress = rawReceipt.contractAddress;
        receipt.effectiveGasPrice = _bytesToUint(rawReceipt.effectiveGasPrice);
        receipt.cumulativeGasUsed = _bytesToUint(rawReceipt.cumulativeGasUsed);
        receipt.gasUsed = _bytesToUint(rawReceipt.gasUsed);
        receipt.status = _bytesToUint(rawReceipt.status);
        receipt.transactionIndex = _bytesToUint(rawReceipt.transactionIndex);
        receipt.blockNumber = _bytesToUint(rawReceipt.blockNumber);
        receipt.logs = rawToConvertedReceiptLogs(rawReceipt.logs);
        receipt.logsBloom = rawReceipt.logsBloom;
        receipt.transactionHash = rawReceipt.transactionHash;
        return receipt;
    }

    function rawToConvertedReceiptLogs(RawReceiptLog[] memory rawLogs)
        internal
        pure
        virtual
        returns (ReceiptLog[] memory)
    {
        ReceiptLog[] memory logs = new ReceiptLog[](rawLogs.length);
        for (uint256 i; i < rawLogs.length; i++) {
            logs[i].logAddress = rawLogs[i].logAddress;
            logs[i].blockHash = rawLogs[i].blockHash;
            logs[i].blockNumber = _bytesToUint(rawLogs[i].blockNumber);
            logs[i].data = rawLogs[i].data;
            logs[i].logIndex = _bytesToUint(rawLogs[i].logIndex);
            logs[i].topics = rawLogs[i].topics;
            logs[i].transactionIndex = _bytesToUint(rawLogs[i].transactionIndex);
            logs[i].transactionLogIndex = _bytesToUint(rawLogs[i].transactionLogIndex);
            logs[i].removed = rawLogs[i].removed;
        }
        return logs;
    }

    // Deploy a contract by fetching the contract bytecode from
    // the artifacts directory
    // e.g. `deployCode(code, abi.encode(arg1,arg2,arg3))`
    function deployCode(string memory what, bytes memory args) internal virtual returns (address addr) {
        bytes memory bytecode = abi.encodePacked(vm.getCode(what), args);
        /// @solidity memory-safe-assembly
        assembly {
            addr := create(0, add(bytecode, 0x20), mload(bytecode))
        }

        require(addr != address(0), "StdCheats deployCode(string,bytes): Deployment failed.");
    }

    function deployCode(string memory what) internal virtual returns (address addr) {
        bytes memory bytecode = vm.getCode(what);
        /// @solidity memory-safe-assembly
        assembly {
            addr := create(0, add(bytecode, 0x20), mload(bytecode))
        }

        require(addr != address(0), "StdCheats deployCode(string): Deployment failed.");
    }

    /// @dev deploy contract with value on construction
    function deployCode(string memory what, bytes memory args, uint256 val) internal virtual returns (address addr) {
        bytes memory bytecode = abi.encodePacked(vm.getCode(what), args);
        /// @solidity memory-safe-assembly
        assembly {
            addr := create(val, add(bytecode, 0x20), mload(bytecode))
        }

        require(addr != address(0), "StdCheats deployCode(string,bytes,uint256): Deployment failed.");
    }

    function deployCode(string memory what, uint256 val) internal virtual returns (address addr) {
        bytes memory bytecode = vm.getCode(what);
        /// @solidity memory-safe-assembly
        assembly {
            addr := create(val, add(bytecode, 0x20), mload(bytecode))
        }

        require(addr != address(0), "StdCheats deployCode(string,uint256): Deployment failed.");
    }

    // creates a labeled address and the corresponding private key
    function makeAddrAndKey(string memory name) internal virtual returns (address addr, uint256 privateKey) {
        privateKey = uint256(keccak256(abi.encodePacked(name)));
        addr = vm.addr(privateKey);
        vm.label(addr, name);
    }

    // creates a labeled address
    function makeAddr(string memory name) internal virtual returns (address addr) {
        (addr,) = makeAddrAndKey(name);
    }

    // Destroys an account immediately, sending the balance to beneficiary.
    // Destroying means: balance will be zero, code will be empty, and nonce will be 0
    // This is similar to selfdestruct but not identical: selfdestruct destroys code and nonce
    // only after tx ends, this will run immediately.
    function destroyAccount(address who, address beneficiary) internal virtual {
        uint256 currBalance = who.balance;
        vm.etch(who, abi.encode());
        vm.deal(who, 0);
        vm.resetNonce(who);

        uint256 beneficiaryBalance = beneficiary.balance;
        vm.deal(beneficiary, currBalance + beneficiaryBalance);
    }

    // creates a struct containing both a labeled address and the corresponding private key
    function makeAccount(string memory name) internal virtual returns (Account memory account) {
        (account.addr, account.key) = makeAddrAndKey(name);
    }

    function deriveRememberKey(string memory mnemonic, uint32 index)
        internal
        virtual
        returns (address who, uint256 privateKey)
    {
        privateKey = vm.deriveKey(mnemonic, index);
        who = vm.rememberKey(privateKey);
    }

    function _bytesToUint(bytes memory b) private pure returns (uint256) {
        require(b.length <= 32, "StdCheats _bytesToUint(bytes): Bytes length exceeds 32.");
        return abi.decode(abi.encodePacked(new bytes(32 - b.length), b), (uint256));
    }

    function isFork() internal view virtual returns (bool status) {
        try vm.activeFork() {
            status = true;
        } catch (bytes memory) {}
    }

    modifier skipWhenForking() {
        if (!isFork()) {
            _;
        }
    }

    modifier skipWhenNotForking() {
        if (isFork()) {
            _;
        }
    }

    modifier noGasMetering() {
        vm.pauseGasMetering();
        // To prevent turning gas monitoring back on with nested functions that use this modifier,
        // we check if gasMetering started in the off position. If it did, we don't want to turn
        // it back on until we exit the top level function that used the modifier
        //
        // i.e. funcA() noGasMetering { funcB() }, where funcB has noGasMetering as well.
        // funcA will have `gasStartedOff` as false, funcB will have it as true,
        // so we only turn metering back on at the end of the funcA
        bool gasStartedOff = gasMeteringOff;
        gasMeteringOff = true;

        _;

        // if gas metering was on when this modifier was called, turn it back on at the end
        if (!gasStartedOff) {
            gasMeteringOff = false;
            vm.resumeGasMetering();
        }
    }

    // We use this complex approach of `_viewChainId` and `_pureChainId` to ensure there are no
    // compiler warnings when accessing chain ID in any solidity version supported by forge-std. We
    // can't simply access the chain ID in a normal view or pure function because the solc View Pure
    // Checker changed `chainid` from pure to view in 0.8.0.
    function _viewChainId() private view returns (uint256 chainId) {
        // Assembly required since `block.chainid` was introduced in 0.8.0.
        assembly {
            chainId := chainid()
        }

        address(this); // Silence warnings in older Solc versions.
    }

    function _pureChainId() private pure returns (uint256 chainId) {
        function() internal view returns (uint256) fnIn = _viewChainId;
        function() internal pure returns (uint256) pureChainId;
        assembly {
            pureChainId := fnIn
        }
        chainId = pureChainId();
    }
}

// Wrappers around cheatcodes to avoid footguns
abstract contract StdCheats is StdCheatsSafe {
    using stdStorage for StdStorage;

    StdStorage private stdstore;
    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));
    address private constant CONSOLE2_ADDRESS = 0x000000000000000000636F6e736F6c652e6c6f67;

    // Skip forward or rewind time by the specified number of seconds
    function skip(uint256 time) internal virtual {
        vm.warp(block.timestamp + time);
    }

    function rewind(uint256 time) internal virtual {
        vm.warp(block.timestamp - time);
    }

    // Setup a prank from an address that has some ether
    function hoax(address msgSender) internal virtual {
        vm.deal(msgSender, 1 << 128);
        vm.prank(msgSender);
    }

    function hoax(address msgSender, uint256 give) internal virtual {
        vm.deal(msgSender, give);
        vm.prank(msgSender);
    }

    function hoax(address msgSender, address origin) internal virtual {
        vm.deal(msgSender, 1 << 128);
        vm.prank(msgSender, origin);
    }

    function hoax(address msgSender, address origin, uint256 give) internal virtual {
        vm.deal(msgSender, give);
        vm.prank(msgSender, origin);
    }

    // Start perpetual prank from an address that has some ether
    function startHoax(address msgSender) internal virtual {
        vm.deal(msgSender, 1 << 128);
        vm.startPrank(msgSender);
    }

    function startHoax(address msgSender, uint256 give) internal virtual {
        vm.deal(msgSender, give);
        vm.startPrank(msgSender);
    }

    // Start perpetual prank from an address that has some ether
    // tx.origin is set to the origin parameter
    function startHoax(address msgSender, address origin) internal virtual {
        vm.deal(msgSender, 1 << 128);
        vm.startPrank(msgSender, origin);
    }

    function startHoax(address msgSender, address origin, uint256 give) internal virtual {
        vm.deal(msgSender, give);
        vm.startPrank(msgSender, origin);
    }

    function changePrank(address msgSender) internal virtual {
        console2_log_StdCheats("changePrank is deprecated. Please use vm.startPrank instead.");
        vm.stopPrank();
        vm.startPrank(msgSender);
    }

    function changePrank(address msgSender, address txOrigin) internal virtual {
        vm.stopPrank();
        vm.startPrank(msgSender, txOrigin);
    }

    // The same as Vm's `deal`
    // Use the alternative signature for ERC20 tokens
    function deal(address to, uint256 give) internal virtual {
        vm.deal(to, give);
    }

    // Set the balance of an account for any ERC20 token
    // Use the alternative signature to update `totalSupply`
    function deal(address token, address to, uint256 give) internal virtual {
        deal(token, to, give, false);
    }

    // Set the balance of an account for any ERC1155 token
    // Use the alternative signature to update `totalSupply`
    function dealERC1155(address token, address to, uint256 id, uint256 give) internal virtual {
        dealERC1155(token, to, id, give, false);
    }

    function deal(address token, address to, uint256 give, bool adjust) internal virtual {
        // get current balance
        (, bytes memory balData) = token.staticcall(abi.encodeWithSelector(0x70a08231, to));
        uint256 prevBal = abi.decode(balData, (uint256));

        // update balance
        stdstore.target(token).sig(0x70a08231).with_key(to).checked_write(give);

        // update total supply
        if (adjust) {
            (, bytes memory totSupData) = token.staticcall(abi.encodeWithSelector(0x18160ddd));
            uint256 totSup = abi.decode(totSupData, (uint256));
            if (give < prevBal) {
                totSup -= (prevBal - give);
            } else {
                totSup += (give - prevBal);
            }
            stdstore.target(token).sig(0x18160ddd).checked_write(totSup);
        }
    }

    function dealERC1155(address token, address to, uint256 id, uint256 give, bool adjust) internal virtual {
        // get current balance
        (, bytes memory balData) = token.staticcall(abi.encodeWithSelector(0x00fdd58e, to, id));
        uint256 prevBal = abi.decode(balData, (uint256));

        // update balance
        stdstore.target(token).sig(0x00fdd58e).with_key(to).with_key(id).checked_write(give);

        // update total supply
        if (adjust) {
            (, bytes memory totSupData) = token.staticcall(abi.encodeWithSelector(0xbd85b039, id));
            require(
                totSupData.length != 0,
                "StdCheats deal(address,address,uint,uint,bool): target contract is not ERC1155Supply."
            );
            uint256 totSup = abi.decode(totSupData, (uint256));
            if (give < prevBal) {
                totSup -= (prevBal - give);
            } else {
                totSup += (give - prevBal);
            }
            stdstore.target(token).sig(0xbd85b039).with_key(id).checked_write(totSup);
        }
    }

    function dealERC721(address token, address to, uint256 id) internal virtual {
        // check if token id is already minted and the actual owner.
        (bool successMinted, bytes memory ownerData) = token.staticcall(abi.encodeWithSelector(0x6352211e, id));
        require(successMinted, "StdCheats deal(address,address,uint,bool): id not minted.");

        // get owner current balance
        (, bytes memory fromBalData) =
            token.staticcall(abi.encodeWithSelector(0x70a08231, abi.decode(ownerData, (address))));
        uint256 fromPrevBal = abi.decode(fromBalData, (uint256));

        // get new user current balance
        (, bytes memory toBalData) = token.staticcall(abi.encodeWithSelector(0x70a08231, to));
        uint256 toPrevBal = abi.decode(toBalData, (uint256));

        // update balances
        stdstore.target(token).sig(0x70a08231).with_key(abi.decode(ownerData, (address))).checked_write(--fromPrevBal);
        stdstore.target(token).sig(0x70a08231).with_key(to).checked_write(++toPrevBal);

        // update owner
        stdstore.target(token).sig(0x6352211e).with_key(id).checked_write(to);
    }

    function deployCodeTo(string memory what, address where) internal virtual {
        deployCodeTo(what, "", 0, where);
    }

    function deployCodeTo(string memory what, bytes memory args, address where) internal virtual {
        deployCodeTo(what, args, 0, where);
    }

    function deployCodeTo(string memory what, bytes memory args, uint256 value, address where) internal virtual {
        bytes memory creationCode = vm.getCode(what);
        vm.etch(where, abi.encodePacked(creationCode, args));
        (bool success, bytes memory runtimeBytecode) = where.call{value: value}("");
        require(success, "StdCheats deployCodeTo(string,bytes,uint256,address): Failed to create runtime bytecode.");
        vm.etch(where, runtimeBytecode);
    }

    // Used to prevent the compilation of console, which shortens the compilation time when console is not used elsewhere.
    function console2_log_StdCheats(string memory p0) private view {
        (bool status,) = address(CONSOLE2_ADDRESS).staticcall(abi.encodeWithSignature("log(string)", p0));
        status;
    }
}

// OpenZeppelin Contracts (last updated v5.0.0) (proxy/ERC1967/ERC1967Utils.sol)

/**
 * @dev This abstract contract provides getters and event emitting update functions for
 * https://eips.ethereum.org/EIPS/eip-1967[EIP1967] slots.
 */
library ERC1967Utils {
    // We re-declare ERC-1967 events here because they can't be used directly from IERC1967.
    // This will be fixed in Solidity 0.8.21. At that point we should remove these events.
    /**
     * @dev Emitted when the implementation is upgraded.
     */
    event Upgraded(address indexed implementation);

    /**
     * @dev Emitted when the admin account has changed.
     */
    event AdminChanged(address previousAdmin, address newAdmin);

    /**
     * @dev Emitted when the beacon is changed.
     */
    event BeaconUpgraded(address indexed beacon);

    /**
     * @dev Storage slot with the address of the current implementation.
     * This is the keccak-256 hash of "eip1967.proxy.implementation" subtracted by 1.
     */
    // solhint-disable-next-line private-vars-leading-underscore
    bytes32 internal constant IMPLEMENTATION_SLOT = 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;

    /**
     * @dev The `implementation` of the proxy is invalid.
     */
    error ERC1967InvalidImplementation(address implementation);

    /**
     * @dev The `admin` of the proxy is invalid.
     */
    error ERC1967InvalidAdmin(address admin);

    /**
     * @dev The `beacon` of the proxy is invalid.
     */
    error ERC1967InvalidBeacon(address beacon);

    /**
     * @dev An upgrade function sees `msg.value > 0` that may be lost.
     */
    error ERC1967NonPayable();

    /**
     * @dev Returns the current implementation address.
     */
    function getImplementation() internal view returns (address) {
        return StorageSlot.getAddressSlot(IMPLEMENTATION_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 implementation slot.
     */
    function _setImplementation(address newImplementation) private {
        if (newImplementation.code.length == 0) {
            revert ERC1967InvalidImplementation(newImplementation);
        }
        StorageSlot.getAddressSlot(IMPLEMENTATION_SLOT).value = newImplementation;
    }

    /**
     * @dev Performs implementation upgrade with additional setup call if data is nonempty.
     * This function is payable only if the setup call is performed, otherwise `msg.value` is rejected
     * to avoid stuck value in the contract.
     *
     * Emits an {IERC1967-Upgraded} event.
     */
    function upgradeToAndCall(address newImplementation, bytes memory data) internal {
        _setImplementation(newImplementation);
        emit Upgraded(newImplementation);

        if (data.length > 0) {
            Address.functionDelegateCall(newImplementation, data);
        } else {
            _checkNonPayable();
        }
    }

    /**
     * @dev Storage slot with the admin of the contract.
     * This is the keccak-256 hash of "eip1967.proxy.admin" subtracted by 1.
     */
    // solhint-disable-next-line private-vars-leading-underscore
    bytes32 internal constant ADMIN_SLOT = 0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103;

    /**
     * @dev Returns the current admin.
     *
     * TIP: To get this value clients can read directly from the storage slot shown below (specified by EIP1967) using
     * the https://eth.wiki/json-rpc/API#eth_getstorageat[`eth_getStorageAt`] RPC call.
     * `0xb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d6103`
     */
    function getAdmin() internal view returns (address) {
        return StorageSlot.getAddressSlot(ADMIN_SLOT).value;
    }

    /**
     * @dev Stores a new address in the EIP1967 admin slot.
     */
    function _setAdmin(address newAdmin) private {
        if (newAdmin == address(0)) {
            revert ERC1967InvalidAdmin(address(0));
        }
        StorageSlot.getAddressSlot(ADMIN_SLOT).value = newAdmin;
    }

    /**
     * @dev Changes the admin of the proxy.
     *
     * Emits an {IERC1967-AdminChanged} event.
     */
    function changeAdmin(address newAdmin) internal {
        emit AdminChanged(getAdmin(), newAdmin);
        _setAdmin(newAdmin);
    }

    /**
     * @dev The storage slot of the UpgradeableBeacon contract which defines the implementation for this proxy.
     * This is the keccak-256 hash of "eip1967.proxy.beacon" subtracted by 1.
     */
    // solhint-disable-next-line private-vars-leading-underscore
    bytes32 internal constant BEACON_SLOT = 0xa3f0ad74e5423aebfd80d3ef4346578335a9a72aeaee59ff6cb3582b35133d50;

    /**
     * @dev Returns the current beacon.
     */
    function getBeacon() internal view returns (address) {
        return StorageSlot.getAddressSlot(BEACON_SLOT).value;
    }

    /**
     * @dev Stores a new beacon in the EIP1967 beacon slot.
     */
    function _setBeacon(address newBeacon) private {
        if (newBeacon.code.length == 0) {
            revert ERC1967InvalidBeacon(newBeacon);
        }

        StorageSlot.getAddressSlot(BEACON_SLOT).value = newBeacon;

        address beaconImplementation = IBeacon(newBeacon).implementation();
        if (beaconImplementation.code.length == 0) {
            revert ERC1967InvalidImplementation(beaconImplementation);
        }
    }

    /**
     * @dev Change the beacon and trigger a setup call if data is nonempty.
     * This function is payable only if the setup call is performed, otherwise `msg.value` is rejected
     * to avoid stuck value in the contract.
     *
     * Emits an {IERC1967-BeaconUpgraded} event.
     *
     * CAUTION: Invoking this function has no effect on an instance of {BeaconProxy} since v5, since
     * it uses an immutable beacon without looking at the value of the ERC-1967 beacon slot for
     * efficiency.
     */
    function upgradeBeaconToAndCall(address newBeacon, bytes memory data) internal {
        _setBeacon(newBeacon);
        emit BeaconUpgraded(newBeacon);

        if (data.length > 0) {
            Address.functionDelegateCall(IBeacon(newBeacon).implementation(), data);
        } else {
            _checkNonPayable();
        }
    }

    /**
     * @dev Reverts if `msg.value` is not zero. It can be used to avoid `msg.value` stuck in the contract
     * if an upgrade doesn't perform an initialization call.
     */
    function _checkNonPayable() private {
        if (msg.value > 0) {
            revert ERC1967NonPayable();
        }
    }
}

// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/utils/SafeERC20.sol)

/**
 * @title SafeERC20
 * @dev Wrappers around ERC20 operations that throw on failure (when the token
 * contract returns false). Tokens that return no value (and instead revert or
 * throw on failure) are also supported, non-reverting calls are assumed to be
 * successful.
 * To use this library you can add a `using SafeERC20 for IERC20;` statement to your contract,
 * which allows you to call the safe operations as `token.safeTransfer(...)`, etc.
 */
library SafeERC20 {
    using Address for address;

    /**
     * @dev An operation with an ERC20 token failed.
     */
    error SafeERC20FailedOperation(address token);

    /**
     * @dev Indicates a failed `decreaseAllowance` request.
     */
    error SafeERC20FailedDecreaseAllowance(address spender, uint256 currentAllowance, uint256 requestedDecrease);

    /**
     * @dev Transfer `value` amount of `token` from the calling contract to `to`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeTransfer(IERC20_1 token, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transfer, (to, value)));
    }

    /**
     * @dev Transfer `value` amount of `token` from `from` to `to`, spending the approval given by `from` to the
     * calling contract. If `token` returns no value, non-reverting calls are assumed to be successful.
     */
    function safeTransferFrom(IERC20_1 token, address from, address to, uint256 value) internal {
        _callOptionalReturn(token, abi.encodeCall(token.transferFrom, (from, to, value)));
    }

    /**
     * @dev Increase the calling contract's allowance toward `spender` by `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful.
     */
    function safeIncreaseAllowance(IERC20_1 token, address spender, uint256 value) internal {
        uint256 oldAllowance = token.allowance(address(this), spender);
        forceApprove(token, spender, oldAllowance + value);
    }

    /**
     * @dev Decrease the calling contract's allowance toward `spender` by `requestedDecrease`. If `token` returns no
     * value, non-reverting calls are assumed to be successful.
     */
    function safeDecreaseAllowance(IERC20_1 token, address spender, uint256 requestedDecrease) internal {
        unchecked {
            uint256 currentAllowance = token.allowance(address(this), spender);
            if (currentAllowance < requestedDecrease) {
                revert SafeERC20FailedDecreaseAllowance(spender, currentAllowance, requestedDecrease);
            }
            forceApprove(token, spender, currentAllowance - requestedDecrease);
        }
    }

    /**
     * @dev Set the calling contract's allowance toward `spender` to `value`. If `token` returns no value,
     * non-reverting calls are assumed to be successful. Meant to be used with tokens that require the approval
     * to be set to zero before setting it to a non-zero value, such as USDT.
     */
    function forceApprove(IERC20_1 token, address spender, uint256 value) internal {
        bytes memory approvalCall = abi.encodeCall(token.approve, (spender, value));

        if (!_callOptionalReturnBool(token, approvalCall)) {
            _callOptionalReturn(token, abi.encodeCall(token.approve, (spender, 0)));
            _callOptionalReturn(token, approvalCall);
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     */
    function _callOptionalReturn(IERC20_1 token, bytes memory data) private {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We use {Address-functionCall} to perform this call, which verifies that
        // the target address contains contract code and also asserts for success in the low-level call.

        bytes memory returndata = address(token).functionCall(data);
        if (returndata.length != 0 && !abi.decode(returndata, (bool))) {
            revert SafeERC20FailedOperation(address(token));
        }
    }

    /**
     * @dev Imitates a Solidity high-level call (i.e. a regular function call to a contract), relaxing the requirement
     * on the return value: the return value is optional (but if data is returned, it must not be false).
     * @param token The token targeted by the call.
     * @param data The call data (encoded using abi.encode or one of its variants).
     *
     * This is a variant of {_callOptionalReturn} that silents catches all reverts and returns a bool instead.
     */
    function _callOptionalReturnBool(IERC20_1 token, bytes memory data) private returns (bool) {
        // We need to perform a low level call here, to bypass Solidity's return data size checking mechanism, since
        // we're implementing it ourselves. We cannot use {Address-functionCall} here since this should return false
        // and not revert is the subcall reverts.

        (bool success, bytes memory returndata) = address(token).call(data);
        return success && (returndata.length == 0 || abi.decode(returndata, (bool))) && address(token).code.length > 0;
    }
}

struct MessagingParams {
    uint32 dstEid;
    bytes32 receiver;
    bytes message;
    bytes options;
    bool payInLzToken;
}

struct MessagingReceipt {
    bytes32 guid;
    uint64 nonce;
    MessagingFee fee;
}

struct MessagingFee {
    uint256 nativeFee;
    uint256 lzTokenFee;
}

struct Origin {
    uint32 srcEid;
    bytes32 sender;
    uint64 nonce;
}

interface ILayerZeroEndpointV2 is IMessageLibManager, IMessagingComposer, IMessagingChannel, IMessagingContext {
    event PacketSent(bytes encodedPayload, bytes options, address sendLibrary);

    event PacketVerified(Origin origin, address receiver, bytes32 payloadHash);

    event PacketDelivered(Origin origin, address receiver);

    event LzReceiveAlert(
        address indexed receiver,
        address indexed executor,
        Origin origin,
        bytes32 guid,
        uint256 gas,
        uint256 value,
        bytes message,
        bytes extraData,
        bytes reason
    );

    event LzTokenSet(address token);

    event DelegateSet(address sender, address delegate);

    function quote(MessagingParams calldata _params, address _sender) external view returns (MessagingFee memory);

    function send(
        MessagingParams calldata _params,
        address _refundAddress
    ) external payable returns (MessagingReceipt memory);

    function verify(Origin calldata _origin, address _receiver, bytes32 _payloadHash) external;

    function verifiable(Origin calldata _origin, address _receiver) external view returns (bool);

    function initializable(Origin calldata _origin, address _receiver) external view returns (bool);

    function lzReceive(
        Origin calldata _origin,
        address _receiver,
        bytes32 _guid,
        bytes calldata _message,
        bytes calldata _extraData
    ) external payable;

    // oapp can burn messages partially by calling this function with its own business logic if messages are verified in order
    function clear(address _oapp, Origin calldata _origin, bytes32 _guid, bytes calldata _message) external;

    function setLzToken(address _lzToken) external;

    function lzToken() external view returns (address);

    function nativeToken() external view returns (address);

    function setDelegate(address _delegate) external;
}

/**
 * @title OAppOptionsType3
 * @dev Abstract contract implementing the IOAppOptionsType3 interface with type 3 options.
 */
abstract contract OAppOptionsType3Upgradeable is IOAppOptionsType3, OwnableUpgradeable {
    struct OAppOptionsType3Storage {
        // @dev The "msgType" should be defined in the child contract.
        mapping(uint32 => mapping(uint16 => bytes)) enforcedOptions;
    }

    // keccak256(abi.encode(uint256(keccak256("layerzerov2.storage.oappoptionstype3")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant OAppOptionsType3StorageLocation =
        0x8d2bda5d9f6ffb5796910376005392955773acee5548d0fcdb10e7c264ea0000;

    uint16 internal constant OPTION_TYPE_3 = 3;

    function _getOAppOptionsType3Storage() internal pure returns (OAppOptionsType3Storage storage $) {
        assembly {
            $.slot := OAppOptionsType3StorageLocation
        }
    }

    /**
     * @dev Ownable is not initialized here on purpose. It should be initialized in the child contract to
     * accommodate the different version of Ownable.
     */
    function __OAppOptionsType3_init() internal onlyInitializing {}

    function __OAppOptionsType3_init_unchained() internal onlyInitializing {}

    function enforcedOptions(uint32 _eid, uint16 _msgType) public view returns (bytes memory) {
        OAppOptionsType3Storage storage $ = _getOAppOptionsType3Storage();
        return $.enforcedOptions[_eid][_msgType];
    }

    /**
     * @dev Sets the enforced options for specific endpoint and message type combinations.
     * @param _enforcedOptions An array of EnforcedOptionParam structures specifying enforced options.
     *
     * @dev Only the owner/admin of the OApp can call this function.
     * @dev Provides a way for the OApp to enforce things like paying for PreCrime, AND/OR minimum dst lzReceive gas amounts etc.
     * @dev These enforced options can vary as the potential options/execution on the remote may differ as per the msgType.
     * eg. Amount of lzReceive() gas necessary to deliver a lzCompose() message adds overhead you dont want to pay
     * if you are only making a standard LayerZero message ie. lzReceive() WITHOUT sendCompose().
     */
    function setEnforcedOptions(EnforcedOptionParam[] calldata _enforcedOptions) public virtual onlyOwner {
        OAppOptionsType3Storage storage $ = _getOAppOptionsType3Storage();
        for (uint256 i = 0; i < _enforcedOptions.length; i++) {
            // @dev Enforced options are only available for optionType 3, as type 1 and 2 dont support combining.
            _assertOptionsType3(_enforcedOptions[i].options);
            $.enforcedOptions[_enforcedOptions[i].eid][_enforcedOptions[i].msgType] = _enforcedOptions[i].options;
        }

        emit EnforcedOptionSet(_enforcedOptions);
    }

    /**
     * @notice Combines options for a given endpoint and message type.
     * @param _eid The endpoint ID.
     * @param _msgType The OAPP message type.
     * @param _extraOptions Additional options passed by the caller.
     * @return options The combination of caller specified options AND enforced options.
     *
     * @dev If there is an enforced lzReceive option:
     * - {gasLimit: 200k, msg.value: 1 ether} AND a caller supplies a lzReceive option: {gasLimit: 100k, msg.value: 0.5 ether}
     * - The resulting options will be {gasLimit: 300k, msg.value: 1.5 ether} when the message is executed on the remote lzReceive() function.
     * @dev This presence of duplicated options is handled off-chain in the verifier/executor.
     */
    function combineOptions(
        uint32 _eid,
        uint16 _msgType,
        bytes calldata _extraOptions
    ) public view virtual returns (bytes memory) {
        OAppOptionsType3Storage storage $ = _getOAppOptionsType3Storage();
        bytes memory enforced = $.enforcedOptions[_eid][_msgType];

        // No enforced options, pass whatever the caller supplied, even if it's empty or legacy type 1/2 options.
        if (enforced.length == 0) return _extraOptions;

        // No caller options, return enforced
        if (_extraOptions.length == 0) return enforced;

        // @dev If caller provided _extraOptions, must be type 3 as its the ONLY type that can be combined.
        if (_extraOptions.length >= 2) {
            _assertOptionsType3(_extraOptions);
            // @dev Remove the first 2 bytes containing the type from the _extraOptions and combine with enforced.
            return bytes.concat(enforced, _extraOptions[2:]);
        }

        // No valid set of options was found.
        revert InvalidOptions(_extraOptions);
    }

    /**
     * @dev Internal function to assert that options are of type 3.
     * @param _options The options to be checked.
     */
    function _assertOptionsType3(bytes calldata _options) internal pure virtual {
        uint16 optionsType = uint16(bytes2(_options[0:2]));
        if (optionsType != OPTION_TYPE_3) revert InvalidOptions(_options);
    }
}

interface ILayerZeroReceiver {
    function allowInitializePath(Origin calldata _origin) external view returns (bool);

    function nextNonce(uint32 _eid, bytes32 _sender) external view returns (uint64);

    function lzReceive(
        Origin calldata _origin,
        bytes32 _guid,
        bytes calldata _message,
        address _executor,
        bytes calldata _extraData
    ) external payable;
}

// OpenZeppelin Contracts (last updated v5.0.0) (proxy/ERC1967/ERC1967Proxy.sol)

/**
 * @dev This contract implements an upgradeable proxy. It is upgradeable because calls are delegated to an
 * implementation address that can be changed. This address is stored in storage in the location specified by
 * https://eips.ethereum.org/EIPS/eip-1967[EIP1967], so that it doesn't conflict with the storage layout of the
 * implementation behind the proxy.
 */
contract ERC1967Proxy is Proxy {
    /**
     * @dev Initializes the upgradeable proxy with an initial implementation specified by `implementation`.
     *
     * If `_data` is nonempty, it's used as data in a delegate call to `implementation`. This will typically be an
     * encoded function call, and allows initializing the storage of the proxy like a Solidity constructor.
     *
     * Requirements:
     *
     * - If `data` is empty, `msg.value` must be zero.
     */
    constructor(address implementation, bytes memory _data) payable {
        ERC1967Utils.upgradeToAndCall(implementation, _data);
    }

    /**
     * @dev Returns the current implementation address.
     *
     * TIP: To get this value clients can read directly from the storage slot shown below (specified by EIP1967) using
     * the https://eth.wiki/json-rpc/API#eth_getstorageat[`eth_getStorageAt`] RPC call.
     * `0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc`
     */
    function _implementation() internal view virtual override returns (address) {
        return ERC1967Utils.getImplementation();
    }
}

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

// OpenZeppelin Contracts (last updated v5.0.0) (token/ERC20/ERC20.sol)

/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.openzeppelin.com/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * The default value of {decimals} is 18. To change this, you should override
 * this function so it returns a different value.
 *
 * We have followed general OpenZeppelin Contracts guidelines: functions revert
 * instead returning `false` on failure. This behavior is nonetheless
 * conventional and does not conflict with the expectations of ERC20
 * applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 */
abstract contract ERC20Upgradeable is Initializable, ContextUpgradeable, IERC20_1, IERC20Metadata, IERC20Errors {
    /// @custom:storage-location erc7201:openzeppelin.storage.ERC20
    struct ERC20Storage {
        mapping(address account => uint256) _balances;

        mapping(address account => mapping(address spender => uint256)) _allowances;

        uint256 _totalSupply;

        string _name;
        string _symbol;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.ERC20")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ERC20StorageLocation = 0x52c63247e1f47db19d5ce0460030c497f067ca4cebf71ba98eeadabe20bace00;

    function _getERC20Storage() private pure returns (ERC20Storage storage $) {
        assembly {
            $.slot := ERC20StorageLocation
        }
    }

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    function __ERC20_init(string memory name_, string memory symbol_) internal onlyInitializing {
        __ERC20_init_unchained(name_, symbol_);
    }

    function __ERC20_init_unchained(string memory name_, string memory symbol_) internal onlyInitializing {
        ERC20Storage storage $ = _getERC20Storage();
        $._name = name_;
        $._symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual returns (string memory) {
        ERC20Storage storage $ = _getERC20Storage();
        return $._name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual returns (string memory) {
        ERC20Storage storage $ = _getERC20Storage();
        return $._symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5.05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the default value returned by this function, unless
     * it's overridden.
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view virtual returns (uint8) {
        return 18;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual returns (uint256) {
        ERC20Storage storage $ = _getERC20Storage();
        return $._totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual returns (uint256) {
        ERC20Storage storage $ = _getERC20Storage();
        return $._balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `value`.
     */
    function transfer(address to, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, value);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual returns (uint256) {
        ERC20Storage storage $ = _getERC20Storage();
        return $._allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `value` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, value);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20}.
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `value`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `value`.
     */
    function transferFrom(address from, address to, uint256 value) public virtual returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, value);
        _transfer(from, to, value);
        return true;
    }

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _transfer(address from, address to, uint256 value) internal {
        if (from == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        if (to == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(from, to, value);
    }

    /**
     * @dev Transfers a `value` amount of tokens from `from` to `to`, or alternatively mints (or burns) if `from`
     * (or `to`) is the zero address. All customizations to transfers, mints, and burns should be done by overriding
     * this function.
     *
     * Emits a {Transfer} event.
     */
    function _update(address from, address to, uint256 value) internal virtual {
        ERC20Storage storage $ = _getERC20Storage();
        if (from == address(0)) {
            // Overflow check required: The rest of the code assumes that totalSupply never overflows
            $._totalSupply += value;
        } else {
            uint256 fromBalance = $._balances[from];
            if (fromBalance < value) {
                revert ERC20InsufficientBalance(from, fromBalance, value);
            }
            unchecked {
                // Overflow not possible: value <= fromBalance <= totalSupply.
                $._balances[from] = fromBalance - value;
            }
        }

        if (to == address(0)) {
            unchecked {
                // Overflow not possible: value <= totalSupply or value <= fromBalance <= totalSupply.
                $._totalSupply -= value;
            }
        } else {
            unchecked {
                // Overflow not possible: balance + value is at most totalSupply, which we know fits into a uint256.
                $._balances[to] += value;
            }
        }

        emit Transfer(from, to, value);
    }

    /**
     * @dev Creates a `value` amount of tokens and assigns them to `account`, by transferring it from address(0).
     * Relies on the `_update` mechanism
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _mint(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(address(0), account, value);
    }

    /**
     * @dev Destroys a `value` amount of tokens from `account`, lowering the total supply.
     * Relies on the `_update` mechanism.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead
     */
    function _burn(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        _update(account, address(0), value);
    }

    /**
     * @dev Sets `value` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     *
     * Overrides to this logic should be done to the variant with an additional `bool emitEvent` argument.
     */
    function _approve(address owner, address spender, uint256 value) internal {
        _approve(owner, spender, value, true);
    }

    /**
     * @dev Variant of {_approve} with an optional flag to enable or disable the {Approval} event.
     *
     * By default (when calling {_approve}) the flag is set to true. On the other hand, approval changes made by
     * `_spendAllowance` during the `transferFrom` operation set the flag to false. This saves gas by not emitting any
     * `Approval` event during `transferFrom` operations.
     *
     * Anyone who wishes to continue emitting `Approval` events on the`transferFrom` operation can force the flag to
     * true using the following override:
     * ```
     * function _approve(address owner, address spender, uint256 value, bool) internal virtual override {
     *     super._approve(owner, spender, value, true);
     * }
     * ```
     *
     * Requirements are the same as {_approve}.
     */
    function _approve(address owner, address spender, uint256 value, bool emitEvent) internal virtual {
        ERC20Storage storage $ = _getERC20Storage();
        if (owner == address(0)) {
            revert ERC20InvalidApprover(address(0));
        }
        if (spender == address(0)) {
            revert ERC20InvalidSpender(address(0));
        }
        $._allowances[owner][spender] = value;
        if (emitEvent) {
            emit Approval(owner, spender, value);
        }
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `value`.
     *
     * Does not update the allowance value in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Does not emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 value) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            if (currentAllowance < value) {
                revert ERC20InsufficientAllowance(spender, currentAllowance, value);
            }
            unchecked {
                _approve(owner, spender, currentAllowance - value, false);
            }
        }
    }
}

/**
 * @title IOAppCore
 */
interface IOAppCore {
    // Custom error messages
    error OnlyPeer(uint32 eid, bytes32 sender);
    error NoPeer(uint32 eid);
    error InvalidEndpointCall();
    error InvalidDelegate();

    // Event emitted when a peer (OApp) is set for a corresponding endpoint
    event PeerSet(uint32 eid, bytes32 peer);

    /**
     * @notice Retrieves the OApp version information.
     * @return senderVersion The version of the OAppSender.sol contract.
     * @return receiverVersion The version of the OAppReceiver.sol contract.
     */
    function oAppVersion() external view returns (uint64 senderVersion, uint64 receiverVersion);

    /**
     * @notice Retrieves the LayerZero endpoint associated with the OApp.
     * @return iEndpoint The LayerZero endpoint as an interface.
     */
    function endpoint() external view returns (ILayerZeroEndpointV2 iEndpoint);

    /**
     * @notice Retrieves the peer (OApp) associated with a corresponding endpoint.
     * @param _eid The endpoint ID.
     * @return peer The peer address (OApp instance) associated with the corresponding endpoint.
     */
    function peers(uint32 _eid) external view returns (bytes32 peer);

    /**
     * @notice Sets the peer address (OApp instance) for a corresponding endpoint.
     * @param _eid The endpoint ID.
     * @param _peer The address of the peer to be associated with the corresponding endpoint.
     */
    function setPeer(uint32 _eid, bytes32 _peer) external;

    /**
     * @notice Sets the delegate address for the OApp Core.
     * @param _delegate The address of the delegate to be set.
     */
    function setDelegate(address _delegate) external;
}

interface IOAppReceiver is ILayerZeroReceiver {
    /**
     * @notice Retrieves the address responsible for 'sending' composeMsg's to the Endpoint.
     * @return sender The address responsible for 'sending' composeMsg's to the Endpoint.
     *
     * @dev Applications can optionally choose to implement a separate composeMsg sender that is NOT the bridging layer.
     * @dev The default sender IS the OApp implementer.
     */
    function composeMsgSender() external view returns (address sender);
}

abstract contract StdUtils {
    /*//////////////////////////////////////////////////////////////////////////
                                     CONSTANTS
    //////////////////////////////////////////////////////////////////////////*/

    IMulticall3 private constant multicall = IMulticall3(0xcA11bde05977b3631167028862bE2a173976CA11);
    VmSafe private constant vm = VmSafe(address(uint160(uint256(keccak256("hevm cheat code")))));
    address private constant CONSOLE2_ADDRESS = 0x000000000000000000636F6e736F6c652e6c6f67;
    uint256 private constant INT256_MIN_ABS =
        57896044618658097711785492504343953926634992332820282019728792003956564819968;
    uint256 private constant SECP256K1_ORDER =
        115792089237316195423570985008687907852837564279074904382605163141518161494337;
    uint256 private constant UINT256_MAX =
        115792089237316195423570985008687907853269984665640564039457584007913129639935;

    // Used by default when deploying with create2, https://github.com/Arachnid/deterministic-deployment-proxy.
    address private constant CREATE2_FACTORY = 0x4e59b44847b379578588920cA78FbF26c0B4956C;

    /*//////////////////////////////////////////////////////////////////////////
                                 INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    function _bound(uint256 x, uint256 min, uint256 max) internal pure virtual returns (uint256 result) {
        require(min <= max, "StdUtils bound(uint256,uint256,uint256): Max is less than min.");
        // If x is between min and max, return x directly. This is to ensure that dictionary values
        // do not get shifted if the min is nonzero. More info: https://github.com/foundry-rs/forge-std/issues/188
        if (x >= min && x <= max) return x;

        uint256 size = max - min + 1;

        // If the value is 0, 1, 2, 3, wrap that to min, min+1, min+2, min+3. Similarly for the UINT256_MAX side.
        // This helps ensure coverage of the min/max values.
        if (x <= 3 && size > x) return min + x;
        if (x >= UINT256_MAX - 3 && size > UINT256_MAX - x) return max - (UINT256_MAX - x);

        // Otherwise, wrap x into the range [min, max], i.e. the range is inclusive.
        if (x > max) {
            uint256 diff = x - max;
            uint256 rem = diff % size;
            if (rem == 0) return max;
            result = min + rem - 1;
        } else if (x < min) {
            uint256 diff = min - x;
            uint256 rem = diff % size;
            if (rem == 0) return min;
            result = max - rem + 1;
        }
    }

    function bound(uint256 x, uint256 min, uint256 max) internal pure virtual returns (uint256 result) {
        result = _bound(x, min, max);
        console2_log_StdUtils("Bound Result", result);
    }

    function _bound(int256 x, int256 min, int256 max) internal pure virtual returns (int256 result) {
        require(min <= max, "StdUtils bound(int256,int256,int256): Max is less than min.");

        // Shifting all int256 values to uint256 to use _bound function. The range of two types are:
        // int256 : -(2**255) ~ (2**255 - 1)
        // uint256:     0     ~ (2**256 - 1)
        // So, add 2**255, INT256_MIN_ABS to the integer values.
        //
        // If the given integer value is -2**255, we cannot use `-uint256(-x)` because of the overflow.
        // So, use `~uint256(x) + 1` instead.
        uint256 _x = x < 0 ? (INT256_MIN_ABS - ~uint256(x) - 1) : (uint256(x) + INT256_MIN_ABS);
        uint256 _min = min < 0 ? (INT256_MIN_ABS - ~uint256(min) - 1) : (uint256(min) + INT256_MIN_ABS);
        uint256 _max = max < 0 ? (INT256_MIN_ABS - ~uint256(max) - 1) : (uint256(max) + INT256_MIN_ABS);

        uint256 y = _bound(_x, _min, _max);

        // To move it back to int256 value, subtract INT256_MIN_ABS at here.
        result = y < INT256_MIN_ABS ? int256(~(INT256_MIN_ABS - y) + 1) : int256(y - INT256_MIN_ABS);
    }

    function bound(int256 x, int256 min, int256 max) internal pure virtual returns (int256 result) {
        result = _bound(x, min, max);
        console2_log_StdUtils("Bound result", vm.toString(result));
    }

    function boundPrivateKey(uint256 privateKey) internal pure virtual returns (uint256 result) {
        result = _bound(privateKey, 1, SECP256K1_ORDER - 1);
    }

    function bytesToUint(bytes memory b) internal pure virtual returns (uint256) {
        require(b.length <= 32, "StdUtils bytesToUint(bytes): Bytes length exceeds 32.");
        return abi.decode(abi.encodePacked(new bytes(32 - b.length), b), (uint256));
    }

    /// @dev Compute the address a contract will be deployed at for a given deployer address and nonce
    /// @notice adapted from Solmate implementation (https://github.com/Rari-Capital/solmate/blob/main/src/utils/LibRLP.sol)
    function computeCreateAddress(address deployer, uint256 nonce) internal pure virtual returns (address) {
        console2_log_StdUtils("computeCreateAddress is deprecated. Please use vm.computeCreateAddress instead.");
        return vm.computeCreateAddress(deployer, nonce);
    }

    function computeCreate2Address(bytes32 salt, bytes32 initcodeHash, address deployer)
        internal
        pure
        virtual
        returns (address)
    {
        console2_log_StdUtils("computeCreate2Address is deprecated. Please use vm.computeCreate2Address instead.");
        return vm.computeCreate2Address(salt, initcodeHash, deployer);
    }

    /// @dev returns the address of a contract created with CREATE2 using the default CREATE2 deployer
    function computeCreate2Address(bytes32 salt, bytes32 initCodeHash) internal pure returns (address) {
        console2_log_StdUtils("computeCreate2Address is deprecated. Please use vm.computeCreate2Address instead.");
        return vm.computeCreate2Address(salt, initCodeHash);
    }

    /// @dev returns an initialized mock ERC20 contract
    function deployMockERC20(string memory name, string memory symbol, uint8 decimals)
        internal
        returns (MockERC20 mock)
    {
        mock = new MockERC20();
        mock.initialize(name, symbol, decimals);
    }

    /// @dev returns an initialized mock ERC721 contract
    function deployMockERC721(string memory name, string memory symbol) internal returns (MockERC721 mock) {
        mock = new MockERC721();
        mock.initialize(name, symbol);
    }

    /// @dev returns the hash of the init code (creation code + no args) used in CREATE2 with no constructor arguments
    /// @param creationCode the creation code of a contract C, as returned by type(C).creationCode
    function hashInitCode(bytes memory creationCode) internal pure returns (bytes32) {
        return hashInitCode(creationCode, "");
    }

    /// @dev returns the hash of the init code (creation code + ABI-encoded args) used in CREATE2
    /// @param creationCode the creation code of a contract C, as returned by type(C).creationCode
    /// @param args the ABI-encoded arguments to the constructor of C
    function hashInitCode(bytes memory creationCode, bytes memory args) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(creationCode, args));
    }

    // Performs a single call with Multicall3 to query the ERC-20 token balances of the given addresses.
    function getTokenBalances(address token, address[] memory addresses)
        internal
        virtual
        returns (uint256[] memory balances)
    {
        uint256 tokenCodeSize;
        assembly {
            tokenCodeSize := extcodesize(token)
        }
        require(tokenCodeSize > 0, "StdUtils getTokenBalances(address,address[]): Token address is not a contract.");

        // ABI encode the aggregate call to Multicall3.
        uint256 length = addresses.length;
        IMulticall3.Call[] memory calls = new IMulticall3.Call[](length);
        for (uint256 i = 0; i < length; ++i) {
            // 0x70a08231 = bytes4("balanceOf(address)"))
            calls[i] = IMulticall3.Call({target: token, callData: abi.encodeWithSelector(0x70a08231, (addresses[i]))});
        }

        // Make the aggregate call.
        (, bytes[] memory returnData) = multicall.aggregate(calls);

        // ABI decode the return data and return the balances.
        balances = new uint256[](length);
        for (uint256 i = 0; i < length; ++i) {
            balances[i] = abi.decode(returnData[i], (uint256));
        }
    }

    /*//////////////////////////////////////////////////////////////////////////
                                 PRIVATE FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    function addressFromLast20Bytes(bytes32 bytesValue) private pure returns (address) {
        return address(uint160(uint256(bytesValue)));
    }

    // This section is used to prevent the compilation of console, which shortens the compilation time when console is
    // not used elsewhere. We also trick the compiler into letting us make the console log methods as `pure` to avoid
    // any breaking changes to function signatures.
    function _castLogPayloadViewToPure(function(bytes memory) internal view fnIn)
        internal
        pure
        returns (function(bytes memory) internal pure fnOut)
    {
        assembly {
            fnOut := fnIn
        }
    }

    function _sendLogPayload(bytes memory payload) internal pure {
        _castLogPayloadViewToPure(_sendLogPayloadView)(payload);
    }

    function _sendLogPayloadView(bytes memory payload) private view {
        uint256 payloadLength = payload.length;
        address consoleAddress = CONSOLE2_ADDRESS;
        /// @solidity memory-safe-assembly
        assembly {
            let payloadStart := add(payload, 32)
            let r := staticcall(gas(), consoleAddress, payloadStart, payloadLength, 0, 0)
        }
    }

    function console2_log_StdUtils(string memory p0) private pure {
        _sendLogPayload(abi.encodeWithSignature("log(string)", p0));
    }

    function console2_log_StdUtils(string memory p0, uint256 p1) private pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,uint256)", p0, p1));
    }

    function console2_log_StdUtils(string memory p0, string memory p1) private pure {
        _sendLogPayload(abi.encodeWithSignature("log(string,string)", p0, p1));
    }
}

struct Packet {
    uint64 nonce;
    uint32 srcEid;
    address sender;
    uint32 dstEid;
    bytes32 receiver;
    bytes32 guid;
    bytes message;
}

interface ISendLib is IMessageLib {
    function send(
        Packet calldata _packet,
        bytes calldata _options,
        bool _payInLzToken
    ) external returns (MessagingFee memory, bytes memory encodedPacket);

    function quote(
        Packet calldata _packet,
        bytes calldata _options,
        bool _payInLzToken
    ) external view returns (MessagingFee memory);

    function setTreasury(address _treasury) external;

    function withdrawFee(address _to, uint256 _amount) external;

    function withdrawLzTokenFee(address _lzToken, address _to, uint256 _amount) external;
}

library PacketV1Codec {
    using AddressCast for address;
    using AddressCast for bytes32;

    uint8 internal constant PACKET_VERSION = 1;

    // header (version + nonce + path)
    // version
    uint256 private constant PACKET_VERSION_OFFSET = 0;
    //    nonce
    uint256 private constant NONCE_OFFSET = 1;
    //    path
    uint256 private constant SRC_EID_OFFSET = 9;
    uint256 private constant SENDER_OFFSET = 13;
    uint256 private constant DST_EID_OFFSET = 45;
    uint256 private constant RECEIVER_OFFSET = 49;
    // payload (guid + message)
    uint256 private constant GUID_OFFSET = 81; // keccak256(nonce + path)
    uint256 private constant MESSAGE_OFFSET = 113;

    function encode(Packet memory _packet) internal pure returns (bytes memory encodedPacket) {
        encodedPacket = abi.encodePacked(
            PACKET_VERSION,
            _packet.nonce,
            _packet.srcEid,
            _packet.sender.toBytes32(),
            _packet.dstEid,
            _packet.receiver,
            _packet.guid,
            _packet.message
        );
    }

    function encodePacketHeader(Packet memory _packet) internal pure returns (bytes memory) {
        return
            abi.encodePacked(
                PACKET_VERSION,
                _packet.nonce,
                _packet.srcEid,
                _packet.sender.toBytes32(),
                _packet.dstEid,
                _packet.receiver
            );
    }

    function encodePayload(Packet memory _packet) internal pure returns (bytes memory) {
        return abi.encodePacked(_packet.guid, _packet.message);
    }

    function header(bytes calldata _packet) internal pure returns (bytes calldata) {
        return _packet[0:GUID_OFFSET];
    }

    function version(bytes calldata _packet) internal pure returns (uint8) {
        return uint8(bytes1(_packet[PACKET_VERSION_OFFSET:NONCE_OFFSET]));
    }

    function nonce(bytes calldata _packet) internal pure returns (uint64) {
        return uint64(bytes8(_packet[NONCE_OFFSET:SRC_EID_OFFSET]));
    }

    function srcEid(bytes calldata _packet) internal pure returns (uint32) {
        return uint32(bytes4(_packet[SRC_EID_OFFSET:SENDER_OFFSET]));
    }

    function sender(bytes calldata _packet) internal pure returns (bytes32) {
        return bytes32(_packet[SENDER_OFFSET:DST_EID_OFFSET]);
    }

    function senderAddressB20(bytes calldata _packet) internal pure returns (address) {
        return sender(_packet).toAddress();
    }

    function dstEid(bytes calldata _packet) internal pure returns (uint32) {
        return uint32(bytes4(_packet[DST_EID_OFFSET:RECEIVER_OFFSET]));
    }

    function receiver(bytes calldata _packet) internal pure returns (bytes32) {
        return bytes32(_packet[RECEIVER_OFFSET:GUID_OFFSET]);
    }

    function receiverB20(bytes calldata _packet) internal pure returns (address) {
        return receiver(_packet).toAddress();
    }

    function guid(bytes calldata _packet) internal pure returns (bytes32) {
        return bytes32(_packet[GUID_OFFSET:MESSAGE_OFFSET]);
    }

    function message(bytes calldata _packet) internal pure returns (bytes calldata) {
        return bytes(_packet[MESSAGE_OFFSET:]);
    }

    function payload(bytes calldata _packet) internal pure returns (bytes calldata) {
        return bytes(_packet[GUID_OFFSET:]);
    }

    function payloadHash(bytes calldata _packet) internal pure returns (bytes32) {
        return keccak256(payload(_packet));
    }
}

/**
 * @title OAppCore
 * @dev Abstract contract implementing the IOAppCore interface with basic OApp configurations.
 */
abstract contract OAppCoreUpgradeable is IOAppCore, OwnableUpgradeable {
    struct OAppCoreStorage {
        mapping(uint32 => bytes32) peers;
    }

    // keccak256(abi.encode(uint256(keccak256("layerzerov2.storage.oappcore")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant OAppCoreStorageLocation =
        0x72ab1bc1039b79dc4724ffca13de82c96834302d3c7e0d4252232d4b2dd8f900;

    function _getOAppCoreStorage() internal pure returns (OAppCoreStorage storage $) {
        assembly {
            $.slot := OAppCoreStorageLocation
        }
    }

    // The LayerZero endpoint associated with the given OApp
    ILayerZeroEndpointV2 public immutable endpoint;

    /**
     * @dev Constructor to initialize the OAppCore with the provided endpoint and delegate.
     * @param _endpoint The address of the LOCAL Layer Zero endpoint.
     */
    constructor(address _endpoint) {
        endpoint = ILayerZeroEndpointV2(_endpoint);
    }

    /**
     * @dev Initializes the OAppCore with the provided delegate.
     * @param _delegate The delegate capable of making OApp configurations inside of the endpoint.
     *
     * @dev The delegate typically should be set as the owner of the contract.
     * @dev Ownable is not initialized here on purpose. It should be initialized in the child contract to
     * accommodate the different version of Ownable.
     */
    function __OAppCore_init(address _delegate) internal onlyInitializing {
        __OAppCore_init_unchained(_delegate);
    }

    function __OAppCore_init_unchained(address _delegate) internal onlyInitializing {
        if (_delegate == address(0)) revert InvalidDelegate();
        endpoint.setDelegate(_delegate);
    }

    /**
     * @notice Returns the peer address (OApp instance) associated with a specific endpoint.
     * @param _eid The endpoint ID.
     * @return peer The address of the peer associated with the specified endpoint.
     */
    function peers(uint32 _eid) public view override returns (bytes32) {
        OAppCoreStorage storage $ = _getOAppCoreStorage();
        return $.peers[_eid];
    }

    /**
     * @notice Sets the peer address (OApp instance) for a corresponding endpoint.
     * @param _eid The endpoint ID.
     * @param _peer The address of the peer to be associated with the corresponding endpoint.
     *
     * @dev Only the owner/admin of the OApp can call this function.
     * @dev Indicates that the peer is trusted to send LayerZero messages to this OApp.
     * @dev Set this to bytes32(0) to remove the peer address.
     * @dev Peer is a bytes32 to accommodate non-evm chains.
     */
    function setPeer(uint32 _eid, bytes32 _peer) public virtual onlyOwner {
        OAppCoreStorage storage $ = _getOAppCoreStorage();
        $.peers[_eid] = _peer;
        emit PeerSet(_eid, _peer);
    }

    /**
     * @notice Internal function to get the peer address associated with a specific endpoint; reverts if NOT set.
     * ie. the peer is set to bytes32(0).
     * @param _eid The endpoint ID.
     * @return peer The address of the peer associated with the specified endpoint.
     */
    function _getPeerOrRevert(uint32 _eid) internal view virtual returns (bytes32) {
        OAppCoreStorage storage $ = _getOAppCoreStorage();
        bytes32 peer = $.peers[_eid];
        if (peer == bytes32(0)) revert NoPeer(_eid);
        return peer;
    }

    /**
     * @notice Sets the delegate address for the OApp.
     * @param _delegate The address of the delegate to be set.
     *
     * @dev Only the owner/admin of the OApp can call this function.
     * @dev Provides the ability for a delegate to set configs, on behalf of the OApp, directly on the Endpoint contract.
     */
    function setDelegate(address _delegate) public onlyOwner {
        endpoint.setDelegate(_delegate);
    }
}

// OpenZeppelin Contracts (last updated v5.0.0) (proxy/transparent/ProxyAdmin.sol)

/**
 * @dev This is an auxiliary contract meant to be assigned as the admin of a {TransparentUpgradeableProxy}. For an
 * explanation of why you would want to use this see the documentation for {TransparentUpgradeableProxy}.
 */
contract ProxyAdmin is Ownable {
    /**
     * @dev The version of the upgrade interface of the contract. If this getter is missing, both `upgrade(address)`
     * and `upgradeAndCall(address,bytes)` are present, and `upgradeTo` must be used if no function should be called,
     * while `upgradeAndCall` will invoke the `receive` function if the second argument is the empty byte string.
     * If the getter returns `"5.0.0"`, only `upgradeAndCall(address,bytes)` is present, and the second argument must
     * be the empty byte string if no function should be called, making it impossible to invoke the `receive` function
     * during an upgrade.
     */
    string public constant UPGRADE_INTERFACE_VERSION = "5.0.0";

    /**
     * @dev Sets the initial owner who can perform upgrades.
     */
    constructor(address initialOwner) Ownable(initialOwner) {}

    /**
     * @dev Upgrades `proxy` to `implementation` and calls a function on the new implementation.
     * See {TransparentUpgradeableProxy-_dispatchUpgradeToAndCall}.
     *
     * Requirements:
     *
     * - This contract must be the admin of `proxy`.
     * - If `data` is empty, `msg.value` must be zero.
     */
    function upgradeAndCall(
        ITransparentUpgradeableProxy proxy,
        address implementation,
        bytes memory data
    ) public payable virtual onlyOwner {
        proxy.upgradeToAndCall{value: msg.value}(implementation, data);
    }
}

// OpenZeppelin Contracts (last updated v5.0.0) (proxy/transparent/TransparentUpgradeableProxy.sol)

/**
 * @dev Interface for {TransparentUpgradeableProxy}. In order to implement transparency, {TransparentUpgradeableProxy}
 * does not implement this interface directly, and its upgradeability mechanism is implemented by an internal dispatch
 * mechanism. The compiler is unaware that these functions are implemented by {TransparentUpgradeableProxy} and will not
 * include them in the ABI so this interface must be used to interact with it.
 */
interface ITransparentUpgradeableProxy is IERC1967 {
    function upgradeToAndCall(address, bytes calldata) external payable;
}

/**
 * @dev This contract implements a proxy that is upgradeable through an associated {ProxyAdmin} instance.
 *
 * To avoid https://medium.com/nomic-labs-blog/malicious-backdoors-in-ethereum-proxies-62629adf3357[proxy selector
 * clashing], which can potentially be used in an attack, this contract uses the
 * https://blog.openzeppelin.com/the-transparent-proxy-pattern/[transparent proxy pattern]. This pattern implies two
 * things that go hand in hand:
 *
 * 1. If any account other than the admin calls the proxy, the call will be forwarded to the implementation, even if
 * that call matches the {ITransparentUpgradeableProxy-upgradeToAndCall} function exposed by the proxy itself.
 * 2. If the admin calls the proxy, it can call the `upgradeToAndCall` function but any other call won't be forwarded to
 * the implementation. If the admin tries to call a function on the implementation it will fail with an error indicating
 * the proxy admin cannot fallback to the target implementation.
 *
 * These properties mean that the admin account can only be used for upgrading the proxy, so it's best if it's a
 * dedicated account that is not used for anything else. This will avoid headaches due to sudden errors when trying to
 * call a function from the proxy implementation. For this reason, the proxy deploys an instance of {ProxyAdmin} and
 * allows upgrades only if they come through it. You should think of the `ProxyAdmin` instance as the administrative
 * interface of the proxy, including the ability to change who can trigger upgrades by transferring ownership.
 *
 * NOTE: The real interface of this proxy is that defined in `ITransparentUpgradeableProxy`. This contract does not
 * inherit from that interface, and instead `upgradeToAndCall` is implicitly implemented using a custom dispatch
 * mechanism in `_fallback`. Consequently, the compiler will not produce an ABI for this contract. This is necessary to
 * fully implement transparency without decoding reverts caused by selector clashes between the proxy and the
 * implementation.
 *
 * NOTE: This proxy does not inherit from {Context} deliberately. The {ProxyAdmin} of this contract won't send a
 * meta-transaction in any way, and any other meta-transaction setup should be made in the implementation contract.
 *
 * IMPORTANT: This contract avoids unnecessary storage reads by setting the admin only during construction as an
 * immutable variable, preventing any changes thereafter. However, the admin slot defined in ERC-1967 can still be
 * overwritten by the implementation logic pointed to by this proxy. In such cases, the contract may end up in an
 * undesirable state where the admin slot is different from the actual admin.
 *
 * WARNING: It is not recommended to extend this contract to add additional external functions. If you do so, the
 * compiler will not check that there are no selector conflicts, due to the note above. A selector clash between any new
 * function and the functions declared in {ITransparentUpgradeableProxy} will be resolved in favor of the new one. This
 * could render the `upgradeToAndCall` function inaccessible, preventing upgradeability and compromising transparency.
 */
contract TransparentUpgradeableProxy is ERC1967Proxy {
    // An immutable address for the admin to avoid unnecessary SLOADs before each call
    // at the expense of removing the ability to change the admin once it's set.
    // This is acceptable if the admin is always a ProxyAdmin instance or similar contract
    // with its own ability to transfer the permissions to another account.
    address private immutable _admin;

    /**
     * @dev The proxy caller is the current admin, and can't fallback to the proxy target.
     */
    error ProxyDeniedAdminAccess();

    /**
     * @dev Initializes an upgradeable proxy managed by an instance of a {ProxyAdmin} with an `initialOwner`,
     * backed by the implementation at `_logic`, and optionally initialized with `_data` as explained in
     * {ERC1967Proxy-constructor}.
     */
    constructor(address _logic, address initialOwner, bytes memory _data) payable ERC1967Proxy(_logic, _data) {
        _admin = address(new ProxyAdmin(initialOwner));
        // Set the storage value and emit an event for ERC-1967 compatibility
        ERC1967Utils.changeAdmin(_proxyAdmin());
    }

    /**
     * @dev Returns the admin of this proxy.
     */
    function _proxyAdmin() internal virtual returns (address) {
        return _admin;
    }

    /**
     * @dev If caller is the admin process the call internally, otherwise transparently fallback to the proxy behavior.
     */
    function _fallback() internal virtual override {
        if (msg.sender == _proxyAdmin()) {
            if (msg.sig != ITransparentUpgradeableProxy.upgradeToAndCall.selector) {
                revert ProxyDeniedAdminAccess();
            } else {
                _dispatchUpgradeToAndCall();
            }
        } else {
            super._fallback();
        }
    }

    /**
     * @dev Upgrade the implementation of the proxy. See {ERC1967Utils-upgradeToAndCall}.
     *
     * Requirements:
     *
     * - If `data` is empty, `msg.value` must be zero.
     */
    function _dispatchUpgradeToAndCall() private {
        (address newImplementation, bytes memory data) = abi.decode(msg.data[4:], (address, bytes));
        ERC1967Utils.upgradeToAndCall(newImplementation, data);
    }
}

/**
 * @title InboundPacket
 * @dev Structure representing an inbound packet received by the contract.
 */
struct InboundPacket {
    Origin origin; // Origin information of the packet.
    uint32 dstEid; // Destination endpointId of the packet.
    address receiver; // Receiver address for the packet.
    bytes32 guid; // Unique identifier of the packet.
    uint256 value; // msg.value of the packet.
    address executor; // Executor address for the packet.
    bytes message; // Message payload of the packet.
    bytes extraData; // Additional arbitrary data for the packet.
}

/**
 * @title PacketDecoder
 * @dev Library for decoding LayerZero packets.
 */
library PacketDecoder {
    using PacketV1Codec for bytes;

    /**
     * @dev Decode an inbound packet from the given packet data.
     * @param _packet The packet data to decode.
     * @return packet An InboundPacket struct representing the decoded packet.
     */
    function decode(bytes calldata _packet) internal pure returns (InboundPacket memory packet) {
        packet.origin = Origin(_packet.srcEid(), _packet.sender(), _packet.nonce());
        packet.dstEid = _packet.dstEid();
        packet.receiver = _packet.receiverB20();
        packet.guid = _packet.guid();
        packet.message = _packet.message();
    }

    /**
     * @dev Decode multiple inbound packets from the given packet data and associated message values.
     * @param _packets An array of packet data to decode.
     * @param _packetMsgValues An array of associated message values for each packet.
     * @return packets An array of InboundPacket structs representing the decoded packets.
     */
    function decode(
        bytes[] calldata _packets,
        uint256[] memory _packetMsgValues
    ) internal pure returns (InboundPacket[] memory packets) {
        packets = new InboundPacket[](_packets.length);
        for (uint256 i = 0; i < _packets.length; i++) {
            bytes calldata packet = _packets[i];
            packets[i] = PacketDecoder.decode(packet);
            // @dev Allows the verifier to specify the msg.value that gets passed in lzReceive.
            packets[i].value = _packetMsgValues[i];
        }
    }
}

// @dev Import the Origin so it's exposed to OAppPreCrimeSimulator implementers.
// solhint-disable-next-line no-unused-import

/**
 * @title IOAppPreCrimeSimulator Interface
 * @dev Interface for the preCrime simulation functionality in an OApp.
 */
interface IOAppPreCrimeSimulator {
    // @dev simulation result used in PreCrime implementation
    error SimulationResult(bytes result);
    error OnlySelf();

    /**
     * @dev Emitted when the preCrime contract address is set.
     * @param preCrimeAddress The address of the preCrime contract.
     */
    event PreCrimeSet(address preCrimeAddress);

    /**
     * @dev Retrieves the address of the preCrime contract implementation.
     * @return The address of the preCrime contract.
     */
    function preCrime() external view returns (address);

    /**
     * @dev Retrieves the address of the OApp contract.
     * @return The address of the OApp contract.
     */
    function oApp() external view returns (address);

    /**
     * @dev Sets the preCrime contract address.
     * @param _preCrime The address of the preCrime contract.
     */
    function setPreCrime(address _preCrime) external;

    /**
     * @dev Mocks receiving a packet, then reverts with a series of data to infer the state/result.
     * @param _packets An array of LayerZero InboundPacket objects representing received packets.
     */
    function lzReceiveAndRevert(InboundPacket[] calldata _packets) external payable;

    /**
     * @dev checks if the specified peer is considered 'trusted' by the OApp.
     * @param _eid The endpoint Id to check.
     * @param _peer The peer to check.
     * @return Whether the peer passed is considered 'trusted' by the OApp.
     */
    function isPeer(uint32 _eid, bytes32 _peer) external view returns (bool);
}

/**
 * @title OAppReceiver
 * @dev Abstract contract implementing the ILayerZeroReceiver interface and extending OAppCore for OApp receivers.
 */
abstract contract OAppReceiverUpgradeable is IOAppReceiver, OAppCoreUpgradeable {
    // Custom error message for when the caller is not the registered endpoint/
    error OnlyEndpoint(address addr);

    // @dev The version of the OAppReceiver implementation.
    // @dev Version is bumped when changes are made to this contract.
    uint64 internal constant RECEIVER_VERSION = 1;

    /**
     * @dev Ownable is not initialized here on purpose. It should be initialized in the child contract to
     * accommodate the different version of Ownable.
     */
    function __OAppReceiver_init() internal onlyInitializing {}

    function __OAppReceiver_init_unchained() internal onlyInitializing {}

    /**
     * @notice Retrieves the OApp version information.
     * @return senderVersion The version of the OAppSender.sol contract.
     * @return receiverVersion The version of the OAppReceiver.sol contract.
     *
     * @dev Providing 0 as the default for OAppSender version. Indicates that the OAppSender is not implemented.
     * ie. this is a RECEIVE only OApp.
     * @dev If the OApp uses both OAppSender and OAppReceiver, then this needs to be override returning the correct versions.
     */
    function oAppVersion() public view virtual returns (uint64 senderVersion, uint64 receiverVersion) {
        return (0, RECEIVER_VERSION);
    }

    /**
     * @notice Retrieves the address responsible for 'sending' composeMsg's to the Endpoint.
     * @return sender The address responsible for 'sending' composeMsg's to the Endpoint.
     *
     * @dev Applications can optionally choose to implement a separate composeMsg sender that is NOT the bridging layer.
     * @dev The default sender IS the OApp implementer.
     */
    function composeMsgSender() public view virtual returns (address sender) {
        return address(this);
    }

    /**
     * @notice Checks if the path initialization is allowed based on the provided origin.
     * @param origin The origin information containing the source endpoint and sender address.
     * @return Whether the path has been initialized.
     *
     * @dev This indicates to the endpoint that the OApp has enabled msgs for this particular path to be received.
     * @dev This defaults to assuming if a peer has been set, its initialized.
     * Can be overridden by the OApp if there is other logic to determine this.
     */
    function allowInitializePath(Origin calldata origin) public view virtual returns (bool) {
        return peers(origin.srcEid) == origin.sender;
    }

    /**
     * @notice Retrieves the next nonce for a given source endpoint and sender address.
     * @dev _srcEid The source endpoint ID.
     * @dev _sender The sender address.
     * @return nonce The next nonce.
     *
     * @dev The path nonce starts from 1. If 0 is returned it means that there is NO nonce ordered enforcement.
     * @dev Is required by the off-chain executor to determine the OApp expects msg execution is ordered.
     * @dev This is also enforced by the OApp.
     * @dev By default this is NOT enabled. ie. nextNonce is hardcoded to return 0.
     */
    function nextNonce(uint32, /*_srcEid*/ bytes32 /*_sender*/) public view virtual returns (uint64 nonce) {
        return 0;
    }

    /**
     * @dev Entry point for receiving messages or packets from the endpoint.
     * @param _origin The origin information containing the source endpoint and sender address.
     *  - srcEid: The source chain endpoint ID.
     *  - sender: The sender address on the src chain.
     *  - nonce: The nonce of the message.
     * @param _guid The unique identifier for the received LayerZero message.
     * @param _message The payload of the received message.
     * @param _executor The address of the executor for the received message.
     * @param _extraData Additional arbitrary data provided by the corresponding executor.
     *
     * @dev Entry point for receiving msg/packet from the LayerZero endpoint.
     */
    function lzReceive(
        Origin calldata _origin,
        bytes32 _guid,
        bytes calldata _message,
        address _executor,
        bytes calldata _extraData
    ) public payable virtual {
        // Ensures that only the endpoint can attempt to lzReceive() messages to this OApp.
        if (address(endpoint) != msg.sender) revert OnlyEndpoint(msg.sender);

        // Ensure that the sender matches the expected peer for the source endpoint.
        if (_getPeerOrRevert(_origin.srcEid) != _origin.sender) revert OnlyPeer(_origin.srcEid, _origin.sender);

        // Call the internal OApp implementation of lzReceive.
        _lzReceive(_origin, _guid, _message, _executor, _extraData);
    }

    /**
     * @dev Internal function to implement lzReceive logic without needing to copy the basic parameter validation.
     */
    function _lzReceive(
        Origin calldata _origin,
        bytes32 _guid,
        bytes calldata _message,
        address _executor,
        bytes calldata _extraData
    ) internal virtual;
}

/**
 * @title OAppSender
 * @dev Abstract contract implementing the OAppSender functionality for sending messages to a LayerZero endpoint.
 */
abstract contract OAppSenderUpgradeable is OAppCoreUpgradeable {
    using SafeERC20 for IERC20_1;

    // Custom error messages
    error NotEnoughNative(uint256 msgValue);
    error LzTokenUnavailable();

    // @dev The version of the OAppSender implementation.
    // @dev Version is bumped when changes are made to this contract.
    uint64 internal constant SENDER_VERSION = 1;

    /**
     * @dev Ownable is not initialized here on purpose. It should be initialized in the child contract to
     * accommodate the different version of Ownable.
     */
    function __OAppSender_init() internal onlyInitializing {}

    function __OAppSender_init_unchained() internal onlyInitializing {}

    /**
     * @notice Retrieves the OApp version information.
     * @return senderVersion The version of the OAppSender.sol contract.
     * @return receiverVersion The version of the OAppReceiver.sol contract.
     *
     * @dev Providing 0 as the default for OAppReceiver version. Indicates that the OAppReceiver is not implemented.
     * ie. this is a SEND only OApp.
     * @dev If the OApp uses both OAppSender and OAppReceiver, then this needs to be override returning the correct versions
     */
    function oAppVersion() public view virtual returns (uint64 senderVersion, uint64 receiverVersion) {
        return (SENDER_VERSION, 0);
    }

    /**
     * @dev Internal function to interact with the LayerZero EndpointV2.quote() for fee calculation.
     * @param _dstEid The destination endpoint ID.
     * @param _message The message payload.
     * @param _options Additional options for the message.
     * @param _payInLzToken Flag indicating whether to pay the fee in LZ tokens.
     * @return fee The calculated MessagingFee for the message.
     *      - nativeFee: The native fee for the message.
     *      - lzTokenFee: The LZ token fee for the message.
     */
    function _quote(
        uint32 _dstEid,
        bytes memory _message,
        bytes memory _options,
        bool _payInLzToken
    ) internal view virtual returns (MessagingFee memory fee) {
        return
            endpoint.quote(
                MessagingParams(_dstEid, _getPeerOrRevert(_dstEid), _message, _options, _payInLzToken),
                address(this)
            );
    }

    /**
     * @dev Internal function to interact with the LayerZero EndpointV2.send() for sending a message.
     * @param _dstEid The destination endpoint ID.
     * @param _message The message payload.
     * @param _options Additional options for the message.
     * @param _fee The calculated LayerZero fee for the message.
     *      - nativeFee: The native fee.
     *      - lzTokenFee: The lzToken fee.
     * @param _refundAddress The address to receive any excess fee values sent to the endpoint.
     * @return receipt The receipt for the sent message.
     *      - guid: The unique identifier for the sent message.
     *      - nonce: The nonce of the sent message.
     *      - fee: The LayerZero fee incurred for the message.
     */
    function _lzSend(
        uint32 _dstEid,
        bytes memory _message,
        bytes memory _options,
        MessagingFee memory _fee,
        address _refundAddress
    ) internal virtual returns (MessagingReceipt memory receipt) {
        // @dev Push corresponding fees to the endpoint, any excess is sent back to the _refundAddress from the endpoint.
        uint256 messageValue = _payNative(_fee.nativeFee);
        if (_fee.lzTokenFee > 0) _payLzToken(_fee.lzTokenFee);

        return
            endpoint.send{ value: messageValue }(
            // solhint-disable-next-line check-send-result
                MessagingParams(_dstEid, _getPeerOrRevert(_dstEid), _message, _options, _fee.lzTokenFee > 0),
                _refundAddress
            );
    }

    /**
     * @dev Internal function to pay the native fee associated with the message.
     * @param _nativeFee The native fee to be paid.
     * @return nativeFee The amount of native currency paid.
     *
     * @dev If the OApp needs to initiate MULTIPLE LayerZero messages in a single transaction,
     * this will need to be overridden because msg.value would contain multiple lzFees.
     * @dev Should be overridden in the event the LayerZero endpoint requires a different native currency.
     * @dev Some EVMs use an ERC20 as a method for paying transactions/gasFees.
     * @dev The endpoint is EITHER/OR, ie. it will NOT support both types of native payment at a time.
     */
    function _payNative(uint256 _nativeFee) internal virtual returns (uint256 nativeFee) {
        if (msg.value != _nativeFee) revert NotEnoughNative(msg.value);
        return _nativeFee;
    }

    /**
     * @dev Internal function to pay the LZ token fee associated with the message.
     * @param _lzTokenFee The LZ token fee to be paid.
     *
     * @dev If the caller is trying to pay in the specified lzToken, then the lzTokenFee is passed to the endpoint.
     * @dev Any excess sent, is passed back to the specified _refundAddress in the _lzSend().
     */
    function _payLzToken(uint256 _lzTokenFee) internal virtual {
        // @dev Cannot cache the token because it is not immutable in the endpoint.
        address lzToken = endpoint.lzToken();
        if (lzToken == address(0)) revert LzTokenUnavailable();

        // Pay LZ token fee by sending tokens to the endpoint.
        IERC20_1(lzToken).safeTransferFrom(msg.sender, address(endpoint), _lzTokenFee);
    }
}

/**
 * @dev Struct representing token parameters for the OFT send() operation.
 */
struct SendParam {
    uint32 dstEid; // Destination endpoint ID.
    bytes32 to; // Recipient address.
    uint256 amountLD; // Amount to send in local decimals.
    uint256 minAmountLD; // Minimum amount to send in local decimals.
    bytes extraOptions; // Additional options supplied by the caller to be used in the LayerZero message.
    bytes composeMsg; // The composed message for the send() operation.
    bytes oftCmd; // The OFT command to be executed, unused in default OFT implementations.
}

/**
 * @dev Struct representing OFT limit information.
 * @dev These amounts can change dynamically and are up the the specific oft implementation.
 */
struct OFTLimit {
    uint256 minAmountLD; // Minimum amount in local decimals that can be sent to the recipient.
    uint256 maxAmountLD; // Maximum amount in local decimals that can be sent to the recipient.
}

/**
 * @dev Struct representing OFT receipt information.
 */
struct OFTReceipt {
    uint256 amountSentLD; // Amount of tokens ACTUALLY debited from the sender in local decimals.
    // @dev In non-default implementations, the amountReceivedLD COULD differ from this value.
    uint256 amountReceivedLD; // Amount of tokens to be received on the remote side.
}

/**
 * @dev Struct representing OFT fee details.
 * @dev Future proof mechanism to provide a standardized way to communicate fees to things like a UI.
 */
struct OFTFeeDetail {
    int256 feeAmountLD; // Amount of the fee in local decimals.
    string description; // Description of the fee.
}

/**
 * @title IOFT
 * @dev Interface for the OftChain (OFT) token.
 * @dev Does not inherit ERC20 to accommodate usage by OFTAdapter as well.
 * @dev This specific interface ID is '0x02e49c2c'.
 */
interface IOFT {
    // Custom error messages
    error InvalidLocalDecimals();
    error SlippageExceeded(uint256 amountLD, uint256 minAmountLD);

    // Events
    event OFTSent(
        // GUID of the OFT message.
        // Destination Endpoint ID.
        // Address of the sender on the src chain.
        // Amount of tokens sent in local decimals.
        // Amount of tokens received in local decimals.
        bytes32 indexed guid,
        uint32 dstEid,
        address indexed fromAddress,
        uint256 amountSentLD,
        uint256 amountReceivedLD
    );
    event OFTReceived(
        // GUID of the OFT message.
        // Source Endpoint ID.
        // Address of the recipient on the dst chain.
        // Amount of tokens received in local decimals.
        bytes32 indexed guid,
        uint32 srcEid,
        address indexed toAddress,
        uint256 amountReceivedLD
    );

    /**
     * @notice Retrieves interfaceID and the version of the OFT.
     * @return interfaceId The interface ID.
     * @return version The version.
     *
     * @dev interfaceId: This specific interface ID is '0x02e49c2c'.
     * @dev version: Indicates a cross-chain compatible msg encoding with other OFTs.
     * @dev If a new feature is added to the OFT cross-chain msg encoding, the version will be incremented.
     * ie. localOFT version(x,1) CAN send messages to remoteOFT version(x,1)
     */
    function oftVersion() external view returns (bytes4 interfaceId, uint64 version);

    /**
     * @notice Retrieves the address of the token associated with the OFT.
     * @return token The address of the ERC20 token implementation.
     */
    function token() external view returns (address);

    /**
     * @notice Indicates whether the OFT contract requires approval of the 'token()' to send.
     * @return requiresApproval Needs approval of the underlying token implementation.
     *
     * @dev Allows things like wallet implementers to determine integration requirements,
     * without understanding the underlying token implementation.
     */
    function approvalRequired() external view returns (bool);

    /**
     * @notice Retrieves the shared decimals of the OFT.
     * @return sharedDecimals The shared decimals of the OFT.
     */
    function sharedDecimals() external view returns (uint8);

    /**
     * @notice Provides a quote for OFT-related operations.
     * @param _sendParam The parameters for the send operation.
     * @return limit The OFT limit information.
     * @return oftFeeDetails The details of OFT fees.
     * @return receipt The OFT receipt information.
     */
    function quoteOFT(
        SendParam calldata _sendParam
    ) external view returns (OFTLimit memory, OFTFeeDetail[] memory oftFeeDetails, OFTReceipt memory);

    /**
     * @notice Provides a quote for the send() operation.
     * @param _sendParam The parameters for the send() operation.
     * @param _payInLzToken Flag indicating whether the caller is paying in the LZ token.
     * @return fee The calculated LayerZero messaging fee from the send() operation.
     *
     * @dev MessagingFee: LayerZero msg fee
     *  - nativeFee: The native fee.
     *  - lzTokenFee: The lzToken fee.
     */
    function quoteSend(SendParam calldata _sendParam, bool _payInLzToken) external view returns (MessagingFee memory);

    /**
     * @notice Executes the send() operation.
     * @param _sendParam The parameters for the send operation.
     * @param _fee The fee information supplied by the caller.
     *      - nativeFee: The native fee.
     *      - lzTokenFee: The lzToken fee.
     * @param _refundAddress The address to receive any excess funds from fees etc. on the src.
     * @return receipt The LayerZero messaging receipt from the send() operation.
     * @return oftReceipt The OFT receipt information.
     *
     * @dev MessagingReceipt: LayerZero msg receipt
     *  - guid: The unique identifier for the sent message.
     *  - nonce: The nonce of the sent message.
     *  - fee: The LayerZero fee incurred for the message.
     */
    function send(
        SendParam calldata _sendParam,
        MessagingFee calldata _fee,
        address _refundAddress
    ) external payable returns (MessagingReceipt memory, OFTReceipt memory);
}

/**
 * @title OAppPreCrimeSimulator
 * @dev Abstract contract serving as the base for preCrime simulation functionality in an OApp.
 */
abstract contract OAppPreCrimeSimulatorUpgradeable is IOAppPreCrimeSimulator, OwnableUpgradeable {
    struct OAppPreCrimeSimulatorStorage {
        // The address of the preCrime implementation.
        address preCrime;
    }

    // keccak256(abi.encode(uint256(keccak256("layerzerov2.storage.oappprecrimesimulator")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant OAppPreCrimeSimulatorStorageLocation =
        0xefb041d771d6daaa55702fff6eb740d63ba559a75d2d1d3e151c78ff2480b600;

    function _getOAppPreCrimeSimulatorStorage() internal pure returns (OAppPreCrimeSimulatorStorage storage $) {
        assembly {
            $.slot := OAppPreCrimeSimulatorStorageLocation
        }
    }

    /**
     * @dev Ownable is not initialized here on purpose. It should be initialized in the child contract to
     * accommodate the different version of Ownable.
     */
    function __OAppPreCrimeSimulator_init() internal onlyInitializing {}

    function __OAppPreCrimeSimulator_init_unchained() internal onlyInitializing {}

    function preCrime() external view override returns (address) {
        OAppPreCrimeSimulatorStorage storage $ = _getOAppPreCrimeSimulatorStorage();
        return $.preCrime;
    }

    /**
     * @dev Retrieves the address of the OApp contract.
     * @return The address of the OApp contract.
     *
     * @dev The simulator contract is the base contract for the OApp by default.
     * @dev If the simulator is a separate contract, override this function.
     */
    function oApp() external view virtual returns (address) {
        return address(this);
    }

    /**
     * @dev Sets the preCrime contract address.
     * @param _preCrime The address of the preCrime contract.
     */
    function setPreCrime(address _preCrime) public virtual onlyOwner {
        OAppPreCrimeSimulatorStorage storage $ = _getOAppPreCrimeSimulatorStorage();
        $.preCrime = _preCrime;
        emit PreCrimeSet(_preCrime);
    }

    /**
     * @dev Interface for pre-crime simulations. Always reverts at the end with the simulation results.
     * @param _packets An array of InboundPacket objects representing received packets to be delivered.
     *
     * @dev WARNING: MUST revert at the end with the simulation results.
     * @dev Gives the preCrime implementation the ability to mock sending packets to the lzReceive function,
     * WITHOUT actually executing them.
     */
    function lzReceiveAndRevert(InboundPacket[] calldata _packets) public payable virtual {
        for (uint256 i = 0; i < _packets.length; i++) {
            InboundPacket calldata packet = _packets[i];

            // Ignore packets that are not from trusted peers.
            if (!isPeer(packet.origin.srcEid, packet.origin.sender)) continue;

            // @dev Because a verifier is calling this function, it doesnt have access to executor params:
            //  - address _executor
            //  - bytes calldata _extraData
            // preCrime will NOT work for OApps that rely on these two parameters inside of their _lzReceive().
            // They are instead stubbed to default values, address(0) and bytes("")
            // @dev Calling this.lzReceiveSimulate removes ability for assembly return 0 callstack exit,
            // which would cause the revert to be ignored.
            this.lzReceiveSimulate{ value: packet.value }(
                packet.origin,
                packet.guid,
                packet.message,
                packet.executor,
                packet.extraData
            );
        }

        // @dev Revert with the simulation results. msg.sender must implement IPreCrime.buildSimulationResult().
        revert SimulationResult(IPreCrime(msg.sender).buildSimulationResult());
    }

    /**
     * @dev Is effectively an internal function because msg.sender must be address(this).
     * Allows resetting the call stack for 'internal' calls.
     * @param _origin The origin information containing the source endpoint and sender address.
     *  - srcEid: The source chain endpoint ID.
     *  - sender: The sender address on the src chain.
     *  - nonce: The nonce of the message.
     * @param _guid The unique identifier of the packet.
     * @param _message The message payload of the packet.
     * @param _executor The executor address for the packet.
     * @param _extraData Additional data for the packet.
     */
    function lzReceiveSimulate(
        Origin calldata _origin,
        bytes32 _guid,
        bytes calldata _message,
        address _executor,
        bytes calldata _extraData
    ) external payable virtual {
        // @dev Ensure ONLY can be called 'internally'.
        if (msg.sender != address(this)) revert OnlySelf();
        _lzReceiveSimulate(_origin, _guid, _message, _executor, _extraData);
    }

    /**
     * @dev Internal function to handle the OAppPreCrimeSimulator simulated receive.
     * @param _origin The origin information.
     *  - srcEid: The source chain endpoint ID.
     *  - sender: The sender address from the src chain.
     *  - nonce: The nonce of the LayerZero message.
     * @param _guid The GUID of the LayerZero message.
     * @param _message The LayerZero message.
     * @param _executor The address of the off-chain executor.
     * @param _extraData Arbitrary data passed by the msg executor.
     *
     * @dev Enables the preCrime simulator to mock sending lzReceive() messages,
     * routes the msg down from the OAppPreCrimeSimulator, and back up to the OAppReceiver.
     */
    function _lzReceiveSimulate(
        Origin calldata _origin,
        bytes32 _guid,
        bytes calldata _message,
        address _executor,
        bytes calldata _extraData
    ) internal virtual;

    /**
     * @dev checks if the specified peer is considered 'trusted' by the OApp.
     * @param _eid The endpoint Id to check.
     * @param _peer The peer to check.
     * @return Whether the peer passed is considered 'trusted' by the OApp.
     */
    function isPeer(uint32 _eid, bytes32 _peer) public view virtual returns (bool);
}

// 💬 ABOUT
// Forge Std's default Script.

// 🧩 MODULES

// 📦 BOILERPLATE

// ⭐️ SCRIPT
abstract contract Script is ScriptBase, StdChains, StdCheatsSafe, StdUtils {
    // Note: IS_SCRIPT() must return true.
    bool public IS_SCRIPT = true;
}

// @dev Import the 'MessagingFee' and 'MessagingReceipt' so it's exposed to OApp implementers
// solhint-disable-next-line no-unused-import

// @dev Import the 'Origin' so it's exposed to OApp implementers
// solhint-disable-next-line no-unused-import

/**
 * @title OApp
 * @dev Abstract contract serving as the base for OApp implementation, combining OAppSender and OAppReceiver functionality.
 */
abstract contract OAppUpgradeable is OAppSenderUpgradeable, OAppReceiverUpgradeable {
    /**
     * @dev Constructor to initialize the OApp with the provided endpoint and owner.
     * @param _endpoint The address of the LOCAL LayerZero endpoint.
     */
    constructor(address _endpoint) OAppCoreUpgradeable(_endpoint) {}

    /**
     * @dev Initializes the OApp with the provided delegate.
     * @param _delegate The delegate capable of making OApp configurations inside of the endpoint.
     *
     * @dev The delegate typically should be set as the owner of the contract.
     * @dev Ownable is not initialized here on purpose. It should be initialized in the child contract to
     * accommodate the different version of Ownable.
     */
    function __OApp_init(address _delegate) internal onlyInitializing {
        __OAppCore_init(_delegate);
    }

    function __OApp_init_unchained() internal onlyInitializing {}

    /**
     * @notice Retrieves the OApp version information.
     * @return senderVersion The version of the OAppSender.sol implementation.
     * @return receiverVersion The version of the OAppReceiver.sol implementation.
     */
    function oAppVersion()
        public
        pure
        virtual
        override(OAppSenderUpgradeable, OAppReceiverUpgradeable)
        returns (uint64 senderVersion, uint64 receiverVersion)
    {
        return (SENDER_VERSION, RECEIVER_VERSION);
    }
}

// 💬 ABOUT
// Forge Std's default Test.

// 🧩 MODULES

// 📦 BOILERPLATE

// ⭐️ TEST
abstract contract Test is TestBase, StdAssertions, StdChains, StdCheats, StdInvariant, StdUtils {
    // Note: IS_TEST() must return true.
    bool public IS_TEST = true;
}

struct L2Chain {
    string rpcUrl;
    uint256 forkBlockNumber;
    address L2messenger;
    address L1messenger;
    uint32 originEid;
    address endpoint;
    address send302;
    address receive302;
    address lzDvn;
}

struct L1Chain {
    string rpcUrl;
    uint256 forkBlockNumber;
    uint32 originEid;
    address endpoint;
    address send302;
    address receive302;
    address lzDvn;
}

contract Addresses {
    L2Chain public MODE = L2Chain({
        rpcUrl: "https://mainnet.mode.network",
        forkBlockNumber: 5601591,
        L2messenger: 0x4200000000000000000000000000000000000007,
        L1messenger: 0x95bDCA6c8EdEB69C98Bd5bd17660BaCef1298A6f,
        originEid: 30260,
        endpoint: 0x1a44076050125825900e736c501f859c50fE728c,
        send302: 0x2367325334447C5E1E0f1b3a6fB947b262F58312,
        receive302: 0xc1B621b18187F74c8F6D52a6F709Dd2780C09821,
        lzDvn: 0xce8358bc28dd8296Ce8cAF1CD2b44787abd65887
    });

    L2Chain public LINEA = L2Chain({
        rpcUrl: "https://1rpc.io/linea",
        forkBlockNumber: 3437029,
        L2messenger: 0x508Ca82Df566dCD1B0DE8296e70a96332cD644ec,
        L1messenger: 0xd19d4B5d358258f05D7B411E21A1460D11B0876F,
        originEid: 30183,
        endpoint: 0x1a44076050125825900e736c501f859c50fE728c,
        send302: 0x32042142DD551b4EbE17B6FEd53131dd4b4eEa06,
        receive302: 0xE22ED54177CE1148C557de74E4873619e6c6b205,
        lzDvn: 0x129Ee430Cb2Ff2708CCADDBDb408a88Fe4FFd480
    });

    L1Chain public ETHEREUM = L1Chain({
        rpcUrl: "https://eth-mainnet.alchemyapi.io/v2/pwc5rmJhrdoaSEfimoKEmsvOjKSmPDrP",
        forkBlockNumber: 19512240,
        originEid: 30101,
        endpoint: 0x1a44076050125825900e736c501f859c50fE728c,
        send302: 0xbB2Ea70C9E858123480642Cf96acbcCE1372dCe1,
        receive302: 0xc02Ab410f0734EFa3F14628780e6e695156024C2,
        lzDvn: 0x589dEDbD617e0CBcB916A9223F4d1300c294236b
    });
}

/**
 * @title OFTCore
 * @dev Abstract contract for the OftChain (OFT) token.
 */
abstract contract OFTCoreUpgradeable is
    IOFT,
    OAppUpgradeable,
    OAppPreCrimeSimulatorUpgradeable,
    OAppOptionsType3Upgradeable
{
    using OFTMsgCodec for bytes;
    using OFTMsgCodec for bytes32;

    struct OFTCoreStorage {
        // Address of an optional contract to inspect both 'message' and 'options'
        address msgInspector;
    }

    // keccak256(abi.encode(uint256(keccak256("layerzerov2.storage.oftcore")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant OFTCoreStorageLocation =
        0x41db8a78b0206aba5c54bcbfc2bda0d84082a84eb88e680379a57b9e9f653c00;

    // @notice Provides a conversion rate when swapping between denominations of SD and LD
    //      - shareDecimals == SD == shared Decimals
    //      - localDecimals == LD == local decimals
    // @dev Considers that tokens have different decimal amounts on various chains.
    // @dev eg.
    //  For a token
    //      - locally with 4 decimals --> 1.2345 => uint(12345)
    //      - remotely with 2 decimals --> 1.23 => uint(123)
    //      - The conversion rate would be 10 ** (4 - 2) = 100
    //  @dev If you want to send 1.2345 -> (uint 12345), you CANNOT represent that value on the remote,
    //  you can only display 1.23 -> uint(123).
    //  @dev To preserve the dust that would otherwise be lost on that conversion,
    //  we need to unify a denomination that can be represented on ALL chains inside of the OFT mesh
    uint256 public immutable decimalConversionRate;

    // @notice Msg types that are used to identify the various OFT operations.
    // @dev This can be extended in child contracts for non-default oft operations
    // @dev These values are used in things like combineOptions() in OAppOptionsType3.sol.
    uint16 public constant SEND = 1;
    uint16 public constant SEND_AND_CALL = 2;

    event MsgInspectorSet(address inspector);

    function _getOFTCoreStorage() internal pure returns (OFTCoreStorage storage $) {
        assembly {
            $.slot := OFTCoreStorageLocation
        }
    }

    /**
     * @dev Constructor.
     * @param _localDecimals The decimals of the token on the local chain (this chain).
     * @param _endpoint The address of the LayerZero endpoint.
     */
    constructor(uint8 _localDecimals, address _endpoint) OAppUpgradeable(_endpoint) {
        if (_localDecimals < sharedDecimals()) revert InvalidLocalDecimals();
        decimalConversionRate = 10 ** (_localDecimals - sharedDecimals());
    }

    /**
     * @dev Initializes the OFTCore contract.
     * @param _delegate The delegate capable of making OApp configurations inside of the endpoint.
     *
     * @dev The delegate typically should be set as the owner of the contract.
     * @dev Ownable is not initialized here on purpose. It should be initialized in the child contract to
     * accommodate the different version of Ownable.
     */
    function __OFTCore_init(address _delegate) internal onlyInitializing {
        __OAppCore_init(_delegate);
    }

    function __OFTCore_init_unchained() internal onlyInitializing {}

    function msgInspector() public view returns (address) {
        OFTCoreStorage storage $ = _getOFTCoreStorage();
        return $.msgInspector;
    }

    /**
     * @dev Retrieves the shared decimals of the OFT.
     * @return The shared decimals of the OFT.
     *
     * @dev Sets an implicit cap on the amount of tokens, over uint64.max() will need some sort of outbound cap / totalSupply cap
     * Lowest common decimal denominator between chains.
     * Defaults to 6 decimal places to provide up to 18,446,744,073,709.551615 units (max uint64).
     * For tokens exceeding this totalSupply(), they will need to override the sharedDecimals function with something smaller.
     * ie. 4 sharedDecimals would be 1,844,674,407,370,955.1615
     */
    function sharedDecimals() public pure virtual returns (uint8) {
        return 6;
    }

    /**
     * @dev Sets the message inspector address for the OFT.
     * @param _msgInspector The address of the message inspector.
     *
     * @dev This is an optional contract that can be used to inspect both 'message' and 'options'.
     * @dev Set it to address(0) to disable it, or set it to a contract address to enable it.
     */
    function setMsgInspector(address _msgInspector) public virtual onlyOwner {
        OFTCoreStorage storage $ = _getOFTCoreStorage();
        $.msgInspector = _msgInspector;
        emit MsgInspectorSet(_msgInspector);
    }

    /**
     * @notice Provides a quote for OFT-related operations.
     * @param _sendParam The parameters for the send operation.
     * @return oftLimit The OFT limit information.
     * @return oftFeeDetails The details of OFT fees.
     * @return oftReceipt The OFT receipt information.
     */
    function quoteOFT(
        SendParam calldata _sendParam
    )
        external
        view
        virtual
        returns (OFTLimit memory oftLimit, OFTFeeDetail[] memory oftFeeDetails, OFTReceipt memory oftReceipt)
    {
        uint256 minAmountLD = 0; // Unused in the default implementation.
        uint256 maxAmountLD = type(uint64).max; // Unused in the default implementation.
        oftLimit = OFTLimit(minAmountLD, maxAmountLD);

        // Unused in the default implementation; reserved for future complex fee details.
        oftFeeDetails = new OFTFeeDetail[](0);

        // @dev This is the same as the send() operation, but without the actual send.
        // - amountSentLD is the amount in local decimals that would be sent from the sender.
        // - amountReceivedLD is the amount in local decimals that will be credited to the recipient on the remote OFT instance.
        // @dev The amountSentLD MIGHT not equal the amount the user actually receives. HOWEVER, the default does.
        (uint256 amountSentLD, uint256 amountReceivedLD) = _debitView(
            _sendParam.amountLD,
            _sendParam.minAmountLD,
            _sendParam.dstEid
        );
        oftReceipt = OFTReceipt(amountSentLD, amountReceivedLD);
    }

    /**
     * @notice Provides a quote for the send() operation.
     * @param _sendParam The parameters for the send() operation.
     * @param _payInLzToken Flag indicating whether the caller is paying in the LZ token.
     * @return msgFee The calculated LayerZero messaging fee from the send() operation.
     *
     * @dev MessagingFee: LayerZero msg fee
     *  - nativeFee: The native fee.
     *  - lzTokenFee: The lzToken fee.
     */
    function quoteSend(
        SendParam calldata _sendParam,
        bool _payInLzToken
    ) external view virtual returns (MessagingFee memory msgFee) {
        // @dev mock the amount to receive, this is the same operation used in the send().
        // The quote is as similar as possible to the actual send() operation.
        (, uint256 amountReceivedLD) = _debitView(_sendParam.amountLD, _sendParam.minAmountLD, _sendParam.dstEid);

        // @dev Builds the options and OFT message to quote in the endpoint.
        (bytes memory message, bytes memory options) = _buildMsgAndOptions(_sendParam, amountReceivedLD);

        // @dev Calculates the LayerZero fee for the send() operation.
        return _quote(_sendParam.dstEid, message, options, _payInLzToken);
    }

    /**
     * @dev Executes the send operation.
     * @param _sendParam The parameters for the send operation.
     * @param _fee The calculated fee for the send() operation.
     *      - nativeFee: The native fee.
     *      - lzTokenFee: The lzToken fee.
     * @param _refundAddress The address to receive any excess funds.
     * @return msgReceipt The receipt for the send operation.
     * @return oftReceipt The OFT receipt information.
     *
     * @dev MessagingReceipt: LayerZero msg receipt
     *  - guid: The unique identifier for the sent message.
     *  - nonce: The nonce of the sent message.
     *  - fee: The LayerZero fee incurred for the message.
     */
    function send(
        SendParam calldata _sendParam,
        MessagingFee calldata _fee,
        address _refundAddress
    ) external payable virtual returns (MessagingReceipt memory msgReceipt, OFTReceipt memory oftReceipt) {
        // @dev Applies the token transfers regarding this send() operation.
        // - amountSentLD is the amount in local decimals that was ACTUALLY sent/debited from the sender.
        // - amountReceivedLD is the amount in local decimals that will be received/credited to the recipient on the remote OFT instance.
        (uint256 amountSentLD, uint256 amountReceivedLD) = _debit(
            _sendParam.amountLD,
            _sendParam.minAmountLD,
            _sendParam.dstEid
        );

        // @dev Builds the options and OFT message to quote in the endpoint.
        (bytes memory message, bytes memory options) = _buildMsgAndOptions(_sendParam, amountReceivedLD);

        // @dev Sends the message to the LayerZero endpoint and returns the LayerZero msg receipt.
        msgReceipt = _lzSend(_sendParam.dstEid, message, options, _fee, _refundAddress);
        // @dev Formulate the OFT receipt.
        oftReceipt = OFTReceipt(amountSentLD, amountReceivedLD);

        emit OFTSent(msgReceipt.guid, _sendParam.dstEid, msg.sender, amountSentLD, amountReceivedLD);
    }

    /**
     * @dev Internal function to build the message and options.
     * @param _sendParam The parameters for the send() operation.
     * @param _amountLD The amount in local decimals.
     * @return message The encoded message.
     * @return options The encoded options.
     */
    function _buildMsgAndOptions(
        SendParam calldata _sendParam,
        uint256 _amountLD
    ) internal view virtual returns (bytes memory message, bytes memory options) {
        bool hasCompose;
        // @dev This generated message has the msg.sender encoded into the payload so the remote knows who the caller is.
        (message, hasCompose) = OFTMsgCodec.encode(
            _sendParam.to,
            _toSD(_amountLD),
            // @dev Must be include a non empty bytes if you want to compose, EVEN if you dont need it on the remote.
            // EVEN if you dont require an arbitrary payload to be sent... eg. '0x01'
            _sendParam.composeMsg
        );
        // @dev Change the msg type depending if its composed or not.
        uint16 msgType = hasCompose ? SEND_AND_CALL : SEND;
        // @dev Combine the callers _extraOptions with the enforced options via the OAppOptionsType3.
        options = combineOptions(_sendParam.dstEid, msgType, _sendParam.extraOptions);

        OFTCoreStorage storage $ = _getOFTCoreStorage();

        // @dev Optionally inspect the message and options depending if the OApp owner has set a msg inspector.
        // @dev If it fails inspection, needs to revert in the implementation. ie. does not rely on return boolean
        if ($.msgInspector != address(0)) IOAppMsgInspector($.msgInspector).inspect(message, options);
    }

    /**
     * @dev Internal function to handle the receive on the LayerZero endpoint.
     * @param _origin The origin information.
     *  - srcEid: The source chain endpoint ID.
     *  - sender: The sender address from the src chain.
     *  - nonce: The nonce of the LayerZero message.
     * @param _guid The unique identifier for the received LayerZero message.
     * @param _message The encoded message.
     * @dev _executor The address of the executor.
     * @dev _extraData Additional data.
     */
    function _lzReceive(
        Origin calldata _origin,
        bytes32 _guid,
        bytes calldata _message,
        address /*_executor*/, // @dev unused in the default implementation.
        bytes calldata /*_extraData*/ // @dev unused in the default implementation.
    ) internal virtual override {
        // @dev The src sending chain doesnt know the address length on this chain (potentially non-evm)
        // Thus everything is bytes32() encoded in flight.
        address toAddress = _message.sendTo().bytes32ToAddress();
        // @dev Credit the amountLD to the recipient and return the ACTUAL amount the recipient received in local decimals
        uint256 amountReceivedLD = _credit(toAddress, _toLD(_message.amountSD()), _origin.srcEid);

        if (_message.isComposed()) {
            // @dev Proprietary composeMsg format for the OFT.
            bytes memory composeMsg = OFTComposeMsgCodec.encode(
                _origin.nonce,
                _origin.srcEid,
                amountReceivedLD,
                _message.composeMsg()
            );

            // @dev Stores the lzCompose payload that will be executed in a separate tx.
            // Standardizes functionality for executing arbitrary contract invocation on some non-evm chains.
            // @dev The off-chain executor will listen and process the msg based on the src-chain-callers compose options passed.
            // @dev The index is used when a OApp needs to compose multiple msgs on lzReceive.
            // For default OFT implementation there is only 1 compose msg per lzReceive, thus its always 0.
            endpoint.sendCompose(toAddress, _guid, 0, /* the index of the composed message*/ composeMsg);
        }

        emit OFTReceived(_guid, _origin.srcEid, toAddress, amountReceivedLD);
    }

    /**
     * @dev Internal function to handle the OAppPreCrimeSimulator simulated receive.
     * @param _origin The origin information.
     *  - srcEid: The source chain endpoint ID.
     *  - sender: The sender address from the src chain.
     *  - nonce: The nonce of the LayerZero message.
     * @param _guid The unique identifier for the received LayerZero message.
     * @param _message The LayerZero message.
     * @param _executor The address of the off-chain executor.
     * @param _extraData Arbitrary data passed by the msg executor.
     *
     * @dev Enables the preCrime simulator to mock sending lzReceive() messages,
     * routes the msg down from the OAppPreCrimeSimulator, and back up to the OAppReceiver.
     */
    function _lzReceiveSimulate(
        Origin calldata _origin,
        bytes32 _guid,
        bytes calldata _message,
        address _executor,
        bytes calldata _extraData
    ) internal virtual override {
        _lzReceive(_origin, _guid, _message, _executor, _extraData);
    }

    /**
     * @dev Check if the peer is considered 'trusted' by the OApp.
     * @param _eid The endpoint ID to check.
     * @param _peer The peer to check.
     * @return Whether the peer passed is considered 'trusted' by the OApp.
     *
     * @dev Enables OAppPreCrimeSimulator to check whether a potential Inbound Packet is from a trusted source.
     */
    function isPeer(uint32 _eid, bytes32 _peer) public view virtual override returns (bool) {
        return peers(_eid) == _peer;
    }

    /**
     * @dev Internal function to remove dust from the given local decimal amount.
     * @param _amountLD The amount in local decimals.
     * @return amountLD The amount after removing dust.
     *
     * @dev Prevents the loss of dust when moving amounts between chains with different decimals.
     * @dev eg. uint(123) with a conversion rate of 100 becomes uint(100).
     */
    function _removeDust(uint256 _amountLD) internal view virtual returns (uint256 amountLD) {
        return (_amountLD / decimalConversionRate) * decimalConversionRate;
    }

    /**
     * @dev Internal function to convert an amount from shared decimals into local decimals.
     * @param _amountSD The amount in shared decimals.
     * @return amountLD The amount in local decimals.
     */
    function _toLD(uint64 _amountSD) internal view virtual returns (uint256 amountLD) {
        return _amountSD * decimalConversionRate;
    }

    /**
     * @dev Internal function to convert an amount from local decimals into shared decimals.
     * @param _amountLD The amount in local decimals.
     * @return amountSD The amount in shared decimals.
     */
    function _toSD(uint256 _amountLD) internal view virtual returns (uint64 amountSD) {
        return uint64(_amountLD / decimalConversionRate);
    }

    /**
     * @dev Internal function to mock the amount mutation from a OFT debit() operation.
     * @param _amountLD The amount to send in local decimals.
     * @param _minAmountLD The minimum amount to send in local decimals.
     * @dev _dstEid The destination endpoint ID.
     * @return amountSentLD The amount sent, in local decimals.
     * @return amountReceivedLD The amount to be received on the remote chain, in local decimals.
     *
     * @dev This is where things like fees would be calculated and deducted from the amount to be received on the remote.
     */
    function _debitView(
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 /*_dstEid*/
    ) internal view virtual returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        // @dev Remove the dust so nothing is lost on the conversion between chains with different decimals for the token.
        amountSentLD = _removeDust(_amountLD);
        // @dev The amount to send is the same as amount received in the default implementation.
        amountReceivedLD = amountSentLD;

        // @dev Check for slippage.
        if (amountReceivedLD < _minAmountLD) {
            revert SlippageExceeded(amountReceivedLD, _minAmountLD);
        }
    }

    /**
     * @dev Internal function to perform a debit operation.
     * @param _amountLD The amount to send in local decimals.
     * @param _minAmountLD The minimum amount to send in local decimals.
     * @param _dstEid The destination endpoint ID.
     * @return amountSentLD The amount sent in local decimals.
     * @return amountReceivedLD The amount received in local decimals on the remote.
     *
     * @dev Defined here but are intended to be overriden depending on the OFT implementation.
     * @dev Depending on OFT implementation the _amountLD could differ from the amountReceivedLD.
     */
    function _debit(
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    ) internal virtual returns (uint256 amountSentLD, uint256 amountReceivedLD);

    /**
     * @dev Internal function to perform a credit operation.
     * @param _to The address to credit.
     * @param _amountLD The amount to credit in local decimals.
     * @param _srcEid The source endpoint ID.
     * @return amountReceivedLD The amount ACTUALLY received in local decimals.
     *
     * @dev Defined here but are intended to be overriden depending on the OFT implementation.
     * @dev Depending on OFT implementation the _amountLD could differ from the amountReceivedLD.
     */
    function _credit(
        address _to,
        uint256 _amountLD,
        uint32 _srcEid
    ) internal virtual returns (uint256 amountReceivedLD);
}

/**
 * @title OFT Contract
 * @dev OFT is an ERC-20 token that extends the functionality of the OFTCore contract.
 */
abstract contract OFTUpgradeable is OFTCoreUpgradeable, ERC20Upgradeable {
    /**
     * @dev Constructor for the OFT contract.
     * @param _lzEndpoint The LayerZero endpoint address.
     */
    constructor(address _lzEndpoint) OFTCoreUpgradeable(decimals(), _lzEndpoint) {}

    /**
     * @dev Initializes the OFT with the provided name, symbol, and delegate.
     * @param _name The name of the OFT.
     * @param _symbol The symbol of the OFT.
     * @param _delegate The delegate capable of making OApp configurations inside of the endpoint.
     *
     * @dev The delegate typically should be set as the owner of the contract.
     * @dev Ownable is not initialized here on purpose. It should be initialized in the child contract to
     * accommodate the different version of Ownable.
     */
    function __OFT_init(string memory _name, string memory _symbol, address _delegate) internal onlyInitializing {
        __ERC20_init(_name, _symbol);
        __OFTCore_init(_delegate);
    }

    function __OFT_init_unchained() internal onlyInitializing {}

    /**
     * @notice Retrieves interfaceID and the version of the OFT.
     * @return interfaceId The interface ID.
     * @return version The version.
     *
     * @dev interfaceId: This specific interface ID is '0x02e49c2c'.
     * @dev version: Indicates a cross-chain compatible msg encoding with other OFTs.
     * @dev If a new feature is added to the OFT cross-chain msg encoding, the version will be incremented.
     * ie. localOFT version(x,1) CAN send messages to remoteOFT version(x,1)
     */
    function oftVersion() external pure virtual returns (bytes4 interfaceId, uint64 version) {
        return (type(IOFT).interfaceId, 1);
    }

    /**
     * @dev Retrieves the address of the underlying ERC20 implementation.
     * @return The address of the OFT token.
     *
     * @dev In the case of OFT, address(this) and erc20 are the same contract.
     */
    function token() external view returns (address) {
        return address(this);
    }

    /**
     * @notice Indicates whether the OFT contract requires approval of the 'token()' to send.
     * @return requiresApproval Needs approval of the underlying token implementation.
     *
     * @dev In the case of OFT where the contract IS the token, approval is NOT required.
     */
    function approvalRequired() external pure virtual returns (bool) {
        return false;
    }

    /**
     * @dev Burns tokens from the sender's specified balance.
     * @param _amountLD The amount of tokens to send in local decimals.
     * @param _minAmountLD The minimum amount to send in local decimals.
     * @param _dstEid The destination chain ID.
     * @return amountSentLD The amount sent in local decimals.
     * @return amountReceivedLD The amount received in local decimals on the remote.
     */
    function _debit(
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    ) internal virtual override returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        (amountSentLD, amountReceivedLD) = _debitView(_amountLD, _minAmountLD, _dstEid);

        // @dev In NON-default OFT, amountSentLD could be 100, with a 10% fee, the amountReceivedLD amount is 90,
        // therefore amountSentLD CAN differ from amountReceivedLD.

        // @dev Default OFT burns on src.
        _burn(msg.sender, amountSentLD);
    }

    /**
     * @dev Credits tokens to the specified address.
     * @param _to The address to credit the tokens to.
     * @param _amountLD The amount of tokens to credit in local decimals.
     * @dev _srcEid The source chain ID.
     * @return amountReceivedLD The amount of tokens ACTUALLY received in local decimals.
     */
    function _credit(
        address _to,
        uint256 _amountLD,
        uint32 /*_srcEid*/
    ) internal virtual override returns (uint256 amountReceivedLD) {
        // @dev Default OFT mints on dst.
        _mint(_to, _amountLD);
        // @dev In the case of NON-default OFT, the _amountLD MIGHT not be == amountReceivedLD.
        return _amountLD;
    }
}

/**
 * @title Mintable OFT
 * @dev An OFT token that can be minted by a minter.
 */
contract MintableOFTUpgradeable is RateLimiter, OFTUpgradeable, AccessControlUpgradeable, IMintableERC20 {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

    /**
     * @dev Constructor for MintableOFT
     * @param endpoint The layer zero endpoint address
     */
    constructor(address endpoint) OFTUpgradeable(endpoint) {
        _disableInitializers();
    }

    /**
     * @dev Initializes the contract
     * @param name The name of the token
     * @param symbol The symbol of the token
     * @param owner The owner of the token
     */
    function initialize(string memory name, string memory symbol, address owner) external virtual initializer {
        __OFT_init(name, symbol, owner);
        __Ownable_init(owner);

        _grantRole(DEFAULT_ADMIN_ROLE, owner);
    }

    function _debit(
        uint256 _amountLD,
        uint256 _minAmountLD,
        uint32 _dstEid
    ) internal virtual override returns (uint256 amountSentLD, uint256 amountReceivedLD) {
        _checkAndUpdateRateLimit(_dstEid, _amountLD);
        return super._debit(_amountLD, _minAmountLD, _dstEid);
    }

    /**
     * @dev Mint function that can only be called by a minter
     * @param _account The account to mint the tokens to
     * @param _amount The amount of tokens to mint
     */
    function mint(address _account, uint256 _amount) external onlyRole(MINTER_ROLE) {
        _mint(_account, _amount);
    }
    
    function setRateLimits(RateLimitConfig[] calldata _rateLimitConfigs) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _setRateLimits(_rateLimitConfigs);
    }

    function updateTokenSymbol(string memory name_, string memory symbol_) external onlyRole(DEFAULT_ADMIN_ROLE) {
        ERC20Storage storage $ = getERC20Storage();
        $._name = name_;
        $._symbol = symbol_;
    }

    // // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.ERC20")) - 1)) & ~bytes32(uint256(0xff))

    function getERC20Storage() internal pure returns (ERC20Storage storage $) {
        bytes32 ERC20StorageLocation = 0x52c63247e1f47db19d5ce0460030c497f067ca4cebf71ba98eeadabe20bace00;
        assembly {
            $.slot := ERC20StorageLocation
        }
    }
}