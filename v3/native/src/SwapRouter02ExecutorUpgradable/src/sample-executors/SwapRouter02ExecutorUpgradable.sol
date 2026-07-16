// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {SafeERC20, IERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {WETH} from "solmate/src/tokens/WETH.sol";
import {IReactorCallback} from "../interfaces/IReactorCallback.sol";
import {IReactor} from "../interfaces/IReactor.sol";
import {CurrencyLibrary} from "../lib/CurrencyLibrary.sol";
import {ResolvedOrder, OutputToken, SignedOrder} from "../base/ReactorStructs.sol";
import {ISwapRouter02} from "../external/ISwapRouter02.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

/// @notice A fill contract that uses SwapRouter02 to execute trades
contract SwapRouter02ExecutorUpgradable is UUPSUpgradeable, IReactorCallback, OwnableUpgradeable {
    using SafeERC20 for IERC20;
    using CurrencyLibrary for address;

    /// @notice thrown if reactorCallback is called with a non-whitelisted filler
    error CallerNotWhitelisted();
    /// @notice thrown if reactorCallback is called by an address other than the reactor
    error MsgSenderNotReactor();

    ISwapRouter02 public swapRouter02;
    address public whitelistedCaller;
    IReactor public reactor;
    WETH public weth;
    address public withdrawer;

    modifier onlyWithdrawer() {
        if (msg.sender != withdrawer) {
            revert CallerNotWhitelisted();
            _;
        }
    }

    modifier onlyWhitelistedCaller() {
        if (msg.sender != whitelistedCaller) {
            revert CallerNotWhitelisted();
        }
        _;
    }

    modifier onlyReactor() {
        if (msg.sender != address(reactor)) {
            revert MsgSenderNotReactor();
        }
        _;
    }

    struct TokenAmount {
        address token;
        uint256 amount;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @inheritdoc UUPSUpgradeable
    function _authorizeUpgrade(address newImplementation) internal view override onlyOwner {}

    function initialize(address whitelistedCaller_, address _reactor, address _swapRouter02) public initializer {
        __UUPSUpgradeable_init();
        __Ownable_init(msg.sender);

        whitelistedCaller = whitelistedCaller_;
        reactor = IReactor(_reactor);
        swapRouter02 = ISwapRouter02(_swapRouter02);
        weth = WETH(payable(ISwapRouter02(_swapRouter02).WETH9()));
    }

    /// @notice assume that we already have all output tokens
    function execute(SignedOrder calldata order, bytes calldata callbackData) external onlyWhitelistedCaller {
        reactor.executeWithCallback(order, callbackData);
    }

    /// @notice assume that we already have all output tokens
    function executeBatch(SignedOrder[] calldata orders, bytes calldata callbackData) external onlyWhitelistedCaller {
        reactor.executeBatchWithCallback(orders, callbackData);
    }

    /// @notice fill UniswapX orders using SwapRouter02
    /// @param callbackData It has the below encoded:
    /// address[] memory tokensToApproveForSwapRouter02: Max approve these tokens to swapRouter02
    /// address[] memory tokensToApproveForReactor: Max approve these tokens to reactor
    /// bytes[] memory multicallData: Pass into swapRouter02.multicall()
    function reactorCallback(ResolvedOrder[] calldata, bytes calldata callbackData) external onlyReactor {
        (
            address[] memory tokensToApproveForSwapRouter02,
            address[] memory tokensToApproveForReactor,
            bytes[] memory multicallData
        ) = abi.decode(callbackData, (address[], address[], bytes[]));

        unchecked {
            for (uint256 i = 0; i < tokensToApproveForSwapRouter02.length; i++) {
                IERC20(tokensToApproveForSwapRouter02[i]).forceApprove(address(swapRouter02), type(uint256).max);
            }

            for (uint256 i = 0; i < tokensToApproveForReactor.length; i++) {
                IERC20(tokensToApproveForReactor[i]).forceApprove(address(reactor), type(uint256).max);
            }
        }

        swapRouter02.multicall(type(uint256).max, multicallData);

        // transfer any native balance to the reactor
        // it will refund any excess
        if (address(this).balance > 0) {
            CurrencyLibrary.transferNative(address(reactor), address(this).balance);
        }
    }

    /// @notice This function can be used to convert ERC20s to ETH that remains in this contract
    /// @param tokensToApprove Max approve these tokens to swapRouter02
    /// @param multicallData Pass into swapRouter02.multicall()
    function multicall(IERC20[] calldata tokensToApprove, bytes[] calldata multicallData) external onlyOwner {
        for (uint256 i = 0; i < tokensToApprove.length; i++) {
            tokensToApprove[i].forceApprove(address(swapRouter02), type(uint256).max);
        }
        swapRouter02.multicall(type(uint256).max, multicallData);
    }

    /// @notice Unwraps the contract's WETH9 balance and sends it to the recipient as ETH. Can only be called by owner.
    /// @param recipient The address receiving ETH
    function unwrapWETH(address recipient) external onlyWithdrawer {
        uint256 balanceWETH = weth.balanceOf(address(this));

        weth.withdraw(balanceWETH);
        _transferETHAndWrapIfFailWithGasLimit(address(weth), recipient, address(this).balance, 2300);
    }

    /// @notice Transfer all ETH in this contract to the recipient. Can only be called by owner.
    /// @param recipient The recipient of the ETH
    function withdrawETH(address recipient) external onlyWithdrawer {
        _transferETHAndWrapIfFailWithGasLimit(address(weth), recipient, address(this).balance, 2300);
    }

    function withdrawTokens(TokenAmount[] calldata tokenAmount,address recipient) external onlyWithdrawer {
        uint256 length = tokenAmount.length;
        for (uint256 i; i < length;) {
            IERC20(tokenAmount[i].token).safeTransfer(recipient, tokenAmount[i].amount);
            unchecked {
                ++i;
            }
        }
    }

    function setWhitelistedCaller(address newCaller) external onlyOwner {
        whitelistedCaller = newCaller;
    }

    function setWithdrawer(address newWithdrawer) external onlyOwner {
        withdrawer = withdrawer;
    }

    /**
     * @notice It transfers ETH to a recipient with a specified gas limit.
     *         If the original transfers fails, it wraps to WETH and transfers the WETH to recipient.
     * @param _WETH WETH address
     * @param _to Recipient address
     * @param _amount Amount to transfer
     * @param _gasLimit Gas limit to perform the ETH transfer
     */
    function _transferETHAndWrapIfFailWithGasLimit(address _WETH, address _to, uint256 _amount, uint256 _gasLimit)
        internal
    {
        bool status;

        assembly {
            status := call(_gasLimit, _to, _amount, 0, 0, 0, 0)
        }

        if (!status) {
            weth.deposit{value: _amount}();
            weth.transfer(_to, _amount);
        }
    }

    /// @notice Necessary for this contract to receive ETH when calling unwrapWETH()
    receive() external payable {}
}
