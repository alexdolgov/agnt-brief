// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {IDUSXProvider} from "./IDUSXProvider.sol";
import {IERC20Token} from "./IERC20Token.sol";
import {IERC20TokenRebase} from "./IERC20TokenRebase.sol";
import {IFeesDistributor} from "./IFees.sol";
import {IFeesWithdrawer} from "./IFees.sol";
import {IFloor} from "./IFloor.sol";
import {ILenderOwner} from "./ILenderOwner.sol";
import {ILiquidationHelper} from "./ILiquidationHelper.sol";
import {IMarketLens} from "./IMarketLens.sol";
import {IMiscHelper} from "./IMiscHelper.sol";
import {IOracle} from "./IOracle.sol";
import {IPSM} from "./IPSM.sol";
import {IRepayHelper} from "./IRepayHelper.sol";
import {IStableOwner} from "./IStableOwner.sol";
import {IStakedDUSX} from "./IStakedDUSX.sol";
import {ISupplyHangingCalculator} from "./ISupplyHangingCalculator.sol";
import {IVault} from "./IVault.sol";
import {IVoteEscrowedSTTX} from "./IVoteEscrowedSTTX.sol";
import {IDynamicInterestRate} from "./IDynamicInterestRate.sol";
import {IMinter} from "./IMinter.sol";

interface IBaseContracts {
    struct CoreTokens {
        IERC20Token dusx;
        IERC20TokenRebase sttx;
        IStakedDUSX stDUSX;
        IVoteEscrowedSTTX veSTTX;
    }
    struct PSMContracts {
        IPSM psmCircle;
        IPSM psmTether;
        IStableOwner stableOwner;
    }
    struct OracleContracts {
        IOracle oracleChainlink;
        IOracle oracleFloorPrice;
    }
    struct HelperContracts {
        IMiscHelper helper;
        ILiquidationHelper liquidationHelper;
        IRepayHelper repayHelper;
        IMarketLens marketLens;
    }
    error ZeroAddress();
    error ContractAlreadySet();

    // Struct getters
    function coreTokens() external view returns (CoreTokens memory);

    function psmContracts() external view returns (PSMContracts memory);

    function oracleContracts() external view returns (OracleContracts memory);

    function helperContracts() external view returns (HelperContracts memory);

    // Individual contract getters
    function dusxProvider() external view returns (IDUSXProvider);

    function feesDistributor() external view returns (IFeesDistributor);

    function feesWithdrawer() external view returns (IFeesWithdrawer);

    function floor() external view returns (IFloor);

    function lenderOwner() external view returns (ILenderOwner);

    function minter() external view returns (IMinter);

    function supplyCalculator()
        external
        view
        returns (ISupplyHangingCalculator);

    function vault() external view returns (IVault);

    function dynamicInterestRate() external view returns (IDynamicInterestRate);

    // Convenience getters for struct members
    function dusx() external view returns (IERC20Token);

    function sttx() external view returns (IERC20TokenRebase);

    function stDUSX() external view returns (IStakedDUSX);

    function veSTTX() external view returns (IVoteEscrowedSTTX);

    function psmCircle() external view returns (IPSM);

    function psmTether() external view returns (IPSM);

    function stableOwner() external view returns (IStableOwner);

    function oracleChainlink() external view returns (IOracle);

    function oracleFloorPrice() external view returns (IOracle);

    function helper() external view returns (IMiscHelper);

    function liquidationHelper() external view returns (ILiquidationHelper);

    function repayHelper() external view returns (IRepayHelper);

    function marketLens() external view returns (IMarketLens);
}
