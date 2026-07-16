//SPDX-License-Identifier: CC-BY-NC-ND-4.0
pragma solidity ^0.8.18;

import "./interfaces/ITermController.sol";
import "./interfaces/ITermControllerEvents.sol";

import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/// @author TermLabs
/// @title Term Controller
/// @notice This contract manages Term Finance protocol permissions and controls
/// @dev This contract operates at the protocol level and governs all instances of a Term Repo
contract TermController is
    ITermController,
    ITermControllerEvents,
    Initializable,
    AccessControlUpgradeable,
    UUPSUpgradeable
{
    // ========================================================================
    // = State Variables ======================================================
    // ========================================================================

    // Term Finance Treasury Wallet Address
    address internal treasuryWallet;

    // Term Finance Protocol Reserves
    address internal protocolReserveWallet;

    // Mapping which returns true for contract addresses deployed by Term Finance Protocol
    mapping(address => bool) internal termAddresses;

    // ========================================================================
    // = Deploy  ==============================================================
    // ========================================================================

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address treasuryWallet_,
        address protocolReserveWallet_
    ) external initializer {
        UUPSUpgradeable.__UUPSUpgradeable_init();
        AccessControlUpgradeable.__AccessControl_init();

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);

        require(treasuryWallet_ != address(0), "treasury is zero address");
        treasuryWallet = treasuryWallet_;

        require(
            protocolReserveWallet_ != address(0),
            "reserve is zero address"
        );
        protocolReserveWallet = protocolReserveWallet_;
    }

    // ========================================================================
    // = Interface/API ========================================================
    // ========================================================================

    /// @notice External view function which returns contract address of treasury wallet
    function getTreasuryAddress() external view returns (address) {
        return treasuryWallet;
    }

    /// @notice External view function which returns contract address of protocol reserve
    /// @return The protocol reserve address
    function getProtocolReserveAddress() external view returns (address) {
        return protocolReserveWallet;
    }

    /// @notice External view function which returns whether contract address is deployed by Term Finance Protocol
    /// @param contractAddress The input contract address to query
    /// @return Whether the given address is deployed by Term Finance Protocol
    function isTermDeployed(
        address contractAddress
    ) external view returns (bool) {
        return _isTermDeployed(contractAddress);
    }

    // ========================================================================
    // = Admin Functions ======================================================
    // ========================================================================

    /// @notice Admin function to update the Term Finance treasury wallet address
    /// @param newTreasuryWallet The new treasury address
    function updateTreasuryAddress(
        address newTreasuryWallet
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(
            newTreasuryWallet != treasuryWallet,
            "No change in treasury address"
        );

        address oldTreasuryWallet = treasuryWallet;

        treasuryWallet = newTreasuryWallet;

        emit TreasuryAddressUpdated(oldTreasuryWallet, treasuryWallet);
    }

    /// @notice Admin function to update the Term Finance protocol reserve wallet address
    /// @param newProtocolReserveWallet The new protocol reserve wallet address
    function updateProtocolReserveAddress(
        address newProtocolReserveWallet
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(
            newProtocolReserveWallet != protocolReserveWallet,
            "No change in protocol reserve address"
        );

        address oldProtocolReserveWallet = protocolReserveWallet;

        protocolReserveWallet = newProtocolReserveWallet;

        emit ProtocolReserveAddressUpdated(
            oldProtocolReserveWallet,
            protocolReserveWallet
        );
    }

    /// @notice Admin function to add a new Term Finance contract to Controller
    /// @param termContract The new term contract address
    function markTermDeployed(
        address termContract
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(!_isTermDeployed(termContract), "Contract is already in Term");

        termAddresses[termContract] = true;
    }

    /// @notice Admin function to remove a contract from Controller
    /// @param termContract The new term contract address
    function unmarkTermDeployed(
        address termContract
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        require(_isTermDeployed(termContract), "Contract is not in Term");

        delete termAddresses[termContract];
    }

    function _isTermDeployed(
        address contractAddress
    ) private view returns (bool) {
        return termAddresses[contractAddress];
    }

    // ========================================================================
    // = Upgrades =============================================================
    // ========================================================================

    // solhint-disable no-empty-blocks
    ///@dev required override by the OpenZeppelin UUPS module
    function _authorizeUpgrade(
        address
    ) internal view override onlyRole(DEFAULT_ADMIN_ROLE) {}
    // solhint-enable no-empty-blocks
}
