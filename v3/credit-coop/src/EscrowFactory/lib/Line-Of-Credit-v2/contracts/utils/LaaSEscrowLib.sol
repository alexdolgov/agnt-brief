pragma solidity 0.8.25;

import {LineLib} from "./LineLib.sol";
import {EscrowState, EscrowLib} from "./EscrowLib.sol";
import {Escrow} from "../modules/escrow/Escrow.sol";
import {ILaaSEscrow} from "../interfaces/ILaaSEscrow.sol";
import {ILineOfCredit} from "../interfaces/ILineOfCredit.sol";
import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol";
import {SafeERC20} from "openzeppelin/token/ERC20/utils/SafeERC20.sol";
import {IEscrow} from "../interfaces/IEscrow.sol";

/**
 * @title   - LaaSEscrowLib
 * @author  - Credit Cooperative
 * @notice  - Core logic by LaaSEscrow contract for adding and removing liquidity to liquidity pools.
 */
library LaaSEscrowLib {
    using EscrowLib for EscrowState;
    using SafeERC20 for IERC20;

    error OperatorFnCallFailed();

    /**
     * see LaaSEscrow.reduceLiquidity
     *  @notice - if the borrower is calling, we allow for custom calldata to decrease liquidity
     *  @notice - if its not the borrower, we callow anyone to call this and use the default calldata to decrease liquidtiy in the case of apron breach and partial liquidation
     */
    function reduceLiquidity(
        EscrowState storage state,
        mapping(uint256 => ILaaSEscrow.LiquidityPosition) storage liquidityPositions,
        uint256 index,
        address pool,
        uint256 minimumCollateralRatio,
        address borrower,
        bytes memory removeLiquidityData
    ) external {
        // only borrower or owner
        ILaaSEscrow.LiquidityPosition memory lp = liquidityPositions[index];
        if (lp.LpToken == address(0)) {
            // if LP position does not exist, revert
            revert ILaaSEscrow.NoLiquidityPosition();
        }

        uint256 cratio = Escrow(address(this)).getCollateralRatio();

        if (msg.sender != borrower && (minimumCollateralRatio + lp.apron <= cratio)) {
            revert ILaaSEscrow.ApronNotBreached();
        }

        if (msg.sender == borrower) {
            bytes4 func = bytes4(removeLiquidityData);

            if (func != lp.removeLiquidityFunc) {
                revert IEscrow.InvalidFunctionSelector();
            }
            _removeLiquidity(state, removeLiquidityData, index, lp, pool);
        } else {
            _removeLiquidity(state, lp.removeLiquidityData, index, lp, pool);
            lp.apron = uint32(cratio - minimumCollateralRatio); // update apron so we dont allow a reentrancy attack
        }
    }

    /**
     * see LaaSEscrow.liquidatePosition
     */
    function liquidatePosition(
        EscrowState storage state,
        mapping(uint256 => ILaaSEscrow.LiquidityPosition) storage liquidityPositions,
        bytes memory removeLiquidityData,
        uint256 index,
        address pool,
        bool isDelayed
    ) external {
        // remove LP position entirely

        if (ILineOfCredit(state.owner).status() != LineLib.STATUS.LIQUIDATABLE) {
            revert IEscrow.NotLiquidatable();
        }

        ILaaSEscrow.LiquidityPosition storage lp = liquidityPositions[index];

        bytes4 func = bytes4(removeLiquidityData);

        if (lp.LpToken == address(0)) {
            // if LP position does not exist, revert
            revert ILaaSEscrow.NoLiquidityPosition();
        }

        if (func != lp.removeLiquidityFunc) {
            revert IEscrow.InvalidFunctionSelector();
        }

        // get status

        _removeLiquidity(state, removeLiquidityData, index, lp, pool);

        // balance of LP token should be 0
        if (!isDelayed) {
            if (LineLib.getBalance(lp.LpToken) != 0) {
                revert ILaaSEscrow.LPNotLiquidated();
            }
        }
    }

    function _removeLiquidity(
        EscrowState storage state,
        bytes memory removeLiquidityData,
        uint256 index,
        ILaaSEscrow.LiquidityPosition memory lp,
        address pool
    ) private returns (bool) {
        uint256 lpLength = lp.componentTokens.length;
        uint256[] memory componentTokenBalancesBefore = new uint256[](lpLength);

        for (uint256 i = 0; i < lpLength; i++) {
            uint256 balanceBefore = LineLib.getBalance(lp.componentTokens[i]);
            componentTokenBalancesBefore[i] = balanceBefore;
        }

        uint256 beforeLPBalance = LineLib.getBalance(lp.LpToken);

        LineLib._forceApprove(lp.LpToken, pool, beforeLPBalance);

        (bool success,) = pool.call(removeLiquidityData);

        if (!success) {
            revert OperatorFnCallFailed();
        }

        LineLib._forceApprove(lp.LpToken, pool, 0);

        uint256[] memory componentTokenBalancesAfter = new uint256[](lpLength);

        for (uint256 i = 0; i < lpLength; i++) {
            uint256 balanceAfter = LineLib.getBalance(lp.componentTokens[i]);
            componentTokenBalancesAfter[i] = balanceAfter;
        }

        uint256 afterLPBalance = LineLib.getBalance(lp.LpToken);
        if (!lp.isDelayOnLiquidityRemoval) {
            require(afterLPBalance <= beforeLPBalance, "delayed liquidty failed");
        }

        // decrement LP amount in deposit
        state.deposited[lp.LpToken].amount -= beforeLPBalance - afterLPBalance;
        emit IEscrow.RemoveCollateral(lp.LpToken, beforeLPBalance - afterLPBalance);
        // increment with redeemed amounts of component tokens
        for (uint256 i = 0; i < lpLength; i++) {
            if (!lp.isDelayOnLiquidityRemoval) {
                require(
                    componentTokenBalancesAfter[i] > componentTokenBalancesBefore[i],
                    "esccrow did not receive component tokens"
                );
            }
            state.deposited[lp.componentTokens[i]].amount +=
                componentTokenBalancesAfter[i] - componentTokenBalancesBefore[i];
            emit IEscrow.AddCollateral(
                lp.componentTokens[i], componentTokenBalancesAfter[i] - componentTokenBalancesBefore[i]
            );
        }

        return true;
    }

    /**
     * see LaaSEscrow.increaseLiquidity
     */
    function increaseLiquidity(
        EscrowState storage state,
        mapping(uint256 => ILaaSEscrow.LiquidityPosition) storage liquidityPositions,
        uint256 index,
        address pool,
        bytes memory increaseLiquidityData
    ) external {
        LineLib.STATUS status = ILineOfCredit(state.owner).status();
        if (status == LineLib.STATUS.LIQUIDATABLE || status == LineLib.STATUS.INSOLVENT) {
            revert ILaaSEscrow.LineIsLiquidatable();
        }

        // adds additional liquidity
        address lpToken = liquidityPositions[index].LpToken;
        if (lpToken == address(0)) {
            // if LP position does not exist, revert
            revert ILaaSEscrow.NoLiquidityPosition();
        }

        ILaaSEscrow.LiquidityPosition storage lp = liquidityPositions[index];

        bytes4 func = bytes4(increaseLiquidityData);

        if (func != lp.liquidityProvisionFunc) {
            revert IEscrow.InvalidFunctionSelector();
        }

        _increaseLiquidity(state, liquidityPositions, index, lpToken, increaseLiquidityData, pool);
    }

    /**
     * see LaaSEscrow.initializeLiquidity
     */
    function initializeLiquidity(
        EscrowState storage state,
        mapping(uint256 => ILaaSEscrow.LiquidityPosition) storage liquidityPositions,
        uint256 index,
        address pool
    ) external {
        if (
            ILineOfCredit(state.owner).status() == LineLib.STATUS.LIQUIDATABLE
                || ILineOfCredit(state.owner).status() == LineLib.STATUS.INSOLVENT
        ) {
            revert ILaaSEscrow.LineIsLiquidatable();
        }

        // uses prestored liquidity data in position struct; Only Borrower
        ILaaSEscrow.LiquidityPosition storage lp = liquidityPositions[index];

        if (lp.LpToken == address(0)) {
            // if LP position does not exist, revert
            revert ILaaSEscrow.NoLiquidityPosition();
        }

        // only call this func if no LP tokens are present, otherwise use increaseLiquidity

        if (LineLib.getBalance(lp.LpToken) != 0) {
            revert IEscrow.AlreadyInitialized();
        }

        _increaseLiquidity(state, liquidityPositions, index, lp.LpToken, lp.liquidityProvisionData, pool);
    }

    function _increaseLiquidity(
        EscrowState storage state,
        mapping(uint256 => ILaaSEscrow.LiquidityPosition) storage liquidityPositions,
        uint256 index,
        address lpToken,
        bytes memory liquidityProvisionData,
        address pool
    ) public returns (bool) {
        uint256 lpLength = liquidityPositions[index].componentTokens.length;
        address[] memory componentTokens = liquidityPositions[index].componentTokens;

        if (!state.enabledTokens[lpToken]) {
            revert EscrowLib.InvalidCollateral();
        }

        for (uint256 i = 0; i < lpLength; i++) {
            if (!state.enabledTokens[componentTokens[i]]) {
                revert EscrowLib.InvalidCollateral();
            }
        }

        uint256[] memory componentTokenBalancesBefore = new uint256[](lpLength);

        for (uint256 i = 0; i < lpLength; i++) {
            uint256 balanceBefore = LineLib.getBalance(componentTokens[i]);
            componentTokenBalancesBefore[i] = balanceBefore;
        }

        uint256 beforeLPBalance = LineLib.getBalance(lpToken);

        for (uint256 i = 0; i < lpLength; i++) {
            IERC20(liquidityPositions[index].componentTokens[i]).forceApprove(
                pool, liquidityPositions[index].componentTokenAmounts[i]
            );
        }

        (bool success,) = pool.call(liquidityProvisionData);

        if (!success) {
            revert OperatorFnCallFailed();
        }

        for (uint256 i = 0; i < liquidityPositions[index].componentTokens.length; i++) {
            IERC20(liquidityPositions[index].componentTokens[i]).forceApprove(pool, 0);
        }

        uint256[] memory componentTokenBalancesAfter = new uint256[](lpLength);

        for (uint256 i = 0; i < lpLength; i++) {
            uint256 balanceAfter = LineLib.getBalance(componentTokens[i]);
            componentTokenBalancesAfter[i] = balanceAfter;
        }

        uint256 afterLPBalance = LineLib.getBalance(lpToken);

        require(afterLPBalance > beforeLPBalance, "increase liquidty failed");

        // increment deposit amount with difference in LP token balance
        state.deposited[lpToken].amount += afterLPBalance - beforeLPBalance;
        emit IEscrow.AddCollateral(lpToken, afterLPBalance - beforeLPBalance);
        // decrement deposit amount with difference in component token balance
        for (uint256 i = 0; i < lpLength; i++) {
            state.deposited[componentTokens[i]].amount -=
                componentTokenBalancesBefore[i] - componentTokenBalancesAfter[i];
            emit IEscrow.RemoveCollateral(
                componentTokens[i], componentTokenBalancesBefore[i] - componentTokenBalancesAfter[i]
            );
        }

        return true;
    }
}
