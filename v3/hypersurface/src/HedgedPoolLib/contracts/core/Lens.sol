// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.18;

import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IHedgedPool} from "../interfaces/IHedgedPool.sol";
import {ILpManager} from "../interfaces/ILpManager.sol";
import {ITradeExecutor} from "../interfaces/ITradeExecutor.sol";
import {IAddressBook} from "../interfaces/IAddressBook.sol";
import {IController, IOtoken, GammaTypes, IOracle} from "../interfaces/IGamma.sol";

contract Lens {
    struct PoolInfo {
        uint256 freeCollateral; // collateral available as liquidity in the pool
        uint256 totalCollateral; // free collateral plus any cash allocated for pending withdrawals (should be used for pricePerShare calculation)
        uint256 sharesSupply; // total supply of pool shares
        address[] underlyings; // list of underlying assets supported by the pool
        address[] oTokens; // all oTokens addresses
        string[] optionSymbols; // all options symbols
        int256[] optionBalances; // all options balances: positive (long), negative (short)
        uint256[] optionsExpiryPrices; // for expired options expiry prices if available
        bool[] optionsExpiryPricesFinalized; // for expired options whether expiry price is finalized (past dispute period)
    }

    struct LocalVars {
        IHedgedPool pool;
        IAddressBook addressBook;
        ILpManager lpManager;
        IController controller;
        IOracle oracle;
        ITradeExecutor tradeExecutor;
    }

    /// @notice returns the pool info for a given pool
    /// @dev call this function using callStatic
    /// @param poolAddress the address of the pool
    /// @return poolInfo the pool info
    function getPoolInfo(
        address poolAddress
    ) external view returns (PoolInfo memory) {
        LocalVars memory vars;
        vars.pool = IHedgedPool(poolAddress);
        vars.addressBook = vars.pool.addressBook();
        vars.lpManager = ILpManager(vars.addressBook.getLpManager());
        vars.controller = IController(vars.addressBook.getController());
        vars.oracle = IOracle(vars.addressBook.getOracle());
        vars.tradeExecutor = ITradeExecutor(
            vars.addressBook.getTradeExecutor()
        );

        PoolInfo memory poolInfo;

        //        uint256 collateralBalance = vars.pool.collateralToken().balanceOf(
        //            poolAddress
        //        );

        // excludes pending withdrawals (use this for pool available liquidity)
        //        poolInfo.freeCollateral =
        //            collateralBalance -
        //            vars.lpManager.getCashLocked(poolAddress, true);
        // includes pending withdrawals (use this for total pool value)
        //        poolInfo.totalCollateral =
        //            collateralBalance -
        //            vars.lpManager.getCashLocked(poolAddress, false);
        poolInfo.sharesSupply = IERC20Metadata(address(vars.pool))
            .totalSupply();

        poolInfo.underlyings = vars.pool.getAllUnderlyings();

        address[] memory oTokens = vars.pool.getActiveOTokens();
        poolInfo.oTokens = new address[](oTokens.length);
        poolInfo.optionSymbols = new string[](oTokens.length);
        poolInfo.optionBalances = new int256[](oTokens.length);
        poolInfo.optionsExpiryPrices = new uint256[](oTokens.length);
        poolInfo.optionsExpiryPricesFinalized = new bool[](oTokens.length);
        for (uint i = 0; i < oTokens.length; i++) {
            address oToken = oTokens[i];
            poolInfo.oTokens[i] = oToken;
            poolInfo.optionSymbols[i] = IERC20Metadata(oToken).symbol();

            poolInfo.optionBalances[i] = int256(
                IERC20(oToken).balanceOf(poolAddress)
            );

            // return expiry price for expired options
            if (IOtoken(oToken).expiryTimestamp() <= block.timestamp) {
                (
                    poolInfo.optionsExpiryPrices[i],
                    poolInfo.optionsExpiryPricesFinalized[i]
                ) = vars.oracle.getExpiryPrice(
                    IOtoken(oToken).underlyingAsset(),
                    IOtoken(oToken).expiryTimestamp()
                );
            }
        }

        return poolInfo;
    }
}
