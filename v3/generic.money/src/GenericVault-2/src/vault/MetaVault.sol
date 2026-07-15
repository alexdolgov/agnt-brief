// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.29;

import { SingleStrategyVault, IERC20, IController, IERC4626 } from "./SingleStrategyVault.sol";

contract MetaVault is SingleStrategyVault {
    string public constant VERSION = "1.0";

    constructor(
        IERC20 asset_,
        IController controller_,
        IERC4626 strategy_,
        address manager_
    )
        SingleStrategyVault(asset_, controller_, strategy_, manager_)
    { }
}
