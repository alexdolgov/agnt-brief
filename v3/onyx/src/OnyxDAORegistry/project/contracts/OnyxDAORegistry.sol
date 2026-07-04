// SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

// OpenZeppelin (upgradeable) v5 imports
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts/proxy/ERC1967/ERC1967Utils.sol";

/**
 * @title OnyxDAORegistry
 * @notice Upgradeable (UUPS) registry of provider metadata for the Onyx DAO.
 *         Ownership (= "Admin") should be transferred to the Timelock so all writes/upgrades
 *         must pass through Timelock delay.
 */
contract OnyxDAORegistry is Initializable, OwnableUpgradeable, UUPSUpgradeable {
    // State variables
    string public infrastructureProvider;
    string public hostingProvider;
    string public daoManager;
    string public aiProvider;
    string public sequencerProvider;
    string public walletProvider;

    // Events
    event ProviderUpdated(string indexed key, string previousValue, string newValue);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @param initialAdmin Address that will become contract owner (set this to the Timelock).
     */
    function initialize(address initialAdmin) external initializer {
        require(initialAdmin != address(0), "admin=0");
        __Ownable_init(initialAdmin);
        __UUPSUpgradeable_init();
        _transferOwnership(initialAdmin);
    }

    // Admin (owner) setters; callable by Timelock when it owns the contract
    function setInfrastructureProvider(string calldata value) external onlyOwner {
        emit ProviderUpdated("infrastructureProvider", infrastructureProvider, value);
        infrastructureProvider = value;
    }

    function setHostingProvider(string calldata value) external onlyOwner {
        emit ProviderUpdated("hostingProvider", hostingProvider, value);
        hostingProvider = value;
    }

    function setDAOManager(string calldata value) external onlyOwner {
        emit ProviderUpdated("daoManager", daoManager, value);
        daoManager = value;
    }

    function setAIProvider(string calldata value) external onlyOwner {
        emit ProviderUpdated("aiProvider", aiProvider, value);
        aiProvider = value;
    }

    function setSequencerProvider(string calldata value) external onlyOwner {
        emit ProviderUpdated("sequencerProvider", sequencerProvider, value);
        sequencerProvider = value;
    }

    function setWalletProvider(string calldata value) external onlyOwner {
        emit ProviderUpdated("walletProvider", walletProvider, value);
        walletProvider = value;
    }

    // ---- Admin info helpers (nice to have for explorers / dashboards) ----

    /// @notice Returns the current admin (same as Ownable's owner()).
    function admin() external view returns (address) {
        return owner();
    }

    /// @notice Returns the implementation behind the proxy (EIP-1967).
    function implementation() external view returns (address) {
        return ERC1967Utils.getImplementation();
    }

    /// @notice Version string to help during upgrades.
    function version() external pure virtual returns (string memory) {
        return "OnyxDAORegistry v1.0.0";
    }

    // ---- UUPS authorization ----

    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}
}
