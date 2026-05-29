// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;
pragma abicoder v2;

import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/token/ERC20/SafeERC20.sol";

import {UpgradeableKeepable} from "src/governance/UpgradeableKeepable.sol";
import {ITokenSwapper} from "src/interfaces/swap/ITokenSwapper.sol";

contract IncentiveReceiver is UpgradeableKeepable {
    using SafeERC20 for IERC20;

    // Swap Input
    struct Swap {
        address tokenIn;
        uint256 amountIn;
        address tokenOut;
        uint256 minAmountOut;
        bytes externalData;
    }

    ITokenSwapper public swapper;

    // Registry of to tokens allowed
    mapping(address => bool) public swapTo;

    function initialize(address _swapper, address[] memory _toTokens) external initializer {
        __Governable_init(msg.sender);

        swapper = ITokenSwapper(_swapper);

        uint256 length = _toTokens.length;

        if (length > 0) {
            for (uint256 i; i < length; ++i) {
                swapTo[_toTokens[i]] = true;
            }
        }
    }

    receive() external payable {}

    /// GOVERNOR

    function updateSwapper(address newSwapper) external onlyGovernor {
        address oldSwapper = address(swapper);
        swapper = ITokenSwapper(newSwapper);

        emit UpdateSwapper(oldSwapper, newSwapper);
    }

    function toggleTokenTo(address token) external onlyGovernor {
        swapTo[token] = !swapTo[token];
        emit UpdateTokenTo(token, swapTo[token]);
    }

    function setTokensTo(address[] memory tokens, bool[] memory states) external onlyGovernor {
        uint256 length = tokens.length;

        require(length == states.length, "LENGTH_MISS_MATCH");

        for (uint256 i; i < length; ++i) {
            swapTo[tokens[i]] = states[i];
            emit UpdateTokenTo(tokens[i], states[i]);
        }
    }

    /**
     * @notice Moves assets from the strategy to `_to`
     * @param _assets An array of IERC20 compatible tokens to move out from the strategy
     * @param _withdrawNative `true` if we want to move the native asset from the strategy
     */
    function withdraw(address _to, address[] memory _assets, bool _withdrawNative) external onlyGovernor {
        require(_to != address(0), "ZERO_TO_ADDRESS");

        address thisAddress = address(this);

        for (uint256 i; i < _assets.length; ++i) {
            IERC20 asset = IERC20(_assets[i]);
            uint256 assetBalance = asset.balanceOf(thisAddress);

            // No need to transfer
            if (assetBalance == 0) {
                continue;
            }

            // Transfer the ERC20 tokens
            asset.safeTransfer(_to, assetBalance);
        }

        uint256 nativeBalance = thisAddress.balance;

        // Nothing else to do
        if (_withdrawNative && nativeBalance > 0) {
            // Transfer the native currency
            payable(_to).transfer(nativeBalance);
        }

        emit Withdrawal(msg.sender, _to, _assets, _withdrawNative);
    }

    /// KEEPER

    function swap(Swap memory _swap) external onlyGovernorOrKeeper {
        require(swapTo[_swap.tokenOut], "TO_TOKEN_NOT_ALLOWED");
        address _swapper = address(swapper);
        IERC20(_swap.tokenIn).safeIncreaseAllowance(_swapper, _swap.amountIn);
        swapper.swap(_swap.tokenIn, _swap.amountIn, _swap.tokenOut, _swap.minAmountOut, _swap.externalData);

        uint256 allowance = IERC20(_swap.tokenIn).allowance(address(this), _swapper);

        if (allowance > 0) {
            IERC20(_swap.tokenIn).safeDecreaseAllowance(_swapper, allowance);
        }
    }

    event UpdateTokenTo(address indexed token, bool state);
    event UpdateSwapper(address indexed oldAddress, address indexed newAddress);

    event Withdrawal(address owner, address receiver, address[] assets, bool includeNative);
}
