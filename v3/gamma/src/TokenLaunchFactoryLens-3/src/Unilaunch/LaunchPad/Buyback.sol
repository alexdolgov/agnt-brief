// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {AccessControl} from "@openzeppelin/contracts/access/AccessControl.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {BalanceDelta} from "v4-core/types/BalanceDelta.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

interface ISwapRouter {
    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        bool zeroForOne,
        PoolKey calldata poolKey,
        bytes calldata hookData,
        address receiver,
        uint256 deadline
    ) external payable returns (BalanceDelta balanceDelta);
}

/// @title Buyback
/// @notice Executes ETH buybacks and burns tokens
contract Buyback is AccessControl {
    using SafeERC20 for IERC20;

    bytes32 public constant BUYBACK_EXECUTOR_ROLE = keccak256("BUYBACK_EXECUTOR_ROLE");

    IERC20 public immutable token;
    address public strategy;
    bool public strategySet;
    address public immutable strategySetter;
    address public constant BURN_ADDRESS = 0x000000000000000000000000000000000000dEaD;
    address public router;

    PoolKey public poolKey;
    bool public poolKeySet;

    uint256 public totalETHUsed;
    uint256 public totalTokenBurned;

    event PoolKeySet();
    event RouterUpdated(address indexed newRouter);
    event BuybackExecuted(uint256 ethUsed, uint256 tokensBurned, uint256 totalETHUsed, uint256 totalTokenBurned);

    error InvalidAddress();
    error PoolKeyAlreadySet();
    error PoolKeyNotSet();
    error InvalidPercentage();
    error InsufficientBalance();
    error SwapFailed();

    constructor(address admin, address _token, address _router, address _strategySetter) {
        if (admin == address(0) || _token == address(0) || _router == address(0)) {
            revert InvalidAddress();
        }
        token = IERC20(_token);
        router = _router;
        strategySetter = _strategySetter;
        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(BUYBACK_EXECUTOR_ROLE, admin);
    }

    function setStrategy(address newStrategy) external {
        if (msg.sender != strategySetter) revert InvalidAddress();
        if (newStrategy == address(0)) revert InvalidAddress();
        if (strategySet) revert InvalidAddress();
        strategy = newStrategy;
        strategySet = true;
    }

    function setPoolKey(PoolKey calldata key) external {
        if (msg.sender != strategy) revert InvalidAddress();
        if (poolKeySet) revert PoolKeyAlreadySet();
        poolKey = key;
        poolKeySet = true;
        emit PoolKeySet();
    }

    function setRouter(address newRouter) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newRouter == address(0)) revert InvalidAddress();
        router = newRouter;
        emit RouterUpdated(newRouter);
    }

    function executeBuyback(uint24 percentageToUse, uint256 amountOutMin) external onlyRole(BUYBACK_EXECUTOR_ROLE) {
        if (!poolKeySet) revert PoolKeyNotSet();
        if (percentageToUse == 0 || percentageToUse > 10000) revert InvalidPercentage();

        uint256 contractBalance = address(this).balance;
        if (contractBalance == 0) revert InsufficientBalance();

        uint256 ethToUse = (contractBalance * percentageToUse) / 10000;
        if (ethToUse == 0) revert InsufficientBalance();

        try ISwapRouter(router).swapExactTokensForTokens{value: ethToUse}(
            ethToUse,
            amountOutMin,
            true,
            poolKey,
            "",
            address(this),
            block.timestamp + 1000
        ) {
            uint256 tokenBalance = token.balanceOf(address(this));
            if (tokenBalance == 0) revert SwapFailed();
            token.safeTransfer(BURN_ADDRESS, tokenBalance);
            totalETHUsed += ethToUse;
            totalTokenBurned += tokenBalance;
            emit BuybackExecuted(ethToUse, tokenBalance, totalETHUsed, totalTokenBurned);
        } catch {
            revert SwapFailed();
        }
    }

    receive() external payable {}
}
