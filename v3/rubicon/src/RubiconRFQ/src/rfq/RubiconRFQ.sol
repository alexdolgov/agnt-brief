// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.19;

import {SignatureChecker} from "oz-latest/contracts/utils/cryptography/SignatureChecker.sol";
import {IRubiconRFQ, Response, Quote, Permissions} from "../interfaces/IRubiconRFQ.sol";
import {IGladiusReactor, IReactor} from "../interfaces/IGladiusReactor.sol";
import {EIP712} from "oz-latest/contracts/utils/cryptography/EIP712.sol";
import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {IRfqCallback} from "../interfaces/IRfqCallback.sol";
import {RfqResponseLib} from "../lib/RfqResponseLib.sol";
import {SignedOrder} from "../lib/SignedOrderLib.sol";
import {DSAuth} from "../lib/DSAuth.sol";
import "./Errors.sol";

contract RubiconRFQ is IRubiconRFQ, DSAuth, EIP712 {
    using SignatureChecker for address;
    using RfqResponseLib for Response;

    /// @notice 'tagger' is an actor who's able to
    ///         interact with this contract's external fns.
    mapping(address => Permissions) public taggers;
    IGladiusReactor public gladiusReactor;
    address public rfqSigner;

    modifier authCaller(bool execute) {
        Permissions memory p = taggers[msg.sender];
        if ((execute && !p.execute) || (!execute && !p.fill))
            revert UnableToCall();
        _;
    }

    constructor(
        address reactor,
        address admin,
        address rfqSgn,
        string memory name_EIP712,
        string memory version_EIP712
    ) EIP712(name_EIP712, version_EIP712) {
        gladiusReactor = IGladiusReactor(reactor);
        owner = admin;
        rfqSigner = rfqSgn;
    }

    /// @notice Fills the quote, using response data.
    function fill(
        Quote calldata q,
        Response calldata r,
        bytes calldata signature
    ) external authCaller(false) {
        if (
            !rfqSigner.isValidSignatureNow(
                _hashTypedDataV4(r.hash()),
                signature
            )
        ) revert InvalidSignature();
        r.validateDeadline();

        // Transfer input token from tagger and approve reactor.
        _transferAndApprove(q.sellToken, q.sellAmt);

        /// @dev Fee will be paid in the 'sellToken' form.
        gladiusReactor.executeBatch(r.orders, r.quantities);

        _transferIfProfitable(q.buyToken, q.buyAmt);

        // + check if there's input token suck in the contract
        _returnInput(q.sellToken);
    }

    //~~~~~~~~~~~~~~~~~~~~~~~~~~ REACTOR WRAPPERS ~~~~~~~~~~~~~~~~~~~~~~~~~~

    function execute(
        SignedOrder calldata order,
        uint256 quantity
    ) external payable authCaller(true) {
        IRfqCallback(msg.sender).rfqCallback(
            abi.encodeCall(IGladiusReactor.execute, (order, quantity))
        );
    }

    function executeWithCallback(
        SignedOrder calldata order,
        uint256 quantity,
        bytes calldata callbackData
    ) external payable authCaller(true) {
        IRfqCallback(msg.sender).rfqCallback(
            abi.encodeCall(
                IGladiusReactor.executeWithCallback,
                (order, quantity, callbackData)
            )
        );
    }

    function executeBatch(
        SignedOrder[] calldata orders,
        uint256[] calldata quantities
    ) external payable authCaller(true) {
        IRfqCallback(msg.sender).rfqCallback(
            abi.encodeCall(IGladiusReactor.executeBatch, (orders, quantities))
        );
    }

    function executeBatchWithCallback(
        SignedOrder[] calldata orders,
        uint256[] calldata quantities,
        bytes calldata callbackData
    ) external payable authCaller(true) {
        IRfqCallback(msg.sender).rfqCallback(
            abi.encodeCall(
                IGladiusReactor.executeBatchWithCallback,
                (orders, quantities, callbackData)
            )
        );
    }

    function execute(
        SignedOrder calldata order
    ) external payable authCaller(true) {
        IRfqCallback(msg.sender).rfqCallback(
            abi.encodeCall(IReactor.execute, (order))
        );
    }

    function executeWithCallback(
        SignedOrder calldata order,
        bytes calldata callbackData
    ) external payable authCaller(true) {
        IRfqCallback(msg.sender).rfqCallback(
            abi.encodeCall(
                IReactor.executeWithCallback,
                (order, callbackData)
            )
        );
    }

    function executeBatch(
        SignedOrder[] calldata orders
    ) external payable authCaller(true) {
        IRfqCallback(msg.sender).rfqCallback(
            abi.encodeCall(IReactor.executeBatch, (orders))
        );
    }

    function executeBatchWithCallback(
        SignedOrder[] calldata orders,
        bytes calldata callbackData
    ) external payable authCaller(true) {
        IRfqCallback(msg.sender).rfqCallback(
            abi.encodeCall(
                IReactor.executeBatchWithCallback,
                (orders, callbackData)
            )
        );
    }

    //~~~~~~~~~~~~~~~~~~~~~~~~~~ HELPERS ~~~~~~~~~~~~~~~~~~~~~~~~~~

    function _transferAndApprove(address _t, uint256 _a) internal {
        IERC20(_t).transferFrom(msg.sender, address(this), _a);
        uint256 allowance = IERC20(_t).allowance(
            address(this),
            address(gladiusReactor)
        );

        if (allowance < _a) {
            IERC20(_t).approve(address(gladiusReactor), type(uint256).max);
        }
    }

    /// @dev 'quote.buyAmt' can be set to 0 to "avoid" the profit-check.
    /// @dev "fatals" in case of an error
    function _transferIfProfitable(address _t, uint256 _a) internal {
        uint256 _b = IERC20(_t).balanceOf(address(this));
        if (_b < _a) revert Unprofitable();

        IERC20(_t).transfer(msg.sender, _b);
    }

    function _returnInput(address _t) internal {
        uint256 _b = IERC20(_t).balanceOf(address(this));
        if (_b > 0) IERC20(_t).transfer(msg.sender, _b);
    }

    //~~~~~~~~~~~~~~~~~~~~~~~~~~ AUTH-WRITE ~~~~~~~~~~~~~~~~~~~~~~~~~~

    function addTagger(
        address t,
        bool enableExec,
        bool enableFill
    ) external auth {
        if (t == address(0)) revert ZeroAddress();
        taggers[t] = Permissions({execute: enableExec, fill: enableFill});
    }

    function rmTagger(address t) external auth {
        if (t == address(0)) revert ZeroAddress();
        delete taggers[t];
    }

    function setFillPermission(address t, bool enable) external auth {
        if (t == address(0)) revert ZeroAddress();
        taggers[t].fill = enable;
    }

    function setExecutePermission(address t, bool enable) external auth {
        if (t == address(0)) revert ZeroAddress();
        taggers[t].execute = enable;
    }

    //~~~~~~~~~~~~~~~~~~~~~~~~~~ ADMIN ~~~~~~~~~~~~~~~~~~~~~~~~~~

    function setGladiusReactor(address payable gr) external auth {
        if (gr == address(0)) revert ZeroAddress();
        gladiusReactor = IGladiusReactor(gr);
    }

    function setRfqSigner(address rs) external auth {
        if (rs == address(0)) revert ZeroAddress();
        rfqSigner = rs;
    }
}
