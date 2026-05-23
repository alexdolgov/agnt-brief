// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "../offPlan/IOffPlanStructs.sol";

interface IEventHub {
    event OffPlanBalanceChanged (IOffPlanStructs.BalanceChange balanceChange);
    function emitOffPlanBalanceChanged(IOffPlanStructs.BalanceChange calldata balanceChange) external;

    event OffPlanLifecycle (IOffPlanStructs.OffPlanLifecycle lifecycle);
    function emitOffPlanLifecycle(IOffPlanStructs.OffPlanLifecycle calldata lifecycle) external;
}
