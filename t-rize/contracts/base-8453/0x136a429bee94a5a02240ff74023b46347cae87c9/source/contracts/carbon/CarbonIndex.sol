// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC2771Context, Context} from "@openzeppelin/contracts/metatx/ERC2771Context.sol";
import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

import {ICarbonToken, TokenRetired} from "./ICarbonToken.sol";
import {EIP3009} from "../EIP3009.sol";

/* solhint-disable */
/**
 * WARNING: Not production ready
 * @title
 * @author
 * @notice
 */
contract CarbonIndex is
    AccessControl,
    ERC20,
    EIP3009,
    ERC20Permit,
    ERC2771Context,
    ICarbonToken
{
    mapping(address => bool) _allowedCarbon;
    uint8 public METRIC_TON_DECIMALS = 18;

    uint256 private _metricTonPerToken;

    uint256 private _metricTonRetired;
    uint256 private _metricTonToRetire;

    address private _purchaseToken;
    uint256 private _metricTonPurchasePrice;

    event TokenWhitelisted(address indexed token);

    error TokenNotAllowed(address token);
    error RetiringTooMuch();
    error NotEnoughCarbon(uint256 available, uint256 wanted);

    modifier onlyCarbonToken(address token) {
        if (!_allowedCarbon[token]) {
            revert TokenNotAllowed(token);
        }
        _;
    }

    constructor(
        address trustedForwarder,
        string memory name,
        string memory symbol,
        uint256 metricTonPerToken_,
        address purchaseToken_,
        uint256 metricTonPurchasePrice_
    ) ERC2771Context(trustedForwarder) ERC20(name, symbol) ERC20Permit(name) {
        _metricTonPerToken = metricTonPerToken_;
        _purchaseToken = purchaseToken_;
        _metricTonPurchasePrice = metricTonPurchasePrice_;
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function metricTonPerToken() external view returns (uint256) {
        return _metricTonPerToken;
    }

    function retire(uint256 amount) external returns (uint256) {
        uint256 carbonRetired = (amount * _metricTonPerToken) /
            (10 ** decimals());
        _metricTonRetired += carbonRetired;
        _metricTonToRetire += carbonRetired;
        _burn(_msgSender(), amount);
        emit TokenRetired(amount, carbonRetired, _msgSender());
        return carbonRetired;
    }

    function metricTonRetired() external view returns (uint256) {
        return _metricTonRetired;
    }

    function whitelistCarbonToken(
        address token
    ) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _allowedCarbon[token] = true;

        emit TokenWhitelisted(token);
    }

    function deposit(
        address token,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) onlyCarbonToken(token) {
        ICarbonToken cToken = ICarbonToken(token);
        cToken.transferFrom(_msgSender(), address(this), amount);
        uint256 mtCarbon = (amount * cToken.metricTonPerToken()) /
            (10 ** decimals());
        uint256 mintAmount = (mtCarbon * (10 ** METRIC_TON_DECIMALS)) /
            _metricTonPerToken;
        _mint(address(this), mintAmount);
    }

    function settleRetired(
        address token,
        uint256 amount
    ) external onlyRole(DEFAULT_ADMIN_ROLE) onlyCarbonToken(token) {
        ICarbonToken cToken = ICarbonToken(token);
        uint256 mtCarbon = (amount * cToken.metricTonPerToken()) /
            (10 ** decimals());
        if (mtCarbon > _metricTonToRetire) {
            revert RetiringTooMuch();
        }
        _metricTonToRetire -= mtCarbon;
        cToken.retire(amount);
    }

    function purchaseToken() external view returns (address) {
        return _purchaseToken;
    }

    function metricTonPurchasePrice() external view returns (uint256) {
        return _metricTonPurchasePrice;
    }

    function purchase(uint256 amount, address to) external {
        ERC20 token = ERC20(_purchaseToken);
        token.transferFrom(_msgSender(), address(this), amount);
        uint256 purchasedMetricTon = (amount * (10 ** METRIC_TON_DECIMALS)) /
            _metricTonPurchasePrice;
        uint256 purchasedAmount = (purchasedMetricTon * (10 ** decimals())) /
            _metricTonPerToken;
        if (balanceOf(address(this)) < purchasedAmount) {
            revert NotEnoughCarbon(balanceOf(address(this)), purchasedAmount);
        }
        _transfer(address(this), to, purchasedAmount);
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
