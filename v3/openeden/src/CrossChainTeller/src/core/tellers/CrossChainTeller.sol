/**
 * Copyright 2025 Circle Internet Group, Inc. All rights reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
pragma solidity ^0.8.0;

import {Access} from "../entitlements/Access.sol";
import {SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol";
import {AddressUtils} from "../../libraries/AddressUtils.sol";
import {CCTPMessageUtils, CCTPTokenMessageUtils} from "../../libraries/CCTPUtils.sol";

import {ICCTP2Token, ICCTP2Message} from "../../interfaces/ICCTP.sol";
import {IToken} from "../../interfaces/IToken.sol";
import {Teller} from "./Teller.sol";

import "../../config/errors.sol";

/**
 * @title   CrossChainTeller
 * @author  dsshap
 * @dev     Wraps Teller + CCTP2 functionality
 */
contract CrossChainTeller is Access {
    using AddressUtils for address;
    using AddressUtils for bytes32;
    using SafeERC20 for IToken;
    using CCTPMessageUtils for bytes;
    using CCTPTokenMessageUtils for bytes;

    /*///////////////////////////////////////////////////////////////
                                Events
    //////////////////////////////////////////////////////////////*/

    event MaxFeeSet(uint256 maxFee, uint256 newMaxFee);
    event MinFinalityThresholdSet(uint256 minFinalityThreshold, uint256 newMinFinalityThreshold);
    event DomainSet(uint256 indexed domain, bool status, bool newStatus, bytes32 caller, bytes32 newCaller);
    event Deposit(
        address indexed from, bytes32 indexed receiver, uint256 indexed destinationDomain, uint256 assets, uint256 shares
    );
    event Transfer(address indexed from, bytes32 indexed receiver, uint256 indexed destinationDomain, uint256 shares);
    event Redeem(address indexed from, address indexed receiver, uint256 indexed destinationDomain, uint256 shares);
    event RedeemComplete(address indexed receiver, uint256 indexed sourceDomain, uint256 assets, uint256 shares);

    /*///////////////////////////////////////////////////////////////
                                Constants
    //////////////////////////////////////////////////////////////*/

    uint256 public constant CCTP_VERSION = 1;

    /*///////////////////////////////////////////////////////////////
                         Immutables
    //////////////////////////////////////////////////////////////*/

    IToken public immutable usdc;
    IToken public immutable usyc;
    Teller public immutable teller;
    ICCTP2Token public immutable cctpToken;
    ICCTP2Message public immutable cctpMessage;

    /*///////////////////////////////////////////////////////////////
                            State Variables
    //////////////////////////////////////////////////////////////*/

    //  Max USYC spent in fees
    uint256 public maxFee;

    //  Number of confirmation before message is considered valid
    uint32 public minFinalityThreshold;

    // Configures support for destinationDomain for deposit & transfer
    mapping(uint256 => bool) public supported;

    // Configures support for destinationDomain for redeem
    mapping(uint256 => bytes32) public redeemer;

    /*///////////////////////////////////////////////////////////////
                        Constructor
    //////////////////////////////////////////////////////////////*/

    constructor(
        address _authority,
        address _usdc,
        address _usyc,
        address _teller,
        address _cctpToken,
        uint256 _maxFee,
        uint32 _minFinalityThreshold
    ) Access(_authority) {
        if (_usyc == address(0)) revert BadAddress();
        if (_cctpToken == address(0)) revert BadAddress();
        if (_minFinalityThreshold == 0) revert BadAmount();

        // skipping usdc and teller address checks because could be nil

        usdc = IToken(_usdc);
        usyc = IToken(_usyc);
        teller = Teller(_teller);
        cctpToken = ICCTP2Token(_cctpToken);
        cctpMessage = ICCTP2Message(cctpToken.localMessageTransmitter());
        maxFee = _maxFee;
        minFinalityThreshold = _minFinalityThreshold;

        if (_usdc != address(0) && _teller != address(0)) usdc.approve(_teller, type(uint256).max);
        if (_teller != address(0)) usyc.approve(_teller, type(uint256).max);
        usyc.approve(_cctpToken, type(uint256).max);
    }

    /*//////////////////////////////////////////////////////////////
                                ACTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Deposits USDC to mint USYC on destination domain.
     * Emits a `Deposit` event.
     * @dev reverts if:
     * - msg.sender does not have permission to call this function
     * - given destinationDomain is not supported
     * - usdc transfer call failing due to address being zero
     * - transferFrom() reverts. For example, if sender's approved allowance to this contract is less than `assets`
     * - Teller deposit() reverts. For example if assets is zero or too small
     * Does not check that receiver is permission on destination, if not permissioned the mint will revert
     * @param assets amount of USDC to deposit.
     * @param receiver address of mint recipient on destination domain.
     * @param destinationDomain destination domain to receive message on.
     * @return shares amount of USYC to be minted on destination chain.
     */
    function deposit(uint256 assets, bytes32 receiver, uint32 destinationDomain) external returns (uint256 shares) {
        _assertPermission(msg.sender);

        if (!supported[destinationDomain]) revert NotSupported();

        usdc.safeTransferFrom(msg.sender, address(this), assets);
        shares = teller.deposit(assets, address(this));
        cctpToken.depositForBurn(shares, destinationDomain, receiver, address(usyc), bytes32(0), maxFee, minFinalityThreshold);

        emit Deposit(msg.sender, receiver, destinationDomain, assets, shares);
    }

    /**
     * @notice Transfers USYC to destination domain.
     * Emits a `Transfer` event.
     * @dev reverts if:
     * - msg.sender does not have permission to call this function
     * - given destinationDomain is not supported
     * - transferFrom() reverts. For example, if sender's approved allowance to this contract is less than `shares`
     * Does not check that receiver is permission on destination, if not permissioned the mint will revert
     * @param shares amount of USYC to transfer.
     * @param receiver address of mint recipient on destination domain.
     * @param destinationDomain destination domain to receive message on.
     */
    function transfer(uint256 shares, bytes32 receiver, uint32 destinationDomain) external {
        _assertPermission(msg.sender);

        if (!supported[destinationDomain]) revert NotSupported();

        usyc.safeTransferFrom(msg.sender, address(this), shares);
        cctpToken.depositForBurn(shares, destinationDomain, receiver, address(usyc), bytes32(0), maxFee, minFinalityThreshold);

        emit Transfer(msg.sender, receiver, destinationDomain, shares);
    }

    /**
     * @notice Redeems USYC to receive USDC on destination domain.
     * Emits a `Redeem` event.
     * @dev reverts if:
     * - msg.sender does not have permission to call this function
     * - receiver does not have permission to transfer USYC
     * - shares amount is too small to redeem
     * - given destinationDomain is not supported
     * - transferFrom() reverts. For example, if sender's approved allowance to this contract is less than `shares`
     * @param shares amount of USYC to redeem.
     * @param receiver address of mint recipient on destination domain.
     * @param destinationDomain destination domain to receive message on.
     */
    function redeem(uint256 shares, address receiver, uint32 destinationDomain) external {
        _assertPermission(msg.sender);
        _assertCanReceive(address(usyc), receiver);

        if (address(teller) != address(0)) revert NotSupported();
        if (shares < 1e6) revert BadAmount();

        bytes32 caller = redeemer[destinationDomain];
        if (caller == bytes32(0)) revert NotSupported();

        usyc.safeTransferFrom(msg.sender, address(this), shares);
        cctpToken.depositForBurnWithHook(
            shares, destinationDomain, caller, address(usyc), caller, maxFee, minFinalityThreshold, abi.encode(receiver)
        );

        emit Redeem(msg.sender, receiver, destinationDomain, shares);
    }

    /**
     * @notice Completed redemption of USYC and sends USDC to receiver.
     * Emits a `RedeemComplete` event.
     * @dev reverts if:
     * - message has already been processed
     * - Teller redeem() reverts. For example if there is not enough liquidity
     * @param message Message bytes.
     * @param attestation Concatenated 65-byte signature(s) of `message`, in increasing order
     * of the attester address recovered from signatures.n.
     * @return assets amount of USDC sent to receiver.
     */
    function redeemComplete(bytes calldata message, bytes calldata attestation) external returns (uint256 assets) {
        bytes calldata body = message.messageBody();
        if (message.version() != CCTP_VERSION || body.version() != CCTP_VERSION) revert NotSupported();
        if (message.recipient() != address(cctpToken).toBytes32()) revert NotPermissioned();

        uint32 sourceDomain = message.sourceDomain();
        if (redeemer[sourceDomain] != body.messageSender()) revert NotPermissioned();

        uint256 before = usyc.balanceOf(address(this));
        if (!cctpMessage.receiveMessage(message, attestation)) revert();

        (address receiver) = abi.decode(body.hookData(), (address));
        uint256 shares = usyc.balanceOf(address(this)) - before;
        assets = teller.redeem(shares, receiver, address(this));

        emit RedeemComplete(receiver, sourceDomain, assets, shares);
    }

    /*///////////////////////////////////////////////////////////////
                            Admin Functions
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Sets Domain configuration
     * @dev Used by deposit and transfer to confirm the destinationDomain is supported
     * And used by redeem to set destinationCaller
     * @param domain destination chain identifier
     * @param status if the domain is supported (for deposits and transfers)
     * @param caller address of caller on destination chain (for redemptions)
     */
    function setDomain(uint32 domain, bool status, bytes32 caller) external {
        _assertFundAdmin();

        emit DomainSet(domain, supported[domain], status, redeemer[domain], caller);

        supported[domain] = status;
        redeemer[domain] = caller;
    }

    /**
     * @notice Sets Max Fee to pay
     * @param _maxFee amount of USYC to pay for cross chain transfers
     */
    function setMaxFee(uint256 _maxFee) external {
        _assertFundAdmin();

        emit MaxFeeSet(maxFee, _maxFee);

        maxFee = _maxFee;
    }

    /**
     * @notice Sets Minimum Finality Threshold for messages
     * @param _minFinalityThreshold number of confirmations to wait for to consider message finalized
     */
    function setMinFinalityThreshold(uint32 _minFinalityThreshold) external {
        _assertFundAdmin();

        if (_minFinalityThreshold == 0) revert BadAmount();

        emit MinFinalityThresholdSet(minFinalityThreshold, _minFinalityThreshold);

        minFinalityThreshold = _minFinalityThreshold;
    }

    /**
     * @notice Sets Allowances on USYC and/or USYC
     * @param _usdc allowance for USDC
     * @param _usyc allowance for USYC
     */
    function setAllowances(uint256 _usdc, uint256 _usyc) external {
        _assertFundAdmin();

        if (address(usdc) != address(0)) usdc.approve(address(teller), _usdc);
        usyc.approve(address(teller), _usyc);
    }
}
