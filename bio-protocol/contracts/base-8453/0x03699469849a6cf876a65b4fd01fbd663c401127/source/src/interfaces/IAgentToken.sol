// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IERC20Metadata} from "oz/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IERC20} from "oz/contracts/token/ERC20/IERC20.sol";
import {IERC20Config} from "./IERC20Config.sol";

interface IAgentToken is IERC20, IERC20Config, IERC20Metadata {
    error MintZeroAmount();
    error TransferFailed();
    error InvalidAddress();
    error MintToZeroAddress();
    error BurnExceedsBalance();
    error TransferToZeroAddress();
    error InsufficientAllowance();
    error BurnFromTheZeroAddress();
    error NoTokenForLiquidityPair();
    error TransferFromZeroAddress();
    error ApproveToTheZeroAddress();
    error CannotWithdrawThisToken();
    error ApproveFromTheZeroAddress();
    error CallerIsNotAdminNorFactory();
    error InitialLiquidityNotYetAdded();
    error AllowanceDecreasedBelowZero();
    error InitialLiquidityAlreadyAdded();
    error TransferAmountExceedsBalance();

    event LiquidityPoolCreated(address addedPool);
    event InitialLiquidityAdded(uint256 tokenA, uint256 tokenB, uint256 lpToken);

    /**
     * @dev function {addInitialLiquidity}
     *
     * Add initial liquidity to the uniswap pair
     *
     * @param lpOwner The recipient of LP tokens
     */
    function addInitialLiquidity(address lpOwner, int24 tickSpacing, uint160 initialSqrtPriceX96, uint32 lockDuration)
        external;

    /**
     * @dev function {withdrawETH} onlyOwner
     *
     * A withdraw function to allow ETH to be withdrawn by the manager
     *
     * This contract should never hold ETH. The only envisaged scenario where
     * it might hold ETH is a failed autoswap where the uniswap swap has completed,
     * the recipient of ETH reverts, the contract then wraps to WETH and the
     * wrap to WETH fails.
     *
     * This feels unlikely. But, for safety, we include this method.
     *
     * @param amount_ The amount to withdraw
     */
    function withdrawETH(uint256 amount_) external;

    /**
     * @dev function {withdrawERC20} onlyOwner
     *
     * A withdraw function to allow ERC20s (except address(this)) to be withdrawn.
     *
     * @param token_ The ERC20 contract
     * @param amount_ The amount to withdraw
     */
    function withdrawERC20(address token_, uint256 amount_) external;

    /**
     * @dev Destroys a `value` amount of tokens from the caller.
     *
     * See {ERC20-_burn}.
     */
    function burn(uint256 value) external;

    /**
     * @dev Destroys a `value` amount of tokens from `account`, deducting from
     * the caller's allowance.
     *
     * See {ERC20-_burn} and {ERC20-allowance}.
     *
     * Requirements:
     *
     * - the caller must have allowance for ``accounts``'s tokens of at least
     * `value`.
     */
    function burnFrom(address account, uint256 value) external;

    /**
     * @dev {initializer}
     *
     * @param integrationAddresses_ The project owner, uniswap router, LP currency
     * @param baseParams_ configuration of this ERC20.
     * @param mintData_ tokens to be minted.
     */
    function initialize(address[3] memory integrationAddresses_, bytes memory baseParams_, bytes memory mintData_)
        external;

    function mint(address account, uint256 amount) external;
    function pool() external view returns (address);
}
