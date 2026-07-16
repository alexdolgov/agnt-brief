// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import { SafeERC20, Address } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import { ISwapRouter } from "./interfaces/ISwapRouter.sol";
import { IWETH9 } from "./interfaces/IWETH9.sol";
import { IUniswapV3Pool } from "./interfaces/IUniswapV3Pool.sol";

/// @title SwapManager
/// @notice Manages token swaps using Uniswap V3, with support for dynamic router and quoter adjustments.
/// @dev This contract uses ReentrancyGuard for protection against reentrancy attacks on certain functions.
/// @dev This contract is designed to work only with native ETH, users with WETH should unwrap prior to interact with the contract
/// @dev This contract is designed to work with non deflationary tokens and tokens without taxation
contract SwapManager is ReentrancyGuard {
    using SafeERC20 for IERC20;
    using Address for address payable;

    /// @notice Indicates the DEX type, 0 for Uniswap, 1 for PancakeSwap
    uint256 immutable public dexType;
    address public immutable WETH;
    address public owner;
    address public receiver;
    ISwapRouter public immutable _uniswapV3Router;
    address private _pendingOwner;
    uint256 public execFee;

    /// @notice Emitted when a new owner is set.
    /// @param oldOwner The address of the old owner.
    /// @param owner The address of the new owner.
    event NewOwner(address indexed oldOwner, address indexed owner);

    /// @notice Emitted after a successful token swap.
    /// @param from The input token address.
    /// @param to The output token address.
    /// @param amountIn The amount of input tokens swapped.
    /// @param amountOut The amount of output tokens received.
    event SwapSuccess(address indexed from, address indexed to, uint256 amountIn, uint256 amountOut);

    /// @notice Emitted when tokens are recovered from the contract.
    /// @param token The token address recovered
    /// @param amount The amount of tokens
    /// @param to The address to which the tokens were sent.
    event Recovered(address indexed token, uint256 amount, address to);

    /// @notice Emitted when ETH are recovered from the contract.
    /// @param amount The amount of ETH recovered.
    /// @param to The address to which ETH were sent.
    event RecoveredETH(uint256 amount, address indexed to);

    /// @notice Emitted when a new ownership transfer is initiated.
    /// @param previousOwner The address of the current owner.
    /// @param newOwner The address of the new owner pending acceptance.
    event OwnershipTransferStarted(address indexed previousOwner, address indexed newOwner);

    error Unauthorized();
    error ZeroAddressUniswapV3Router();
    error ZeroAddressWETH();
    error ZeroAddressOwner();
    error UnsupportedType();
    error ValueMismatch();

    /// @dev Ensures that a function is called only by the contract owner.
    modifier onlyOwner {
        _onlyOwner();
        _;
    }

    /// @notice Initializes the SwapManager contract with necessary addresses and the DEX type.
    /// @param uniswapV3Router_ The address of the Uniswap V3 router.
    /// @param WETH_ The address of the WETH token.
    /// @param owner_ The address of the contract owner.
    /// @param dexType_ The type of DEX used for swaps, with 0 representing UniSwap and 1 representing PancakeSwap
    constructor(
        address uniswapV3Router_,
        address WETH_,
        address owner_,
        uint256 dexType_,
        address receiver_,
        uint256 execFee_
    )
    {
        if(uniswapV3Router_ == address(0)){
            revert ZeroAddressUniswapV3Router();
        }
        if(WETH_ == address(0)){
            revert ZeroAddressWETH();
        }
        if(owner_ == address(0)){
            revert ZeroAddressOwner();
        }
        if (dexType_ >= 2) {
            revert UnsupportedType();
        }

        _uniswapV3Router = ISwapRouter(uniswapV3Router_);
        WETH = WETH_;
        owner = owner_;
        dexType = dexType_;
        receiver = receiver_;
        execFee = execFee_;
    }

    /// @dev Allows the contract to receive ETH directly.
    receive() external payable {}

    /// @notice Swaps one token for another using the configured DEX.
    /// @dev This function handles the swap logic, including quote fetching and slippage management.
    /// @param tokenIn The address of the input token.
    /// @param tokenOut The address of the output token.
    /// @param amountIn The amount of input tokens to swap.
    /// @param fee The pool fee for the swap.
    /// @param amountOutMinimum The minimum return amount
    /// @return amountOut The amount of output tokens received from the swap.
    function swap(address tokenIn, address tokenOut, uint256 amountIn, uint24 fee, uint256 amountOutMinimum) external payable nonReentrant returns (uint256 amountOut) {
        // if msg.value is not zero check if matching
        if (msg.value != 0) {
            if(msg.value != amountIn){
                revert ValueMismatch();
            }
        }

        // Build the params
        ISwapRouter.ExactInputSingleParams memory swapParams = ISwapRouter.ExactInputSingleParams({
            tokenIn: tokenIn,
            tokenOut: tokenOut,
            fee: fee,
            recipient: address(this),
            deadline: block.timestamp,
            amountIn: amountIn,
            amountOutMinimum: amountOutMinimum,
            sqrtPriceLimitX96: 0
        });

        // Perform the token approval for the swap
        if (tokenIn != WETH) {
            IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
            IERC20(tokenIn).forceApprove(address(_uniswapV3Router), amountIn);
        }

        // The call to `exactInputSingle` executes the swap.
        amountOut = _uniswapV3Router.exactInputSingle{value: msg.value}(swapParams);

        uint256 execAmount = amountOut * execFee / 10000;
        amountOut -= execAmount;

        if (tokenOut == WETH) {
            IWETH9(WETH).withdraw(amountOut);
            payable(msg.sender).sendValue(amountOut);

            if (execAmount > 0) {
                IERC20(tokenOut).safeTransfer(receiver, execAmount);
            }
        } else {
            IERC20(tokenOut).safeTransfer(msg.sender, amountOut);

            if (execAmount > 0) {
                IERC20(tokenOut).safeTransfer(receiver, execAmount);
            }

        }

        emit SwapSuccess(tokenIn, tokenOut, amountIn, amountOut);
    }

    /// @notice Allows the owner to recover ERC20 tokens from the contract.
    /// @dev This function can be used to recover any ERC20 tokens sent to the contract by mistake.
    /// @param token The address of the ERC20 token to recover.
    /// @param amount The amount of the token to recover.
    /// @param to The address to send the recovered tokens to.
    function recoverERC20(address token, uint256 amount, address to) external onlyOwner nonReentrant {
        IERC20(token).safeTransfer(to, amount);
        emit Recovered(token, amount, to);
    }

    /// @notice Allows the owner to recover ETH from the contract.
    /// @dev This function can be used to recover ETH sent to the contract by mistake.
    /// @param amount The amount of ETH to recover.
    /// @param to The address to send the recovered ETH to.
    function recoverETH(uint256 amount, address to) external onlyOwner nonReentrant {
        payable(to).sendValue(amount);
        emit RecoveredETH(amount, to);
    }

    /// @notice Initiates the ownership transfer process to a new owner.
    /// @dev Sets a new pending owner, requiring them to call `acceptOwner` to finalize the transfer.
    /// @param newOwner The address of the new owner.
    function changeOwner(address newOwner) external onlyOwner {
        if(newOwner == address(0)){
            revert ZeroAddressOwner();
        }

        _pendingOwner = newOwner;
        emit OwnershipTransferStarted(owner, newOwner);
    }

    function changeReceiver(address newReceiver) external onlyOwner {
        if (newReceiver == address(0)) {
            revert ZeroAddressOwner();
        }

        receiver = newReceiver;
    }

    function changeExecFee(uint256 newFee) external onlyOwner {
        require(newFee <= 10000, "fee too high");

        execFee = newFee;
    }

    /// @notice Finalizes the ownership transfer process, accepting the role of owner.
    /// @dev Can only be called by the pending owner.
    function acceptOwner() external {
        if(_pendingOwner != msg.sender){
            revert Unauthorized();
        }
        address oldOwner = owner;
        owner = _pendingOwner;
        delete _pendingOwner;
        emit NewOwner(oldOwner, owner);
    }

    /// @dev Verifies that the caller is the owner of the contract.
    function _onlyOwner() private view {
        if(msg.sender != owner){
            revert Unauthorized();
        }
    }
}
