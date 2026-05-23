// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Ownable} from "lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import {EIP712} from "lib/openzeppelin-contracts/contracts/utils/cryptography/EIP712.sol";
import {ECDSA} from "lib/openzeppelin-contracts/contracts/utils/cryptography/ECDSA.sol";

/**
 * @title MgvReferral
 * @author Mangrove DAO
 * @notice A contract to record referrals
 */
contract MgvReferral is Ownable, EIP712("MangroveReferral", "1.0.0") {
    /**
     * @notice Referral struct
     */
    struct Referral {
        address referrer;
        address referee;
    }

    struct RefLink {
        address owner;
    }

    /**
     * @notice startedReferring mapping
     * Maps address to boolean to indicate if the address has started referring
     */
    mapping(address => bool) public startedReferring;

    /**
     * @notice Referrer mapping
     * Maps referee to referrer
     */
    mapping(address => address) public referrers;

    /**
     * @notice ReferStarted event
     * @param owner the address of the referrer
     */
    event ReferStarted(address indexed owner);

    /**
     * @notice ReferralRecorded event
     * @param referrer the address of the referrer
     * @param referee the address of the referee
     */
    event ReferralRecorded(address indexed referrer, address indexed referee);

    /**
     * @notice MangroveReferral constructor
     * @param _owner the owner of the contract
     */
    constructor(address _owner) Ownable(_owner) {}

    /**
     * @notice Returns true if the address can be referred
     * @param _address the address of the referree
     */
    function canBeReferred(address _address) public view returns (bool) {
        return !startedReferring[_address] && referrers[_address] == address(0);
    }

    /**
     * @notice Hashes the referral data
     * @param data the referral data
     */
    function hashReferralMessage(Referral memory data) public view returns (bytes32) {
        return _hashTypedDataV4(
            keccak256(abi.encode(keccak256("Referral(address referrer,address referee)"), data.referrer, data.referee))
        );
    }

    /**
     * @notice Hashes the start message data
     * @param data the start message data
     */
    function hashStartMessage(RefLink memory data) public view returns (bytes32) {
        return _hashTypedDataV4(keccak256(abi.encode(keccak256("RefLink(address owner)"), data.owner)));
    }

    /**
     * @notice Sets the referrer of the referee
     * @param data referral data
     * @param signature signature of the referral data
     * @param noRevert if true, the function will not revert
     * @return success true if the referrer was set
     * @dev The signature is an EIP-712 signature of the referral data
     */
    function _setReferrer(Referral memory data, bytes memory signature, bool noRevert)
        internal
        returns (bool success)
    {
        if (data.referrer == address(0) || data.referrer == data.referee || !startedReferring[data.referrer]) {
            require(noRevert, "mgvref/invalid-referrer");
            return false;
        }
        if (!canBeReferred(data.referee)) {
            require(noRevert, "mgvref/already-referred");
            return false;
        }
        bytes32 digest = hashReferralMessage(data);
        address signer = ECDSA.recover(digest, signature);
        if (signer != data.referee) {
            require(noRevert, "mgvref/invalid-signer");
            return false;
        }
        referrers[data.referee] = data.referrer;
        emit ReferralRecorded(data.referrer, data.referee);
        return true;
    }

    /**
     * @notice Sets the owner as a referrer
     * @param data The reflink data
     * @param signature The signature of the reflink data
     */
    function _setStartReferring(RefLink memory data, bytes memory signature, bool noRevert)
        internal
        returns (bool success)
    {
        if (data.owner == address(0)) {
            require(noRevert, "mgvref/invalid-referrer");
            return false;
        }
        if (startedReferring[data.owner]) {
            require(noRevert, "mgvref/already-referring");
            return false;
        }
        bytes32 digest = hashStartMessage(data);
        address signer = ECDSA.recover(digest, signature);
        if (signer != data.owner) {
            require(noRevert, "mgvref/invalid-signer");
            return false;
        }
        startedReferring[data.owner] = true;
        emit ReferStarted(data.owner);
        return true;
    }

    function addEvent(bytes calldata data, bytes memory signature, bool noRevert)
        public
        onlyOwner
        returns (bool success)
    {
        // find out if data is a Referral or RefLink
        // if Referral, call _setReferrer
        // if RefLink, call _setStartReferring
        bytes1 dataType = data[0];
        if (dataType == 0x01) {
            RefLink memory refLink = abi.decode(data[1:], (RefLink));
            success = _setStartReferring(refLink, signature, noRevert);
        } else if (dataType == 0x02) {
            Referral memory referral = abi.decode(data[1:], (Referral));
            success = _setReferrer(referral, signature, noRevert);
        } else {
            require(noRevert, "mgvref/invalid-data");
        }
    }

    function addEvents(bytes[] calldata data, bytes[] memory signature) public onlyOwner returns (bool[] memory) {
        bool[] memory successes = new bool[](data.length);
        for (uint256 i = 0; i < data.length; i++) {
            successes[i] = addEvent(data[i], signature[i], true);
        }
        return successes;
    }
}
