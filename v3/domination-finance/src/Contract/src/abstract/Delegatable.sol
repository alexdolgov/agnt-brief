// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { IDelegatable } from "../interfaces/IDelegatable.sol";
import { ECDSA } from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";

abstract contract Delegatable is IDelegatable {
    bytes32 public constant DELEGATION_TYPEHASH =
        keccak256("Delegation(address delegator,address delegate,uint256 nonce,uint256 expiry)");
    bytes32 private constant _TYPE_HASH = keccak256(
        "EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"
    );
    bytes32 private constant _HASHED_NAME = keccak256(bytes("Domination Finance"));
    bytes32 private constant _HASHED_VERSION = keccak256(bytes("1"));

    mapping(address delegator => address) public delegations;
    address private senderOverride;

    function setDelegate(address newDelegate) external {
        if (newDelegate == address(0)) {
            revert NullAddr();
        }

        _incrementDelegatableNonce(msg.sender);
        delegations[msg.sender] = newDelegate;
        emit DelegateAdded(msg.sender, newDelegate);
    }

    function setDelegateWithSignature(
        address delegator,
        address delegate,
        uint256 nonce,
        uint256 expiry,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external {
        if (delegate == address(0)) {
            revert NullAddr();
        }

        if (block.timestamp > expiry) {
            revert SignatureExpired();
        }

        if (nonce != _getDelegatableNonce(delegator)) {
            revert InvalidNonce();
        }

        bytes32 structHash =
            keccak256(abi.encode(DELEGATION_TYPEHASH, delegator, delegate, nonce, expiry));
        bytes32 digest = keccak256(abi.encodePacked("\x19\x01", _domainSeparatorV4(), structHash));

        (address signer, ECDSA.RecoverError err,) = ECDSA.tryRecover(digest, v, r, s);
        if (err != ECDSA.RecoverError.NoError || signer != delegator) {
            revert InvalidSignature();
        }

        _incrementDelegatableNonce(delegator);
        delegations[delegator] = delegate;
        emit DelegateAdded(delegator, delegate);
    }

    function removeDelegate() external {
        if (delegations[msg.sender] == address(0)) {
            revert NoDelegate(msg.sender);
        }

        _incrementDelegatableNonce(msg.sender);
        address delegate = delegations[msg.sender];

        delete delegations[msg.sender];
        emit DelegateRemoved(msg.sender, delegate);
    }

    function delegatedAction(address trader, bytes calldata callData)
        external
        returns (bytes memory)
    {
        if (senderOverride != address(0)) {
            revert DelegateReentrant();
        }

        if (delegations[trader] != msg.sender) {
            revert NotDelegate(trader, msg.sender);
        }

        if (callData.length < 4) {
            revert InvalidCallData();
        }

        bytes4 selector = bytes4(callData[:4]);
        if (
            selector == this.setDelegate.selector
                || selector == this.setDelegateWithSignature.selector
                || selector == this.removeDelegate.selector
                || selector == this.delegatedAction.selector
        ) {
            revert DelegateForbidden();
        }

        if (!_isDelegatedActionAllowed(selector)) {
            revert DelegateForbidden();
        }

        senderOverride = trader;
        // slither-disable-next-line low-level-calls,controlled-delegatecall,reentrancy-benign
        (bool success, bytes memory result) = address(this).delegatecall(callData);
        if (!success) {
            if (result.length > 0) {
                // slither-disable-next-line assembly
                assembly {
                    revert(add(result, 0x20), mload(result))
                }
            } else {
                revert DelegatedActionFailed();
            }
        }

        senderOverride = address(0);

        return result;
    }

    function DOMAIN_SEPARATOR() external view returns (bytes32) {
        return _domainSeparatorV4();
    }

    function msgSender() public view returns (address) {
        if (senderOverride != address(0)) {
            return senderOverride;
        }

        return msg.sender;
    }

    function _domainSeparatorV4() internal view returns (bytes32) {
        return keccak256(
            abi.encode(_TYPE_HASH, _HASHED_NAME, _HASHED_VERSION, block.chainid, address(this))
        );
    }

    function _incrementDelegatableNonce(address delegator) internal virtual;

    function _getDelegatableNonce(address delegator) internal view virtual returns (uint256);

    function _isDelegatedActionAllowed(bytes4 selector) internal view virtual returns (bool);
}
