// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {VerifyLib} from "../lib/VerifyLib.sol";
import {IAttestationIndexer, IEAS} from "../Interfaces/iCoinbase.sol";

/// @title VeilVerifiedOnchainV2 - Used by the Veil Cash
/// @notice 4 methods of verification
/// @dev 0. None
/// @dev 1. Allowed depositors
/// @dev 2. Coinbase EAS
/// @dev 3. BABT
/// @dev 4. EtoOS

/// @custom:oz-upgrades-from VeilVerifiedOnchainV2
contract VeilVerifiedOnchainV3 is Initializable, OwnableUpgradeable {
    /// @notice Events
    event BABTDepositorSet(address indexed _address, bool _allowed, string _data);
    event AllowedDepositorSet(address[] _depositors, string[] _data, bool _allowed);
    event EthOSDepositorSet(address indexed _address, string _ethOSId, bool _allowed);

    /// @dev Errors
    error NotOperator();
    error ArrayLengthMismatch();

    /// @notice Modifier to ensure only the operator can call the function
    modifier onlyOperator() {
        if (msg.sender != operator) {
            revert NotOperator();
        }
        _;
    }

    /// @notice Operator address
    address public operator;

    /// @notice Interface for querying attestation UIDs
    IAttestationIndexer public attestationIndexer;

    /// @notice Interface for the Ethereum Attestation Service
    IEAS public eas;

    /// @notice Schema UID for Coinbase Onchain Verification
    /// @dev This is the specific schema used for Coinbase Onchain Verification
    bytes32 public verifiedSchemaUid;

    /// @dev Verified depositors details
    mapping(address => VerifyLib.DepositorInfo) public allowedDepositors;

    /// @dev BABT approvals
    mapping(address => VerifyLib.BABTInfo) public babtDepositors;

    /// @dev EthOS approvals
    mapping(address => VerifyLib.EthOSInfo) public ethOSDepositors;

    /// @dev Storage gap for future upgrades
    uint256[49] private __gap;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initializes contract with attestation service addresses
    function initialize(address _attestationIndexer, address _eas, bytes32 _verifiedSchemaUid, address _operator)
        public
        initializer
    {
        __Ownable_init(msg.sender);
        attestationIndexer = IAttestationIndexer(_attestationIndexer);
        eas = IEAS(_eas);
        verifiedSchemaUid = _verifiedSchemaUid;
        operator = _operator;
    }

    /// @notice Check if an address is verified to deposit into Veil Cash
    /// @param _address Address to check verification status
    /// @return bool True if address is verified, false otherwise
    function isVerified(address _address) external view returns (bool) {
        return _isAllowedDepositor(_address) || _isCoinbaseVerified(_address) || _isBABTVerified(_address)
            || _isEthOSVerified(_address);
    }

    /// @notice Get the attestation UID for a recipient
    /// @param recipient Address of the recipient
    /// @param schemaUid Schema UID to query for
    /// @return bytes32 The attestation UID
    function _getAttestationUid(address recipient, bytes32 schemaUid) internal view returns (bytes32) {
        return attestationIndexer.getAttestationUid(recipient, schemaUid);
    }

    /// @notice Get the attestation details for a given UID
    /// @param uid Attestation UID to query
    /// @return VerifyLib.Attestation The attestation details
    function _getAttestation(bytes32 uid) internal view returns (VerifyLib.Attestation memory) {
        return eas.getAttestation(uid);
    }

    /// @notice Get the attestation details for an address
    /// @param _address Address to get attestation details for
    /// @return VerifyLib.Attestation The attestation details for the address
    function getAttestationDetails(address _address) external view returns (VerifyLib.Attestation memory) {
        bytes32 uid = _getAttestationUid(_address, verifiedSchemaUid);
        return _getAttestation(uid);
    }

    /// @notice Checks if an address is in the allowed depositors list
    /// @param _address Address to check allowed depositor status
    /// @return bool True if address is an allowed depositor, false otherwise
    function _isAllowedDepositor(address _address) internal view returns (bool) {
        return allowedDepositors[_address].isAllowed;
    }

    /// @notice Checks if an address is verified on Coinbase
    /// @param _address Address to check verification status
    /// @return bool True if address is verified on Coinbase, false otherwise
    function _isCoinbaseVerified(address _address) internal view returns (bool) {
        // get the attestation uid
        bytes32 uid = _getAttestationUid(_address, verifiedSchemaUid);

        // if no attestation, return false
        if (uid == 0) return false;

        // get the attestation details
        VerifyLib.Attestation memory attestation = _getAttestation(uid);

        // if attestation is revoked, return false
        if (attestation.revocationTime > 0) return false;

        // if recipient does not match, return false
        if (attestation.recipient != _address) return false;

        // if all checks pass, return true
        return true;
    }

    /// @notice Checks if an address is verified on BABT
    /// @param _address Address to check verification status
    /// @return bool True if address is verified on BABT, false otherwise
    function _isBABTVerified(address _address) internal view returns (bool) {
        return babtDepositors[_address].isAllowed && babtDepositors[_address].expirationTime > block.timestamp;
    }

    /// @notice Checks if an address is verified on EtoOS
    /// @param _address Address to check verification status
    /// @return bool True if address is verified on EthOS, false otherwise
    function _isEthOSVerified(address _address) internal view returns (bool) {
        return ethOSDepositors[_address].isAllowed && ethOSDepositors[_address].expirationTime > block.timestamp;
    }

    /// @notice Get the expiration time for a BABT depositor
    /// @param _address Address of the depositor
    /// @return uint256 The expiration time
    function getBABTExpirationTime(address _address) external view returns (uint256) {
        return babtDepositors[_address].expirationTime;
    }

    /// @notice Get the expiration time for a EtoOS depositor
    /// @param _address Address of the depositor
    /// @return uint256 The expiration time
    function getEthOSExpirationTime(address _address) external view returns (uint256) {
        return ethOSDepositors[_address].expirationTime;
    }

    /// @notice Return which type of verification is being used for an address
    /// @param _address Address to check verification status
    /// @return uint256 0 if not verified, 1 if allowed depositor, 2 if Coinbase verified, 3 if BABT verified, 4 if EtoOS verified
    function getVerificationType(address _address) external view returns (uint256) {
        if (_isAllowedDepositor(_address)) return 1;
        if (_isCoinbaseVerified(_address)) return 2;
        if (_isBABTVerified(_address)) return 3;
        if (_isEthOSVerified(_address)) return 4;
        return 0;
    }

    /// @notice Check if an address is verified for a specific verification mode
    /// @param _address Address to check verification status
    /// @param _mode Verification mode (1: Allowed depositor, 2: Coinbase, 3: BABT, 4: EtoOS)
    /// @return bool True if address is verified for the specified mode, false otherwise
    function isVerifiedBy(address _address, uint256 _mode) external view returns (bool) {
        if (_mode == 1) return _isAllowedDepositor(_address);
        if (_mode == 2) return _isCoinbaseVerified(_address);
        if (_mode == 3) return _isBABTVerified(_address);
        if (_mode == 4) return _isEthOSVerified(_address);
        return false;
    }

    /// @notice Set allowed depositors with their associated data
    /// @param _depositors Array of depositor addresses
    /// @param _data Array of data strings for each depositor
    /// @param _allowed Whether to allow or disallow the depositors
    function setAllowedDepositors(address[] calldata _depositors, string[] calldata _data, bool _allowed)
        external
        onlyOwner
    {
        if (_depositors.length != _data.length) revert ArrayLengthMismatch();
        for (uint256 i = 0; i < _depositors.length; i++) {
            allowedDepositors[_depositors[i]] = VerifyLib.DepositorInfo({isAllowed: _allowed, data: _data[i]});
        }

        emit AllowedDepositorSet(_depositors, _data, _allowed);
    }

    /// @notice Set a BABT depositor with a 7 day expiration
    /// @param _address Address of the depositor
    /// @param _allowed Whether to allow or disallow the depositor
    /// @param _data Data string for the depositor
    function setBABTDepositor(address _address, bool _allowed, string calldata _data) external onlyOperator {
        uint256 expirationTime = block.timestamp + 7 days;
        babtDepositors[_address] =
            VerifyLib.BABTInfo({isAllowed: _allowed, expirationTime: expirationTime, data: _data});

        emit BABTDepositorSet(_address, _allowed, _data);
    }

    /// @notice Set a EtoOS depositor with a 3 day expiration
    /// @param _address Address of the depositor
    /// @param _ethOSId Data string for the depositor
    /// @param _allowed Whether to allow or disallow the depositor
    function setEthOSDepositor(address _address, string calldata _ethOSId, bool _allowed) external onlyOperator {
        uint256 expirationTime = block.timestamp + 3 days;
        ethOSDepositors[_address] =
            VerifyLib.EthOSInfo({isAllowed: _allowed, expirationTime: expirationTime, ethOSId: _ethOSId});

        emit EthOSDepositorSet(_address, _ethOSId, _allowed);
    }
}
