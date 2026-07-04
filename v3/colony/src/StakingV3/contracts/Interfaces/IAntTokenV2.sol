// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.9;

import { ICollateralTokenV2 } from "../Interfaces/ICollateralTokenV2.sol";
import { IStakingCore } from "../Interfaces/IStakingCore.sol";


interface IAntTokenV2 is ICollateralTokenV2 {

    /* ========== DATA STRUCTURES ========== */

    struct SpenderCollateral {
        uint256 penaltyMantissa;
        uint256 collateralAmount;
    }

    /* ========== STATE VARIABLES ========== */

    function stakingContract() external returns(IStakingCore);

    function totalCollateral(address account) external view returns(uint256);

    function penaltyRedistributionShareMantissa() external view returns(uint256);

    function penaltyRedistributionPeriod() external view returns(uint256);

    // ┌────────────────────────────────────────┐
    // │   ____        _                        │
    // │  | __ )  __ _| | __ _ _ __   ___ ___   │
    // │  |  _ \ / _` | |/ _` | '_ \ / __/ _ \  │
    // │  | |_) | (_| | | (_| | | | | (_|  __/  │
    // │  |____/ \__,_|_|\__,_|_| |_|\___\___|  │
    // │                                        │
    // └────────────────────────────────────────┘

    /* ========== VIEW ========== */

    function balanceOf(address account) external view returns (uint256);

    function rawBalanceOf(address account) external view returns (uint256);

    // ┌──────────────────────────────────────────────┐
    // │    ____      _ _       _                 _   │
    // │   / ___|___ | | | __ _| |_ ___ _ __ __ _| |  │
    // │  | |   / _ \| | |/ _` | __/ _ \ '__/ _` | |  │
    // │  | |__| (_) | | | (_| | ||  __/ | | (_| | |  │
    // │   \____\___/|_|_|\__,_|\__\___|_|  \__,_|_|  │
    // │                                              │
    // └──────────────────────────────────────────────┘

    /* ========== COLLATERAL ========== */

    function releaseCollateral(address account, uint256 amount) external;

    function penalizeCollateral(address account, uint256 amount) external;

    /* ========== PRIVILEGED ========== */

    function setCollateralFor(address sender, address receiver, uint256 amount) external;

    /* ========== ADMIN ========== */

    function setPenaltyRedistributionMantissa(uint256 penalty) external;

    function setPenaltyRedistributionPeriod(uint256 redistributionPeriod) external;

    /* ========== VIEW ========== */

    function collateralAmount(address from, address to) external view returns (uint256);

    function collateralPenaltyMantissa(address from, address to) external view returns (uint256);

    // ┌───────────────────────┐
    // │   __  __ _            │
    // │  |  \/  (_)___  ___   │
    // │  | |\/| | / __|/ __|  │
    // │  | |  | | \__ \ (__   │
    // │  |_|  |_|_|___/\___|  │
    // │                       │
    // └───────────────────────┘

    function setStakingAddress(address stakingAddress) external;

}
