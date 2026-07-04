// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity >=0.5.0;

import "./IBasePoolV2.sol";
import {ICryptoMath} from "../../pool/crypto/ICryptoMath.sol";
import {IPoolFlashLoan} from "./IPoolFlashLoan.sol";

interface ICryptoPool is IBasePoolV2, IPoolFlashLoan {
    //function wETH() external view returns (address); // private immutable
    function factory() external view returns(address);
    function token0PrecisionMultiplier() external view returns (uint);
    function token1PrecisionMultiplier() external view returns (uint);

    struct PoolParams {
        uint32 initialA;
        uint32 futureA;

        uint64 initialGamma;
        uint64 futureGamma;
        
        uint32 initialTime;
        /// @dev Time when ramping is finished.
        /// This value is 0 (default) when pool is first deployed, and only gets
        /// populated in `rampParams` when the ramping process is initiated.
        /// After ramping is finished (i.e. futureParamsTime < block.timestamp),
        /// the variable is left and not set to 0.
        uint32 futureTime;
    }

    struct RebalancingParams {
        uint64 allowedExtraProfit;
        uint64 adjustmentStep;
        uint32 maTime;
        uint16 requiredProfit;
        uint8 checkLastProfit;
    }

    function getParams() external view returns (uint a, uint gamma, uint futureTime);
    function priceScale() external view returns (uint);
    function cachedPriceOracle() external view returns (uint);
    function lastPrices() external view returns (uint);
    function lastPricesTimestamp() external view returns (uint);
    function virtualPrice() external view returns (uint);
    function xcpProfit() external view returns (uint);
    function xcpProfitLast() external view returns (uint);

    //function poolVersion() external view returns(uint);
    function poolType() external view returns(uint16);
    function MATH() external view returns(ICryptoMath);
    function invariantLast() external view returns(uint);

    //function poolParams() external view returns(PoolParams memory);
    //function rebalancingParams() external view returns(RebalancingParams memory);
    function calculateSingleWithdrawAmount(address _sender,uint a,uint gamma,uint liquidity,bool isToken0Out,bool updateInvariant) external view returns (uint, uint, uint, uint, uint24);
    function getVirtualPrice() external view returns(uint);
    //function getLiquidityPrice() external view returns (uint);
    function getPriceOracle() external returns (uint);
    function rampParams(uint32 _futureA, uint64 _futureGamma, uint32 _futureTime) external;
    function stopRampParams() external;
    function setRebalancingParams(uint64 _allowedExtraProfit, uint64 _adjustmentStep, uint32 _maTime, uint16 _requiredProfit, uint8 _checkLastProfit) external;
    function claimProtocolFee() external;
    function updateCryptoMath() external;
    function skim(address to) external;

    // Pausable.sol - removed
    //function paused() external view returns (bool);
    //function setPaused(bool _status) external;
    //function owner() external view returns (address);
    //function transferOwnership(address newOwner) external;

    event RampParams(
        uint currentA,
        uint futureA,
        uint currentGamma,
        uint futureGamma,
        uint currentTime,
        uint futureTime
    );

    event StopRampParams(
        uint currentA,
        uint currentGamma,
        uint stopTime
    );

    event SetRebalancingParams(
        uint allowedExtraProfit,
        uint adjustmentStep,
        uint maTime,
        uint requiredProfit,
        uint checkLastProfit
    );

    event UpdatePoolProfit(
        uint xcpProfit,
        uint virtualPrice
    );

    event UpdateInvariant(
        uint newInvariant
    );

    event UpdatePriceScale(
        uint newPriceScale
    );
}