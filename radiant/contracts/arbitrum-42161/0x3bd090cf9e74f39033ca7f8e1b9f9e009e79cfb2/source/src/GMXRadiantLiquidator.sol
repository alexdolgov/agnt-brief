// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IGMXExchangeRouter } from "./interfaces/IGMXExchangeRouter.sol";
import { ILendingPool } from "../lib/v2-core/contracts/main/interfaces/ILendingPool.sol";
import { ISwapRouter } from "./interfaces/ISwapRouter.sol";
import { IDataStore } from "./interfaces/IDataStore.sol";
import { IWETH } from "./interfaces/IWETH.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Keys } from "./dependencies/Keys.sol";

/// @title GMX Radiant Liquidator contract. Please note, this liquidator for GMX is a subject to change
/// once GMX implements atomic rememption of GMX tokens
/// @notice This contract is used to liquidate positions in GMX Radiant core markets
contract GMXRadiantLiquidator is OwnableUpgradeable {
    using SafeERC20 for IERC20;

    IGMXExchangeRouter public constant GMX_EXCHANGE_ROUTER =
        IGMXExchangeRouter(0x7C68C7866A64FA2160F78EEaE12217FFbf871fa8);

    address public constant GMX_WITHDRAWAL_VAULT = 0x0628D46b5D145f183AdB6Ef1f2c97eD1C4701C55;
    IWETH public constant WETH = IWETH(0x82aF49447D8a07e3bd95BD0d56f35241523fBab1);
    ISwapRouter public constant UNISWAP_V3_ROUTER = ISwapRouter(0xE592427A0AEce92De3Edee1F18E0157C05861564);
    IDataStore public constant DATA_STORE = IDataStore(0xFD70de6b91282D8017aA4E741e9Ae325CAb992d8);

    // Uniswap pool fee
    uint24 public constant POOL_FEE = 500;

    event Liquidation(address indexed positionOwner, address collateral, address borrowedAsset, uint256 amount);
    event GMXRedeemed(address indexed gmxToken, uint256 amount);
    event TokenSale(address indexed token, uint256 amount);

    constructor() { }

    /// @notice Initialize the contract
    /// @param permissionedLiquidator Address of the permissioned liquidator who will be calling the liquidation
    /// function
    function initialize(address permissionedLiquidator) external initializer {
        __Ownable_init();
        transferOwnership(permissionedLiquidator);
    }

    /// @notice Step 1 of the liquidation process: liquidate the position and queue the redemption of GMX tokens
    /// @param positionOwner Address of the position owner
    /// @param collateral Address of the collateral
    /// @param borrowedAsset Address of the borrowed asset
    /// @param amount Amount of the borrowed asset to liquidate
    /// @param lendingPool Address of the lending pool
    function liquidatePosition(
        address positionOwner,
        address collateral,
        address borrowedAsset,
        uint256 amount,
        address lendingPool
    ) external payable onlyOwner {
        // First, we need to transfer the borrowed asset to the liquidator so it can repay the loan
        IERC20(borrowedAsset).safeTransferFrom(owner(), address(this), amount);
        _liquidateLoan(collateral, borrowedAsset, positionOwner, amount, lendingPool);
        // Now, as collateral was seized, we have to redeem gmx tokens to underlying assets
        _redeemGMXTokens(collateral, IERC20(collateral).balanceOf(address(this)));
        emit Liquidation(positionOwner, collateral, borrowedAsset, amount);
    }

    /// @notice Step 2 of the liquidation process: once GMX tokens are redeemed and underlying assets are received
    /// we can sell them for ETH on Uniswap v3
    /// @param _token Address of the token to sell
    /// @param _amount Amount of the token to sell
    function sellTokensForEth(address _token, uint256 _amount) external onlyOwner {
        // Use uniswap v3 to sell tokens for eth
        uint256 _ethBalanceBefore = address(this).balance;
        IERC20(_token).forceApprove(address(UNISWAP_V3_ROUTER), _amount);
        // Sell for WETH and unwrap later on
        UNISWAP_V3_ROUTER.exactInputSingle(
            ISwapRouter.ExactInputSingleParams({
                tokenIn: _token,
                tokenOut: address(WETH),
                fee: POOL_FEE,
                recipient: address(this),
                deadline: block.timestamp,
                amountIn: _amount,
                amountOutMinimum: 0,
                sqrtPriceLimitX96: 0
            })
        );

        // Now, unwrap WETH to ETH
        WETH.approve(address(this), WETH.balanceOf(address(this)));
        WETH.withdraw(WETH.balanceOf(address(this)));
        // Send eth made from the sale to the owner
        payable(owner()).transfer(address(this).balance - _ethBalanceBefore);
        emit TokenSale(_token, _amount);
    }

    /// @notice Sweep function in case some tokens are stuck in the contract
    /// @param _token Address of the token to sweep
    /// @param _to Address to send the tokens to
    function sweep(address _token, address _to) external onlyOwner {
        IERC20(_token).safeTransfer(_to, IERC20(_token).balanceOf(address(this)));
    }

    /// @notice Sweep eth from the contract
    /// @param amount Amount of eth to sweep
    /// @param _to Address to send the eth to
    function sweepEth(uint256 amount, address payable _to) external onlyOwner {
        _to.transfer(amount);
    }

    /// @notice Function to liquidate a loan in selected lending pool
    /// @param _collateral Address of the collateral
    /// @param _borrowedAsset Address of the borrowed asset
    /// @param _positionOwner Address of the position owner
    /// @param _amount Amount of the borrowed asset to liquidate
    /// @param _lendingPool Address of the lending pool
    function _liquidateLoan(
        address _collateral,
        address _borrowedAsset,
        address _positionOwner,
        uint256 _amount,
        address _lendingPool
    ) internal {
        IERC20(_borrowedAsset).forceApprove(address(_lendingPool), _amount);
        IERC20 _collateralToken = IERC20(_collateral);
        uint256 _collateralBalanceSnapshot = _collateralToken.balanceOf(address(this));
        ILendingPool(_lendingPool).liquidationCall(_collateral, _borrowedAsset, _positionOwner, _amount, false);
        // Check that collateral is transferred to the liquidator
        require(_collateralToken.balanceOf(address(this)) > _collateralBalanceSnapshot, "Liquidation failed");
    }

    /// @notice Function to redeem gmTOKEN to underlying pair of assets
    /// @param _gmxToken Address of the GMX token
    /// @param _amount Amount of GMX tokens to redeem
    /// @dev Reference:
    /// https://github.com/gmx-io/gmx-interface/blob/85fe37b39e7d6d8ab4fa1e56206129b817f311a9/src/domain/synthetics/markets/createWithdrawalTxn.ts#L32
    function _redeemGMXTokens(address _gmxToken, uint256 _amount) internal {
        uint256 _executionFee = _estimateExecuteWithdrawalGasLimit();
        GMX_EXCHANGE_ROUTER.sendWnt{ value: _executionFee }(address(GMX_WITHDRAWAL_VAULT), _executionFee);
        // 1. exchange router: send wnt
        // 2. transfer tokens to withdrawal router
        IERC20(_gmxToken).safeTransfer(GMX_WITHDRAWAL_VAULT, _amount);
        // 3. queue withdrawal
        IGMXExchangeRouter.CreateWithdrawalParams memory _withdrawalParams = IGMXExchangeRouter.CreateWithdrawalParams({
            receiver: address(this),
            callbackContract: address(0),
            uiFeeReceiver: address(0),
            market: _gmxToken,
            longTokenSwapPath: new address[](0),
            shortTokenSwapPath: new address[](0),
            minLongTokenAmount: 0,
            minShortTokenAmount: 0,
            shouldUnwrapNativeToken: true,
            executionFee: _executionFee,
            callbackGasLimit: 0
        });
        GMX_EXCHANGE_ROUTER.createWithdrawal(_withdrawalParams);
        emit GMXRedeemed(_gmxToken, _amount);
    }

    // @dev the estimated gas limit for withdrawals
    // @dev ref:
    // https://github.com/gmx-io/gmx-synthetics/blob/bb3d56c68cb66975d344e59c5f4f3e2f9ba8bb95/contracts/gas/GasUtils.sol#L199
    function _estimateExecuteWithdrawalGasLimit() internal view returns (uint256) {
        // Adding margin of 1 gas unit
        return DATA_STORE.getUint(Keys.withdrawalGasLimitKey()) + 1;
    }

    receive() external payable { }

    fallback() external payable { }

    uint256[50] private __gap;
}
