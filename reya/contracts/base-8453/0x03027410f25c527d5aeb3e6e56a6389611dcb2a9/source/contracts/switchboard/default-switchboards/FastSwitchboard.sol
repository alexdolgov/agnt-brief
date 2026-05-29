// SPDX-License-Identifier: GPL-3.0-only
// Sources flattened with hardhat v2.12.2 https://hardhat.org

// File contracts/interfaces/ISwitchboard.sol

pragma solidity 0.8.19;

/**
 * @title ISwitchboard
 * @dev The interface for a switchboard contract that is responsible for verification of packets between
 * different blockchain networks.
 */
interface ISwitchboard {
    /**
     * @notice Registers itself in Socket for given `siblingChainSlug_`.
     * @dev This function is expected to be only called by admin as it handles the capacitor config for given chain
     * @param siblingChainSlug_ The slug of the sibling chain to register switchboard with.
     * @param maxPacketLength_ The maximum length of a packet allowed by the switchboard.
     * @param capacitorType_ The type of capacitor that the switchboard uses.
     * @param initialPacketCount_ The packet count at the time of registering switchboard. Packets with packet count below this won't be allowed
     * @param siblingSwitchboard_ The switchboard address deployed on `siblingChainSlug_`
     */
    function registerSiblingSlug(
        uint32 siblingChainSlug_,
        uint256 maxPacketLength_,
        uint256 capacitorType_,
        uint256 initialPacketCount_,
        address siblingSwitchboard_
    ) external;

    /**
     * @notice Updates the sibling switchboard for given `siblingChainSlug_`.
     * @dev This function is expected to be only called by admin
     * @param siblingChainSlug_ The slug of the sibling chain to register switchboard with.
     * @param siblingSwitchboard_ The switchboard address deployed on `siblingChainSlug_`
     */
    function updateSibling(
        uint32 siblingChainSlug_,
        address siblingSwitchboard_
    ) external;

    /**
     * @notice Checks if a packet can be allowed to go through the switchboard.
     * @param root the packet root.
     * @param packetId The unique identifier for the packet.
     * @param proposalCount The unique identifier for a proposal for the packet.
     * @param srcChainSlug The unique identifier for the source chain of the packet.
     * @param proposeTime The time when the packet was proposed.
     * @return A boolean indicating whether the packet is allowed to go through the switchboard or not.
     */
    function allowPacket(
        bytes32 root,
        bytes32 packetId,
        uint256 proposalCount,
        uint32 srcChainSlug,
        uint256 proposeTime
    ) external view returns (bool);

    /**
     * @notice Retrieves the minimum fees required for the destination chain to process the packet.
     * @param dstChainSlug the unique identifier for the destination chain of the packet.
     * @return switchboardFee the switchboard fee required for the destination chain to process the packet.
     * @return verificationOverheadFees the verification fee required for the destination chain to process the packet.
     */
    function getMinFees(
        uint32 dstChainSlug
    )
        external
        view
        returns (uint128 switchboardFee, uint128 verificationOverheadFees);

    /**
     * @notice Receives the fees for processing of packet.
     * @param siblingChainSlug_ the chain slug of the sibling chain.
     */
    function receiveFees(uint32 siblingChainSlug_) external payable;

    /**
     * @notice Sets the minimum fees required for the destination chain to process the packet.
     * @param nonce_ the nonce of fee Updater to avoid replay.
     * @param dstChainSlug_ the unique identifier for the destination chain.
     * @param switchboardFees_ the switchboard fee required for the destination chain to process the packet.
     * @param verificationOverheadFees_ the verification fee required for the destination chain to process the packet.
     * @param signature_ the signature of the request.
     * @dev not important to override in all switchboards
     */
    function setFees(
        uint256 nonce_,
        uint32 dstChainSlug_,
        uint128 switchboardFees_,
        uint128 verificationOverheadFees_,
        bytes calldata signature_
    ) external;
}


// File contracts/interfaces/IExecutionManager.sol

pragma solidity 0.8.19;

/**
 * @title Execution Manager Interface
 * @dev This interface defines the functions for managing and executing transactions on external chains
 * @dev It is also responsible for collecting all the socket fees, which can then be pulled by others
 */
interface IExecutionManager {
    struct ExecutionFeesParam {
        // for calculating perGasCost * gasLimit
        uint80 perGasCost;
        // for calculating cost for executing payload (needed for rollups)
        uint80 perByteCost;
        // additional cost (differs based on chain)
        uint80 overhead;
    }

    /**
     * @notice Returns the executor of the packed message and whether the executor is authorized
     * @param packedMessage The message packed with payload, fees and config
     * @param sig The signature of the message
     * @return The address of the executor and a boolean indicating if the executor is authorized
     */
    function isExecutor(
        bytes32 packedMessage,
        bytes memory sig
    ) external view returns (address, bool);

    /**
     * @notice Pays the fees for executing a transaction on the external chain
     * @dev This function is payable and assumes the socket is going to send correct amount of fees.
     * @param minMsgGasLimit_ The minimum gas limit for the transaction
     * @param payloadSize_ The payload size in bytes
     * @param executionParams_ Extra params for execution
     * @param transmissionParams_ Extra params for transmission
     * @param siblingChainSlug_ Sibling chain identifier
     * @param switchboardFees_ fee charged by switchboard for processing transaction
     * @param verificationOverheadFees_ fee charged for verifying transaction
     * @param transmitManager_ The transmitManager address
     * @param switchboard_ The switchboard address
     * @param maxPacketLength_ The maxPacketLength for the capacitor
     */
    function payAndCheckFees(
        uint256 minMsgGasLimit_,
        uint256 payloadSize_,
        bytes32 executionParams_,
        bytes32 transmissionParams_,
        uint32 siblingChainSlug_,
        uint128 switchboardFees_,
        uint128 verificationOverheadFees_,
        address transmitManager_,
        address switchboard_,
        uint256 maxPacketLength_
    ) external payable returns (uint128, uint128);

    /**
     * @notice Returns the minimum fees required for executing a transaction on the external chain
     * @param minMsgGasLimit_ minMsgGasLimit_
     * @param siblingChainSlug_ The destination slug
     * @return The minimum fees required for executing the transaction
     */
    function getMinFees(
        uint256 minMsgGasLimit_,
        uint256 payloadSize_,
        bytes32 executionParams_,
        uint32 siblingChainSlug_
    ) external view returns (uint128);

    /**
     * @notice function for getting the minimum fees required for executing and transmitting a cross-chain transaction
     * @dev this function is called at source to calculate the execution cost.
     * @param payloadSize_ byte length of payload. Currently only used to check max length, later on will be used for fees calculation.
     * @param executionParams_ Can be used for providing extra information. Currently used for msgValue
     * @param siblingChainSlug_ Sibling chain identifier
     * @return minExecutionFee : Minimum fees required for executing the transaction
     */
    function getExecutionTransmissionMinFees(
        uint256 minMsgGasLimit_,
        uint256 payloadSize_,
        bytes32 executionParams_,
        bytes32 transmissionParams_,
        uint32 siblingChainSlug_,
        address transmitManager_
    ) external view returns (uint128, uint128);

    /**
     * @notice Updates the execution fees for an executor and message ID
     * @param executor The executor address
     * @param executionFees The execution fees to update
     * @param msgId The ID of the message
     */
    function updateExecutionFees(
        address executor,
        uint128 executionFees,
        bytes32 msgId
    ) external;

    /**
     * @notice updates the transmission fee
     * @param remoteChainSlug_ sibling chain identifier
     * @param transmitMinFees_ transmission fees collected
     */
    function setTransmissionMinFees(
        uint32 remoteChainSlug_,
        uint128 transmitMinFees_
    ) external;

    /**
     * @notice sets the minimum execution fees required for executing at `siblingChainSlug_`
     * @dev this function currently sets the price for a constant msg gas limit and payload size
     * @param nonce_ incremental id to prevent signature replay
     * @param siblingChainSlug_ sibling chain identifier
     * @param executionFees_ total fees where price in destination native token is converted to source native tokens
     * @param signature_ signature of fee updater
     */
    function setExecutionFees(
        uint256 nonce_,
        uint32 siblingChainSlug_,
        ExecutionFeesParam calldata executionFees_,
        bytes calldata signature_
    ) external;

    /**
     * @notice sets the min limit for msg value for `siblingChainSlug_`
     * @param nonce_ incremental id to prevent signature replay
     * @param siblingChainSlug_ sibling chain identifier
     * @param msgValueMinThreshold_ min msg value
     * @param signature_ signature of fee updater
     */
    function setMsgValueMinThreshold(
        uint256 nonce_,
        uint32 siblingChainSlug_,
        uint256 msgValueMinThreshold_,
        bytes calldata signature_
    ) external;

    /**
     * @notice sets the max limit for msg value for `siblingChainSlug_`
     * @param nonce_ incremental id to prevent signature replay
     * @param siblingChainSlug_ sibling chain identifier
     * @param msgValueMaxThreshold_ max msg value
     * @param signature_ signature of fee updater
     */
    function setMsgValueMaxThreshold(
        uint256 nonce_,
        uint32 siblingChainSlug_,
        uint256 msgValueMaxThreshold_,
        bytes calldata signature_
    ) external;

    /**
     * @notice sets the relative token price for `siblingChainSlug_`
     * @dev this function is expected to be called frequently to match the original prices
     * @param nonce_ incremental id to prevent signature replay
     * @param siblingChainSlug_ sibling chain identifier
     * @param relativeNativeTokenPrice_ relative price
     * @param signature_ signature of fee updater
     */
    function setRelativeNativeTokenPrice(
        uint256 nonce_,
        uint32 siblingChainSlug_,
        uint256 relativeNativeTokenPrice_,
        bytes calldata signature_
    ) external;

    /**
     * @notice called by socket while executing message to validate if the msg value provided is enough
     * @param executionParams_ a bytes32 string where first byte gives param type (if value is 0 or not)
     * and remaining bytes give the msg value needed
     * @param msgValue_ msg.value to be sent with inbound
     */
    function verifyParams(
        bytes32 executionParams_,
        uint256 msgValue_
    ) external view;

    /**
     * @notice withdraws switchboard fees from contract
     * @param siblingChainSlug_ withdraw fees corresponding to this slug
     * @param amount_ withdraw amount
     */
    function withdrawSwitchboardFees(
        uint32 siblingChainSlug_,
        address switchboard_,
        uint128 amount_
    ) external;

    /**
     * @dev this function gets the transmitManager address from the socket contract. If it is ever upgraded in socket,
     * @dev remove the fees from executionManager first, and then upgrade address at socket.
     * @notice withdraws transmission fees from contract
     * @param siblingChainSlug_ withdraw fees corresponding to this slug
     * @param amount_ withdraw amount
     */
    function withdrawTransmissionFees(
        uint32 siblingChainSlug_,
        uint128 amount_
    ) external;
}


// File contracts/interfaces/ITransmitManager.sol

pragma solidity 0.8.19;

/**
 * @title ITransmitManager
 * @dev The interface for a transmit manager contract
 */
interface ITransmitManager {
    /**
     * @notice Checks if a given transmitter is authorized to send transactions to the destination chain.
     * @param siblingSlug The unique identifier for the sibling chain.
     * @param digest The digest of the message being signed.
     * @param signature The signature of the message being signed.
     * @return The address of the transmitter and a boolean indicating whether the transmitter is authorized or not.
     */
    function checkTransmitter(
        uint32 siblingSlug,
        bytes32 digest,
        bytes calldata signature
    ) external view returns (address, bool);

    /**
     * @notice sets the transmission fee needed to transmit message to given `siblingSlug_`
     * @dev recovered address should add have feeUpdater role for `siblingSlug_`
     * @param nonce_ The incremental nonce to prevent signature replay
     * @param siblingSlug_ sibling id for which fee updater is registered
     * @param transmissionFees_ digest which is signed by transmitter
     * @param signature_ signature
     */
    function setTransmissionFees(
        uint256 nonce_,
        uint32 siblingSlug_,
        uint128 transmissionFees_,
        bytes calldata signature_
    ) external;

    /**
     * @notice receives fees from Execution manager
     * @dev this function can be used to keep track of fees received for each slug
     * @param siblingSlug_ sibling id for which fee updater is registered
     */
    function receiveFees(uint32 siblingSlug_) external payable;
}


// File contracts/interfaces/ISocket.sol

pragma solidity 0.8.19;


/**
 * @title ISocket
 * @notice An interface for a cross-chain communication contract
 * @dev This interface provides methods for transmitting and executing messages between chains,
 * connecting a plug to a remote chain and setting up switchboards for the message transmission
 * This interface also emits events for important operations such as message transmission, execution status,
 * and plug connection
 */
interface ISocket {
    /**
     * @notice A struct containing fees required for message transmission and execution
     * @param transmissionFees fees needed for transmission
     * @param switchboardFees fees needed by switchboard
     * @param executionFee fees needed for execution
     */
    struct Fees {
        uint128 transmissionFees;
        uint128 executionFee;
        uint128 switchboardFees;
    }

    /**
     * @title MessageDetails
     * @dev This struct defines the details of a message to be executed in a Decapacitor contract.
     */
    struct MessageDetails {
        // A unique identifier for the message.
        bytes32 msgId;
        // The fee to be paid for executing the message.
        uint256 executionFee;
        // The min amount of gas that can be used to execute the message.
        uint256 minMsgGasLimit;
        // The extra params which might provide msg value and additional info needed for message exec
        bytes32 executionParams;
        // The payload data to be executed in the message.
        bytes payload;
    }

    /**
     * @title ExecutionDetails
     * @dev This struct defines the execution details
     */
    struct ExecutionDetails {
        // packet id
        bytes32 packetId;
        // proposal count
        uint256 proposalCount;
        // gas limit needed to execute inbound
        uint256 executionGasLimit;
        // proof data required by the Decapacitor contract to verify the message's authenticity
        bytes decapacitorProof;
        // signature of executor
        bytes signature;
    }

    /**
     * @notice emits the status of message after inbound call
     * @param msgId msg id which is executed
     */
    event ExecutionSuccess(bytes32 msgId);

    /**
     * @notice emits the config set by a plug for a remoteChainSlug
     * @param plug address of plug on current chain
     * @param siblingChainSlug sibling chain slug
     * @param siblingPlug address of plug on sibling chain
     * @param inboundSwitchboard inbound switchboard (select from registered options)
     * @param outboundSwitchboard outbound switchboard (select from registered options)
     * @param capacitor capacitor selected based on outbound switchboard
     * @param decapacitor decapacitor selected based on inbound switchboard
     */
    event PlugConnected(
        address plug,
        uint32 siblingChainSlug,
        address siblingPlug,
        address inboundSwitchboard,
        address outboundSwitchboard,
        address capacitor,
        address decapacitor
    );

    /**
     * @notice registers a message
     * @dev Packs the message and includes it in a packet with capacitor
     * @param remoteChainSlug_ the remote chain slug
     * @param minMsgGasLimit_ the gas limit needed to execute the payload on remote
     * @param payload_ the data which is needed by plug at inbound call on remote
     */
    function outbound(
        uint32 remoteChainSlug_,
        uint256 minMsgGasLimit_,
        bytes32 executionParams_,
        bytes32 transmissionParams_,
        bytes calldata payload_
    ) external payable returns (bytes32 msgId);

    /**
     * @notice executes a message
     * @param executionDetails_ the packet details, proof and signature needed for message execution
     * @param messageDetails_ the message details
     */
    function execute(
        ISocket.ExecutionDetails calldata executionDetails_,
        ISocket.MessageDetails calldata messageDetails_
    ) external payable;

    /**
     * @notice seals data in capacitor for specific batchSize
     * @param batchSize_ size of batch to be sealed
     * @param capacitorAddress_ address of capacitor
     * @param signature_ signed Data needed for verification
     */
    function seal(
        uint256 batchSize_,
        address capacitorAddress_,
        bytes calldata signature_
    ) external payable;

    /**
     * @notice proposes a packet
     * @param packetId_ packet id
     * @param root_ root data
     * @param switchboard_ The address of switchboard for which this packet is proposed
     * @param signature_ signed Data needed for verification
     */
    function proposeForSwitchboard(
        bytes32 packetId_,
        bytes32 root_,
        address switchboard_,
        bytes calldata signature_
    ) external payable;

    /**
     * @notice sets the config specific to the plug
     * @param siblingChainSlug_ the sibling chain slug
     * @param siblingPlug_ address of plug present at sibling chain to call inbound
     * @param inboundSwitchboard_ the address of switchboard to use for receiving messages
     * @param outboundSwitchboard_ the address of switchboard to use for sending messages
     */
    function connect(
        uint32 siblingChainSlug_,
        address siblingPlug_,
        address inboundSwitchboard_,
        address outboundSwitchboard_
    ) external;

    /**
     * @notice deploy capacitor and decapacitor for a switchboard with a specified max packet length, sibling chain slug, and capacitor type.
     * @param siblingChainSlug_ The slug of the sibling chain that the switchboard is registered with.
     * @param maxPacketLength_ The maximum length of a packet allowed by the switchboard.
     * @param capacitorType_ The type of capacitor that the switchboard uses.
     * @param siblingSwitchboard_ The switchboard address deployed on `siblingChainSlug_`
     */
    function registerSwitchboardForSibling(
        uint32 siblingChainSlug_,
        uint256 maxPacketLength_,
        uint256 capacitorType_,
        address siblingSwitchboard_
    ) external returns (address capacitor, address decapacitor);

    /**
     * @notice Emits the sibling switchboard for given `siblingChainSlug_`.
     * @dev This function is expected to be only called by switchboard.
     * @dev the event emitted is tracked by transmitters to decide which switchboard a packet should be proposed on
     * @param siblingChainSlug_ The slug of the sibling chain
     * @param siblingSwitchboard_ The switchboard address deployed on `siblingChainSlug_`
     */
    function useSiblingSwitchboard(
        uint32 siblingChainSlug_,
        address siblingSwitchboard_
    ) external;

    /**
     * @notice Retrieves the packet id roots for a specified packet id.
     * @param packetId_ The packet id for which to retrieve the root.
     * @param proposalCount_ The proposal id for packetId_ for which to retrieve the root.
     * @param switchboard_ The address of switchboard for which this packet is proposed
     * @return The packet id roots for the specified packet id.
     */
    function packetIdRoots(
        bytes32 packetId_,
        uint256 proposalCount_,
        address switchboard_
    ) external view returns (bytes32);

    /**
     * @notice Retrieves the latest proposalCount for a packet id.
     * @return The proposal count for the specified packet id.
     */
    function proposalCount(bytes32 packetId_) external view returns (uint256);

    /**
     * @notice Retrieves the minimum fees required for a message with a specified gas limit and destination chain.
     * @param minMsgGasLimit_ The gas limit of the message.
     * @param remoteChainSlug_ The slug of the destination chain for the message.
     * @param plug_ The address of the plug through which the message is sent.
     * @return totalFees The minimum fees required for the specified message.
     */
    function getMinFees(
        uint256 minMsgGasLimit_,
        uint256 payloadSize_,
        bytes32 executionParams_,
        bytes32 transmissionParams_,
        uint32 remoteChainSlug_,
        address plug_
    ) external view returns (uint256 totalFees);

    /// return instance of transmit manager
    function transmitManager__() external view returns (ITransmitManager);

    /// return instance of execution manager
    function executionManager__() external view returns (IExecutionManager);
}


// File contracts/utils/Ownable.sol

pragma solidity 0.8.19;

/**
 * @title Ownable
 * @dev The Ownable contract provides a simple way to manage ownership of a contract
 * and allows for ownership to be transferred to a nominated address.
 */
abstract contract Ownable {
    address private _owner;
    address private _nominee;

    event OwnerNominated(address indexed nominee);
    event OwnerClaimed(address indexed claimer);

    error OnlyOwner();
    error OnlyNominee();

    /**
     * @dev Sets the contract's owner to the address that is passed to the constructor.
     */
    constructor(address owner_) {
        _claimOwner(owner_);
    }

    /**
     * @dev Modifier that restricts access to only the contract's owner.
     * Throws an error if the caller is not the owner.
     */
    modifier onlyOwner() {
        if (msg.sender != _owner) revert OnlyOwner();
        _;
    }

    /**
     * @dev Returns the current owner of the contract.
     */
    function owner() external view returns (address) {
        return _owner;
    }

    /**
     * @dev Returns the current nominee for ownership of the contract.
     */
    function nominee() external view returns (address) {
        return _nominee;
    }

    /**
     * @dev Allows the current owner to nominate a new owner for the contract.
     * Throws an error if the caller is not the owner.
     * Emits an `OwnerNominated` event with the address of the nominee.
     */
    function nominateOwner(address nominee_) external {
        if (msg.sender != _owner) revert OnlyOwner();
        _nominee = nominee_;
        emit OwnerNominated(_nominee);
    }

    /**
     * @dev Allows the nominated owner to claim ownership of the contract.
     * Throws an error if the caller is not the nominee.
     * Sets the nominated owner as the new owner of the contract.
     * Emits an `OwnerClaimed` event with the address of the new owner.
     */
    function claimOwner() external {
        if (msg.sender != _nominee) revert OnlyNominee();
        _claimOwner(msg.sender);
    }

    /**
     * @dev Internal function that sets the owner of the contract to the specified address
     * and sets the nominee to address(0).
     */
    function _claimOwner(address claimer_) internal {
        _owner = claimer_;
        _nominee = address(0);
        emit OwnerClaimed(claimer_);
    }
}


// File contracts/utils/AccessControl.sol

pragma solidity 0.8.19;

/**
 * @title AccessControl
 * @dev This abstract contract implements access control mechanism based on roles.
 * Each role can have one or more addresses associated with it, which are granted
 * permission to execute functions with the onlyRole modifier.
 */
abstract contract AccessControl is Ownable {
    /**
     * @dev A mapping of roles to a mapping of addresses to boolean values indicating whether or not they have the role.
     */
    mapping(bytes32 => mapping(address => bool)) private _permits;

    /**
     * @dev Emitted when a role is granted to an address.
     */
    event RoleGranted(bytes32 indexed role, address indexed grantee);

    /**
     * @dev Emitted when a role is revoked from an address.
     */
    event RoleRevoked(bytes32 indexed role, address indexed revokee);

    /**
     * @dev Error message thrown when an address does not have permission to execute a function with onlyRole modifier.
     */
    error NoPermit(bytes32 role);

    /**
     * @dev Constructor that sets the owner of the contract.
     */
    constructor(address owner_) Ownable(owner_) {}

    /**
     * @dev Modifier that restricts access to addresses having roles
     * Throws an error if the caller do not have permit
     */
    modifier onlyRole(bytes32 role) {
        if (!_permits[role][msg.sender]) revert NoPermit(role);
        _;
    }

    /**
     * @dev Checks and reverts if an address do not have a specific role.
     * @param role_ The role to check.
     * @param address_ The address to check.
     */
    function _checkRole(bytes32 role_, address address_) internal virtual {
        if (!_hasRole(role_, address_)) revert NoPermit(role_);
    }

    /**
     * @dev Grants a role to a given address.
     * @param role_ The role to grant.
     * @param grantee_ The address to grant the role to.
     * Emits a RoleGranted event.
     * Can only be called by the owner of the contract.
     */
    function grantRole(
        bytes32 role_,
        address grantee_
    ) external virtual onlyOwner {
        _grantRole(role_, grantee_);
    }

    /**
     * @dev Revokes a role from a given address.
     * @param role_ The role to revoke.
     * @param revokee_ The address to revoke the role from.
     * Emits a RoleRevoked event.
     * Can only be called by the owner of the contract.
     */
    function revokeRole(
        bytes32 role_,
        address revokee_
    ) external virtual onlyOwner {
        _revokeRole(role_, revokee_);
    }

    /**
     * @dev Internal function to grant a role to a given address.
     * @param role_ The role to grant.
     * @param grantee_ The address to grant the role to.
     * Emits a RoleGranted event.
     */
    function _grantRole(bytes32 role_, address grantee_) internal {
        _permits[role_][grantee_] = true;
        emit RoleGranted(role_, grantee_);
    }

    /**
     * @dev Internal function to revoke a role from a given address.
     * @param role_ The role to revoke.
     * @param revokee_ The address to revoke the role from.
     * Emits a RoleRevoked event.
     */
    function _revokeRole(bytes32 role_, address revokee_) internal {
        _permits[role_][revokee_] = false;
        emit RoleRevoked(role_, revokee_);
    }

    /**
     * @dev Checks whether an address has a specific role.
     * @param role_ The role to check.
     * @param address_ The address to check.
     * @return A boolean value indicating whether or not the address has the role.
     */
    function hasRole(
        bytes32 role_,
        address address_
    ) external view returns (bool) {
        return _hasRole(role_, address_);
    }

    function _hasRole(
        bytes32 role_,
        address address_
    ) internal view returns (bool) {
        return _permits[role_][address_];
    }
}


// File contracts/utils/AccessControlExtended.sol

pragma solidity 0.8.19;

/**
 * @title AccessControlExtended
 * @dev This contract extends the functionality of the AccessControl contract by adding
 * the ability to grant and revoke roles based on a combination of role name and a chain slug.
 * It also provides batch operations for granting and revoking roles.
 */
contract AccessControlExtended is AccessControl {
    /**
     * @dev Constructor that sets the owner of the contract.
     */
    constructor(address owner_) AccessControl(owner_) {}

    /**
     * @dev thrown when array lengths are not equal
     */
    error UnequalArrayLengths();

    /**
     * @dev Checks if an address has the role.
     * @param roleName_ The name of the role.
     * @param chainSlug_ The chain slug associated with the role.
     * @param address_ The address to be granted the role.
     */
    function _checkRoleWithSlug(
        bytes32 roleName_,
        uint256 chainSlug_,
        address address_
    ) internal virtual {
        bytes32 roleHash = keccak256(abi.encode(roleName_, chainSlug_));
        if (!_hasRole(roleHash, address_)) revert NoPermit(roleHash);
    }

    /**
     * @dev Grants a role to an address based on the role name and chain slug.
     * @param roleName_ The name of the role.
     * @param chainSlug_ The chain slug associated with the role.
     * @param grantee_ The address to be granted the role.
     */
    function grantRoleWithSlug(
        bytes32 roleName_,
        uint32 chainSlug_,
        address grantee_
    ) external virtual onlyOwner {
        _grantRoleWithSlug(roleName_, chainSlug_, grantee_);
    }

    /**
     * @dev Grants multiple roles to multiple addresses in batch.
     * @param roleNames_ The names of the roles to grant.
     * @param slugs_ The slugs for chain specific roles. For roles which are not chain-specific, we can use slug = 0
     * @param grantees_ The addresses to be granted the roles.
     */
    function grantBatchRole(
        bytes32[] calldata roleNames_,
        uint32[] calldata slugs_,
        address[] calldata grantees_
    ) external virtual onlyOwner {
        if (
            roleNames_.length != grantees_.length ||
            roleNames_.length != slugs_.length
        ) revert UnequalArrayLengths();
        uint256 totalRoles = roleNames_.length;
        for (uint256 index = 0; index < totalRoles; ) {
            if (slugs_[index] > 0)
                _grantRoleWithSlug(
                    roleNames_[index],
                    slugs_[index],
                    grantees_[index]
                );
            else _grantRole(roleNames_[index], grantees_[index]);

            // inputs are controlled by owner
            unchecked {
                ++index;
            }
        }
    }

    /**
     * @dev Revokes multiple roles from multiple addresses in batch.
     * @param roleNames_ The names of the roles to revoke.
     * @param slugs_ The slugs for chain specific roles. For roles which are not chain-specific, we can use slug = 0
     * @param grantees_ The addresses to be revoked the roles.
     */
    function revokeBatchRole(
        bytes32[] calldata roleNames_,
        uint32[] calldata slugs_,
        address[] calldata grantees_
    ) external virtual onlyOwner {
        if (
            roleNames_.length != grantees_.length ||
            roleNames_.length != slugs_.length
        ) revert UnequalArrayLengths();
        uint256 totalRoles = roleNames_.length;
        for (uint256 index = 0; index < totalRoles; ) {
            if (slugs_[index] > 0)
                _revokeRoleWithSlug(
                    roleNames_[index],
                    slugs_[index],
                    grantees_[index]
                );
            else _revokeRole(roleNames_[index], grantees_[index]);

            // inputs are controlled by owner
            unchecked {
                ++index;
            }
        }
    }

    function _grantRoleWithSlug(
        bytes32 roleName_,
        uint32 chainSlug_,
        address grantee_
    ) internal {
        _grantRole(keccak256(abi.encode(roleName_, chainSlug_)), grantee_);
    }

    /**
     * @dev Checks if an address has a role based on the role name and chain slug.
     * @param roleName_ The name of the role.
     * @param chainSlug_ The chain slug associated with the role.
     * @param address_ The address to check for the role.
     * @return A boolean indicating whether the address has the specified role.
     */
    function hasRoleWithSlug(
        bytes32 roleName_,
        uint32 chainSlug_,
        address address_
    ) external view returns (bool) {
        return _hasRoleWithSlug(roleName_, chainSlug_, address_);
    }

    function _hasRoleWithSlug(
        bytes32 roleName_,
        uint32 chainSlug_,
        address address_
    ) internal view returns (bool) {
        return _hasRole(keccak256(abi.encode(roleName_, chainSlug_)), address_);
    }

    /**
     * @dev Revokes roles from an address
     * @param roleName_ The names of the roles to revoke.
     * @param chainSlug_ The chain slug associated with the role.
     * @param grantee_ The addresses to be revoked the roles.
     */
    function revokeRoleWithSlug(
        bytes32 roleName_,
        uint32 chainSlug_,
        address grantee_
    ) external virtual onlyOwner {
        _revokeRoleWithSlug(roleName_, chainSlug_, grantee_);
    }

    function _revokeRoleWithSlug(
        bytes32 roleName_,
        uint32 chainSlug_,
        address revokee_
    ) internal {
        _revokeRole(keccak256(abi.encode(roleName_, chainSlug_)), revokee_);
    }
}


// File lib/solmate/src/tokens/ERC20.sol

pragma solidity >=0.8.0;

/// @notice Modern and gas efficient ERC20 + EIP-2612 implementation.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/tokens/ERC20.sol)
/// @author Modified from Uniswap (https://github.com/Uniswap/uniswap-v2-core/blob/master/contracts/UniswapV2ERC20.sol)
/// @dev Do not manually set balances without updating totalSupply, as the sum of all user balances must not exceed it.
abstract contract ERC20 {
    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    event Transfer(address indexed from, address indexed to, uint256 amount);

    event Approval(address indexed owner, address indexed spender, uint256 amount);

    /*//////////////////////////////////////////////////////////////
                            METADATA STORAGE
    //////////////////////////////////////////////////////////////*/

    string public name;

    string public symbol;

    uint8 public immutable decimals;

    /*//////////////////////////////////////////////////////////////
                              ERC20 STORAGE
    //////////////////////////////////////////////////////////////*/

    uint256 public totalSupply;

    mapping(address => uint256) public balanceOf;

    mapping(address => mapping(address => uint256)) public allowance;

    /*//////////////////////////////////////////////////////////////
                            EIP-2612 STORAGE
    //////////////////////////////////////////////////////////////*/

    uint256 internal immutable INITIAL_CHAIN_ID;

    bytes32 internal immutable INITIAL_DOMAIN_SEPARATOR;

    mapping(address => uint256) public nonces;

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    constructor(
        string memory _name,
        string memory _symbol,
        uint8 _decimals
    ) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;

        INITIAL_CHAIN_ID = block.chainid;
        INITIAL_DOMAIN_SEPARATOR = computeDomainSeparator();
    }

    /*//////////////////////////////////////////////////////////////
                               ERC20 LOGIC
    //////////////////////////////////////////////////////////////*/

    function approve(address spender, uint256 amount) public virtual returns (bool) {
        allowance[msg.sender][spender] = amount;

        emit Approval(msg.sender, spender, amount);

        return true;
    }

    function transfer(address to, uint256 amount) public virtual returns (bool) {
        balanceOf[msg.sender] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(msg.sender, to, amount);

        return true;
    }

    function transferFrom(
        address from,
        address to,
        uint256 amount
    ) public virtual returns (bool) {
        uint256 allowed = allowance[from][msg.sender]; // Saves gas for limited approvals.

        if (allowed != type(uint256).max) allowance[from][msg.sender] = allowed - amount;

        balanceOf[from] -= amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(from, to, amount);

        return true;
    }

    /*//////////////////////////////////////////////////////////////
                             EIP-2612 LOGIC
    //////////////////////////////////////////////////////////////*/

    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) public virtual {
        require(deadline >= block.timestamp, "PERMIT_DEADLINE_EXPIRED");

        // Unchecked because the only math done is incrementing
        // the owner's nonce which cannot realistically overflow.
        unchecked {
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

            allowance[recoveredAddress][spender] = value;
        }

        emit Approval(owner, spender, value);
    }

    function DOMAIN_SEPARATOR() public view virtual returns (bytes32) {
        return block.chainid == INITIAL_CHAIN_ID ? INITIAL_DOMAIN_SEPARATOR : computeDomainSeparator();
    }

    function computeDomainSeparator() internal view virtual returns (bytes32) {
        return
            keccak256(
                abi.encode(
                    keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"),
                    keccak256(bytes(name)),
                    keccak256("1"),
                    block.chainid,
                    address(this)
                )
            );
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNAL MINT/BURN LOGIC
    //////////////////////////////////////////////////////////////*/

    function _mint(address to, uint256 amount) internal virtual {
        totalSupply += amount;

        // Cannot overflow because the sum of all user
        // balances can't exceed the max uint256 value.
        unchecked {
            balanceOf[to] += amount;
        }

        emit Transfer(address(0), to, amount);
    }

    function _burn(address from, uint256 amount) internal virtual {
        balanceOf[from] -= amount;

        // Cannot underflow because a user's balance
        // will never be larger than the total supply.
        unchecked {
            totalSupply -= amount;
        }

        emit Transfer(from, address(0), amount);
    }
}


// File lib/solmate/src/utils/SafeTransferLib.sol

pragma solidity >=0.8.0;

/// @notice Safe ETH and ERC20 transfer library that gracefully handles missing return values.
/// @author Solmate (https://github.com/transmissions11/solmate/blob/main/src/utils/SafeTransferLib.sol)
/// @dev Use with caution! Some functions in this library knowingly create dirty bits at the destination of the free memory pointer.
/// @dev Note that none of the functions in this library check that a token has code at all! That responsibility is delegated to the caller.
library SafeTransferLib {
    /*//////////////////////////////////////////////////////////////
                             ETH OPERATIONS
    //////////////////////////////////////////////////////////////*/

    function safeTransferETH(address to, uint256 amount) internal {
        bool success;

        /// @solidity memory-safe-assembly
        assembly {
            // Transfer the ETH and store if it succeeded or not.
            success := call(gas(), to, amount, 0, 0, 0, 0)
        }

        require(success, "ETH_TRANSFER_FAILED");
    }

    /*//////////////////////////////////////////////////////////////
                            ERC20 OPERATIONS
    //////////////////////////////////////////////////////////////*/

    function safeTransferFrom(
        ERC20 token,
        address from,
        address to,
        uint256 amount
    ) internal {
        bool success;

        /// @solidity memory-safe-assembly
        assembly {
            // Get a pointer to some free memory.
            let freeMemoryPointer := mload(0x40)

            // Write the abi-encoded calldata into memory, beginning with the function selector.
            mstore(freeMemoryPointer, 0x23b872dd00000000000000000000000000000000000000000000000000000000)
            mstore(add(freeMemoryPointer, 4), and(from, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "from" argument.
            mstore(add(freeMemoryPointer, 36), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
            mstore(add(freeMemoryPointer, 68), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

            success := and(
                // Set success to whether the call reverted, if not we check it either
                // returned exactly 1 (can't just be non-zero data), or had no return data.
                or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
                // We use 100 because the length of our calldata totals up like so: 4 + 32 * 3.
                // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
                // Counterintuitively, this call must be positioned second to the or() call in the
                // surrounding and() call or else returndatasize() will be zero during the computation.
                call(gas(), token, 0, freeMemoryPointer, 100, 0, 32)
            )
        }

        require(success, "TRANSFER_FROM_FAILED");
    }

    function safeTransfer(
        ERC20 token,
        address to,
        uint256 amount
    ) internal {
        bool success;

        /// @solidity memory-safe-assembly
        assembly {
            // Get a pointer to some free memory.
            let freeMemoryPointer := mload(0x40)

            // Write the abi-encoded calldata into memory, beginning with the function selector.
            mstore(freeMemoryPointer, 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
            mstore(add(freeMemoryPointer, 4), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
            mstore(add(freeMemoryPointer, 36), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

            success := and(
                // Set success to whether the call reverted, if not we check it either
                // returned exactly 1 (can't just be non-zero data), or had no return data.
                or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
                // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
                // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
                // Counterintuitively, this call must be positioned second to the or() call in the
                // surrounding and() call or else returndatasize() will be zero during the computation.
                call(gas(), token, 0, freeMemoryPointer, 68, 0, 32)
            )
        }

        require(success, "TRANSFER_FAILED");
    }

    function safeApprove(
        ERC20 token,
        address to,
        uint256 amount
    ) internal {
        bool success;

        /// @solidity memory-safe-assembly
        assembly {
            // Get a pointer to some free memory.
            let freeMemoryPointer := mload(0x40)

            // Write the abi-encoded calldata into memory, beginning with the function selector.
            mstore(freeMemoryPointer, 0x095ea7b300000000000000000000000000000000000000000000000000000000)
            mstore(add(freeMemoryPointer, 4), and(to, 0xffffffffffffffffffffffffffffffffffffffff)) // Append and mask the "to" argument.
            mstore(add(freeMemoryPointer, 36), amount) // Append the "amount" argument. Masking not required as it's a full 32 byte type.

            success := and(
                // Set success to whether the call reverted, if not we check it either
                // returned exactly 1 (can't just be non-zero data), or had no return data.
                or(and(eq(mload(0), 1), gt(returndatasize(), 31)), iszero(returndatasize())),
                // We use 68 because the length of our calldata totals up like so: 4 + 32 * 2.
                // We use 0 and 32 to copy up to 32 bytes of return data into the scratch space.
                // Counterintuitively, this call must be positioned second to the or() call in the
                // surrounding and() call or else returndatasize() will be zero during the computation.
                call(gas(), token, 0, freeMemoryPointer, 68, 0, 32)
            )
        }

        require(success, "APPROVE_FAILED");
    }
}


// File contracts/libraries/RescueFundsLib.sol

pragma solidity 0.8.19;

error ZeroAddress();

/**
 * @title RescueFundsLib
 * @dev A library that provides a function to rescue funds from a contract.
 */

library RescueFundsLib {
    /**
     * @dev The address used to identify ETH.
     */
    address public constant ETH_ADDRESS =
        address(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE);

    /**
     * @dev thrown when the given token address don't have any code
     */
    error InvalidTokenAddress();

    /**
     * @dev Rescues funds from a contract.
     * @param token_ The address of the token contract.
     * @param rescueTo_ The address of the user.
     * @param amount_ The amount of tokens to be rescued.
     */
    function rescueFunds(
        address token_,
        address rescueTo_,
        uint256 amount_
    ) internal {
        if (rescueTo_ == address(0)) revert ZeroAddress();

        if (token_ == ETH_ADDRESS) {
            SafeTransferLib.safeTransferETH(rescueTo_, amount_);
        } else {
            if (token_.code.length == 0) revert InvalidTokenAddress();
            SafeTransferLib.safeTransfer(ERC20(token_), rescueTo_, amount_);
        }
    }
}


// File contracts/interfaces/ISignatureVerifier.sol

pragma solidity 0.8.19;

/**
 * @title Signature Verifier
 * @notice Verifies the signatures and returns the address of signer recovered from the input signature or digest.
 */
interface ISignatureVerifier {
    /**
     * @notice returns the address of signer recovered from input signature and digest
     */
    function recoverSigner(
        bytes32 digest_,
        bytes memory signature_
    ) external pure returns (address signer);
}


// File contracts/utils/AccessRoles.sol

pragma solidity 0.8.19;

// contains role hashes used in socket dl for various different operations

// used to rescue funds
bytes32 constant RESCUE_ROLE = keccak256("RESCUE_ROLE");
// used to withdraw fees
bytes32 constant WITHDRAW_ROLE = keccak256("WITHDRAW_ROLE");
// used to trip switchboards
bytes32 constant TRIP_ROLE = keccak256("TRIP_ROLE");
// used to un trip switchboards
bytes32 constant UN_TRIP_ROLE = keccak256("UN_TRIP_ROLE");
// used by governance
bytes32 constant GOVERNANCE_ROLE = keccak256("GOVERNANCE_ROLE");
//used by executors which executes message at destination
bytes32 constant EXECUTOR_ROLE = keccak256("EXECUTOR_ROLE");
// used by transmitters who seal and propose packets in socket
bytes32 constant TRANSMITTER_ROLE = keccak256("TRANSMITTER_ROLE");
// used by switchboard watchers who work against transmitters
bytes32 constant WATCHER_ROLE = keccak256("WATCHER_ROLE");
// used by fee updaters responsible for updating fees at switchboards, transmit manager and execution manager
bytes32 constant FEES_UPDATER_ROLE = keccak256("FEES_UPDATER_ROLE");


// File contracts/utils/SigIdentifiers.sol

pragma solidity 0.8.19;

// contains unique identifiers which are hashes of strings, they help in making signature digest unique
// hence preventing signature replay attacks

// default switchboards
bytes32 constant TRIP_PATH_SIG_IDENTIFIER = keccak256("TRIP_PATH");
bytes32 constant TRIP_PROPOSAL_SIG_IDENTIFIER = keccak256("TRIP_PROPOSAL");
bytes32 constant TRIP_GLOBAL_SIG_IDENTIFIER = keccak256("TRIP_GLOBAL");

bytes32 constant UN_TRIP_PATH_SIG_IDENTIFIER = keccak256("UN_TRIP_PATH");
bytes32 constant UN_TRIP_GLOBAL_SIG_IDENTIFIER = keccak256("UN_TRIP_GLOBAL");

// native switchboards
bytes32 constant TRIP_NATIVE_SIG_IDENTIFIER = keccak256("TRIP_NATIVE");
bytes32 constant UN_TRIP_NATIVE_SIG_IDENTIFIER = keccak256("UN_TRIP_NATIVE");

// value threshold, price and fee updaters
bytes32 constant FEES_UPDATE_SIG_IDENTIFIER = keccak256("FEES_UPDATE");
bytes32 constant RELATIVE_NATIVE_TOKEN_PRICE_UPDATE_SIG_IDENTIFIER = keccak256(
    "RELATIVE_NATIVE_TOKEN_PRICE_UPDATE"
);
bytes32 constant MSG_VALUE_MIN_THRESHOLD_SIG_IDENTIFIER = keccak256(
    "MSG_VALUE_MIN_THRESHOLD_UPDATE"
);
bytes32 constant MSG_VALUE_MAX_THRESHOLD_SIG_IDENTIFIER = keccak256(
    "MSG_VALUE_MAX_THRESHOLD_UPDATE"
);


// File contracts/switchboard/default-switchboards/SwitchboardBase.sol

pragma solidity 0.8.19;






abstract contract SwitchboardBase is ISwitchboard, AccessControlExtended {
    // signature verifier contract
    ISignatureVerifier public immutable signatureVerifier__;

    // socket contract
    ISocket public immutable socket__;

    // chain slug of deployed chain
    uint32 public immutable chainSlug;

    // timeout after which packets become valid
    // optimistic switchboard: this is the wait time to validate packet
    // fast switchboard: this makes packets valid even if all watchers have not attested
    //      used to make the system work when watchers are inactive due to infra etc problems
    // this is only applicable if none of the trips are triggered
    uint256 public immutable timeoutInSeconds;

    // variable to pause the switchboard completely, to be used only in case of smart contract bug
    // trip can be done by TRIP_ROLE holders
    // untrip can be done by UN_TRIP_ROLE holders
    bool public isGlobalTipped;

    // pause all proposals coming from given chain.
    // to be used if a transmitter has gone rogue and needs to be kicked to resume normal functioning
    // trip can be done by WATCHER_ROLE holders
    // untrip can be done by UN_TRIP_ROLE holders
    // sourceChain => isPaused
    mapping(uint32 => bool) public isPathTripped;

    // block execution of single proposal
    // to be used if transmitter proposes wrong packet root single time
    // trip can be done by WATCHER_ROLE holders
    // untrip not possible, but same root can be proposed again at next proposalCount
    // isProposalTripped(packetId => proposalCount => isTripped)
    mapping(bytes32 => mapping(uint256 => bool)) public isProposalTripped;

    // incrementing nonce for each signer
    // watcher => nextNonce
    mapping(address => uint256) public nextNonce;

    struct Fees {
        uint128 switchboardFees; // Fees paid to Switchboard per packet
        uint128 verificationOverheadFees; // Fees paid to executor per message
    }
    // destinationChainSlug => fees-struct with verificationOverheadFees and switchboardFees
    mapping(uint32 => Fees) public fees;

    // destinationChainSlug => initialPacketCount - packets with packetCount after this will be accepted at the switchboard.
    // This is to prevent attacks with sending messages for chain slugs before the switchboard is registered for them.
    mapping(uint32 => uint256) public initialPacketCount;

    /**
     * @dev Emitted when global trip status changes
     * @param isGlobalTipped New trip status of the contract
     */
    event GlobalTripChanged(bool isGlobalTipped);

    /**
     * @dev Emitted when path trip status changes
     * @param srcChainSlug Chain slug of the source chain
     * @param isPathTripped New trip status of the path
     */
    event PathTripChanged(uint32 srcChainSlug, bool isPathTripped);

    /**
     * @dev Emitted when a proposal for a packetId is tripped
     * @param packetId packetId of packet
     * @param proposalCount proposalCount being tripped
     */
    event ProposalTripped(bytes32 packetId, uint256 proposalCount);

    /**
     * @dev Emitted when a fees is set for switchboard
     * @param siblingChainSlug Chain slug of the sibling chain
     * @param fees Fees struct with verificationOverheadFees and switchboardFees
     */
    event SwitchboardFeesSet(uint32 siblingChainSlug, Fees fees);

    // Error hit when a signature with unexpected nonce is received
    error InvalidNonce();

    // Error hit when tx from invalid ExecutionManager is received
    error OnlyExecutionManager();

    /**
     * @dev Constructor of SwitchboardBase
     * @param socket_ Address of the socket contract
     * @param chainSlug_ Chain slug of deployment chain
     * @param timeoutInSeconds_ Time after which proposals become valid if not tripped
     * @param signatureVerifier_ signatureVerifier_ contract
     */
    constructor(
        address socket_,
        uint32 chainSlug_,
        uint256 timeoutInSeconds_,
        ISignatureVerifier signatureVerifier_
    ) {
        socket__ = ISocket(socket_);
        chainSlug = chainSlug_;
        timeoutInSeconds = timeoutInSeconds_;
        signatureVerifier__ = signatureVerifier_;
    }

    /**
     * @inheritdoc ISwitchboard
     */
    function getMinFees(
        uint32 dstChainSlug_
    ) external view override returns (uint128, uint128) {
        Fees memory minFees = fees[dstChainSlug_];
        return (minFees.switchboardFees, minFees.verificationOverheadFees);
    }

    /**
     * @inheritdoc ISwitchboard
     */
    function registerSiblingSlug(
        uint32 siblingChainSlug_,
        uint256 maxPacketLength_,
        uint256 capacitorType_,
        uint256 initialPacketCount_,
        address siblingSwitchboard_
    ) external override onlyRole(GOVERNANCE_ROLE) {
        initialPacketCount[siblingChainSlug_] = initialPacketCount_;

        socket__.registerSwitchboardForSibling(
            siblingChainSlug_,
            maxPacketLength_,
            capacitorType_,
            siblingSwitchboard_
        );
    }

    /**
     * @notice Signals sibling switchboard for given `siblingChainSlug_`.
     * @dev This function is expected to be only called by governance
     * @param siblingChainSlug_ The slug of the sibling chain whos switchboard is being connected.
     * @param siblingSwitchboard_ The switchboard address deployed on `siblingChainSlug_`
     */
    function updateSibling(
        uint32 siblingChainSlug_,
        address siblingSwitchboard_
    ) external onlyRole(GOVERNANCE_ROLE) {
        socket__.useSiblingSwitchboard(siblingChainSlug_, siblingSwitchboard_);
    }

    /**
     * @notice Pauses this switchboard completely. To be used in case of contract bug.
     * @param nonce_ The nonce used for signature.
     * @param signature_ The signature provided to validate the trip.
     */
    function tripGlobal(uint256 nonce_, bytes memory signature_) external {
        address tripper = signatureVerifier__.recoverSigner(
            // it includes trip status at the end
            keccak256(
                abi.encode(
                    TRIP_GLOBAL_SIG_IDENTIFIER,
                    address(this),
                    chainSlug,
                    nonce_,
                    true
                )
            ),
            signature_
        );

        _checkRole(TRIP_ROLE, tripper);
        // Nonce is used by gated roles and we don't expect nonce to reach the max value of uint256
        unchecked {
            if (nonce_ != nextNonce[tripper]++) revert InvalidNonce();
        }
        isGlobalTipped = true;
        emit GlobalTripChanged(true);
    }

    /**
     * @notice Pauses a path. To be used when a transmitter goes rogue and needs to be kicked.
     * @param nonce_ The nonce used for signature.
     * @param srcChainSlug_ The source chain slug of the path to be paused.
     * @param signature_ The signature provided to validate the trip.
     */
    function tripPath(
        uint256 nonce_,
        uint32 srcChainSlug_,
        bytes memory signature_
    ) external {
        address watcher = signatureVerifier__.recoverSigner(
            // it includes trip status at the end
            keccak256(
                abi.encode(
                    TRIP_PATH_SIG_IDENTIFIER,
                    address(this),
                    srcChainSlug_,
                    chainSlug,
                    nonce_,
                    true
                )
            ),
            signature_
        );

        _checkRoleWithSlug(WATCHER_ROLE, srcChainSlug_, watcher);

        // Nonce is used by gated roles and we don't expect nonce to reach the max value of uint256
        unchecked {
            if (nonce_ != nextNonce[watcher]++) revert InvalidNonce();
        }
        //source chain based tripping
        isPathTripped[srcChainSlug_] = true;
        emit PathTripChanged(srcChainSlug_, true);
    }

    /**
     * @notice Pauses a particular proposal of a packet. To be used if transmitter proposes wrong root.
     * @param nonce_ The nonce used for signature.
     * @param packetId_ The ID of the packet.
     * @param proposalCount_ The count of the proposal to be paused.
     * @param signature_ The signature provided to validate the trip.
     */
    function tripProposal(
        uint256 nonce_,
        bytes32 packetId_,
        uint256 proposalCount_,
        bytes memory signature_
    ) external {
        uint32 srcChainSlug = uint32(uint256(packetId_) >> 224);
        address watcher = signatureVerifier__.recoverSigner(
            keccak256(
                abi.encode(
                    TRIP_PROPOSAL_SIG_IDENTIFIER,
                    address(this),
                    srcChainSlug,
                    chainSlug,
                    nonce_,
                    packetId_,
                    proposalCount_
                )
            ),
            signature_
        );

        _checkRoleWithSlug(WATCHER_ROLE, srcChainSlug, watcher);
        // Nonce is used by gated roles and we don't expect nonce to reach the max value of uint256
        unchecked {
            if (nonce_ != nextNonce[watcher]++) revert InvalidNonce();
        }

        isProposalTripped[packetId_][proposalCount_] = true;
        emit ProposalTripped(packetId_, proposalCount_);
    }

    /**
     * @notice Unpauses a path. To be used after bad transmitter has been kicked from system.
     * @param nonce_ The nonce used for the signature.
     * @param srcChainSlug_ The source chain slug of the path to be unpaused.
     * @param signature_ The signature provided to validate the un trip.
     */
    function unTripPath(
        uint256 nonce_,
        uint32 srcChainSlug_,
        bytes memory signature_
    ) external {
        address unTripper = signatureVerifier__.recoverSigner(
            // it includes trip status at the end
            keccak256(
                abi.encode(
                    UN_TRIP_PATH_SIG_IDENTIFIER,
                    address(this),
                    srcChainSlug_,
                    chainSlug,
                    nonce_,
                    false
                )
            ),
            signature_
        );

        _checkRole(UN_TRIP_ROLE, unTripper);
        // Nonce is used by gated roles and we don't expect nonce to reach the max value of uint256
        unchecked {
            if (nonce_ != nextNonce[unTripper]++) revert InvalidNonce();
        }
        isPathTripped[srcChainSlug_] = false;
        emit PathTripChanged(srcChainSlug_, false);
    }

    /**
     * @notice Unpauses global execution. To be used if contract bug is addressed.
     * @param nonce_ The nonce used for the signature.
     * @param signature_ The signature provided to validate the un trip.
     */
    function unTrip(uint256 nonce_, bytes memory signature_) external {
        address unTripper = signatureVerifier__.recoverSigner(
            // it includes trip status at the end
            keccak256(
                abi.encode(
                    UN_TRIP_GLOBAL_SIG_IDENTIFIER,
                    address(this),
                    chainSlug,
                    nonce_,
                    false
                )
            ),
            signature_
        );

        _checkRole(UN_TRIP_ROLE, unTripper);

        // Nonce is used by gated roles and we don't expect nonce to reach the max value of uint256
        unchecked {
            if (nonce_ != nextNonce[unTripper]++) revert InvalidNonce();
        }
        isGlobalTipped = false;
        emit GlobalTripChanged(false);
    }

    /**
     * @notice Withdraw fees from the contract to an account.
     * @param withdrawTo_ The address where we should send the fees.
     */
    function withdrawFees(
        address withdrawTo_
    ) external onlyRole(WITHDRAW_ROLE) {
        if (withdrawTo_ == address(0)) revert ZeroAddress();
        SafeTransferLib.safeTransferETH(withdrawTo_, address(this).balance);
    }

    /**
     * @notice Rescues funds from the contract if they are locked by mistake.
     * @param token_ The address of the token contract.
     * @param rescueTo_ The address where rescued tokens need to be sent.
     * @param amount_ The amount of tokens to be rescued.
     */
    function rescueFunds(
        address token_,
        address rescueTo_,
        uint256 amount_
    ) external onlyRole(RESCUE_ROLE) {
        RescueFundsLib.rescueFunds(token_, rescueTo_, amount_);
    }

    /**
     * @inheritdoc ISwitchboard
     * @dev Receiving only allowed from execution manager
     * @dev Need to receive fees before change in case execution manager
     *      is being updated on socket.
     */
    function receiveFees(uint32) external payable override {
        if (msg.sender != address(socket__.executionManager__()))
            revert OnlyExecutionManager();
    }
}


// File contracts/switchboard/default-switchboards/FastSwitchboard.sol

pragma solidity 0.8.19;

/**
 * @title FastSwitchboard contract
 * @dev This contract implements a fast version of the SwitchboardBase contract
 * that enables packet attestations and watchers registration.
 */
contract FastSwitchboard is SwitchboardBase {
    // dstChainSlug => totalWatchers registered
    mapping(uint32 => uint256) public totalWatchers;

    // used to track which watcher have attested a root
    // watcher => root => isAttested
    mapping(address => mapping(bytes32 => bool)) public isAttested;

    // used to detect when enough attestations are reached
    // root => attestationCount
    mapping(bytes32 => uint256) public attestations;

    // mapping to store if root is valid
    // marked when all watchers have attested for a root
    // root => isValid
    mapping(bytes32 => bool) public isRootValid;

    // Event emitted when a new socket is set
    event SocketSet(address newSocket);

    // Event emitted when a proposal is attested
    event ProposalAttested(
        bytes32 packetId,
        uint256 proposalCount,
        bytes32 root,
        address watcher,
        uint256 attestationsCount
    );

    // Error emitted when a watcher already has role while granting
    error WatcherFound();

    // Error emitted when a watcher is not found while attesting or while revoking role
    error WatcherNotFound();

    // Error emitted when a root is already attested by a specific watcher.
    // This is hit even if they are attesting a new proposalCount with same root.
    error AlreadyAttested();

    // Error emitted if grant/revoke is tried for watcher role using generic grant/revoke functions.
    // Watcher role is handled seperately bacause totalWatchers and fees need to be updated along with role change.
    error InvalidRole();

    // Error emitted while attesting if root is zero or it doesnt match the root on socket for given proposal
    // helps in cases where attest tx has been sent but root changes on socket due to reorgs.
    error InvalidRoot();

    /**
     * @dev Constructor function for the FastSwitchboard contract
     * @param owner_ Address of the owner of the contract
     * @param socket_ Address of the socket contract
     * @param chainSlug_ Chain slug of the chain where the contract is deployed
     * @param timeoutInSeconds_ Timeout in seconds after which proposals become valid if not tripped
     * @param signatureVerifier_ The address of the signature verifier contract
     */
    constructor(
        address owner_,
        address socket_,
        uint32 chainSlug_,
        uint256 timeoutInSeconds_,
        ISignatureVerifier signatureVerifier_
    )
        AccessControlExtended(owner_)
        SwitchboardBase(
            socket_,
            chainSlug_,
            timeoutInSeconds_,
            signatureVerifier_
        )
    {}

    /**
     * @dev Function to attest a packet
     * @param packetId_ Packet ID
     * @param proposalCount_ Proposal count
     * @param root_ Root of the packet
     * @param signature_ Signature of the watcher
     * @notice we are attesting a root uniquely identified with packetId and proposalCount. However,
     * there can be multiple proposals for same root. To avoid need to re-attest for different proposals
     *  with same root, we are storing attestations against root instead of packetId and proposalCount.
     */
    function attest(
        bytes32 packetId_,
        uint256 proposalCount_,
        bytes32 root_,
        bytes calldata signature_
    ) external {
        uint32 srcChainSlug = uint32(uint256(packetId_) >> 224);

        bytes32 root = socket__.packetIdRoots(
            packetId_,
            proposalCount_,
            address(this)
        );
        if (root == bytes32(0)) revert InvalidRoot();
        if (root != root_) revert InvalidRoot();

        address watcher = signatureVerifier__.recoverSigner(
            keccak256(
                abi.encode(
                    address(this),
                    chainSlug,
                    packetId_,
                    proposalCount_,
                    root_
                )
            ),
            signature_
        );

        if (isAttested[watcher][root]) revert AlreadyAttested();
        if (!_hasRoleWithSlug(WATCHER_ROLE, srcChainSlug, watcher))
            revert WatcherNotFound();

        isAttested[watcher][root] = true;
        ++attestations[root];

        if (attestations[root] >= totalWatchers[srcChainSlug])
            isRootValid[root] = true;

        emit ProposalAttested(
            packetId_,
            proposalCount_,
            root,
            watcher,
            attestations[root]
        );
    }

    /**
     * @inheritdoc ISwitchboard
     */
    function setFees(
        uint256 nonce_,
        uint32 dstChainSlug_,
        uint128 switchboardFees_,
        uint128 verificationOverheadFees_,
        bytes calldata signature_
    ) external override {
        address feesUpdater = signatureVerifier__.recoverSigner(
            keccak256(
                abi.encode(
                    FEES_UPDATE_SIG_IDENTIFIER,
                    address(this),
                    chainSlug,
                    dstChainSlug_,
                    nonce_,
                    switchboardFees_,
                    verificationOverheadFees_
                )
            ),
            signature_
        );

        _checkRoleWithSlug(FEES_UPDATER_ROLE, dstChainSlug_, feesUpdater);
        // Nonce is used by gated roles and we don't expect nonce to reach the max value of uint256
        unchecked {
            if (nonce_ != nextNonce[feesUpdater]++) revert InvalidNonce();
        }

        // switchboardFees_ input is amount needed per watcher, multipled and stored on chain to avoid watcher set tracking offchain.
        // switchboardFees_ are paid to switchboard per packet
        // verificationOverheadFees_ are paid to executor per message
        Fees memory feesObject = Fees({
            switchboardFees: switchboardFees_ *
                uint128(totalWatchers[dstChainSlug_]),
            verificationOverheadFees: verificationOverheadFees_
        });

        fees[dstChainSlug_] = feesObject;
        emit SwitchboardFeesSet(dstChainSlug_, feesObject);
    }

    /**
     * @inheritdoc ISwitchboard
     */
    function allowPacket(
        bytes32 root_,
        bytes32 packetId_,
        uint256 proposalCount_,
        uint32 srcChainSlug_,
        uint256 proposeTime_
    ) external view override returns (bool) {
        uint64 packetCount = uint64(uint256(packetId_));

        // any relevant trips triggered or invalid packet count.
        if (
            isGlobalTipped ||
            isPathTripped[srcChainSlug_] ||
            isProposalTripped[packetId_][proposalCount_] ||
            packetCount < initialPacketCount[srcChainSlug_]
        ) return false;

        // root has enough attestations
        if (isRootValid[root_]) return true;

        // this makes packets valid even if all watchers have not attested
        // used to make the system work when watchers are inactive due to infra etc problems
        if (block.timestamp - proposeTime_ > timeoutInSeconds) return true;

        // not enough attestations and timeout not hit
        return false;
    }

    /**
     * @notice adds a watcher for `srcChainSlug_` chain
     * @param srcChainSlug_ chain slug of the chain where the watcher is being added
     * @param watcher_ watcher address
     */
    function grantWatcherRole(
        uint32 srcChainSlug_,
        address watcher_
    ) external onlyRole(GOVERNANCE_ROLE) {
        if (_hasRoleWithSlug(WATCHER_ROLE, srcChainSlug_, watcher_))
            revert WatcherFound();
        _grantRoleWithSlug(WATCHER_ROLE, srcChainSlug_, watcher_);

        Fees storage fees = fees[srcChainSlug_];
        uint128 watchersBefore = uint128(totalWatchers[srcChainSlug_]);

        // edge case handled by calling setFees function after boorstrapping is done.
        if (watchersBefore != 0 && fees.switchboardFees != 0)
            fees.switchboardFees =
                (fees.switchboardFees * (watchersBefore + 1)) /
                watchersBefore;

        ++totalWatchers[srcChainSlug_];
    }

    /**
     * @notice removes a watcher from `srcChainSlug_` chain list
     * @param srcChainSlug_ chain slug of the chain where the watcher is being removed
     * @param watcher_ watcher address
     */
    function revokeWatcherRole(
        uint32 srcChainSlug_,
        address watcher_
    ) external onlyRole(GOVERNANCE_ROLE) {
        if (!_hasRoleWithSlug(WATCHER_ROLE, srcChainSlug_, watcher_))
            revert WatcherNotFound();
        _revokeRoleWithSlug(WATCHER_ROLE, srcChainSlug_, watcher_);

        Fees storage fees = fees[srcChainSlug_];
        uint128 watchersBefore = uint128(totalWatchers[srcChainSlug_]);

        // revoking all watchers is an extreme case not expected to be hit after setup is done.
        if (watchersBefore > 1 && fees.switchboardFees != 0)
            fees.switchboardFees =
                (fees.switchboardFees * (watchersBefore - 1)) /
                watchersBefore;

        totalWatchers[srcChainSlug_]--;
    }

    /**
     * @notice returns true if non watcher role. Used to avoid granting watcher role directly
     * @dev If adding any new role to FastSwitchboard, have to add it here as well to make sure it can be set
     */
    function isNonWatcherRole(bytes32 role_) public pure returns (bool) {
        if (
            role_ == TRIP_ROLE ||
            role_ == UN_TRIP_ROLE ||
            role_ == WITHDRAW_ROLE ||
            role_ == RESCUE_ROLE ||
            role_ == GOVERNANCE_ROLE ||
            role_ == FEES_UPDATER_ROLE
        ) return true;

        return false;
    }

    /**
     * @dev Overriding this function from AccessControl to make sure owner can't grant Watcher Role directly, and should
     * only use grantWatcherRole function instead. This is to make sure watcher count remains correct
     */
    function grantRole(
        bytes32 role_,
        address grantee_
    ) external override onlyOwner {
        if (isNonWatcherRole(role_)) {
            _grantRole(role_, grantee_);
        } else {
            revert InvalidRole();
        }
    }

    /**
     * @dev Overriding this function from AccessControlExtended to make sure owner can't grant Watcher Role directly, and should
     * only use grantWatcherRole function instead. This is to make sure watcher count remains correct
     */
    function grantRoleWithSlug(
        bytes32 roleName_,
        uint32 chainSlug_,
        address grantee_
    ) external override onlyOwner {
        if (roleName_ != FEES_UPDATER_ROLE) revert InvalidRole();
        _grantRoleWithSlug(roleName_, chainSlug_, grantee_);
    }

    /**
     * @dev Overriding this function from AccessControl to make sure owner can't revoke Watcher Role directly, and should
     * only use revokeWatcherRole function instead. This is to make sure watcher count remains correct
     */
    function revokeRole(
        bytes32 role_,
        address grantee_
    ) external override onlyOwner {
        if (isNonWatcherRole(role_)) {
            _revokeRole(role_, grantee_);
        } else {
            revert InvalidRole();
        }
    }

    /**
     * @dev Overriding this function from AccessControlExtended to make sure owner can't revoke Watcher Role directly, and should
     * only use revokeWatcherRole function instead. This is to make sure watcher count remains correct
     */
    function revokeRoleWithSlug(
        bytes32 roleName_,
        uint32 chainSlug_,
        address grantee_
    ) external override onlyOwner {
        if (roleName_ != FEES_UPDATER_ROLE) revert InvalidRole();
        _revokeRoleWithSlug(roleName_, chainSlug_, grantee_);
    }

    /**
     * @dev Overriding this function from AccessControlExtended to make sure owner can't grant Watcher Role directly, and should
     * only use grantWatcherRole function instead. This is to make sure watcher count remains correct
     */
    function grantBatchRole(
        bytes32[] calldata roleNames_,
        uint32[] calldata slugs_,
        address[] calldata grantees_
    ) external override onlyOwner {
        if (
            roleNames_.length != grantees_.length ||
            roleNames_.length != slugs_.length
        ) revert UnequalArrayLengths();

        uint256 totalRoles = roleNames_.length;
        for (uint256 index = 0; index < totalRoles; ) {
            if (isNonWatcherRole(roleNames_[index])) {
                if (slugs_[index] > 0)
                    _grantRoleWithSlug(
                        roleNames_[index],
                        slugs_[index],
                        grantees_[index]
                    );
                else _grantRole(roleNames_[index], grantees_[index]);
            } else {
                revert InvalidRole();
            }
            // we will reach block gas limit before this overflows
            unchecked {
                ++index;
            }
        }
    }

    /**
     * @dev Overriding this function from AccessControlExtended to make sure owner can't revoke Watcher Role directly, and should
     * only use revokeWatcherRole function instead. This is to make sure watcher count remains correct
     */
    function revokeBatchRole(
        bytes32[] calldata roleNames_,
        uint32[] calldata slugs_,
        address[] calldata grantees_
    ) external override onlyOwner {
        if (
            roleNames_.length != grantees_.length ||
            roleNames_.length != slugs_.length
        ) revert UnequalArrayLengths();
        uint256 totalRoles = roleNames_.length;
        for (uint256 index = 0; index < totalRoles; ) {
            if (isNonWatcherRole(roleNames_[index])) {
                if (slugs_[index] > 0)
                    _revokeRoleWithSlug(
                        roleNames_[index],
                        slugs_[index],
                        grantees_[index]
                    );
                else _revokeRole(roleNames_[index], grantees_[index]);
            } else {
                revert InvalidRole();
            }
            // we will reach block gas limit before this overflows
            unchecked {
                ++index;
            }
        }
    }
}
