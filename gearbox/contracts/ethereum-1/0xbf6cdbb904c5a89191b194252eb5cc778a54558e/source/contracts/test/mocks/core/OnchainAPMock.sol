// SPDX-License-Identifier: BUSL-1.1
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2023.
pragma solidity ^0.8.17;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

import "../../../interfaces/IAddressProviderV3.sol";
import {AddressNotFoundException, CallerNotConfiguratorException} from "../../../interfaces/IExceptions.sol";

/// @title Address provider V3
/// @notice Stores addresses of important contracts
contract OnchainAPMock is IAddressProviderV3, Ownable {
    /// @notice Contract version
    uint256 public constant override version = 3_00;

    address public ap;

    /// @notice Mapping from (contract key, version) to contract addresses
    mapping(bytes32 => mapping(uint256 => address)) public override addresses;

    constructor(address _ap) {
        // The first event is emitted for the address provider itself to aid in contract discovery
        emit SetAddress("ADDRESS_PROVIDER", address(this), version);
        ap = _ap;
        _setAddress(AP_ACL, 0xd98D75da123813D73c54bCF910BBd7FC0afF24d4, NO_VERSION_CONTROL);
        _setAddress(AP_CONTRACTS_REGISTER, 0xFC1952052dC1f439ccF0cBd9af5A02748b0cc1db, NO_VERSION_CONTROL);
        _setAddress(AP_ACCOUNT_FACTORY, 0xd0983BEC2ba299eF78676223836D790419A5a586, NO_VERSION_CONTROL);
        _setAddress(AP_BOT_LIST, 0xc8059B3C5c3Bd8533D43c0ac9336bCb2EbaB219E, 300);
    }

    /// @notice Returns the address of a contract with a given key and version
    function getAddressOrRevert(bytes32 key, uint256 _version) public view virtual override returns (address result) {
        result = addresses[key][_version];
        if (result == address(0)) result = IAddressProviderV3(ap).getAddressOrRevert(key, _version);
        if (result == address(0)) revert AddressNotFoundException();
    }

    /// @notice Sets the address for the passed contract key
    /// @param key Contract key
    /// @param value Contract address
    /// @param saveVersion Whether to save contract's version
    function setAddress(bytes32 key, address value, bool saveVersion) external override onlyOwner {
        _setAddress(key, value, saveVersion ? IVersion(value).version() : NO_VERSION_CONTROL);
    }

    /// @dev Implementation of `setAddress`
    function _setAddress(bytes32 key, address value, uint256 _version) internal virtual {
        addresses[key][_version] = value;
        emit SetAddress(key, value, _version);
    }

    // ---------------------- //
    // BACKWARD COMPATIBILITY //
    // ---------------------- //

    /// @notice ACL contract address
    function getACL() external view returns (address) {
        return getAddressOrRevert(AP_ACL, NO_VERSION_CONTROL);
    }

    /// @notice Contracts register contract address
    function getContractsRegister() external view returns (address) {
        return getAddressOrRevert(AP_CONTRACTS_REGISTER, NO_VERSION_CONTROL);
    }

    /// @notice Price oracle contract address
    function getPriceOracle() external view returns (address) {
        return getAddressOrRevert(AP_PRICE_ORACLE, 2);
    }

    /// @notice Account factory contract address
    function getAccountFactory() external view returns (address) {
        return getAddressOrRevert(AP_ACCOUNT_FACTORY, NO_VERSION_CONTROL);
    }

    /// @notice Data compressor contract address
    function getDataCompressor() external view returns (address) {
        return getAddressOrRevert(AP_DATA_COMPRESSOR, 2);
    }

    /// @notice Treasury contract address
    function getTreasuryContract() external view returns (address) {
        return getAddressOrRevert(AP_TREASURY, NO_VERSION_CONTROL);
    }

    /// @notice GEAR token address
    function getGearToken() external view returns (address) {
        return getAddressOrRevert(AP_GEAR_TOKEN, NO_VERSION_CONTROL);
    }

    /// @notice WETH token address
    function getWethToken() external view returns (address) {
        return getAddressOrRevert(AP_WETH_TOKEN, NO_VERSION_CONTROL);
    }

    /// @notice WETH gateway contract address
    function getWETHGateway() external view returns (address) {
        return getAddressOrRevert(AP_WETH_GATEWAY, 1);
    }

    /// @notice Router contract address
    function getLeveragedActions() external view returns (address) {
        return getAddressOrRevert(AP_ROUTER, 1);
    }
}
