// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/proxy/utils/Initializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.2;

import "../../utils/Address.sol";

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
 * ```
 * contract MyToken is ERC20Upgradeable {
 *     function initialize() initializer public {
 *         __ERC20_init("MyToken", "MTK");
 *     }
 * }
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
     * @dev Indicates that the contract has been initialized.
     * @custom:oz-retyped-from bool
     */
    uint8 private _initialized;

    /**
     * @dev Indicates that the contract is in the process of being initialized.
     */
    bool private _initializing;

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint8 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts. Equivalent to `reinitializer(1)`.
     */
    modifier initializer() {
        bool isTopLevelCall = !_initializing;
        require(
            (isTopLevelCall && _initialized < 1) || (!Address.isContract(address(this)) && _initialized == 1),
            "Initializable: contract is already initialized"
        );
        _initialized = 1;
        if (isTopLevelCall) {
            _initializing = true;
        }
        _;
        if (isTopLevelCall) {
            _initializing = false;
            emit Initialized(1);
        }
    }

    /**
     * @dev A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
     * contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
     * used to initialize parent contracts.
     *
     * `initializer` is equivalent to `reinitializer(1)`, so a reinitializer may be used after the original
     * initialization step. This is essential to configure modules that are added through upgrades and that require
     * initialization.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
     */
    modifier reinitializer(uint8 version) {
        require(!_initializing && _initialized < version, "Initializable: contract is already initialized");
        _initialized = version;
        _initializing = true;
        _;
        _initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        require(_initializing, "Initializable: contract is not initializing");
        _;
    }

    /**
     * @dev Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
     * Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
     * to any version. It is recommended to use this to lock implementation contracts that are designed to be called
     * through proxies.
     */
    function _disableInitializers() internal virtual {
        require(!_initializing, "Initializable: contract is initializing");
        if (_initialized < type(uint8).max) {
            _initialized = type(uint8).max;
            emit Initialized(type(uint8).max);
        }
    }
}

// ============================================================
// FILE: lib/openzeppelin-contracts/contracts/utils/Address.sol
// ============================================================

// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (utils/Address.sol)

pragma solidity ^0.8.1;

/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     * ====
     *
     * [IMPORTANT]
     * ====
     * You shouldn't rely on `isContract` to protect against flash loan attacks!
     *
     * Preventing calls from contracts is highly discouraged. It breaks composability, breaks support for smart wallets
     * like Gnosis Safe, and does not provide security since it can be circumvented by calling from a contract
     * constructor.
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // This method relies on extcodesize/address.code.length, which returns 0
        // for contracts in construction, since the code is only stored at the end
        // of the constructor execution.

        return account.code.length > 0;
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        (bool success, ) = recipient.call{value: amount}("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain `call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionCall(target, data, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value
    ) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(
        address target,
        bytes memory data,
        uint256 value,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        require(isContract(target), "Address: call to non-contract");

        (bool success, bytes memory returndata) = target.call{value: value}(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(address target, bytes memory data) internal view returns (bytes memory) {
        return functionStaticCall(target, data, "Address: low-level static call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a static call.
     *
     * _Available since v3.3._
     */
    function functionStaticCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal view returns (bytes memory) {
        require(isContract(target), "Address: static call to non-contract");

        (bool success, bytes memory returndata) = target.staticcall(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(address target, bytes memory data) internal returns (bytes memory) {
        return functionDelegateCall(target, data, "Address: low-level delegate call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-string-}[`functionCall`],
     * but performing a delegate call.
     *
     * _Available since v3.4._
     */
    function functionDelegateCall(
        address target,
        bytes memory data,
        string memory errorMessage
    ) internal returns (bytes memory) {
        require(isContract(target), "Address: delegate call to non-contract");

        (bool success, bytes memory returndata) = target.delegatecall(data);
        return verifyCallResult(success, returndata, errorMessage);
    }

    /**
     * @dev Tool to verifies that a low level call was successful, and revert if it wasn't, either by bubbling the
     * revert reason using the provided one.
     *
     * _Available since v4.3._
     */
    function verifyCallResult(
        bool success,
        bytes memory returndata,
        string memory errorMessage
    ) internal pure returns (bytes memory) {
        if (success) {
            return returndata;
        } else {
            // Look for revert reason and bubble it up if present
            if (returndata.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly
                /// @solidity memory-safe-assembly
                assembly {
                    let returndata_size := mload(returndata)
                    revert(add(32, returndata), returndata_size)
                }
            } else {
                revert(errorMessage);
            }
        }
    }
}

// ============================================================
// FILE: src/dispute/AnchorStateRegistry.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import { Initializable } from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import { ISemver } from "src/universal/ISemver.sol";

import { IAnchorStateRegistry } from "src/dispute/interfaces/IAnchorStateRegistry.sol";
import { IFaultDisputeGame } from "src/dispute/interfaces/IFaultDisputeGame.sol";
import { IDisputeGame } from "src/dispute/interfaces/IDisputeGame.sol";
import { IDisputeGameFactory } from "src/dispute/interfaces/IDisputeGameFactory.sol";
import { SuperchainConfig } from "src/L1/SuperchainConfig.sol";

import "src/dispute/lib/Types.sol";
import { Unauthorized } from "src/libraries/errors/CommonErrors.sol";
import { UnregisteredGame, InvalidGameStatus } from "src/dispute/lib/Errors.sol";

/// @title AnchorStateRegistry
/// @notice The AnchorStateRegistry is a contract that stores the latest "anchor" state for each available
///         FaultDisputeGame type. The anchor state is the latest state that has been proposed on L1 and was not
///         challenged within the challenge period. By using stored anchor states, new FaultDisputeGame instances can
///         be initialized with a more recent starting state which reduces the amount of required offchain computation.
contract AnchorStateRegistry is Initializable, IAnchorStateRegistry, ISemver {
    /// @notice Describes an initial anchor state for a game type.
    struct StartingAnchorRoot {
        GameType gameType;
        OutputRoot outputRoot;
    }

    /// @notice Semantic version.
    /// @custom:semver 2.0.0
    string public constant version = "2.0.0";

    /// @notice DisputeGameFactory address.
    IDisputeGameFactory internal immutable DISPUTE_GAME_FACTORY;

    /// @inheritdoc IAnchorStateRegistry
    mapping(GameType => OutputRoot) public anchors;

    /// @notice Address of the SuperchainConfig contract.
    SuperchainConfig public superchainConfig;

    /// @param _disputeGameFactory DisputeGameFactory address.
    constructor(IDisputeGameFactory _disputeGameFactory) {
        DISPUTE_GAME_FACTORY = _disputeGameFactory;
        _disableInitializers();
    }

    /// @notice Initializes the contract.
    /// @param _startingAnchorRoots An array of starting anchor roots.
    /// @param _superchainConfig The address of the SuperchainConfig contract.
    function initialize(
        StartingAnchorRoot[] memory _startingAnchorRoots,
        SuperchainConfig _superchainConfig
    )
        public
        initializer
    {
        for (uint256 i = 0; i < _startingAnchorRoots.length; i++) {
            StartingAnchorRoot memory startingAnchorRoot = _startingAnchorRoots[i];
            anchors[startingAnchorRoot.gameType] = startingAnchorRoot.outputRoot;
        }
        superchainConfig = _superchainConfig;
    }

    /// @inheritdoc IAnchorStateRegistry
    function disputeGameFactory() external view returns (IDisputeGameFactory) {
        return DISPUTE_GAME_FACTORY;
    }

    /// @inheritdoc IAnchorStateRegistry
    function tryUpdateAnchorState() external {
        // Grab the game and game data.
        IFaultDisputeGame game = IFaultDisputeGame(msg.sender);
        (GameType gameType, Claim rootClaim, bytes memory extraData) = game.gameData();

        // Grab the verified address of the game based on the game data.
        // slither-disable-next-line unused-return
        (IDisputeGame factoryRegisteredGame,) =
            DISPUTE_GAME_FACTORY.games({ _gameType: gameType, _rootClaim: rootClaim, _extraData: extraData });

        // Must be a valid game.
        if (address(factoryRegisteredGame) != address(game)) revert UnregisteredGame();

        // No need to update anything if the anchor state is already newer.
        if (game.l2BlockNumber() <= anchors[gameType].l2BlockNumber) {
            return;
        }

        // Must be a game that resolved in favor of the state.
        if (game.status() != GameStatus.DEFENDER_WINS) {
            return;
        }

        // Actually update the anchor state.
        anchors[gameType] = OutputRoot({ l2BlockNumber: game.l2BlockNumber(), root: Hash.wrap(game.rootClaim().raw()) });
    }

    /// @inheritdoc IAnchorStateRegistry
    function setAnchorState(IFaultDisputeGame _game) external {
        if (msg.sender != superchainConfig.guardian()) revert Unauthorized();

        // Get the metadata of the game.
        (GameType gameType, Claim rootClaim, bytes memory extraData) = _game.gameData();

        // Grab the verified address of the game based on the game data.
        // slither-disable-next-line unused-return
        (IDisputeGame factoryRegisteredGame,) =
            DISPUTE_GAME_FACTORY.games({ _gameType: gameType, _rootClaim: rootClaim, _extraData: extraData });

        // Must be a valid game.
        if (address(factoryRegisteredGame) != address(_game)) revert UnregisteredGame();

        // The game must have resolved in favor of the root claim.
        if (_game.status() != GameStatus.DEFENDER_WINS) revert InvalidGameStatus();

        // Update the anchor.
        anchors[gameType] =
            OutputRoot({ l2BlockNumber: _game.l2BlockNumber(), root: Hash.wrap(_game.rootClaim().raw()) });
    }
}

// ============================================================
// FILE: src/dispute/interfaces/IAnchorStateRegistry.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IFaultDisputeGame } from "src/dispute/interfaces/IFaultDisputeGame.sol";
import { IDisputeGameFactory } from "src/dispute/interfaces/IDisputeGameFactory.sol";

import "src/dispute/lib/Types.sol";

/// @title IAnchorStateRegistry
/// @notice Describes a contract that stores the anchor state for each game type.
interface IAnchorStateRegistry {
    /// @notice Returns the anchor state for the given game type.
    /// @param _gameType The game type to get the anchor state for.
    /// @return The anchor state for the given game type.
    function anchors(GameType _gameType) external view returns (Hash, uint256);

    /// @notice Returns the DisputeGameFactory address.
    /// @return DisputeGameFactory address.
    function disputeGameFactory() external view returns (IDisputeGameFactory);

    /// @notice Callable by FaultDisputeGame contracts to update the anchor state. Pulls the anchor state directly from
    ///         the FaultDisputeGame contract and stores it in the registry if the new anchor state is valid and the
    ///         state is newer than the current anchor state.
    function tryUpdateAnchorState() external;

    /// @notice Sets the anchor state given the game.
    /// @param _game The game to set the anchor state for.
    function setAnchorState(IFaultDisputeGame _game) external;
}

// ============================================================
// FILE: src/dispute/interfaces/IDisputeGame.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IInitializable } from "src/dispute/interfaces/IInitializable.sol";

import "src/dispute/lib/Types.sol";

/// @title IDisputeGame
/// @notice The generic interface for a DisputeGame contract.
interface IDisputeGame is IInitializable {
    /// @notice Emitted when the game is resolved.
    /// @param status The status of the game after resolution.
    event Resolved(GameStatus indexed status);

    /// @notice Returns the timestamp that the DisputeGame contract was created at.
    /// @return createdAt_ The timestamp that the DisputeGame contract was created at.
    function createdAt() external view returns (Timestamp createdAt_);

    /// @notice Returns the timestamp that the DisputeGame contract was resolved at.
    /// @return resolvedAt_ The timestamp that the DisputeGame contract was resolved at.
    function resolvedAt() external view returns (Timestamp resolvedAt_);

    /// @notice Returns the current status of the game.
    /// @return status_ The current status of the game.
    function status() external view returns (GameStatus status_);

    /// @notice Getter for the game type.
    /// @dev The reference impl should be entirely different depending on the type (fault, validity)
    ///      i.e. The game type should indicate the security model.
    /// @return gameType_ The type of proof system being used.
    function gameType() external view returns (GameType gameType_);

    /// @notice Getter for the creator of the dispute game.
    /// @dev `clones-with-immutable-args` argument #1
    /// @return creator_ The creator of the dispute game.
    function gameCreator() external pure returns (address creator_);

    /// @notice Getter for the root claim.
    /// @dev `clones-with-immutable-args` argument #2
    /// @return rootClaim_ The root claim of the DisputeGame.
    function rootClaim() external pure returns (Claim rootClaim_);

    /// @notice Getter for the parent hash of the L1 block when the dispute game was created.
    /// @dev `clones-with-immutable-args` argument #3
    /// @return l1Head_ The parent hash of the L1 block when the dispute game was created.
    function l1Head() external pure returns (Hash l1Head_);

    /// @notice Getter for the extra data.
    /// @dev `clones-with-immutable-args` argument #4
    /// @return extraData_ Any extra data supplied to the dispute game contract by the creator.
    function extraData() external pure returns (bytes memory extraData_);

    /// @notice If all necessary information has been gathered, this function should mark the game
    ///         status as either `CHALLENGER_WINS` or `DEFENDER_WINS` and return the status of
    ///         the resolved game. It is at this stage that the bonds should be awarded to the
    ///         necessary parties.
    /// @dev May only be called if the `status` is `IN_PROGRESS`.
    /// @return status_ The status of the game after resolution.
    function resolve() external returns (GameStatus status_);

    /// @notice A compliant implementation of this interface should return the components of the
    ///         game UUID's preimage provided in the cwia payload. The preimage of the UUID is
    ///         constructed as `keccak256(gameType . rootClaim . extraData)` where `.` denotes
    ///         concatenation.
    /// @return gameType_ The type of proof system being used.
    /// @return rootClaim_ The root claim of the DisputeGame.
    /// @return extraData_ Any extra data supplied to the dispute game contract by the creator.
    function gameData() external view returns (GameType gameType_, Claim rootClaim_, bytes memory extraData_);
}

// ============================================================
// FILE: src/dispute/interfaces/IDisputeGameFactory.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IDisputeGame } from "./IDisputeGame.sol";

import "src/dispute/lib/Types.sol";

/// @title IDisputeGameFactory
/// @notice The interface for a DisputeGameFactory contract.
interface IDisputeGameFactory {
    /// @notice Emitted when a new dispute game is created
    /// @param disputeProxy The address of the dispute game proxy
    /// @param gameType The type of the dispute game proxy's implementation
    /// @param rootClaim The root claim of the dispute game
    event DisputeGameCreated(address indexed disputeProxy, GameType indexed gameType, Claim indexed rootClaim);

    /// @notice Emitted when a new game implementation added to the factory
    /// @param impl The implementation contract for the given `GameType`.
    /// @param gameType The type of the DisputeGame.
    event ImplementationSet(address indexed impl, GameType indexed gameType);

    /// @notice Emitted when a game type's initialization bond is updated
    /// @param gameType The type of the DisputeGame.
    /// @param newBond The new bond (in wei) for initializing the game type.
    event InitBondUpdated(GameType indexed gameType, uint256 indexed newBond);

    /// @notice Information about a dispute game found in a `findLatestGames` search.
    struct GameSearchResult {
        uint256 index;
        GameId metadata;
        Timestamp timestamp;
        Claim rootClaim;
        bytes extraData;
    }

    /// @notice The total number of dispute games created by this factory.
    /// @return gameCount_ The total number of dispute games created by this factory.
    function gameCount() external view returns (uint256 gameCount_);

    /// @notice `games` queries an internal mapping that maps the hash of
    ///         `gameType ++ rootClaim ++ extraData` to the deployed `DisputeGame` clone.
    /// @dev `++` equates to concatenation.
    /// @param _gameType The type of the DisputeGame - used to decide the proxy implementation
    /// @param _rootClaim The root claim of the DisputeGame.
    /// @param _extraData Any extra data that should be provided to the created dispute game.
    /// @return proxy_ The clone of the `DisputeGame` created with the given parameters.
    ///         Returns `address(0)` if nonexistent.
    /// @return timestamp_ The timestamp of the creation of the dispute game.
    function games(
        GameType _gameType,
        Claim _rootClaim,
        bytes calldata _extraData
    )
        external
        view
        returns (IDisputeGame proxy_, Timestamp timestamp_);

    /// @notice `gameAtIndex` returns the dispute game contract address and its creation timestamp
    ///          at the given index. Each created dispute game increments the underlying index.
    /// @param _index The index of the dispute game.
    /// @return gameType_ The type of the DisputeGame - used to decide the proxy implementation.
    /// @return timestamp_ The timestamp of the creation of the dispute game.
    /// @return proxy_ The clone of the `DisputeGame` created with the given parameters.
    ///         Returns `address(0)` if nonexistent.
    function gameAtIndex(uint256 _index)
        external
        view
        returns (GameType gameType_, Timestamp timestamp_, IDisputeGame proxy_);

    /// @notice `gameImpls` is a mapping that maps `GameType`s to their respective
    ///         `IDisputeGame` implementations.
    /// @param _gameType The type of the dispute game.
    /// @return impl_ The address of the implementation of the game type.
    ///         Will be cloned on creation of a new dispute game with the given `gameType`.
    function gameImpls(GameType _gameType) external view returns (IDisputeGame impl_);

    /// @notice Returns the required bonds for initializing a dispute game of the given type.
    /// @param _gameType The type of the dispute game.
    /// @return bond_ The required bond for initializing a dispute game of the given type.
    function initBonds(GameType _gameType) external view returns (uint256 bond_);

    /// @notice Creates a new DisputeGame proxy contract.
    /// @param _gameType The type of the DisputeGame - used to decide the proxy implementation.
    /// @param _rootClaim The root claim of the DisputeGame.
    /// @param _extraData Any extra data that should be provided to the created dispute game.
    /// @return proxy_ The address of the created DisputeGame proxy.
    function create(
        GameType _gameType,
        Claim _rootClaim,
        bytes calldata _extraData
    )
        external
        payable
        returns (IDisputeGame proxy_);

    /// @notice Sets the implementation contract for a specific `GameType`.
    /// @dev May only be called by the `owner`.
    /// @param _gameType The type of the DisputeGame.
    /// @param _impl The implementation contract for the given `GameType`.
    function setImplementation(GameType _gameType, IDisputeGame _impl) external;

    /// @notice Sets the bond (in wei) for initializing a game type.
    /// @dev May only be called by the `owner`.
    /// @param _gameType The type of the DisputeGame.
    /// @param _initBond The bond (in wei) for initializing a game type.
    function setInitBond(GameType _gameType, uint256 _initBond) external;

    /// @notice Returns a unique identifier for the given dispute game parameters.
    /// @dev Hashes the concatenation of `gameType . rootClaim . extraData`
    ///      without expanding memory.
    /// @param _gameType The type of the DisputeGame.
    /// @param _rootClaim The root claim of the DisputeGame.
    /// @param _extraData Any extra data that should be provided to the created dispute game.
    /// @return uuid_ The unique identifier for the given dispute game parameters.
    function getGameUUID(
        GameType _gameType,
        Claim _rootClaim,
        bytes memory _extraData
    )
        external
        pure
        returns (Hash uuid_);

    /// @notice Finds the `_n` most recent `GameId`'s of type `_gameType` starting at `_start`. If there are less than
    ///         `_n` games of type `_gameType` starting at `_start`, then the returned array will be shorter than `_n`.
    /// @param _gameType The type of game to find.
    /// @param _start The index to start the reverse search from.
    /// @param _n The number of games to find.
    function findLatestGames(
        GameType _gameType,
        uint256 _start,
        uint256 _n
    )
        external
        view
        returns (GameSearchResult[] memory games_);
}

// ============================================================
// FILE: src/dispute/interfaces/IFaultDisputeGame.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IDisputeGame } from "./IDisputeGame.sol";

import "src/dispute/lib/Types.sol";

/// @title IFaultDisputeGame
/// @notice The interface for a fault proof backed dispute game.
interface IFaultDisputeGame is IDisputeGame {
    /// @notice The `ClaimData` struct represents the data associated with a Claim.
    struct ClaimData {
        uint32 parentIndex;
        address counteredBy;
        address claimant;
        uint128 bond;
        Claim claim;
        Position position;
        Clock clock;
    }

    /// @notice The `ResolutionCheckpoint` struct represents the data associated with an in-progress claim resolution.
    struct ResolutionCheckpoint {
        bool initialCheckpointComplete;
        uint32 subgameIndex;
        Position leftmostPosition;
        address counteredBy;
    }

    /// @notice Emitted when a new claim is added to the DAG by `claimant`
    /// @param parentIndex The index within the `claimData` array of the parent claim
    /// @param claim The claim being added
    /// @param claimant The address of the claimant
    event Move(uint256 indexed parentIndex, Claim indexed claim, address indexed claimant);

    /// @notice Attack a disagreed upon `Claim`.
    /// @param _disputed The `Claim` being attacked.
    /// @param _parentIndex Index of the `Claim` to attack in the `claimData` array. This must match the `_disputed`
    /// claim.
    /// @param _claim The `Claim` at the relative attack position.
    function attack(Claim _disputed, uint256 _parentIndex, Claim _claim) external payable;

    /// @notice Defend an agreed upon `Claim`.
    /// @notice _disputed The `Claim` being defended.
    /// @param _parentIndex Index of the claim to defend in the `claimData` array. This must match the `_disputed`
    /// claim.
    /// @param _claim The `Claim` at the relative defense position.
    function defend(Claim _disputed, uint256 _parentIndex, Claim _claim) external payable;

    /// @notice Perform an instruction step via an on-chain fault proof processor.
    /// @dev This function should point to a fault proof processor in order to execute
    ///      a step in the fault proof program on-chain. The interface of the fault proof
    ///      processor contract should adhere to the `IBigStepper` interface.
    /// @param _claimIndex The index of the challenged claim within `claimData`.
    /// @param _isAttack Whether or not the step is an attack or a defense.
    /// @param _stateData The stateData of the step is the preimage of the claim at the given
    ///        prestate, which is at `_stateIndex` if the move is an attack and `_claimIndex` if
    ///        the move is a defense. If the step is an attack on the first instruction, it is
    ///        the absolute prestate of the fault proof VM.
    /// @param _proof Proof to access memory nodes in the VM's merkle state tree.
    function step(uint256 _claimIndex, bool _isAttack, bytes calldata _stateData, bytes calldata _proof) external;

    /// @notice Posts the requested local data to the VM's `PreimageOralce`.
    /// @param _ident The local identifier of the data to post.
    /// @param _execLeafIdx The index of the leaf claim in an execution subgame that requires the local data for a step.
    /// @param _partOffset The offset of the data to post.
    function addLocalData(uint256 _ident, uint256 _execLeafIdx, uint256 _partOffset) external;

    /// @notice Resolves the subgame rooted at the given claim index. `_numToResolve` specifies how many children of
    ///         the subgame will be checked in this call. If `_numToResolve` is less than the number of children, an
    ///         internal cursor will be updated and this function may be called again to complete resolution of the
    ///         subgame.
    /// @dev This function must be called bottom-up in the DAG
    ///      A subgame is a tree of claims that has a maximum depth of 1.
    ///      A subgame root claims is valid if, and only if, all of its child claims are invalid.
    ///      At the deepest level in the DAG, a claim is invalid if there's a successful step against it.
    /// @param _claimIndex The index of the subgame root claim to resolve.
    /// @param _numToResolve The number of subgames to resolve in this call. If the input is `0`, and this is the first
    ///                      page, this function will attempt to check all of the subgame's children at once.
    function resolveClaim(uint256 _claimIndex, uint256 _numToResolve) external;

    /// @notice Returns the number of children that still need to be resolved in order to fully resolve a subgame rooted
    ///         at `_claimIndex`.
    /// @param _claimIndex The subgame root claim's index within `claimData`.
    /// @return numRemainingChildren_ The number of children that still need to be checked to resolve the subgame.
    function getNumToResolve(uint256 _claimIndex) external view returns (uint256 numRemainingChildren_);

    /// @notice The l2BlockNumber of the disputed output root in the `L2OutputOracle`.
    function l2BlockNumber() external view returns (uint256 l2BlockNumber_);

    /// @notice Starting output root and block number of the game.
    function startingOutputRoot() external view returns (Hash startingRoot_, uint256 l2BlockNumber_);

    /// @notice Only the starting block number of the game.
    function startingBlockNumber() external view returns (uint256 startingBlockNumber_);

    /// @notice Only the starting output root of the game.
    function startingRootHash() external view returns (Hash startingRootHash_);
}

// ============================================================
// FILE: src/dispute/interfaces/IInitializable.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title IInitializable
/// @notice An interface for initializable contracts.
interface IInitializable {
    /// @notice Initializes the contract.
    /// @dev This function may only be called once.
    function initialize() external payable;
}

// ============================================================
// FILE: src/dispute/lib/Errors.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "src/dispute/lib/LibUDT.sol";

////////////////////////////////////////////////////////////////
//                `DisputeGameFactory` Errors                 //
////////////////////////////////////////////////////////////////

/// @notice Thrown when a dispute game is attempted to be created with an unsupported game type.
/// @param gameType The unsupported game type.
error NoImplementation(GameType gameType);

/// @notice Thrown when a dispute game that already exists is attempted to be created.
/// @param uuid The UUID of the dispute game that already exists.
error GameAlreadyExists(Hash uuid);

/// @notice Thrown when the root claim has an unexpected VM status.
///         Some games can only start with a root-claim with a specific status.
/// @param rootClaim is the claim that was unexpected.
error UnexpectedRootClaim(Claim rootClaim);

////////////////////////////////////////////////////////////////
//                 `FaultDisputeGame` Errors                  //
////////////////////////////////////////////////////////////////

/// @notice Thrown when a dispute game has already been initialized.
error AlreadyInitialized();

/// @notice Thrown when a supplied bond is not equal to the required bond amount to cover the cost of the interaction.
error IncorrectBondAmount();

/// @notice Thrown when a credit claim is attempted for a value of 0.
error NoCreditToClaim();

/// @notice Thrown when the transfer of credit to a recipient account reverts.
error BondTransferFailed();

/// @notice Thrown when the `extraData` passed to the CWIA proxy is of improper length, or contains invalid information.
error BadExtraData();

/// @notice Thrown when a defense against the root claim is attempted.
error CannotDefendRootClaim();

/// @notice Thrown when a claim is attempting to be made that already exists.
error ClaimAlreadyExists();

/// @notice Thrown when a disputed claim does not match its index in the game.
error InvalidDisputedClaimIndex();

/// @notice Thrown when an action that requires the game to be `IN_PROGRESS` is invoked when
///         the game is not in progress.
error GameNotInProgress();

/// @notice Thrown when a move is attempted to be made after the clock has timed out.
error ClockTimeExceeded();

/// @notice Thrown when the game is attempted to be resolved too early.
error ClockNotExpired();

/// @notice Thrown when a move is attempted to be made at or greater than the max depth of the game.
error GameDepthExceeded();

/// @notice Thrown when a step is attempted above the maximum game depth.
error InvalidParent();

/// @notice Thrown when an invalid prestate is supplied to `step`.
error InvalidPrestate();

/// @notice Thrown when a step is made that computes the expected post state correctly.
error ValidStep();

/// @notice Thrown when a game is attempted to be initialized with an L1 head that does
///         not contain the disputed output root.
error L1HeadTooOld();

/// @notice Thrown when an invalid local identifier is passed to the `addLocalData` function.
error InvalidLocalIdent();

/// @notice Thrown when resolving claims out of order.
error OutOfOrderResolution();

/// @notice Thrown when resolving a claim that has already been resolved.
error ClaimAlreadyResolved();

/// @notice Thrown when a parent output root is attempted to be found on a claim that is in
///         the output root portion of the tree.
error ClaimAboveSplit();

/// @notice Thrown on deployment if the split depth is greater than or equal to the max
///         depth of the game.
error InvalidSplitDepth();

/// @notice Thrown on deployment if the max clock duration is less than or equal to the clock extension.
error InvalidClockExtension();

/// @notice Thrown on deployment if the PreimageOracle challenge period is too high.
error InvalidChallengePeriod();

/// @notice Thrown on deployment if the max depth is greater than `LibPosition.`
error MaxDepthTooLarge();

/// @notice Thrown when trying to step against a claim for a second time, after it has already been countered with
///         an instruction step.
error DuplicateStep();

/// @notice Thrown when an anchor root is not found for a given game type.
error AnchorRootNotFound();

/// @notice Thrown when an output root proof is invalid.
error InvalidOutputRootProof();

/// @notice Thrown when header RLP is invalid with respect to the block hash in an output root proof.
error InvalidHeaderRLP();

/// @notice Thrown when there is a match between the block number in the output root proof and the block number
///         claimed in the dispute game.
error BlockNumberMatches();

/// @notice Thrown when the L2 block number claim has already been challenged.
error L2BlockNumberChallenged();

////////////////////////////////////////////////////////////////
//              `PermissionedDisputeGame` Errors              //
////////////////////////////////////////////////////////////////

/// @notice Thrown when an unauthorized address attempts to interact with the game.
error BadAuth();

////////////////////////////////////////////////////////////////
//              `AnchorStateRegistry` Errors                  //
////////////////////////////////////////////////////////////////

/// @notice Thrown when attempting to set an anchor state using an unregistered game.
error UnregisteredGame();

/// @notice Thrown when attempting to set an anchor state using an invalid game result.
error InvalidGameStatus();

// ============================================================
// FILE: src/dispute/lib/LibPosition.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

using LibPosition for Position global;

/// @notice A `Position` represents a position of a claim within the game tree.
/// @dev This is represented as a "generalized index" where the high-order bit
/// is the level in the tree and the remaining bits is a unique bit pattern, allowing
/// a unique identifier for each node in the tree. Mathematically, it is calculated
/// as 2^{depth} + indexAtDepth.
type Position is uint128;

/// @title LibPosition
/// @notice This library contains helper functions for working with the `Position` type.
library LibPosition {
    /// @notice the `MAX_POSITION_BITLEN` is the number of bits that the `Position` type, and the implementation of
    ///         its behavior within this library, can safely support.
    uint8 internal constant MAX_POSITION_BITLEN = 126;

    /// @notice Computes a generalized index (2^{depth} + indexAtDepth).
    /// @param _depth The depth of the position.
    /// @param _indexAtDepth The index at the depth of the position.
    /// @return position_ The computed generalized index.
    function wrap(uint8 _depth, uint128 _indexAtDepth) internal pure returns (Position position_) {
        assembly {
            // gindex = 2^{_depth} + _indexAtDepth
            position_ := add(shl(_depth, 1), _indexAtDepth)
        }
    }

    /// @notice Pulls the `depth` out of a `Position` type.
    /// @param _position The generalized index to get the `depth` of.
    /// @return depth_ The `depth` of the `position` gindex.
    /// @custom:attribution Solady <https://github.com/Vectorized/Solady>
    function depth(Position _position) internal pure returns (uint8 depth_) {
        // Return the most significant bit offset, which signifies the depth of the gindex.
        assembly {
            depth_ := or(depth_, shl(6, lt(0xffffffffffffffff, shr(depth_, _position))))
            depth_ := or(depth_, shl(5, lt(0xffffffff, shr(depth_, _position))))

            // For the remaining 32 bits, use a De Bruijn lookup.
            _position := shr(depth_, _position)
            _position := or(_position, shr(1, _position))
            _position := or(_position, shr(2, _position))
            _position := or(_position, shr(4, _position))
            _position := or(_position, shr(8, _position))
            _position := or(_position, shr(16, _position))

            depth_ :=
                or(
                    depth_,
                    byte(
                        shr(251, mul(_position, shl(224, 0x07c4acdd))),
                        0x0009010a0d15021d0b0e10121619031e080c141c0f111807131b17061a05041f
                    )
                )
        }
    }

    /// @notice Pulls the `indexAtDepth` out of a `Position` type.
    ///         The `indexAtDepth` is the left/right index of a position at a specific depth within
    ///         the binary tree, starting from index 0. For example, at gindex 2, the `depth` = 1
    ///         and the `indexAtDepth` = 0.
    /// @param _position The generalized index to get the `indexAtDepth` of.
    /// @return indexAtDepth_ The `indexAtDepth` of the `position` gindex.
    function indexAtDepth(Position _position) internal pure returns (uint128 indexAtDepth_) {
        // Return bits p_{msb-1}...p_{0}. This effectively pulls the 2^{depth} out of the gindex,
        // leaving only the `indexAtDepth`.
        uint256 msb = depth(_position);
        assembly {
            indexAtDepth_ := sub(_position, shl(msb, 1))
        }
    }

    /// @notice Get the left child of `_position`.
    /// @param _position The position to get the left position of.
    /// @return left_ The position to the left of `position`.
    function left(Position _position) internal pure returns (Position left_) {
        assembly {
            left_ := shl(1, _position)
        }
    }

    /// @notice Get the right child of `_position`
    /// @param _position The position to get the right position of.
    /// @return right_ The position to the right of `position`.
    function right(Position _position) internal pure returns (Position right_) {
        assembly {
            right_ := or(1, shl(1, _position))
        }
    }

    /// @notice Get the parent position of `_position`.
    /// @param _position The position to get the parent position of.
    /// @return parent_ The parent position of `position`.
    function parent(Position _position) internal pure returns (Position parent_) {
        assembly {
            parent_ := shr(1, _position)
        }
    }

    /// @notice Get the deepest, right most gindex relative to the `position`. This is equivalent to
    ///         calling `right` on a position until the maximum depth is reached.
    /// @param _position The position to get the relative deepest, right most gindex of.
    /// @param _maxDepth The maximum depth of the game.
    /// @return rightIndex_ The deepest, right most gindex relative to the `position`.
    function rightIndex(Position _position, uint256 _maxDepth) internal pure returns (Position rightIndex_) {
        uint256 msb = depth(_position);
        assembly {
            let remaining := sub(_maxDepth, msb)
            rightIndex_ := or(shl(remaining, _position), sub(shl(remaining, 1), 1))
        }
    }

    /// @notice Get the deepest, right most trace index relative to the `position`. This is
    ///         equivalent to calling `right` on a position until the maximum depth is reached and
    ///         then finding its index at depth.
    /// @param _position The position to get the relative trace index of.
    /// @param _maxDepth The maximum depth of the game.
    /// @return traceIndex_ The trace index relative to the `position`.
    function traceIndex(Position _position, uint256 _maxDepth) internal pure returns (uint256 traceIndex_) {
        uint256 msb = depth(_position);
        assembly {
            let remaining := sub(_maxDepth, msb)
            traceIndex_ := sub(or(shl(remaining, _position), sub(shl(remaining, 1), 1)), shl(_maxDepth, 1))
        }
    }

    /// @notice Gets the position of the highest ancestor of `_position` that commits to the same
    ///         trace index.
    /// @param _position The position to get the highest ancestor of.
    /// @return ancestor_ The highest ancestor of `position` that commits to the same trace index.
    function traceAncestor(Position _position) internal pure returns (Position ancestor_) {
        // Create a field with only the lowest unset bit of `_position` set.
        Position lsb;
        assembly {
            lsb := and(not(_position), add(_position, 1))
        }
        // Find the index of the lowest unset bit within the field.
        uint256 msb = depth(lsb);
        // The highest ancestor that commits to the same trace index is the original position
        // shifted right by the index of the lowest unset bit.
        assembly {
            let a := shr(msb, _position)
            // Bound the ancestor to the minimum gindex, 1.
            ancestor_ := or(a, iszero(a))
        }
    }

    /// @notice Gets the position of the highest ancestor of `_position` that commits to the same
    ///         trace index, while still being below `_upperBoundExclusive`.
    /// @param _position The position to get the highest ancestor of.
    /// @param _upperBoundExclusive The exclusive upper depth bound, used to inform where to stop in order
    ///                             to not escape a sub-tree.
    /// @return ancestor_ The highest ancestor of `position` that commits to the same trace index.
    function traceAncestorBounded(
        Position _position,
        uint256 _upperBoundExclusive
    )
        internal
        pure
        returns (Position ancestor_)
    {
        // This function only works for positions that are below the upper bound.
        if (_position.depth() <= _upperBoundExclusive) {
            assembly {
                // Revert with `ClaimAboveSplit()`
                mstore(0x00, 0xb34b5c22)
                revert(0x1C, 0x04)
            }
        }

        // Grab the global trace ancestor.
        ancestor_ = traceAncestor(_position);

        // If the ancestor is above or at the upper bound, shift it to be below the upper bound.
        // This should be a special case that only covers positions that commit to the final leaf
        // in a sub-tree.
        if (ancestor_.depth() <= _upperBoundExclusive) {
            ancestor_ = ancestor_.rightIndex(_upperBoundExclusive + 1);
        }
    }

    /// @notice Get the move position of `_position`, which is the left child of:
    ///         1. `_position` if `_isAttack` is true.
    ///         2. `_position | 1` if `_isAttack` is false.
    /// @param _position The position to get the relative attack/defense position of.
    /// @param _isAttack Whether or not the move is an attack move.
    /// @return move_ The move position relative to `position`.
    function move(Position _position, bool _isAttack) internal pure returns (Position move_) {
        assembly {
            move_ := shl(1, or(iszero(_isAttack), _position))
        }
    }

    /// @notice Get the value of a `Position` type in the form of the underlying uint128.
    /// @param _position The position to get the value of.
    /// @return raw_ The value of the `position` as a uint128 type.
    function raw(Position _position) internal pure returns (uint128 raw_) {
        assembly {
            raw_ := _position
        }
    }
}

// ============================================================
// FILE: src/dispute/lib/LibUDT.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "src/dispute/lib/LibPosition.sol";

using LibClaim for Claim global;
using LibHash for Hash global;
using LibDuration for Duration global;
using LibClock for Clock global;
using LibGameId for GameId global;
using LibTimestamp for Timestamp global;
using LibVMStatus for VMStatus global;
using LibGameType for GameType global;

/// @notice A `Clock` represents a packed `Duration` and `Timestamp`
/// @dev The packed layout of this type is as follows:
/// ┌────────────┬────────────────┐
/// │    Bits    │     Value      │
/// ├────────────┼────────────────┤
/// │ [0, 64)    │ Duration       │
/// │ [64, 128)  │ Timestamp      │
/// └────────────┴────────────────┘
type Clock is uint128;

/// @title LibClock
/// @notice This library contains helper functions for working with the `Clock` type.
library LibClock {
    /// @notice Packs a `Duration` and `Timestamp` into a `Clock` type.
    /// @param _duration The `Duration` to pack into the `Clock` type.
    /// @param _timestamp The `Timestamp` to pack into the `Clock` type.
    /// @return clock_ The `Clock` containing the `_duration` and `_timestamp`.
    function wrap(Duration _duration, Timestamp _timestamp) internal pure returns (Clock clock_) {
        assembly {
            clock_ := or(shl(0x40, _duration), _timestamp)
        }
    }

    /// @notice Pull the `Duration` out of a `Clock` type.
    /// @param _clock The `Clock` type to pull the `Duration` out of.
    /// @return duration_ The `Duration` pulled out of `_clock`.
    function duration(Clock _clock) internal pure returns (Duration duration_) {
        // Shift the high-order 64 bits into the low-order 64 bits, leaving only the `duration`.
        assembly {
            duration_ := shr(0x40, _clock)
        }
    }

    /// @notice Pull the `Timestamp` out of a `Clock` type.
    /// @param _clock The `Clock` type to pull the `Timestamp` out of.
    /// @return timestamp_ The `Timestamp` pulled out of `_clock`.
    function timestamp(Clock _clock) internal pure returns (Timestamp timestamp_) {
        // Clean the high-order 192 bits by shifting the clock left and then right again, leaving
        // only the `timestamp`.
        assembly {
            timestamp_ := shr(0xC0, shl(0xC0, _clock))
        }
    }

    /// @notice Get the value of a `Clock` type in the form of the underlying uint128.
    /// @param _clock The `Clock` type to get the value of.
    /// @return clock_ The value of the `Clock` type as a uint128 type.
    function raw(Clock _clock) internal pure returns (uint128 clock_) {
        assembly {
            clock_ := _clock
        }
    }
}

/// @notice A `GameId` represents a packed 4 byte game ID, a 8 byte timestamp, and a 20 byte address.
/// @dev The packed layout of this type is as follows:
/// ┌───────────┬───────────┐
/// │   Bits    │   Value   │
/// ├───────────┼───────────┤
/// │ [0, 32)   │ Game Type │
/// │ [32, 96)  │ Timestamp │
/// │ [96, 256) │ Address   │
/// └───────────┴───────────┘
type GameId is bytes32;

/// @title LibGameId
/// @notice Utility functions for packing and unpacking GameIds.
library LibGameId {
    /// @notice Packs values into a 32 byte GameId type.
    /// @param _gameType The game type.
    /// @param _timestamp The timestamp of the game's creation.
    /// @param _gameProxy The game proxy address.
    /// @return gameId_ The packed GameId.
    function pack(
        GameType _gameType,
        Timestamp _timestamp,
        address _gameProxy
    )
        internal
        pure
        returns (GameId gameId_)
    {
        assembly {
            gameId_ := or(or(shl(224, _gameType), shl(160, _timestamp)), _gameProxy)
        }
    }

    /// @notice Unpacks values from a 32 byte GameId type.
    /// @param _gameId The packed GameId.
    /// @return gameType_ The game type.
    /// @return timestamp_ The timestamp of the game's creation.
    /// @return gameProxy_ The game proxy address.
    function unpack(GameId _gameId)
        internal
        pure
        returns (GameType gameType_, Timestamp timestamp_, address gameProxy_)
    {
        assembly {
            gameType_ := shr(224, _gameId)
            timestamp_ := and(shr(160, _gameId), 0xFFFFFFFFFFFFFFFF)
            gameProxy_ := and(_gameId, 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)
        }
    }
}

/// @notice A claim represents an MPT root representing the state of the fault proof program.
type Claim is bytes32;

/// @title LibClaim
/// @notice This library contains helper functions for working with the `Claim` type.
library LibClaim {
    /// @notice Get the value of a `Claim` type in the form of the underlying bytes32.
    /// @param _claim The `Claim` type to get the value of.
    /// @return claim_ The value of the `Claim` type as a bytes32 type.
    function raw(Claim _claim) internal pure returns (bytes32 claim_) {
        assembly {
            claim_ := _claim
        }
    }

    /// @notice Hashes a claim and a position together.
    /// @param _claim A Claim type.
    /// @param _position The position of `claim`.
    /// @param _challengeIndex The index of the claim being moved against.
    /// @return claimHash_ A hash of abi.encodePacked(claim, position|challengeIndex);
    function hashClaimPos(
        Claim _claim,
        Position _position,
        uint256 _challengeIndex
    )
        internal
        pure
        returns (Hash claimHash_)
    {
        assembly {
            mstore(0x00, _claim)
            mstore(0x20, or(shl(128, _position), and(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF, _challengeIndex)))
            claimHash_ := keccak256(0x00, 0x40)
        }
    }
}

/// @notice A dedicated duration type.
/// @dev Unit: seconds
type Duration is uint64;

/// @title LibDuration
/// @notice This library contains helper functions for working with the `Duration` type.
library LibDuration {
    /// @notice Get the value of a `Duration` type in the form of the underlying uint64.
    /// @param _duration The `Duration` type to get the value of.
    /// @return duration_ The value of the `Duration` type as a uint64 type.
    function raw(Duration _duration) internal pure returns (uint64 duration_) {
        assembly {
            duration_ := _duration
        }
    }
}

/// @notice A custom type for a generic hash.
type Hash is bytes32;

/// @title LibHash
/// @notice This library contains helper functions for working with the `Hash` type.
library LibHash {
    /// @notice Get the value of a `Hash` type in the form of the underlying bytes32.
    /// @param _hash The `Hash` type to get the value of.
    /// @return hash_ The value of the `Hash` type as a bytes32 type.
    function raw(Hash _hash) internal pure returns (bytes32 hash_) {
        assembly {
            hash_ := _hash
        }
    }
}

/// @notice A dedicated timestamp type.
type Timestamp is uint64;

/// @title LibTimestamp
/// @notice This library contains helper functions for working with the `Timestamp` type.
library LibTimestamp {
    /// @notice Get the value of a `Timestamp` type in the form of the underlying uint64.
    /// @param _timestamp The `Timestamp` type to get the value of.
    /// @return timestamp_ The value of the `Timestamp` type as a uint64 type.
    function raw(Timestamp _timestamp) internal pure returns (uint64 timestamp_) {
        assembly {
            timestamp_ := _timestamp
        }
    }
}

/// @notice A `VMStatus` represents the status of a VM execution.
type VMStatus is uint8;

/// @title LibVMStatus
/// @notice This library contains helper functions for working with the `VMStatus` type.
library LibVMStatus {
    /// @notice Get the value of a `VMStatus` type in the form of the underlying uint8.
    /// @param _vmstatus The `VMStatus` type to get the value of.
    /// @return vmstatus_ The value of the `VMStatus` type as a uint8 type.
    function raw(VMStatus _vmstatus) internal pure returns (uint8 vmstatus_) {
        assembly {
            vmstatus_ := _vmstatus
        }
    }
}

/// @notice A `GameType` represents the type of game being played.
type GameType is uint32;

/// @title LibGameType
/// @notice This library contains helper functions for working with the `GameType` type.
library LibGameType {
    /// @notice Get the value of a `GameType` type in the form of the underlying uint32.
    /// @param _gametype The `GameType` type to get the value of.
    /// @return gametype_ The value of the `GameType` type as a uint32 type.
    function raw(GameType _gametype) internal pure returns (uint32 gametype_) {
        assembly {
            gametype_ := _gametype
        }
    }
}

// ============================================================
// FILE: src/dispute/lib/Types.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "src/dispute/lib/LibUDT.sol";

/// @notice The current status of the dispute game.
enum GameStatus {
    // The game is currently in progress, and has not been resolved.
    IN_PROGRESS,
    // The game has concluded, and the `rootClaim` was challenged successfully.
    CHALLENGER_WINS,
    // The game has concluded, and the `rootClaim` could not be contested.
    DEFENDER_WINS
}

/// @notice Represents an L2 output root and the L2 block number at which it was generated.
/// @custom:field root The output root.
/// @custom:field l2BlockNumber The L2 block number at which the output root was generated.
struct OutputRoot {
    Hash root;
    uint256 l2BlockNumber;
}

/// @title GameTypes
/// @notice A library that defines the IDs of games that can be played.
library GameTypes {
    /// @dev A dispute game type the uses the cannon vm.
    GameType internal constant CANNON = GameType.wrap(0);

    /// @dev A permissioned dispute game type the uses the cannon vm.
    GameType internal constant PERMISSIONED_CANNON = GameType.wrap(1);

    /// @notice A dispute game type the uses the asterisc VM
    GameType internal constant ASTERISC = GameType.wrap(2);

    /// @notice A dispute game type with short game duration for testing withdrawals.
    ///         Not intended for production use.
    GameType internal constant FAST = GameType.wrap(254);

    /// @notice A dispute game type that uses an alphabet vm.
    ///         Not intended for production use.
    GameType internal constant ALPHABET = GameType.wrap(255);
}

/// @title VMStatuses
/// @notice Named type aliases for the various valid VM status bytes.
library VMStatuses {
    /// @notice The VM has executed successfully and the outcome is valid.
    VMStatus internal constant VALID = VMStatus.wrap(0);

    /// @notice The VM has executed successfully and the outcome is invalid.
    VMStatus internal constant INVALID = VMStatus.wrap(1);

    /// @notice The VM has paniced.
    VMStatus internal constant PANIC = VMStatus.wrap(2);

    /// @notice The VM execution is still in progress.
    VMStatus internal constant UNFINISHED = VMStatus.wrap(3);
}

/// @title LocalPreimageKey
/// @notice Named type aliases for local `PreimageOracle` key identifiers.
library LocalPreimageKey {
    /// @notice The identifier for the L1 head hash.
    uint256 internal constant L1_HEAD_HASH = 0x01;

    /// @notice The identifier for the starting output root.
    uint256 internal constant STARTING_OUTPUT_ROOT = 0x02;

    /// @notice The identifier for the disputed output root.
    uint256 internal constant DISPUTED_OUTPUT_ROOT = 0x03;

    /// @notice The identifier for the disputed L2 block number.
    uint256 internal constant DISPUTED_L2_BLOCK_NUMBER = 0x04;

    /// @notice The identifier for the chain ID.
    uint256 internal constant CHAIN_ID = 0x05;
}

// ============================================================
// FILE: src/L1/SuperchainConfig.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import { Initializable } from "@openzeppelin/contracts/proxy/utils/Initializable.sol";
import { ISemver } from "src/universal/ISemver.sol";
import { Storage } from "src/libraries/Storage.sol";

/// @custom:audit none This contracts is not yet audited.
/// @title SuperchainConfig
/// @notice The SuperchainConfig contract is used to manage configuration of global superchain values.
contract SuperchainConfig is Initializable, ISemver {
    /// @notice Enum representing different types of updates.
    /// @custom:value GUARDIAN            Represents an update to the guardian.
    enum UpdateType {
        GUARDIAN
    }

    /// @notice Whether or not the Superchain is paused.
    bytes32 public constant PAUSED_SLOT = bytes32(uint256(keccak256("superchainConfig.paused")) - 1);

    /// @notice The address of the guardian, which can pause withdrawals from the System.
    ///         It can only be modified by an upgrade.
    bytes32 public constant GUARDIAN_SLOT = bytes32(uint256(keccak256("superchainConfig.guardian")) - 1);

    /// @notice Emitted when the pause is triggered.
    /// @param identifier A string helping to identify provenance of the pause transaction.
    event Paused(string identifier);

    /// @notice Emitted when the pause is lifted.
    event Unpaused();

    /// @notice Emitted when configuration is updated.
    /// @param updateType Type of update.
    /// @param data       Encoded update data.
    event ConfigUpdate(UpdateType indexed updateType, bytes data);

    /// @notice Semantic version.
    /// @custom:semver 1.1.0
    string public constant version = "1.1.0";

    /// @notice Constructs the SuperchainConfig contract.
    constructor() {
        initialize({ _guardian: address(0), _paused: false });
    }

    /// @notice Initializer.
    /// @param _guardian    Address of the guardian, can pause the OptimismPortal.
    /// @param _paused      Initial paused status.
    function initialize(address _guardian, bool _paused) public initializer {
        _setGuardian(_guardian);
        if (_paused) {
            _pause("Initializer paused");
        }
    }

    /// @notice Getter for the guardian address.
    function guardian() public view returns (address guardian_) {
        guardian_ = Storage.getAddress(GUARDIAN_SLOT);
    }

    /// @notice Getter for the current paused status.
    function paused() public view returns (bool paused_) {
        paused_ = Storage.getBool(PAUSED_SLOT);
    }

    /// @notice Pauses withdrawals.
    /// @param _identifier (Optional) A string to identify provenance of the pause transaction.
    function pause(string memory _identifier) external {
        require(msg.sender == guardian(), "SuperchainConfig: only guardian can pause");
        _pause(_identifier);
    }

    /// @notice Pauses withdrawals.
    /// @param _identifier (Optional) A string to identify provenance of the pause transaction.
    function _pause(string memory _identifier) internal {
        Storage.setBool(PAUSED_SLOT, true);
        emit Paused(_identifier);
    }

    /// @notice Unpauses withdrawals.
    function unpause() external {
        require(msg.sender == guardian(), "SuperchainConfig: only guardian can unpause");
        Storage.setBool(PAUSED_SLOT, false);
        emit Unpaused();
    }

    /// @notice Sets the guardian address. This is only callable during initialization, so an upgrade
    ///         will be required to change the guardian.
    /// @param _guardian The new guardian address.
    function _setGuardian(address _guardian) internal {
        Storage.setAddress(GUARDIAN_SLOT, _guardian);
        emit ConfigUpdate(UpdateType.GUARDIAN, abi.encode(_guardian));
    }
}

// ============================================================
// FILE: src/libraries/errors/CommonErrors.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @notice Error for an unauthorized CALLER.
error Unauthorized();

/// @notice Error for when a method is called that only works when using a custom gas token.
error OnlyCustomGasToken();

/// @notice Error for when a method is called that only works when NOT using a custom gas token.
error NotCustomGasToken();

/// @notice Error for when a transfer via call fails.
error TransferFailed();

// ============================================================
// FILE: src/libraries/Storage.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title Storage
/// @notice Storage handles reading and writing to arbitary storage locations
library Storage {
    /// @notice Returns an address stored in an arbitrary storage slot.
    ///         These storage slots decouple the storage layout from
    ///         solc's automation.
    /// @param _slot The storage slot to retrieve the address from.
    function getAddress(bytes32 _slot) internal view returns (address addr_) {
        assembly {
            addr_ := sload(_slot)
        }
    }

    /// @notice Stores an address in an arbitrary storage slot, `_slot`.
    /// @param _slot The storage slot to store the address in.
    /// @param _address The protocol version to store
    /// @dev WARNING! This function must be used cautiously, as it allows for overwriting addresses
    ///      in arbitrary storage slots.
    function setAddress(bytes32 _slot, address _address) internal {
        assembly {
            sstore(_slot, _address)
        }
    }

    /// @notice Returns a uint256 stored in an arbitrary storage slot.
    ///         These storage slots decouple the storage layout from
    ///         solc's automation.
    /// @param _slot The storage slot to retrieve the address from.
    function getUint(bytes32 _slot) internal view returns (uint256 value_) {
        assembly {
            value_ := sload(_slot)
        }
    }

    /// @notice Stores a value in an arbitrary storage slot, `_slot`.
    /// @param _slot The storage slot to store the address in.
    /// @param _value The protocol version to store
    /// @dev WARNING! This function must be used cautiously, as it allows for overwriting values
    ///      in arbitrary storage slots.
    function setUint(bytes32 _slot, uint256 _value) internal {
        assembly {
            sstore(_slot, _value)
        }
    }

    /// @notice Returns a bytes32 stored in an arbitrary storage slot.
    ///         These storage slots decouple the storage layout from
    ///         solc's automation.
    /// @param _slot The storage slot to retrieve the address from.
    function getBytes32(bytes32 _slot) internal view returns (bytes32 value_) {
        assembly {
            value_ := sload(_slot)
        }
    }

    /// @notice Stores a bytes32 value in an arbitrary storage slot, `_slot`.
    /// @param _slot The storage slot to store the address in.
    /// @param _value The bytes32 value to store.
    /// @dev WARNING! This function must be used cautiously, as it allows for overwriting values
    ///      in arbitrary storage slots.
    function setBytes32(bytes32 _slot, bytes32 _value) internal {
        assembly {
            sstore(_slot, _value)
        }
    }

    /// @notice Stores a bool value in an arbitrary storage slot, `_slot`.
    /// @param _slot The storage slot to store the bool in.
    /// @param _value The bool value to store
    /// @dev WARNING! This function must be used cautiously, as it allows for overwriting values
    ///      in arbitrary storage slots.
    function setBool(bytes32 _slot, bool _value) internal {
        assembly {
            sstore(_slot, _value)
        }
    }

    /// @notice Returns a bool stored in an arbitrary storage slot.
    /// @param _slot The storage slot to retrieve the bool from.
    function getBool(bytes32 _slot) internal view returns (bool value_) {
        assembly {
            value_ := sload(_slot)
        }
    }
}

// ============================================================
// FILE: src/universal/ISemver.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title ISemver
/// @notice ISemver is a simple contract for ensuring that contracts are
///         versioned using semantic versioning.
interface ISemver {
    /// @notice Getter for the semantic version of the contract. This is not
    ///         meant to be used onchain but instead meant to be used by offchain
    ///         tooling.
    /// @return Semver contract version as a string.
    function version() external view returns (string memory);
}
