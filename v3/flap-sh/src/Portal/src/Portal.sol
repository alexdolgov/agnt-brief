// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {
    IPortal,
    IPortalCore,
    IPortalTypes,
    IPortalMigrator,
    IPortalLauncher,
    IPortalTrade,
    IRoller,
    IPortalTradeV2
} from "./interfaces/IPortal.sol";
import {IToken} from "./interfaces/IToken.sol";
import {PortalBase} from "./PortalBase.sol";
import {IUniswapV3MintCallback} from "uni-v3-core/interfaces/callback/IUniswapV3MintCallback.sol";
import {IPancakeV3MintCallback} from "pancake-v3-core/interfaces/callback/IPancakeV3MintCallback.sol";
import {IERC721Receiver} from "@openzeppelin/interfaces/IERC721Receiver.sol";
import {LibCurve} from "src/libraries/Curve.sol";

/// @title  The Portal is the entrypoint for the LaunchPad Protocol
/// @author The Flap Team
/// @dev The portal is mainly for dispatching calls to other modules.
contract Portal is IPortal, PortalBase {
    constructor(PortalInitParams memory params) PortalBase(params) {}

    function initialize(address admin) external initializer {
        _setupRole(DEFAULT_ADMIN_ROLE, admin);
    }

    // receive function to receive ether
    receive() external payable {}

    /// @inheritdoc IPortalLauncher
    function newToken(
        string calldata,
        /*name*/
        string calldata,
        /*symbol*/
        string calldata /*meta*/
    ) external payable override onlyIfBitFlagsSet(CB_BIT_MASK_GLOBAL_SWITCH) returns (address /*token*/ ) {
        _delegateToImpl(PORTAL_LAUNCHER);
    }

    /// @inheritdoc IPortalLauncher
    function newTokenNoDuel(
        string calldata,
        /*name*/
        string calldata,
        /*symbol*/
        string calldata /*meta*/
    ) external payable override onlyIfBitFlagsSet(CB_BIT_MASK_GLOBAL_SWITCH) returns (address /*token*/ ) {
        _delegateToImpl(PORTAL_LAUNCHER);
    }

    /// @inheritdoc IPortalLauncher
    function newTokenWithDexSupplyThresh(
        string calldata, /*name*/
        string calldata, /*symbol*/
        string calldata, /*meta*/
        DexThreshType /*supplyTresh*/
    ) external payable override onlyIfBitFlagsSet(CB_BIT_MASK_GLOBAL_SWITCH) returns (address /*token*/ ) {
        _delegateToImpl(PORTAL_LAUNCHER);
    }

    /// @inheritdoc IPortalLauncher
    function newVanityToken(
        string calldata, /*name*/
        string calldata, /*symbol*/
        string calldata, /*meta*/
        bytes32, /*salt*/
        address /*beneficiary*/
    ) external payable override onlyIfBitFlagsSet(CB_BIT_MASK_GLOBAL_SWITCH) returns (address /*token*/ ) {
        _delegateToImpl(PORTAL_LAUNCHER);
    }

    /// @inheritdoc IPortalLauncher
    function newVanityTokenWithDexSupplyThresh(
        string calldata, /*name*/
        string calldata, /*symbol*/
        string calldata, /*meta*/
        DexThreshType, /*supplyThresh*/
        bytes32, /*salt*/
        address /*beneficiary*/
    ) external payable override onlyIfBitFlagsSet(CB_BIT_MASK_GLOBAL_SWITCH) returns (address /*token*/ ) {
        _delegateToImpl(PORTAL_LAUNCHER);
    }

    /// @inheritdoc IPortalLauncher
    function newTaxToken(
        string calldata, /*name*/
        string calldata, /*symbol*/
        string calldata, /*meta*/
        bytes32, /*salt*/
        address, /*beneficiary*/
        uint16 /*tax*/
    ) external payable override onlyIfBitFlagsSet(CB_BIT_MASK_GLOBAL_SWITCH) returns (address /*token*/ ) {
        _delegateToImpl(PORTAL_LAUNCHER);
    }

    /// @inheritdoc IPortalTrade
    function buy(
        address,
        /*token*/
        address,
        /*recipient*/
        uint256 /*minAmount*/
    ) external payable override onlyIfBitFlagsSet(CB_BIT_MASK_GLOBAL_SWITCH) returns (uint256 /*amount*/ ) {
        _delegateToImpl(PORTAL_TRADE);
    }

    /// @inheritdoc IPortalTrade
    function sell(
        address,
        /*token*/
        uint256,
        /*amount*/
        uint256 /*minEth*/
    ) external override onlyIfBitFlagsSet(CB_BIT_MASK_GLOBAL_SWITCH) returns (uint256 /*eth*/ ) {
        _delegateToImpl(PORTAL_TRADE);
    }

    /// @inheritdoc IPortalTrade
    function redeem(
        address,
        /*arg1*/
        address,
        /*arg2*/
        uint256 /*arg3*/
    ) external pure override returns (uint256 /*amount*/ ) {
        revert FeatureDisabled();
    }

    /// @inheritdoc IRoller
    function rollv2(bytes calldata /*packedParams*/ ) external override {
        _delegateToImpl(PORTAL_ROLLER);
    }

    /// @inheritdoc IRoller
    function claim(address /*token*/ )
        external
        override
        onlyIfBitFlagsSet(CB_BIT_MASK_GLOBAL_SWITCH)
        returns (uint256, /*tokenAmount*/ uint256 /*ethAmount*/ )
    {
        _delegateToImpl(PORTAL_ROLLER);
    }

    /// @inheritdoc IRoller
    function delegateClaim(address /*token*/ )
        external
        override
        onlyIfBitFlagsSet(CB_BIT_MASK_GLOBAL_SWITCH)
        returns (uint256, /*tokenAmount*/ uint256 /*ethAmount*/ )
    {
        _delegateToImpl(PORTAL_ROLLER);
    }

    /// @inheritdoc IPortalTradeV2
    function swapExactInput(ExactInputParams calldata /* params */ )
        external
        payable
        override
        onlyIfBitFlagsSet(CB_BIT_MASK_GLOBAL_SWITCH)
        returns (uint256 /* outputAmount */ )
    {
        _delegateToImpl(PORTAL_TRADE_V2);
    }

    /// @inheritdoc IPortalTradeV2
    function quoteExactInput(QuoteExactInputParams calldata /* params */ )
        external
        override
        returns (uint256 /* outputAmount */ )
    {
        _delegateToImpl(PORTAL_TRADE_V2);
    }

    /// @inheritdoc IPortalLauncher
    function newTokenV2(NewTokenV2Params calldata /* params */ )
        external
        payable
        override
        onlyIfBitFlagsSet(CB_BIT_MASK_GLOBAL_SWITCH)
        returns (address /* token */ )
    {
        _delegateToImpl(PORTAL_LAUNCHER);
    }

    /// @inheritdoc IRoller
    function setTokenBeneficiary(address, /*token*/ address /* newBeneficiary */ ) external override {
        _delegateToImpl(PORTAL_ROLLER);
    }

    /// @inheritdoc IPortalLauncher
    function setQuoteTokenConfiguration(
        address, /*quoteToken*/
        IPortalTypes.QuoteTokenConfiguration calldata /*config*/
    ) external override {
        _delegateToImpl(PORTAL_LAUNCHER);
    }

    /// @inheritdoc IPortal
    function setBitFlags(uint256 flags) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        uint256 old = bitFlags;
        bitFlags = flags;

        emit BitFlagsChanged(old, flags);
    }

    /// @inheritdoc IPortal
    function halt() external override {
        // only guardian can halt the portal
        if (!(hasRole(GUARDIAN_ROLE, msg.sender) || hasRole(DEFAULT_ADMIN_ROLE, msg.sender))) {
            revert NotGuardian(msg.sender);
        }
        uint256 old = bitFlags;
        bitFlags = 0;
        emit BitFlagsChanged(old, 0);
    }

    //
    // View functions
    //

    /// @inheritdoc IPortalLauncher
    function nonce() external view override returns (uint256 /*nonce*/ ) {
        (bool success, bytes memory result) =
            address(this).staticcall(abi.encodeWithSelector(this.inspect.selector, msg.data));
        if (!success) {
            _revert(result);
        }
        assembly ("memory-safe") {
            // result is the return value of the inspect function.
            //
            // The inspect function returns a bytes, which will be encoded as the abi encoding of a bytes:
            // |uin256(0x20)|length of the return_bytes|return_bytes|
            // However, `return_bytes` itself is the abi encoding of the return value of the corresponding view function.
            //
            // The memory layout of the result is as follows:
            // |uint256(result length)|uin256(0x20)|length of the return_bytes|return_bytes|
            //
            // here, we return the "return_bytes".

            return(add(result, 0x60), mload(add(result, 0x40)))
        }
    }

    /// @inheritdoc IPortalLauncher
    function getTokenV2(address /*token*/ ) external view override returns (TokenStateV2 memory /*state*/ ) {
        (bool success, bytes memory result) =
            address(this).staticcall(abi.encodeWithSelector(this.inspect.selector, msg.data));
        if (!success) {
            _revert(result);
        }
        assembly ("memory-safe") {
            // result is the return value of the inspect function.
            //
            // The inspect function returns a bytes, which will be encoded as the abi encoding of a bytes:
            // |uin256(0x20)|length of the return_bytes|return_bytes|
            // However, `return_bytes` itself is the abi encoding of the return value of the corresponding view function.
            //
            // The memory layout of the result is as follows:
            // |uint256(result length)|uin256(0x20)|length of the return_bytes|return_bytes|
            //
            // here, we return the "return_bytes".

            return(add(result, 0x60), mload(add(result, 0x40)))
        }
    }

    function getTokenV3(address /*token*/ ) external view override returns (TokenStateV3 memory /*state*/ ) {
        (bool success, bytes memory result) =
            address(this).staticcall(abi.encodeWithSelector(this.inspect.selector, msg.data));
        if (!success) {
            _revert(result);
        }
        assembly ("memory-safe") {
            return(add(result, 0x60), mload(add(result, 0x40)))
        }
    }

    /// @inheritdoc IPortalTrade
    function previewBuy(
        address,
        /*token*/
        uint256 /*eth*/
    ) external view override returns (uint256 /*amount*/ ) {
        (bool success, bytes memory result) =
            address(this).staticcall(abi.encodeWithSelector(this.inspect.selector, msg.data));
        if (!success) {
            _revert(result);
        }
        assembly ("memory-safe") {
            // result is the return value of the inspect function.
            //
            // The inspect function returns a bytes, which will be encoded as the abi encoding of a bytes:
            // |uin256(0x20)|length of the return_bytes|return_bytes|
            // However, `return_bytes` itself is the abi encoding of the return value of the corresponding view function.
            //
            // The memory layout of the result is as follows:
            // |uint256(result length)|uin256(0x20)|length of the return_bytes|return_bytes|
            //
            // here, we return the "return_bytes".

            return(add(result, 0x60), mload(add(result, 0x40)))
        }
    }

    /// @inheritdoc IPortalTrade
    function previewSell(
        address,
        /*token*/
        uint256 /*amount*/
    ) external view override returns (uint256 /*eth*/ ) {
        (bool success, bytes memory result) =
            address(this).staticcall(abi.encodeWithSelector(this.inspect.selector, msg.data));
        if (!success) {
            _revert(result);
        }
        assembly ("memory-safe") {
            // result is the return value of the inspect function.
            //
            // The inspect function returns a bytes, which will be encoded as the abi encoding of a bytes:
            // |uin256(0x20)|length of the return_bytes|return_bytes|
            // However, `return_bytes` itself is the abi encoding of the return value of the corresponding view function.
            //
            // The memory layout of the result is as follows:
            // |uint256(result length)|uin256(0x20)|length of the return_bytes|return_bytes|
            //
            // here, we return the "return_bytes".

            return(add(result, 0x60), mload(add(result, 0x40)))
        }
    }

    /// @inheritdoc IPortalTrade
    function previewRedeem(
        address,
        /*arg1*/
        address,
        /*arg2*/
        uint256 /*arg3*/
    ) external pure override returns (uint256 /*amount*/ ) {
        revert FeatureDisabled();
    }

    /// @inheritdoc IRoller
    function getLocks(address /*token*/ ) external view override returns (uint256[] memory /*locks*/ ) {
        (bool success, bytes memory result) =
            address(this).staticcall(abi.encodeWithSelector(this.inspect.selector, msg.data));
        if (!success) {
            _revert(result);
        }
        assembly ("memory-safe") {
            // result is the return value of the inspect function.
            //
            // The inspect function returns a bytes, which will be encoded as the abi encoding of a bytes:
            // |uin256(0x20)|length of the return_bytes|return_bytes|
            // However, `return_bytes` itself is the abi encoding of the return value of the corresponding view function.
            //
            // The memory layout of the result is as follows:
            // |uint256(result length)|uin256(0x20)|length of the return_bytes|return_bytes|
            //
            // here, we return the "return_bytes".

            return(add(result, 0x60), mload(add(result, 0x40)))
        }
    }

    /// inspector for delegating the view calls
    /// @dev As we cannot delegatecall the view calls, we need to staticcall this function to forward the delegatecalls.
    /// emm, why not use the fallback function to handle the view calls?
    ///
    /// There are two reasons:
    /// - We want to include the view functions in our ABI, so they will be interactable on etherscan.
    /// - In the future, we may have some special dispatch logic for each function:
    ///    e.g: dispatch to different implementations based on the token's PackedState.
    function inspect(bytes memory data) external returns (bytes memory result) {
        bytes4 selector;
        assembly ("memory-safe") {
            selector := shl(224, shr(224, mload(add(data, 32)))) // Extract and clean the first 4 bytes (function selector)
        }

        address target;
        if (
            selector == this.nonce.selector || selector == this.getTokenV2.selector
                || selector == this.getTokenV3.selector
        ) {
            target = PORTAL_LAUNCHER;
        } else if (selector == this.previewBuy.selector || selector == this.previewSell.selector) {
            target = PORTAL_TRADE;
        } else if (selector == this.getLocks.selector) {
            target = PORTAL_ROLLER;
        } else {
            revert FeatureDisabled();
        }

        (bool success, bytes memory response) = target.delegatecall(data);
        if (!success) {
            _revert(response);
        }
        return response;
    }

    /// @inheritdoc IPortal
    function version() external pure override returns (string memory) {
        return "v3.5.0";

        // v3.5.0 - enable rev share for tokens whose quote is not native token
        // v3.4.0 - support quote to native swap
        // v3.3.0 - support native to quote swap
        // v3.2.2 - change tax token suffix to 7777
        // v3.2.1 -  tax event
        // v3.2.0 -  Add support for Tax token
        // v3.1.0 -  New Packed Token State for new tokens
        // v3.0.0 -  Refactor the code to make Portal a pure dispatcher
        // v2.11.0 - remove unused codes, remove obsolete features
        // v2.10.0 - deprecate all rolls and support rev share for Vanity Tokens
        // v2.9.10 - add r=2 curve
        // v2.9.8 - support v2 only mode for monad testnet
        // v2.9.7 - deprecate the staking feature
        // v2.9.6 - change izumi default fee rate
        // v2.9.5 - support optional creation fee
        // v2.9.4 - support Izumi locker
        // v2.9.3 - support Izumi Swap
        // v2.9.2 - optional feature: save the number of token that each user has created
        // v2.9.1 - split camelot related implementations to a separate module
        // v2.9.0 - support camelot v3
        // v2.8.0 - add forceUniqueMeta
        // v2.7.3 - add checkedIn method
        // v2.7.2 - add new curve (20000) type
        // v2.7.1 - add more threshold types
        // v2.7.0 - support toshi's locker
        // v2.6.0 - supoort goplus locker
        // v2.5.4 - support customized dex threshold type
        // v2.5.3 - deprecate the burner contract
        // v2.5.2 - supports r=0.5 curve
        // v2.5.1 - split the roller into a separate module
        // v2.5.0 - enable staking feature
        // v2.4.0 - support multiple implementations of token
        // v2.3.1 - make default dex Thresh as a constructor parameter
        // v2.3.0 - using curve as an inline lib to save gas
        // v2.2.0 - v3 default fee tier is 2500
        // v2.1.1 - enable rolling
        // v2.1.0 - support multipe curves and dex thresholds
        // v2.0.1 - disable all game features
        // v2.0.0 - game v1 is discontinued
        // v1.0.0 - The Initial version of the Flap Portal Contract (with duel feature)
    }

    function buyOnCreation(
        address,
        /*token*/
        address,
        /*recipient*/
        uint256 /*inputAmount*/
    ) external payable override onlyIfBitFlagsSet(CB_BIT_MASK_GLOBAL_SWITCH) returns (uint256 /*amount*/ ) {
        // this is an internal function, not intended to be called by external contracts
        revert FeatureDisabled();
    }
}
