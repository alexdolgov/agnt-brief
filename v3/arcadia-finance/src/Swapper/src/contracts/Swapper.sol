// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {ISwapper} from "interfaces/ISwapper.sol";
import {IRelay} from "interfaces/IRelay.sol";
import {IRelayFactory} from "interfaces/IRelayFactory.sol";
import {IAutoCompounder} from "interfaces/IAutoCompounder.sol";
import {IAutoConverter} from "interfaces/IAutoConverter.sol";
import {IUniversalRouter} from "interfaces/external/IUniversalRouter.sol";

/// @title Swapper
/// @notice Handles token swapping operations for relay contracts through registered routers
/// @dev Provides atomic sweep, swap, and return operations for AutoCompounder and AutoConverter relays.
///      Manages router registration and tracks token earnings for AutoConverters.
///      The Swapper can perform swaps on behalf of relay contracts through registered keepers and by
///      using set UniversalRouters.
contract Swapper is Ownable, ReentrancyGuard, ISwapper {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    uint256 private constant WEEK = 7 days;

    /// @dev Set of router addresses authorized for relay swaps
    EnumerableSet.AddressSet private _routers;

    /// @inheritdoc ISwapper
    IRelayFactory public immutable autoConverterFactory;

    /// @inheritdoc ISwapper
    IRelayFactory public immutable autoCompounderFactory;

    /// @inheritdoc ISwapper
    mapping(address _autoConverter => mapping(uint256 _epoch => uint256 _amount)) public amountTokenEarned;

    constructor(address _initialOwner, address _autoCompounderFactory, address _autoConverterFactory) {
        if (_initialOwner == address(0)) revert Swapper_InitialOwnerZeroAddress();
        if (_autoCompounderFactory == address(0)) revert Swapper_FactoryZeroAddress();
        if (_autoConverterFactory == address(0)) revert Swapper_FactoryZeroAddress();

        _transferOwnership(_initialOwner);
        autoCompounderFactory = IRelayFactory(_autoCompounderFactory);
        autoConverterFactory = IRelayFactory(_autoConverterFactory);
    }

    /// @inheritdoc ISwapper
    function swapToTargetToken(
        address _relay,
        bool _isAutoCompounder,
        address _router,
        address _inputToken,
        uint256 _minAmountOut,
        bytes calldata _commands,
        bytes[] calldata _inputs
    ) external nonReentrant {
        if (_minAmountOut == 0) revert Swapper_MinAmountOutZero();
        if (!isRouter(_router)) revert Swapper_RouterUnauthorized();
        IRelayFactory relayFactory = _isAutoCompounder ? autoCompounderFactory : autoConverterFactory;
        if (!relayFactory.isRelay(_relay)) revert Swapper_RelayNotApproved();
        if (!relayFactory.isKeeper(msg.sender)) revert Swapper_NotKeeper();
        address _targetToken = IRelay(_relay).token();
        if (_inputToken == _targetToken) revert Swapper_InputTokenIsTargetToken();
        uint256 _epochStart = block.timestamp - (block.timestamp % WEEK);
        
        // Prevents execution if called within the first hour of the epoch.
        if (block.timestamp < _epochStart + 1 hours) revert Swapper_TooSoon();


        _sweep(_relay, _isAutoCompounder, _inputToken);

        uint256 _amountOut = _swap({
            _relay: _relay,
            _router: _router,
            _inputToken: _inputToken,
            _targetToken: _targetToken,
            _minAmountOut: _minAmountOut,
            _commands: _commands,
            _inputs: _inputs
        });

        _redeposit(_relay, _inputToken);

        if (!_isAutoCompounder) {
            amountTokenEarned[_relay][_epochStart] += _amountOut;
        }

        emit SwapToTargetToken(_relay, _router, _inputToken, _amountOut, _commands, _inputs);
    }

    /// @dev Sweeps the full input token balance from the relay
    /// @param _relay The address of the relay contract (AutoCompounder or AutoConverter)
    /// @param _isAutoCompounder True for AutoCompounder, false for AutoConverter
    /// @param _inputToken The address of the input token to sweep
    function _sweep(address _relay, bool _isAutoCompounder, address _inputToken) internal {
        if (_isAutoCompounder) {
            address[] memory _tokens = new address[](1);
            _tokens[0] = _inputToken;
            address[] memory _recipients = new address[](1);
            _recipients[0] = address(this);

            IAutoCompounder(_relay).sweep(_tokens, _recipients);
        } else {
            uint256 _amountToSweep = IERC20(_inputToken).balanceOf(_relay);
            IAutoConverter(_relay).sweep(_inputToken, address(this), _amountToSweep);
        }
    }

    /// @dev Swaps the input token for the output token
    /// @param _relay The address of the relay contract
    /// @param _router The address of the UniversalRouter to use for the swap
    /// @param _inputToken The address of the input token to swap
    /// @param _targetToken The address of the target output token
    /// @param _minAmountOut The minimum amount of output tokens expected from the swap
    /// @param _commands The commands executed by the router
    /// @param _inputs The set of inputs for each command
    /// @return _amountOut The amount of output tokens received from the swap
    function _swap(
        address _relay,
        address _router,
        address _inputToken,
        address _targetToken,
        uint256 _minAmountOut,
        bytes calldata _commands,
        bytes[] calldata _inputs
    ) internal returns (uint256 _amountOut) {
        uint256 _balanceBefore = IERC20(_targetToken).balanceOf(_relay);

        // Swap
        uint256 _amountToApprove = IERC20(_inputToken).balanceOf(address(this));
        IERC20(_inputToken).forceApprove({spender: _router, value: _amountToApprove});
        IUniversalRouter(_router).execute(_commands, _inputs);
        IERC20(_inputToken).forceApprove({spender: _router, value: 0});

        // Check sufficient amount out
        uint256 _balanceAfter = IERC20(_targetToken).balanceOf(_relay);
        _amountOut = _balanceAfter - _balanceBefore;
        if (_amountOut < _minAmountOut) revert Swapper_InsufficientAmountOut();
    }

    /// @dev Redeposits the remaining input tokens into the relay
    /// @param _relay The address of the relay contract (AutoCompounder or AutoConverter)
    /// @param _inputToken The address of the input token to redeposit
    function _redeposit(address _relay, address _inputToken) internal {
        uint256 _remainingInputBalance = IERC20(_inputToken).balanceOf(address(this));
        if (_remainingInputBalance > 0) IERC20(_inputToken).safeTransfer(_relay, _remainingInputBalance);
    }

    /// @inheritdoc ISwapper
    function isRouter(address _router) public view returns (bool) {
        return _routers.contains(_router);
    }

    /// @inheritdoc ISwapper
    function routers() external view returns (address[] memory) {
        return _routers.values();
    }

    // -------------------------------------------------
    // Owner functions
    // -------------------------------------------------

    /// @inheritdoc ISwapper
    function registerRouter(address _router) external onlyOwner nonReentrant {
        if (_router == address(0)) revert Swapper_RouterZeroAddress();
        if (!_routers.add(_router)) revert Swapper_RouterAlreadyRegistered();

        emit RouterRegistered(_router);
    }

    /// @inheritdoc ISwapper
    function deregisterRouter(address _router) external onlyOwner nonReentrant {
        if (!_routers.remove(_router)) revert Swapper_RouterNotRegistered();

        emit RouterDeregistered(_router);
    }
}
