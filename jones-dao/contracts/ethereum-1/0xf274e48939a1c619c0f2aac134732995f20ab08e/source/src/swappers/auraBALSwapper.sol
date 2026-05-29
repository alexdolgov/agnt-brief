// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2023 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.8.10;

import "openzeppelin/contracts-upgradeable/interfaces/IERC20Upgradeable.sol";
import "openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";

import "src/interfaces/ITokenSwapper.sol";
import "src/interfaces/IBalancerVault.sol";
import "src/errors/Errors.sol";

contract auraBALSwapper is ITokenSwapper {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    IERC20Upgradeable public constant AURA = IERC20Upgradeable(0xC0c293ce456fF0ED870ADd98a0828Dd4d2903DBF);
    IBalancerVault public constant BALANCER_VAULT = IBalancerVault(0xBA12222222228d8Ba445958a75a0704d566BF2C8);
    IERC20Upgradeable public constant BAL = IERC20Upgradeable(0xba100000625a3754423978a60c9317c58a424e3D);
    IERC20Upgradeable public constant WETH = IERC20Upgradeable(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);
    IERC20Upgradeable public constant AURABAL = IERC20Upgradeable(0x616e8BfA43F920657B3497DBf40D6b1A02D4608d);
    IERC20Upgradeable public constant BALETH_BPT = IERC20Upgradeable(0x5c6Ee304399DBdB9C8Ef030aB642B10820DB8F56);

    bytes32 public constant AURABAL_BALETH_BPT_POOL_ID =
        0x3dd0843a028c86e0b760b1a76929d1c5ef93a2dd000200000000000000000249;
    bytes32 public constant BAL_ETH_POOL_ID = 0x5c6ee304399dbdb9c8ef030ab642b10820db8f56000200000000000000000014;
    bytes32 public constant AURA_ETH_POOL_ID = 0xc29562b045d80fd77c69bec09541f5c16fe20d9d000200000000000000000251;

    uint256 private constant BPT_WETH_INDEX = 1;

    constructor() {
        AURABAL.safeApprove(address(BALANCER_VAULT), type(uint256).max);
        WETH.safeApprove(address(BALANCER_VAULT), type(uint256).max);
    }

    /*
    * @notice Performs a series of token swaps to exchange `tokenIn` for `tokenOut`, with a minimum output amount of `minAmountOut`. 
    * The function first transfers `amountIn` of `tokenIn` to the contract's own address, then performs a swap of `tokenIn` for BAL/ETH BPT. 
    * The function then withdraws the BAL/ETH BPT token as WETH. Finally, the function exchanges the WETH for `tokenOut`.
    * @param tokenIn The address of the token to be swapped. Must be the address of an `AURABAL` contract.
    * @param amountIn The amount of `tokenIn` to be swapped.
    * @param tokenOut The address of the desired output token. Must be the address of an `AURA` contract.
    * @param minAmountOut The minimum amount of `tokenOut` that must be received in the swap.
    * @return The actual amount of `tokenOut` received in the swap.
    */
    function swap(address tokenIn, uint256 amountIn, address tokenOut, uint256 minAmountOut, bytes memory)
        external
        override
        returns (uint256 amountOut)
    {
        if (tokenIn != address(AURABAL)) revert Errors.InvalidTokenIn(tokenIn, address(AURABAL));
        if (tokenOut != address(AURA)) revert Errors.InvalidTokenOut(tokenOut, address(AURA));

        AURABAL.safeTransferFrom(msg.sender, address(this), amountIn);

        // Common structs for swaps
        IBalancerVault.SingleSwap memory singleSwap;
        IBalancerVault.FundManagement memory fundManagement = IBalancerVault.FundManagement({
            sender: address(this),
            fromInternalBalance: false,
            recipient: payable(address(this)),
            toInternalBalance: false
        });

        // Swap auraBal -> BAL/ETH BPT
        singleSwap = IBalancerVault.SingleSwap({
            poolId: AURABAL_BALETH_BPT_POOL_ID,
            kind: IBalancerVault.SwapKind.GIVEN_IN,
            assetIn: IAsset(address(AURABAL)),
            assetOut: IAsset(address(BALETH_BPT)),
            amount: amountIn,
            userData: new bytes(0)
        });
        uint256 balEthBptEarned = BALANCER_VAULT.swap(singleSwap, fundManagement, 0, type(uint256).max);

        // Withdraw BAL/ETH BPT -> WETH
        uint256 wethBalanceBefore = WETH.balanceOf(address(this));

        IAsset[] memory assets = new IAsset[](2);
        assets[0] = IAsset(address(BAL));
        assets[1] = IAsset(address(WETH));
        IBalancerVault.ExitPoolRequest memory exitPoolRequest = IBalancerVault.ExitPoolRequest({
            assets: assets,
            minAmountsOut: new uint256[](2),
            userData: abi.encode(IBalancerVault.ExitKind.EXACT_BPT_IN_FOR_ONE_TOKEN_OUT, balEthBptEarned, BPT_WETH_INDEX),
            toInternalBalance: false
        });
        BALANCER_VAULT.exitPool(BAL_ETH_POOL_ID, address(this), payable(address(this)), exitPoolRequest);

        // Swap WETH -> AURA
        uint256 wethEarned = WETH.balanceOf(address(this)) + wethBalanceBefore;
        singleSwap = IBalancerVault.SingleSwap({
            poolId: AURA_ETH_POOL_ID,
            kind: IBalancerVault.SwapKind.GIVEN_IN,
            assetIn: IAsset(address(WETH)),
            assetOut: IAsset(address(AURA)),
            amount: wethEarned,
            userData: new bytes(0)
        });
        amountOut = BALANCER_VAULT.swap(singleSwap, fundManagement, 0, type(uint256).max);

        if (amountOut < minAmountOut) revert Errors.Slippage(amountOut, minAmountOut);

        AURA.safeTransfer(msg.sender, amountOut);
    }
}
