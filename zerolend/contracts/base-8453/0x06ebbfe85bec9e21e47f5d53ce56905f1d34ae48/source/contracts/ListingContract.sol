// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import {IAaveOracle} from "@zerolendxyz/core-v3/contracts/interfaces/IAaveOracle.sol";
import {IACLManager} from "@zerolendxyz/core-v3/contracts/interfaces/IACLManager.sol";
import {IPoolAddressesProvider} from "@zerolendxyz/core-v3/contracts/interfaces/IPoolAddressesProvider.sol";
import {IPool} from "@zerolendxyz/core-v3/contracts/interfaces/IPool.sol";
import {IERC20} from "@zerolendxyz/core-v3/contracts/dependencies/openzeppelin/contracts/IERC20.sol";
import {IPoolConfigurator} from "@zerolendxyz/core-v3/contracts/interfaces/IPoolConfigurator.sol";
import {ConfiguratorInputTypes} from "@zerolendxyz/core-v3/contracts/interfaces/IPoolConfigurator.sol";

contract ListingContract {
    IAaveOracle public oracle;
    IACLManager public acl;
    IPool public pool;
    IPoolConfigurator public config;

    constructor(IPoolAddressesProvider provider) {
        config = IPoolConfigurator(provider.getPoolConfigurator());
        acl = IACLManager(provider.getACLManager());
        oracle = IAaveOracle(provider.getPriceOracle());
        pool = IPool(provider.getPool());
    }

    function initOracles(address oracleToken, address token) internal {
        address[] memory tokens = new address[](1);
        address[] memory oracles = new address[](1);
        tokens[0] = address(token);
        oracles[0] = address(oracleToken);
        oracle.setAssetSources(tokens, oracles);
    }

    function initReserve(
        ConfiguratorInputTypes.InitReserveInput memory params,
        address token,
        uint256 ltv,
        uint256 lt,
        uint256 lb,
        uint256 supplyCap,
        uint256 borrowCap,
        uint256 debtCeiling,
        uint256 reserveFactor,
        uint256 liquidationFee
    ) internal {
        // init reserve
        ConfiguratorInputTypes.InitReserveInput[]
            memory data = new ConfiguratorInputTypes.InitReserveInput[](1);
        data[0] = params;
        config.initReserves(data);

        // set debt ceiling if any
        if (debtCeiling > 0) config.setDebtCeiling(address(token), debtCeiling);
        if (ltv > 0)
            config.configureReserveAsCollateral(address(token), ltv, lt, lb);
        if (supplyCap > 0) config.setSupplyCap(address(token), supplyCap);
        if (borrowCap > 0) {
            config.setReserveBorrowing(address(token), true);
            config.setBorrowCap(address(token), borrowCap);
        }

        config.setReserveFlashLoaning(address(token), true);
        config.setLiquidationProtocolFee(address(token), liquidationFee);
        config.setReserveFactor(address(token), reserveFactor);
    }

    function seedLiquidity(IERC20 token) internal {
        require(token.balanceOf(address(this)) > 0, "no liq");

        // seed liquidity
        token.approve(address(pool), type(uint256).max);
        pool.supply(
            address(token), // address asset,
            token.balanceOf(address(this)), // uint256 amount,
            msg.sender, // address onBehalfOf,
            0 // uint16 referralCode
        );
        config.setReservePause(address(token), true);
    }

    function execute(
        ConfiguratorInputTypes.InitReserveInput memory params,
        address oracleToken,
        IERC20 token,
        uint256 ltv,
        uint256 lt,
        uint256 lb,
        uint256 supplyCap,
        uint256 borrowCap,
        uint256 debtCeiling,
        uint256 reserveFactor,
        uint256 liquidationFee
    ) external {
        require(
            acl.isAssetListingAdmin(msg.sender),
            "only asset listing admin"
        );
        require(token.balanceOf(address(this)) > 0, "need balance");

        initOracles(oracleToken, address(token));
        initReserve(
            params,
            address(token),
            ltv,
            lt,
            lb,
            supplyCap,
            borrowCap,
            debtCeiling,
            reserveFactor,
            liquidationFee
        );
        seedLiquidity(token);
    }
}
