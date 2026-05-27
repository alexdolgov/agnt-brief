// SPDX-License-Identifier: GPL-2.0-or-later
// Gearbox Protocol. Generalized leverage for DeFi protocols
// (c) Gearbox Foundation, 2023.
pragma solidity 0.8.17;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

import {IPoolV3} from "@gearbox-protocol/core-v3/contracts/interfaces/IPoolV3.sol";
import {
    ICreditManagerV3,
    CollateralCalcTask,
    CollateralDebtData
} from "@gearbox-protocol/core-v3/contracts/interfaces/ICreditManagerV3.sol";
import {PERCENTAGE_FACTOR} from "@gearbox-protocol/core-v2/contracts/libraries/Constants.sol";
import {IVersion} from "@gearbox-protocol/core-v2/contracts/interfaces/IVersion.sol";

struct InsolvencyPoolCheck {
    bool isSuccessful;
    address pool;
    uint256 expectedLiquidity;
    uint256 realLiquidity;
    uint256 tvl;
}

contract InsolvencyChecker {
    uint256 public constant version = 3_00;

    function checkPoolV3(address pool) public returns (InsolvencyPoolCheck memory result) {
        result.isSuccessful = true;
        result.pool = pool;
        result.expectedLiquidity = IPoolV3(pool).expectedLiquidity();
        result.realLiquidity = IPoolV3(pool).availableLiquidity();
        result.tvl = IPoolV3(pool).availableLiquidity();

        address[] memory creditManagers = IPoolV3(pool).creditManagers();

        for (uint256 i = 0; i < creditManagers.length;) {
            (,, uint16 liquidationDiscount,,) = ICreditManagerV3(creditManagers[i]).fees();

            address[] memory creditAccounts = ICreditManagerV3(creditManagers[i]).creditAccounts();

            for (uint256 j = 0; j < creditAccounts.length;) {
                try ICreditManagerV3(creditManagers[i]).calcDebtAndCollateral(
                    creditAccounts[j], CollateralCalcTask.DEBT_COLLATERAL
                ) returns (CollateralDebtData memory cdd) {
                    result.realLiquidity += Math.min(
                        cdd.debt + cdd.accruedInterest, cdd.totalValue * liquidationDiscount / PERCENTAGE_FACTOR
                    );

                    result.tvl += cdd.totalValue;
                } catch {
                    result.isSuccessful = false;
                    break;
                }

                unchecked {
                    ++j;
                }
            }

            unchecked {
                ++i;
            }
        }
    }
}
