// SPDX-License-Identifier: MIT

pragma solidity 0.7.6;
pragma experimental ABIEncoderV2;

import {GmxEventUtils} from "../../utils/gmx/GmxEventUtils.sol";
import {OrderOld} from "./IGmxOrderOld.sol";
import {IGmxDepositOld} from "./IGmxDepositOld.sol";
import {IGmxWithdrawalOld} from "./IGmxWithdrawalOld.sol";

interface IGmxCallbackReceiver {
  // v2.2 version
  function afterOrderExecution(
    bytes32 key,
    GmxEventUtils.EventLogData memory orderData,
    GmxEventUtils.EventLogData memory eventData
  ) external;
  function afterDepositExecution(
    bytes32 key,
    GmxEventUtils.EventLogData memory depositData,
    GmxEventUtils.EventLogData memory eventData
  ) external;
  function afterWithdrawalExecution(
    bytes32 key,
    GmxEventUtils.EventLogData memory withdrawalData,
    GmxEventUtils.EventLogData memory eventData
  ) external;

  // v2.1 version
  // TODO remove after transition to v2.2
  function afterOrderExecution(
    bytes32 key,
    OrderOld.Props memory order,
    GmxEventUtils.EventLogData memory eventData
  ) external;
  function afterDepositExecution(
    bytes32 key,
    IGmxDepositOld.Props memory deposit,
    GmxEventUtils.EventLogData memory eventData
  ) external;
  function afterWithdrawalExecution(
    bytes32 key,
    IGmxWithdrawalOld.Props memory withdrawal,
    GmxEventUtils.EventLogData memory eventData
  ) external;
}
