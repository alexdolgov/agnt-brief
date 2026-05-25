// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

contract ObserverManager {
    event ObserverAdded(address indexed observer);
    event ObserverRemoved(address indexed observer);
    event ObserverQuorumSet(uint8 quorum);

    error InvalidObserverAddress(address observer);
    error ObserverAlreadyAdded(address observer);
    error ObserverNotAdded(address observer);
    error InvalidObserverSignatureCount(uint256 count, uint256 min, uint256 max);
    error InvalidSignatureOrdering();
    error InvalidSignatureLength();
    error AddressNotObserver(address signer);
    error InvalidObserverCount();
    error InvalidObserverQuorum();

    uint8 constant MAX_OBSERVERS = 255;
    uint8 constant MIN_OBSERVERS = 1;

    mapping(address => bool) private observers;
    uint8 private observerQuorum;
    uint8 private observerCount;

    constructor(address[] memory _initialObservers, uint8 _initialQuorum) {
        for (uint i = 0; i < _initialObservers.length; i++) {
            _addObserver(_initialObservers[i]);
        }

        _setObserverQuorum(_initialQuorum);
    }

    function isObserver(address _observer) public view returns (bool) {
        return observers[_observer];
    }

    function _addObserver(address _observer) internal {
        if (_observer == address(0)) revert InvalidObserverAddress(_observer);
        if (isObserver(_observer)) revert InvalidObserverAddress(_observer);
        if (observerCount >= MAX_OBSERVERS) revert InvalidObserverCount();
        ++observerCount;
        observers[_observer] = true;
        emit ObserverAdded(_observer);
    }

    function _removeObserver(address _observer) internal {
        if (!isObserver(_observer)) revert ObserverNotAdded(_observer);
        if (observerCount <= MIN_OBSERVERS || observerCount <= observerQuorum) revert InvalidObserverCount();
        observerCount--;

        delete observers[_observer];

        emit ObserverRemoved(_observer);
    }

    function _setObserverQuorum(uint8 _quorum) internal {
        if (_quorum < MIN_OBSERVERS || _quorum > observerCount || observerQuorum == _quorum) revert InvalidObserverQuorum();
        observerQuorum = _quorum;
        emit ObserverQuorumSet(_quorum);
    }

    function assertObserverSignatures(bytes32 _messageHash, bytes calldata _signatures) public view {
        if (_signatures.length % 65 != 0) revert InvalidSignatureLength();

        uint256 signatureCount = _signatures.length / 65;

        if (signatureCount < observerQuorum || signatureCount > observerCount) revert InvalidObserverSignatureCount(signatureCount, observerQuorum, observerCount);

        address lastSigner = address(0);
        for (uint8 i = 0; i < signatureCount; i++) {
            address signer = ECDSA.recover(_messageHash, _signatures[(i*65):((i+1)*65)]);
            if (!isObserver(signer)) revert AddressNotObserver(signer);
            if (signer <= lastSigner) revert InvalidSignatureOrdering();
            lastSigner = signer;
        }
    }

    function getObserverQuorum() external view returns (uint8) {
        return observerQuorum;
    }

    function getObserverCount() external view returns (uint8) {
        return observerCount;
    }
}
