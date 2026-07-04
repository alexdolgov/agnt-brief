// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC2771Context, Context} from "@openzeppelin/contracts/metatx/ERC2771Context.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

import {ICarbonToken, TokenRetired} from "./ICarbonToken.sol";
import {EIP3009} from "../EIP3009.sol";

struct IssuanceBatch {
    uint256 metricTon;
    address to;
}

/* solhint-disable */
/**
 * WARNING: Not production ready
 * @title
 * @author
 * @notice
 */
contract BaseCarbon is
    ERC20,
    ERC2771Context,
    AccessControl,
    ICarbonToken,
    EIP3009,
    ERC20Permit
{
    bytes32 public constant ISSUER = keccak256("ISSUER");
    bytes32 public constant VERIFIER = keccak256("VERIFIER");

    IssuanceBatch[] private _batches;

    uint8 public METRIC_TON_DECIMALS = 18;
    uint256 private _metricTonPerToken;
    uint256 private _metricTonRetired;

    event BatchCreated(uint256 id, uint256 metricTon, address to, bytes data);
    event IssuanceApproved(uint256 id, bytes data);

    constructor(
        address issuer,
        address verifier,
        address trustedForwarder,
        string memory symbol,
        string memory name,
        uint256 metricTonPerToken_
    ) ERC2771Context(trustedForwarder) ERC20(name, symbol) ERC20Permit(name) {
        _setRoleAdmin(ISSUER, ISSUER);
        _setRoleAdmin(VERIFIER, VERIFIER);
        _grantRole(ISSUER, issuer);
        _grantRole(VERIFIER, verifier);
        _metricTonPerToken = metricTonPerToken_;
    }

    function createBatch(
        uint256 metricTon,
        address to,
        bytes calldata data
    ) public onlyRole(ISSUER) {
        _batches.push(IssuanceBatch({metricTon: metricTon, to: to}));
        emit BatchCreated(_batches.length - 1, metricTon, to, data);
    }

    function approveBatch(
        uint256 id,
        bytes calldata data
    ) public onlyRole(VERIFIER) {
        IssuanceBatch storage batch = _batches[id];
        _mint(
            batch.to,
            (batch.metricTon * (10 ** METRIC_TON_DECIMALS)) / _metricTonPerToken
        );
        emit IssuanceApproved(id, data);
    }

    function metricTonPerToken() external view returns (uint256) {
        return _metricTonPerToken;
    }

    function retire(uint256 amount) external returns (uint256) {
        uint256 carbonRetired = (amount * _metricTonPerToken) /
            (10 ** decimals());
        _metricTonRetired += carbonRetired;
        _burn(_msgSender(), amount);
        emit TokenRetired(amount, carbonRetired, _msgSender());
        return carbonRetired;
    }

    function metricTonRetired() external view returns (uint256) {
        return _metricTonRetired;
    }

    /**
     * @notice Execute a transfer with a signed authorization
     * @param from          Payer's address (Authorizer)
     * @param to            Payee's address
     * @param value         Amount to be transferred
     * @param validAfter    The time after which this is valid (unix time)
     * @param validBefore   The time before which this is valid (unix time)
     * @param nonce         Unique nonce
     * @param v             v of the signature
     * @param r             r of the signature
     * @param s             s of the signature
     */
    function transferWithAuthorization(
        address from,
        address to,
        uint256 value,
        uint256 validAfter,
        uint256 validBefore,
        bytes32 nonce,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external {
        _transferWithAuthorization(
            from,
            to,
            value,
            validAfter,
            validBefore,
            nonce,
            v,
            r,
            s
        );
    }

    /**
     * @notice Receive a transfer with a signed authorization from the payer
     * @dev This has an additional check to ensure that the payee's address matches
     * the caller of this function to prevent front-running attacks. (See security
     * considerations)
     * @param from          Payer's address (Authorizer)
     * @param to            Payee's address
     * @param value         Amount to be transferred
     * @param validAfter    The time after which this is valid (unix time)
     * @param validBefore   The time before which this is valid (unix time)
     * @param nonce         Unique nonce
     * @param v             v of the signature
     * @param r             r of the signature
     * @param s             s of the signature
     */
    function receiveWithAuthorization(
        address from,
        address to,
        uint256 value,
        uint256 validAfter,
        uint256 validBefore,
        bytes32 nonce,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external {
        _receiveWithAuthorization(
            from,
            to,
            value,
            validAfter,
            validBefore,
            nonce,
            v,
            r,
            s
        );
    }

    /**
     * @notice Attempt to cancel an authorization
     * @param authorizer    Authorizer's address
     * @param nonce         Nonce of the authorization
     * @param v             v of the signature
     * @param r             r of the signature
     * @param s             s of the signature
     */
    function cancelAuthorization(
        address authorizer,
        bytes32 nonce,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external {
        _cancelAuthorization(authorizer, nonce, v, r, s);
    }

    function _authorizedTransfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual override {
        _transfer(from, to, amount);
    }

    function _msgSender()
        internal
        view
        virtual
        override(Context, ERC2771Context)
        returns (address)
    {
        return ERC2771Context._msgSender();
    }

    function _msgData()
        internal
        view
        virtual
        override(Context, ERC2771Context)
        returns (bytes calldata)
    {
        return ERC2771Context._msgData();
    }

    function _contextSuffixLength()
        internal
        view
        virtual
        override(Context, ERC2771Context)
        returns (uint256)
    {
        return ERC2771Context._contextSuffixLength();
    }
}
