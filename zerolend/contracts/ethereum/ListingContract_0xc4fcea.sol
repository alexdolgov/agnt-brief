// SPDX-License-Identifier: EXTRACTED
// Contract: ListingContract
// Address: 0xc4fcea208cfd121f270f65b8ce002d94e41524fd
// Compiler: v0.8.12+commit.f00d7308
// Classification: zerolend_custom
// Source: Etherscan verified (project files only, libraries excluded)
// Extracted: 2026-04-13

// ======================================================================
// FILE: contracts/ListingContract.sol
// ======================================================================

// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import {IAaveOracle} from "@zerolendxyz/core-v3/contracts/interfaces/IAaveOracle.sol";
import {IAccessControl} from "@zerolendxyz/core-v3/contracts/dependencies/openzeppelin/contracts/IAccessControl.sol";
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
        uint256 debtCeiling
    ) internal {
        // init reserve
        ConfiguratorInputTypes.InitReserveInput[]
            memory data = new ConfiguratorInputTypes.InitReserveInput[](1);
        data[0] = params;
        config.initReserves(data);

        // set debt ceiling if any
        if (debtCeiling > 0) config.setDebtCeiling(address(token), debtCeiling);
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
        uint256 debtCeiling
    ) external {
        require(
            acl.isAssetListingAdmin(msg.sender),
            "only asset listing admin"
        );
        require(token.balanceOf(address(this)) > 0, "need balance");

        initOracles(oracleToken, address(token));
        initReserve(params, address(token), debtCeiling);
        seedLiquidity(token);
    }
}
