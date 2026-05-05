// ============================================================
// FILE: src/Auctions/AuctionRegistry.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0
pragma solidity >=0.8.18;

import {IAuctionFactory} from "../interfaces/IAuctionFactory.sol";
import {Governance2Step} from "../utils/Governance2Step.sol";

/**
 * @title AuctionRegistry
 * @notice Registry contract that manages released and endorsed auction factory addresses
 * @dev Provides on-chain discovery and verification of official auction factories
 */
contract AuctionRegistry is Governance2Step {
    /*//////////////////////////////////////////////////////////////
                                STRUCTS
    //////////////////////////////////////////////////////////////*/

    struct FactoryInfo {
        string version;
        uint256 index;
        bool isRetired;
    }

    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    event FactoryRegistered(
        address indexed factory,
        string version,
        uint256 index
    );

    event FactoryRetired(address indexed factory);

    /*//////////////////////////////////////////////////////////////
                            STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    /// @notice Array of all registered factories
    address[] public factories;

    /// @notice Mapping from factory address to its index in the factories array
    mapping(address => FactoryInfo) public factoryInfo;

    /// @notice Mapping from version string to factory address
    mapping(string => address) public versionToFactory;

    /*//////////////////////////////////////////////////////////////
                            CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Initialize the registry with known factory addresses
     * @param _governance The address that will have governance rights
     * @param _knownFactories Array of known factory addresses to register
     * @param _versions Array of version strings corresponding to the factories
     */
    constructor(
        address _governance,
        address[] memory _knownFactories,
        string[] memory _versions
    ) Governance2Step(_governance) {
        require(
            _knownFactories.length == _versions.length,
            "Array length mismatch"
        );

        for (uint256 i = 0; i < _knownFactories.length; i++) {
            address factory = _knownFactories[i];
            if (factory.code.length > 0) {
                _registerFactory(factory, _versions[i]);
            }
        }
    }

    /*//////////////////////////////////////////////////////////////
                            VIEW METHODS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Get the latest endorsed auction factory address
     * @return factory The address of the latest endorsed factory
     */
    function getLatestFactory() external view returns (address factory) {
        return factories[factories.length - 1];
    }

    /**
     * @notice Get a factory by its version string
     * @param _version The version string of the factory
     * @return factory The address of the factory
     */
    function getFactory(
        string memory _version
    ) external view returns (address factory) {
        return versionToFactory[_version];
    }

    /**
     * @notice Get factory information by address
     * @param _factory The address of the factory
     * @return info The factory information struct
     */
    function getFactoryInfo(
        address _factory
    ) external view returns (FactoryInfo memory info) {
        return factoryInfo[_factory];
    }

    /**
     * @notice Get all registered factories
     * @return All factory information
     */
    function getAllFactories() external view returns (address[] memory) {
        return factories;
    }

    /**
     * @notice Get the total number of registered factories
     * @return The number of registered factories
     */
    function numberOfFactories() external view returns (uint256) {
        return factories.length;
    }

    /**
     * @notice Check if a factory is endorsed
     * @param _factory The address to check
     * @return True if the factory is endorsed
     */
    function isRegisteredFactory(address _factory) public view returns (bool) {
        return bytes(factoryInfo[_factory].version).length > 0;
    }

    /*//////////////////////////////////////////////////////////////
                            ADMIN METHODS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Release a new factory
     * @param _factory The address of the factory
     * @param _version The version string of the factory
     */
    function registerNewFactory(
        address _factory,
        string memory _version
    ) external onlyGovernance {
        _registerFactory(_factory, _version);
    }

    /**
     * @notice Revoke endorsement from a factory
     * @param _factory The address of the factory
     */
    function retireFactory(address _factory) external onlyGovernance {
        require(isRegisteredFactory(_factory), "Factory not registered");

        FactoryInfo storage info = factoryInfo[_factory];

        require(!info.isRetired, "Factory not retired");

        info.isRetired = true;

        emit FactoryRetired(_factory);
    }

    /*//////////////////////////////////////////////////////////////
                            INTERNAL METHODS
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Internal function to register a factory
     */
    function _registerFactory(
        address _factory,
        string memory _version
    ) internal {
        require(_factory != address(0), "Invalid factory address");
        require(_factory.code.length > 0, "No code at address");
        require(!isRegisteredFactory(_factory), "Factory already registered");
        require(
            versionToFactory[_version] == address(0),
            "Version already registered"
        );
        require(bytes(_version).length > 0, "Invalid version");

        // Verify it's a valid auction factory by checking it has the expected interface
        try IAuctionFactory(_factory).version() returns (
            string memory version_
        ) {
            require(
                keccak256(abi.encodePacked(_version)) ==
                    keccak256(abi.encodePacked(version_)),
                "Version mismatch"
            );
        } catch {}

        FactoryInfo memory info = FactoryInfo({
            version: _version,
            index: factories.length,
            isRetired: false
        });

        factories.push(_factory);
        factoryInfo[_factory] = info;
        versionToFactory[_version] = _factory;

        emit FactoryRegistered(_factory, _version, info.index);
    }
}

// ============================================================
// FILE: src/interfaces/IAuctionFactory.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0
pragma solidity >=0.8.18;

import {IClonableCreate2} from "./utils/IClonableCreate2.sol";

/**
 * @title IAuctionFactory
 * @notice Interface for the AuctionFactory contract
 */
interface IAuctionFactory is IClonableCreate2 {
    /*//////////////////////////////////////////////////////////////
                                EVENTS
    //////////////////////////////////////////////////////////////*/

    event DeployedNewAuction(address indexed auction, address indexed want);

    /*//////////////////////////////////////////////////////////////
                            CONSTANTS
    //////////////////////////////////////////////////////////////*/

    /// @notice The amount to start the auction with.
    function DEFAULT_STARTING_PRICE() external pure returns (uint256);

    /*//////////////////////////////////////////////////////////////
                            STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    /// @notice Full array of all auctions deployed through this factory.
    function auctions(uint256) external view returns (address);

    /*//////////////////////////////////////////////////////////////
                            VIEW METHODS
    //////////////////////////////////////////////////////////////*/

    function version() external pure returns (string memory);

    /**
     * @notice Get the full list of auctions deployed through this factory.
     */
    function getAllAuctions() external view returns (address[] memory);

    /**
     * @notice Get the total number of auctions deployed through this factory.
     */
    function numberOfAuctions() external view returns (uint256);

    /*//////////////////////////////////////////////////////////////
                            FACTORY METHODS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Creates a new auction contract.
     * @param _want Address of the token users will bid with.
     * @return _newAuction Address of the newly created auction contract.
     */
    function createNewAuction(address _want) external returns (address);

    /**
     * @notice Creates a new auction contract.
     * @param _want Address of the token users will bid with.
     * @param _receiver Address that will receive the funds in the auction.
     * @return _newAuction Address of the newly created auction contract.
     */
    function createNewAuction(
        address _want,
        address _receiver
    ) external returns (address);

    /**
     * @notice Creates a new auction contract.
     * @param _want Address of the token users will bid with.
     * @param _receiver Address that will receive the funds in the auction.
     * @param _governance Address allowed to enable and disable auctions.
     * @return _newAuction Address of the newly created auction contract.
     */
    function createNewAuction(
        address _want,
        address _receiver,
        address _governance
    ) external returns (address);

    /**
     * @notice Creates a new auction contract.
     * @param _want Address of the token users will bid with.
     * @param _receiver Address that will receive the funds in the auction.
     * @param _governance Address allowed to enable and disable auctions.
     * @param _startingPrice Starting price for the auction (no decimals).
     *  NOTE: The starting price should be without decimals (1k == 1_000).
     * @return _newAuction Address of the newly created auction contract.
     */
    function createNewAuction(
        address _want,
        address _receiver,
        address _governance,
        uint256 _startingPrice
    ) external returns (address);

    /**
     * @notice Creates a new auction contract.
     * @param _want Address of the token users will bid with.
     * @param _receiver Address that will receive the funds in the auction.
     * @param _governance Address allowed to enable and disable auctions.
     * @param _startingPrice Starting price for the auction (no decimals).
     * @param _salt The salt to use for deterministic deployment.
     * @return _newAuction Address of the newly created auction contract.
     */
    function createNewAuction(
        address _want,
        address _receiver,
        address _governance,
        uint256 _startingPrice,
        bytes32 _salt
    ) external returns (address);
}

// ============================================================
// FILE: src/interfaces/utils/IClonable.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0
pragma solidity >=0.8.18;

/**
 * @title IClonable
 * @notice Interface for the Clonable contract
 */
interface IClonable {
    /*//////////////////////////////////////////////////////////////
                            STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Set to the address to auto clone from
     * @return The original contract address to clone from
     */
    function original() external view returns (address);
}

// ============================================================
// FILE: src/interfaces/utils/IClonableCreate2.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0
pragma solidity >=0.8.18;

import {IClonable} from "./IClonable.sol";

/**
 * @title IClonableCreate2
 * @notice Interface for the ClonableCreate2 contract
 */
interface IClonableCreate2 is IClonable {
    /*//////////////////////////////////////////////////////////////
                            FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Compute the address where a clone would be deployed using CREATE2
     * @param salt The salt to use for address computation
     * @return The address where the clone would be deployed
     */
    function computeCreate2Address(
        bytes32 salt
    ) external view returns (address);

    /**
     * @notice Compute the address where a clone would be deployed using CREATE2
     * @param _original The address of the contract to clone
     * @param salt The salt to use for address computation
     * @return predicted The address where the clone would be deployed
     */
    function computeCreate2Address(
        address _original,
        bytes32 salt
    ) external view returns (address predicted);

    /**
     * @notice Compute the address where a clone would be deployed using CREATE2
     * @param _original The address of the contract to clone
     * @param salt The salt to use for address computation
     * @param deployer The address that will deploy the clone
     * @return predicted The address where the clone would be deployed
     */
    function computeCreate2Address(
        address _original,
        bytes32 salt,
        address deployer
    ) external view returns (address predicted);

    /**
     * @notice Compute the final salt by hashing with deployer
     * @dev This ensures that different callers get different deployment addresses
     * even when using the same salt value
     * @param salt The user-provided salt
     * @param deployer The address that will deploy the clone
     * @return The final salt to use for CREATE2
     */
    function getSalt(
        bytes32 salt,
        address deployer
    ) external view returns (bytes32);
}

// ============================================================
// FILE: src/utils/Governance.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0
pragma solidity >=0.8.18;

contract Governance {
    /// @notice Emitted when the governance address is updated.
    event GovernanceTransferred(
        address indexed previousGovernance,
        address indexed newGovernance
    );

    modifier onlyGovernance() {
        _checkGovernance();
        _;
    }

    /// @notice Checks if the msg sender is the governance.
    function _checkGovernance() internal view virtual {
        require(governance == msg.sender, "!governance");
    }

    /// @notice Address that can set the default base fee and provider
    address public governance;

    constructor(address _governance) {
        governance = _governance;

        emit GovernanceTransferred(address(0), _governance);
    }

    /**
     * @notice Sets a new address as the governance of the contract.
     * @dev Throws if the caller is not current governance.
     * @param _newGovernance The new governance address.
     */
    function transferGovernance(
        address _newGovernance
    ) external virtual onlyGovernance {
        require(_newGovernance != address(0), "ZERO ADDRESS");
        address oldGovernance = governance;
        governance = _newGovernance;

        emit GovernanceTransferred(oldGovernance, _newGovernance);
    }
}

// ============================================================
// FILE: src/utils/Governance2Step.sol
// ============================================================

// SPDX-License-Identifier: AGPL-3.0
pragma solidity >=0.8.18;

import {Governance} from "./Governance.sol";

contract Governance2Step is Governance {
    /// @notice Emitted when the pending governance address is set.
    event UpdatePendingGovernance(address indexed newPendingGovernance);

    /// @notice Address that is set to take over governance.
    address public pendingGovernance;

    constructor(address _governance) Governance(_governance) {}

    /**
     * @notice Sets a new address as the `pendingGovernance` of the contract.
     * @dev Throws if the caller is not current governance.
     * @param _newGovernance The new governance address.
     */
    function transferGovernance(
        address _newGovernance
    ) external virtual override onlyGovernance {
        require(_newGovernance != address(0), "ZERO ADDRESS");
        pendingGovernance = _newGovernance;

        emit UpdatePendingGovernance(_newGovernance);
    }

    /**
     * @notice Allows the `pendingGovernance` to accept the role.
     */
    function acceptGovernance() external virtual {
        require(msg.sender == pendingGovernance, "!pending governance");

        emit GovernanceTransferred(governance, msg.sender);

        governance = msg.sender;
        pendingGovernance = address(0);
    }
}
