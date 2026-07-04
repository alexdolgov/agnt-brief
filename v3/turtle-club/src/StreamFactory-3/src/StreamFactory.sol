// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {AccessManagedUpgradeable} from "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import {EIP712Upgradeable} from "@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import {SignatureChecker} from "@openzeppelin/contracts/utils/cryptography/SignatureChecker.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ITransparentUpgradeableProxy} from "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";
import {Stream} from "./Stream.sol";
import {IStreamFactory} from "@/interfaces/IStreamFactory.sol";
import {IStream} from "@/interfaces/IStream.sol";

/**
 * @title StreamFactory
 * @dev Factory contract for creating upgradeable Stream instances
 * @author Turtle DAO
 */
contract StreamFactory is IStreamFactory, Initializable, UUPSUpgradeable, EIP712Upgradeable, AccessManagedUpgradeable {
    using SafeERC20 for IERC20;
    using SignatureChecker for address;

    // ================= CONSTANTS =================

    /// @dev EIP-712 type hashes used for domain-specific signature validation:
    bytes32 private constant CREATE_STREAM_PARAMS_TYPEHASH =
        keccak256("CreateStreamParams(bytes16 streamId,address rewardToken,uint256 netTotalAmount,uint256 feeAmount)");
    bytes32 private constant CREATE_STREAM_TYPEHASH =
        keccak256(
            "CreateStream(address creator,CreateStreamParams params,uint40 deadline)CreateStreamParams(bytes16 streamId,address rewardToken,uint256 netTotalAmount,uint256 feeAmount)"
        );

    bytes32 private constant CREATE_STREAMS_TYPEHASH =
        keccak256(
            "CreateStreams(address creator,CreateStreamParams[] params,uint40 deadline)CreateStreamParams(bytes16 streamId,address rewardToken,uint256 netTotalAmount,uint256 feeAmount)"
        );

    bytes32 private constant ADD_FUNDS_PARAMS_TYPEHASH =
        keccak256("AddFundsParams(address stream,uint256 netAmount,uint256 feeAmount)");
    bytes32 private constant ADD_FUNDS_TYPEHASH =
        keccak256(
            "AddFunds(address admin,AddFundsParams params,bytes32 salt,uint40 deadline)AddFundsParams(address stream,uint256 netAmount,uint256 feeAmount)"
        );

    bytes32 private constant WITHDRAW_FUNDS_PARAMS_TYPEHASH =
        keccak256("WithdrawFundsParams(address stream,address to,uint256 amount)");
    bytes32 private constant WITHDRAW_FUNDS_TYPEHASH =
        keccak256(
            "WithdrawFunds(address admin,WithdrawFundsParams params,bytes32 salt,uint40 deadline)WithdrawFundsParams(address stream,address to,uint256 amount)"
        );

    // ================= STORAGE =================
    /// @custom:storage-location erc7201:turtle.storage.StreamFactory
    struct StreamFactoryStorage {
        /// @notice Implementation contract for Stream
        IStream streamImplementation;
        /// @notice Address of the wallet that must sign the `createStream` and `addFunds` request off-chain
        address createStreamVerifier;
        /// @notice Address of the wallet that must sign the `withdrawFunds` request off-chain
        address withdrawFundsVerifier;
        /// @notice Address that collects stream creation fees
        address feeCollector;
        /// @notice Mapping to record stream info by stream address
        mapping(IStream => StreamInfo) streamInfo;
        /// @notice Array of all stream addresses
        IStream[] streams;
        /// @notice Mapping to map streamID to stream contract address
        mapping(bytes16 => IStream) streamIdMap;
        /// @notice operators approved by users to claim on their behalf
        mapping(address => mapping(address => bool)) operators;
        /// @notice Tracks salts that have already been used to prevent duplicate add/withdraw funds operations using the same salt
        mapping(bytes32 => bool) usedSalts;
    }

    // keccak256(abi.encode(uint(keccak256("turtle.storage.StreamFactory")) - 1)) & ~bytes32(uint(0xff))
    bytes32 private constant StreamFactoryStorageLocation =
        0xaf86cf85072292d7d3669539bbb713013125b90961ea33b32489e7e62d754100;

    function _getStreamFactoryStorage() private pure returns (StreamFactoryStorage storage $) {
        assembly {
            $.slot := StreamFactoryStorageLocation
        }
    }

    /// ================= MODIFIERS =================
    modifier onlyAdminOrRestricted(IStream stream) {
        _onlyAdminOrRestricted(stream);
        _;
    }

    function _onlyAdminOrRestricted(IStream stream) private {
        StreamFactoryStorage storage $ = _getStreamFactoryStorage();
        // get the admin for the stream
        address admin = $.streamInfo[stream].admin;
        // only the admin or authorized roles can call
        if (admin != msg.sender) {
            _checkCanCall(_msgSender(), _msgData());
        }
    }

    modifier onlyUserOrRestricted(address user) {
        _onlyUserOrRestricted(user);
        _;
    }

    function _onlyUserOrRestricted(address user) private {
        if (msg.sender != user) {
            _checkCanCall(_msgSender(), _msgData());
        }
    }

    modifier validStream(IStream stream) {
        if (!isValidStream(stream)) revert InvalidStream();
        _;
    }

    // ================= EVENTS =================

    event StreamCreated(
        bytes16 indexed streamId,
        IStream indexed stream,
        address indexed streamAdmin,
        IERC20 rewardToken,
        uint netTotalAmount,
        uint feeAmount,
        address feeCollector,
        bytes signature,
        uint40 creationDeadline
    );

    event FundsAdded(IStream indexed stream, address feeCollector, uint netAmount, uint feeAmount);

    event FundsWithdrawn(IStream indexed stream, address to, uint amount, address msgSender);

    event TokensRescued(IERC20 token, address to, uint amount);
    event TokensRescuedFromStream(IStream indexed stream, IERC20 token, address to, uint amount);

    event CreateStreamVerifierChanged(address oldVerifier, address newVerifier);

    event WithdrawFundsVerifierChanged(address oldVerifier, address newVerifier);

    event StreamImplementationChanged(IStream indexed oldImplementation, IStream indexed newImplementation);

    event FeeCollectorChanged(address indexed oldFeeCollector, address indexed newFeeCollector);

    event OperatorToggled(address indexed user, address indexed operator, bool isWhitelisted);

    event MerkleRootUpdated(IStream indexed stream, bytes32 rootHash, uint40 timestamp);

    event MerkleRootCleared(IStream indexed stream);

    event PrevMerkleRootCleared(IStream indexed stream);

    event StreamPauseStatusChanged(IStream indexed stream, bool paused);

    event StreamImplementationUpgraded(IStream indexed stream, address newImplementation, bytes initData);

    event AdminChanged(IStream indexed stream, address oldAdmin, address newAdmin);

    // ================= ERRORS =================

    error InvalidStreamId();
    error InvalidNetTotalAmount();
    error InvalidRewardTokenAddress();
    error NumberOfStreamsCannotBeZero();
    error SaltUsed();
    error ExpiredSignature();
    error StreamIdAlreadyExists();
    error InvalidSignature();
    error CallerIsNotStreamAdmin();
    error InvalidImplementation();
    error InvalidAmount();
    error InvalidAddress();
    error InvalidToAddress();
    error InvalidArrayLength();
    error InvalidStream();
    error NewAdminMustBeDifferentThanOldAdmin();
    error NotValidOperatorForUser(address user, address operator);

    // ================= INITIALIZATION =================

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @dev Initializes the StreamFactory
     * @param authority Address of the AccessManager
     */
    function initialize(
        address authority,
        IStream streamImplementation,
        address createStreamVerifier,
        address withdrawFundsVerifier,
        address feeCollector
    ) external initializer {
        __UUPSUpgradeable_init();
        __EIP712_init("Turtle Stream Factory", "v1");

        if (authority == address(0) || authority.code.length == 0) revert InvalidAddress();
        __AccessManaged_init(authority);

        _setStreamImplementation(streamImplementation);
        _setCreateStreamVerifier(createStreamVerifier);
        _setWithdrawFundsVerifier(withdrawFundsVerifier);
        _setFeeCollector(feeCollector);
    }

    // ================= VIEW FUNCTIONS =================

    /// @dev Returns the version of the contract
    function version() external pure returns (string memory) {
        return "1.0.0";
    }

    function isStreamFactory() external pure returns (bool) {
        return true;
    }

    /// @notice Implementation contract for Stream
    function getStreamImplementation() external view returns (IStream) {
        return _getStreamFactoryStorage().streamImplementation;
    }

    /// @notice Get create stream verifier address
    function getCreateStreamVerifier() external view returns (address) {
        return _getStreamFactoryStorage().createStreamVerifier;
    }

    /// @notice Get withdraw funds verifier address
    function getWithdrawFundsVerifier() external view returns (address) {
        return _getStreamFactoryStorage().withdrawFundsVerifier;
    }

    /// @notice Get fee collector address
    function getFeeCollector() external view returns (address) {
        return _getStreamFactoryStorage().feeCollector;
    }

    function getStreams() external view returns (IStream[] memory) {
        return _getStreamFactoryStorage().streams;
    }

    function getStream(bytes16 streamId) external view returns (IStream) {
        return _getStreamFactoryStorage().streamIdMap[streamId];
    }

    function getStreamInfo(IStream stream) external view returns (StreamInfo memory) {
        return _getStreamFactoryStorage().streamInfo[stream];
    }

    function getStreamInfo(bytes16 streamId) external view returns (StreamInfo memory) {
        StreamFactoryStorage storage $ = _getStreamFactoryStorage();
        IStream stream = $.streamIdMap[streamId];
        return $.streamInfo[stream];
    }

    function isOperator(address user, address operator) external view returns (bool) {
        return _getStreamFactoryStorage().operators[user][operator];
    }

    function isValidStream(IStream stream) public view returns (bool) {
        return _getStreamFactoryStorage().streamInfo[stream].streamId != 0;
    }

    function isUsedSalt(bytes32 salt) external view returns (bool) {
        return _getStreamFactoryStorage().usedSalts[salt];
    }

    // ========== Create stream ==========

    /**
     * @dev Creates a new upgradeable Stream contract
     * @param params Creation parameters
     * @return stream Address of the newly created Stream proxy
     */
    function createStream(
        CreateStreamParams calldata params,
        uint40 deadline,
        bytes calldata signature
    ) external returns (IStream stream) {
        _validateCreateStreamParams(params);
        _validateCreateStreamSignature(params, deadline, signature);
        return _createStream(params, deadline, signature);
    }

    function _createStream(
        CreateStreamParams calldata params,
        uint40 deadline,
        bytes calldata signature
    ) private returns (IStream stream) {
        StreamFactoryStorage storage $ = _getStreamFactoryStorage();

        /*** Deploy stream ***/
        // Encode initialization data
        bytes memory initData = abi.encodeWithSelector(
            IStream.initialize.selector,
            params.streamId,
            params.rewardToken
        );

        // Deply proxy
        stream = IStream(address(new ERC1967Proxy(address($.streamImplementation), initData)));

        address creator = msg.sender;

        /*** Store stream information ***/
        $.streams.push(stream);
        $.streamInfo[stream] = StreamInfo({streamId: params.streamId, admin: creator, rewardToken: params.rewardToken});
        $.streamIdMap[params.streamId] = stream;

        /*** Transfer amounts  ***/
        params.rewardToken.safeTransferFrom(creator, address(stream), params.netTotalAmount);

        address feeCollector;
        if (params.feeAmount > 0) {
            // transfer fee to fee collector
            feeCollector = $.feeCollector;
            params.rewardToken.safeTransferFrom(creator, feeCollector, params.feeAmount);
        }

        /*** Emit event ***/
        emit StreamCreated(
            params.streamId,
            stream,
            creator,
            params.rewardToken,
            params.netTotalAmount,
            params.feeAmount,
            feeCollector,
            signature,
            deadline
        );
    }

    function _validateCreateStreamParams(CreateStreamParams calldata params) private view {
        if (params.streamId == 0) revert InvalidStreamId();
        if (params.netTotalAmount == 0) revert InvalidNetTotalAmount();
        if (address(params.rewardToken) == address(0)) revert InvalidRewardTokenAddress();

        // Validate stream does not exist
        StreamFactoryStorage storage $ = _getStreamFactoryStorage();
        if (address($.streamIdMap[params.streamId]) != address(0)) revert StreamIdAlreadyExists();
    }

    function _validateCreateStreamSignature(
        CreateStreamParams calldata params,
        uint40 deadline,
        bytes calldata signature
    ) private view {
        // Validate deadline
        if (block.timestamp > deadline) revert ExpiredSignature();

        StreamFactoryStorage storage $ = _getStreamFactoryStorage();

        // Validate signature
        bytes32 eip712Digest = computeCreateStreamEIP712Digest(msg.sender, params, deadline);
        if (!$.createStreamVerifier.isValidSignatureNow(eip712Digest, signature)) revert InvalidSignature();
    }

    function computeCreateStreamEIP712Digest(
        address creator,
        CreateStreamParams calldata params,
        uint40 deadline
    ) public view returns (bytes32) {
        bytes32 hashStruct = keccak256(
            abi.encode(
                CREATE_STREAM_TYPEHASH,
                creator,
                // Struct values are encoded recursively as hashStruct
                keccak256(
                    abi.encode(
                        CREATE_STREAM_PARAMS_TYPEHASH,
                        params.streamId,
                        params.rewardToken,
                        params.netTotalAmount,
                        params.feeAmount
                    )
                ),
                deadline
            )
        );

        return _hashTypedDataV4(hashStruct);
    }

    // ========== Create multiple streams ==========

    function createStreams(
        CreateStreamParams[] calldata params,
        uint40 deadline,
        bytes calldata signature
    ) external returns (IStream[] memory streams) {
        uint streamsLength = params.length;
        if (streamsLength == 0) revert NumberOfStreamsCannotBeZero();

        _validateCreateStreamsSignature(params, deadline, signature);

        streams = new IStream[](streamsLength);
        for (uint i; i < streamsLength; ++i) {
            _validateCreateStreamParams(params[i]);
            streams[i] = _createStream(params[i], deadline, signature);
        }
    }

    function _validateCreateStreamsSignature(
        CreateStreamParams[] calldata params,
        uint40 deadline,
        bytes calldata signature
    ) private view {
        // Validate deadline
        if (block.timestamp > deadline) revert ExpiredSignature();

        StreamFactoryStorage storage $ = _getStreamFactoryStorage();

        // Validate signature
        bytes32 eip712Digest = computeCreateStreamsEIP712Digest(msg.sender, params, deadline);
        if (!$.createStreamVerifier.isValidSignatureNow(eip712Digest, signature)) revert InvalidSignature();
    }

    function computeCreateStreamsEIP712Digest(
        address creator,
        CreateStreamParams[] calldata params,
        uint40 deadline
    ) public view returns (bytes32) {
        // Hash each CreateStreamParams struct
        bytes32[] memory hashedParams = new bytes32[](params.length);
        for (uint i; i < params.length; ++i) {
            hashedParams[i] = keccak256(
                abi.encode(
                    CREATE_STREAM_PARAMS_TYPEHASH,
                    params[i].streamId,
                    params[i].rewardToken,
                    params[i].netTotalAmount,
                    params[i].feeAmount
                )
            );
        }

        // Hash the array of hashed structs
        bytes32 paramsHash = keccak256(abi.encodePacked(hashedParams));

        // Create the final hashStruct
        bytes32 hashStruct = keccak256(abi.encode(CREATE_STREAMS_TYPEHASH, creator, paramsHash, deadline));

        return _hashTypedDataV4(hashStruct);
    }

    // ========== Add funds ==========

    function addFunds(
        AddFundsParams calldata params,
        bytes32 salt,
        uint40 deadline,
        bytes calldata signature
    ) external validStream(params.stream) {
        _validateAddFundsParams(params, salt, deadline, signature);

        StreamFactoryStorage storage $ = _getStreamFactoryStorage();

        IERC20 rewardToken = $.streamInfo[params.stream].rewardToken;

        address feeCollector;
        if (params.feeAmount > 0) {
            feeCollector = $.feeCollector;
            rewardToken.safeTransferFrom(msg.sender, feeCollector, params.feeAmount);
        }

        rewardToken.safeTransferFrom(msg.sender, address(params.stream), params.netAmount);

        emit FundsAdded(params.stream, feeCollector, params.netAmount, params.feeAmount);
    }

    function _validateAddFundsParams(
        AddFundsParams calldata params,
        bytes32 salt,
        uint40 deadline,
        bytes calldata signature
    ) private {
        // Validate deadline
        if (block.timestamp > deadline) revert ExpiredSignature();

        if (params.netAmount == 0) revert InvalidAmount();

        StreamFactoryStorage storage $ = _getStreamFactoryStorage();

        // Verify caller is stream admin
        if (msg.sender != $.streamInfo[params.stream].admin) revert CallerIsNotStreamAdmin();

        // Verify unused salt
        if ($.usedSalts[salt]) revert SaltUsed();

        // Validate signature
        bytes32 eip712Digest = computeAddFundsEIP712Digest(msg.sender, params, salt, deadline);
        if (!$.createStreamVerifier.isValidSignatureNow(eip712Digest, signature)) revert InvalidSignature();

        // Mark 'salt' as used
        $.usedSalts[salt] = true;
    }

    function computeAddFundsEIP712Digest(
        address admin,
        AddFundsParams calldata params,
        bytes32 salt,
        uint40 deadline
    ) public view returns (bytes32) {
        bytes32 hashStruct = keccak256(
            abi.encode(
                ADD_FUNDS_TYPEHASH,
                admin,
                // Struct values are encoded recursively as hashStruct
                keccak256(abi.encode(ADD_FUNDS_PARAMS_TYPEHASH, params.stream, params.netAmount, params.feeAmount)),
                salt,
                deadline
            )
        );

        return _hashTypedDataV4(hashStruct);
    }

    // ========== Withdraw funds ==========

    function withdrawFunds(WithdrawFundsParams calldata params) external restricted validStream(params.stream) {
        _withdrawFunds(params);
    }

    function withdrawFunds(
        WithdrawFundsParams calldata params,
        bytes32 salt,
        uint40 deadline,
        bytes calldata signature
    ) external validStream(params.stream) {
        _validateWithdrawFunds(params, salt, deadline, signature);
        _withdrawFunds(params);
    }

    function _validateWithdrawFunds(
        WithdrawFundsParams calldata params,
        bytes32 salt,
        uint40 deadline,
        bytes calldata signature
    ) private {
        // Validate deadline
        if (block.timestamp > deadline) revert ExpiredSignature();

        if (params.amount == 0) revert InvalidAmount();

        StreamFactoryStorage storage $ = _getStreamFactoryStorage();

        // Verify caller is stream admin
        if (msg.sender != $.streamInfo[params.stream].admin) revert CallerIsNotStreamAdmin();

        // Verify unused salt
        if ($.usedSalts[salt]) revert SaltUsed();

        // Validate signature
        bytes32 eip712Digest = computeWithdrawFundsEIP712Digest(msg.sender, params, salt, deadline);
        if (!$.withdrawFundsVerifier.isValidSignatureNow(eip712Digest, signature)) revert InvalidSignature();

        // Mark 'salt' as used
        $.usedSalts[salt] = true;
    }

    function computeWithdrawFundsEIP712Digest(
        address admin,
        WithdrawFundsParams calldata params,
        bytes32 salt,
        uint40 deadline
    ) public view returns (bytes32) {
        bytes32 hashStruct = keccak256(
            abi.encode(
                WITHDRAW_FUNDS_TYPEHASH,
                admin,
                // Struct values are encoded recursively as hashStruct
                keccak256(abi.encode(WITHDRAW_FUNDS_PARAMS_TYPEHASH, params.stream, params.to, params.amount)),
                salt,
                deadline
            )
        );

        return _hashTypedDataV4(hashStruct);
    }

    function _withdrawFunds(WithdrawFundsParams calldata params) private {
        params.stream.withdrawFunds(params.to, params.amount);
        emit FundsWithdrawn(params.stream, params.to, params.amount, msg.sender);
    }

    // ========== Rescue tokens ==========

    function rescueTokens(IERC20 token, address payable to, uint amount) external restricted {
        if (to == address(0)) revert InvalidToAddress();

        bool isNative = address(token) == address(0);

        uint balance = isNative ? address(this).balance : token.balanceOf(address(this));
        if (balance < amount) amount = balance;

        if (isNative) {
            (bool success, bytes memory revertData) = to.call{value: amount}("");
            if (!success) {
                assembly {
                    revert(add(revertData, 32), mload(revertData))
                }
            }
        } else {
            token.safeTransfer(to, amount);
        }

        emit TokensRescued(token, to, amount);
    }

    function rescueTokensFromStream(
        IStream stream,
        IERC20 token,
        address payable to,
        uint amount
    ) external restricted validStream(stream) {
        amount = stream.rescueTokens(token, to, amount);
        emit TokensRescuedFromStream(stream, token, to, amount);
    }

    // ========== Batch claim ==========

    /// @dev Single claim input for batch processing
    // struct BatchClaim defined in IStreamFactory

    /**
     * @notice Claims rewards from multiple streams in a single transaction.
     * @dev
     * - If revertOnFailure is true, the function will revert on the first failure.
     * - If revertOnFailure is false, failures are skipped and marked in the result array.
     * @param claims Array of claim inputs, one per stream.
     * @param revertOnFailure Whether to revert on the first failed claim.
     * @return success Per-claim success flag.
     */
    function batchClaim(BatchClaim[] calldata claims, bool revertOnFailure) external returns (bool[] memory success) {
        success = _batchClaim(msg.sender, claims, revertOnFailure);
    }

    function batchClaimFor(
        address user,
        BatchClaim[] calldata claims,
        bool revertOnFailure
    ) external returns (bool[] memory success) {
        success = _batchClaim(user, claims, revertOnFailure);
    }

    function _batchClaim(
        address user,
        BatchClaim[] calldata claims,
        bool revertOnFailure
    ) private returns (bool[] memory success) {
        uint len = claims.length;
        success = new bool[](len);
        StreamFactoryStorage storage $ = _getStreamFactoryStorage();
        // Only `user` or approved operators can claim for `user`
        if (msg.sender != user && !$.operators[user][msg.sender]) {
            if (revertOnFailure) revert NotValidOperatorForUser(user, msg.sender);
            return success; // all false
        }

        for (uint i; i < len; ++i) {
            IStream stream = claims[i].stream;

            // Validate stream registered by the factory
            if (!isValidStream(stream)) {
                if (revertOnFailure) revert InvalidStream();
                continue;
            }

            // Attempt claim; stream will transfer tokens directly to user
            try stream.claimFor(user, claims[i].amount, claims[i].rootTimestamp, claims[i].merkleProof) {
                success[i] = true;
            } catch (bytes memory revertData) {
                if (revertOnFailure) {
                    assembly {
                        revert(add(revertData, 32), mload(revertData))
                    }
                }
                // mark as failed and continue
            }
        }
    }

    // ================= Update Merkle root functions =================

    function setMerkleRoot(IStream stream, bytes32 rootHash, uint40 timestamp) external restricted {
        _setMerkleRoot(stream, rootHash, timestamp);
    }

    function setMerkleRoots(
        IStream[] calldata streams,
        bytes32[] calldata rootHashes,
        uint40[] calldata timestamps
    ) external restricted {
        uint len = streams.length;
        if (len != rootHashes.length || len != timestamps.length) revert InvalidArrayLength();
        for (uint i; i < len; ++i) _setMerkleRoot(streams[i], rootHashes[i], timestamps[i]);
    }

    function _setMerkleRoot(IStream stream, bytes32 rootHash, uint40 timestamp) private validStream(stream) {
        stream.setMerkleRoot(rootHash, timestamp);
        emit MerkleRootUpdated(stream, rootHash, timestamp);
    }

    function clearMerkleRoots(IStream[] calldata streams) external restricted {
        for (uint i; i < streams.length; ++i) _clearMerkleRoot(streams[i]);
    }

    function clearMerkleRoot(IStream stream) external restricted {
        _clearMerkleRoot(stream);
    }

    function _clearMerkleRoot(IStream stream) private validStream(stream) {
        stream.clearMerkleRoot();
        emit MerkleRootCleared(stream);
    }

    function clearPrevMerkleRoots(IStream[] calldata streams) external restricted {
        for (uint i; i < streams.length; ++i) _clearPrevMerkleRoot(streams[i]);
    }

    function clearPrevMerkleRoot(IStream stream) external restricted {
        _clearPrevMerkleRoot(stream);
    }

    function _clearPrevMerkleRoot(IStream stream) private validStream(stream) {
        stream.clearPrevMerkleRoot();
        emit PrevMerkleRootCleared(stream);
    }

    // ================= Stream Config =================

    function changeStreamAdmin(
        IStream stream,
        address newAdmin
    ) external onlyAdminOrRestricted(stream) validStream(stream) {
        if (newAdmin == address(0)) revert InvalidAddress();

        StreamFactoryStorage storage $ = _getStreamFactoryStorage();

        address oldAdmin = $.streamInfo[stream].admin;
        if (newAdmin == oldAdmin) revert NewAdminMustBeDifferentThanOldAdmin();

        $.streamInfo[stream].admin = newAdmin;
        emit AdminChanged(stream, oldAdmin, newAdmin);
    }

    /// @notice pause stream
    function pauseStream(IStream stream) external onlyAdminOrRestricted(stream) validStream(stream) {
        stream.pause();
        emit StreamPauseStatusChanged(stream, true);
    }

    /// @notice unpause stream
    function unpauseStream(IStream stream) external onlyAdminOrRestricted(stream) validStream(stream) {
        stream.unpause();
        emit StreamPauseStatusChanged(stream, false);
    }

    /// @notice upgrade stream implementation for a stream
    function upgradeStreamImplementation(
        IStream stream,
        address newImplementation,
        bytes calldata initData
    ) external restricted validStream(stream) {
        if (!IStream(newImplementation).isStream()) revert InvalidImplementation();
        ITransparentUpgradeableProxy _stream = ITransparentUpgradeableProxy(address(stream));
        _stream.upgradeToAndCall(newImplementation, initData);
        emit StreamImplementationUpgraded(stream, newImplementation, initData);
    }

    // ================= User Config =================

    function toggleOperatorForUser(address user, address operator) external onlyUserOrRestricted(user) {
        StreamFactoryStorage storage $ = _getStreamFactoryStorage();
        mapping(address => bool) storage userOperators = $.operators[user];
        bool newValue = !userOperators[operator];
        userOperators[operator] = newValue;
        emit OperatorToggled(user, operator, newValue);
    }

    // ================= StreamFactory Config =================

    /**
     * @dev Sets the implementation contract for new streams. Only callable by authorized roles.
     * @param newImplementation Address of the new implementation
     *
     * @dev This function is intended for upgrades that do not break the `IStream` external interface,
     *      and hence, the integration with the `StreamFactory`. If a new Stream implementation introduces breaking
     *      changes (e.g., modifies method signatures such as `initialize`, `claimFor`, `setMerkleRoot`, etc.),
     *      the `StreamFactory` must be upgraded simultaneously to maintain compatibility.
     */
    function setStreamImplementation(IStream newImplementation) external restricted {
        _setStreamImplementation(newImplementation);
    }

    function _setStreamImplementation(IStream newImplementation) private {
        if (!newImplementation.isStream()) revert InvalidAddress();
        StreamFactoryStorage storage $ = _getStreamFactoryStorage();
        IStream oldImplementation = $.streamImplementation;
        $.streamImplementation = newImplementation;
        emit StreamImplementationChanged(oldImplementation, newImplementation);
    }

    /// @dev Authorizes contract upgrades (only callable by whitelisted roles)
    function _authorizeUpgrade(address) internal override restricted {}

    function setCreateStreamVerifier(address createStreamVerifier) external restricted {
        _setCreateStreamVerifier(createStreamVerifier);
    }

    function _setCreateStreamVerifier(address createStreamVerifier) private {
        if (createStreamVerifier == address(0)) revert InvalidAddress();
        StreamFactoryStorage storage $ = _getStreamFactoryStorage();
        address oldCreateStreamVerifier = $.createStreamVerifier;
        $.createStreamVerifier = createStreamVerifier;
        emit CreateStreamVerifierChanged(oldCreateStreamVerifier, createStreamVerifier);
    }

    function setWithdrawFundsVerifier(address withdrawFundsVerifier) external restricted {
        _setWithdrawFundsVerifier(withdrawFundsVerifier);
    }

    function _setWithdrawFundsVerifier(address withdrawFundsVerifier) private {
        if (withdrawFundsVerifier == address(0)) revert InvalidAddress();
        StreamFactoryStorage storage $ = _getStreamFactoryStorage();
        address oldWithdrawFundsVerifier = $.withdrawFundsVerifier;
        $.withdrawFundsVerifier = withdrawFundsVerifier;
        emit WithdrawFundsVerifierChanged(oldWithdrawFundsVerifier, withdrawFundsVerifier);
    }

    /// @notice change fee collector address
    function setFeeCollector(address feeCollector) external restricted {
        _setFeeCollector(feeCollector);
    }

    function _setFeeCollector(address feeCollector) private {
        if (feeCollector == address(0)) revert InvalidAddress();
        StreamFactoryStorage storage $ = _getStreamFactoryStorage();
        address oldFeeCollector = $.feeCollector;
        $.feeCollector = feeCollector;
        emit FeeCollectorChanged(oldFeeCollector, feeCollector);
    }
}
