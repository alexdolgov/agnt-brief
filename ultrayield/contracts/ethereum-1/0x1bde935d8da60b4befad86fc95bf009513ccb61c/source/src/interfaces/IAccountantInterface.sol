// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.18;

interface IAccountantInterface {
    function acceptFeeManager() external;
    function setFutureFeeManager(address newFeeManager) external;
}
