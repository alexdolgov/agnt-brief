// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IXShadow} from "contracts/interfaces/IXShadow.sol";
import {IX33} from "contracts/interfaces/IX33.sol";


interface Ix33Adapter {
    event NewOperator(address _oldOperator, address _newOperator);

    /// @notice submits the optimized votes for the epoch
    function submitVotes(address[] calldata _pools, uint256[] calldata _weights) external;

    /// @notice swap function using aggregators to process rewards into SHADOW
    function swapIncentiveViaAggregator(IX33.AggregatorParams calldata _params) external;

    /// @notice claims the rebase accrued to x33
    function claimRebase() external;

    /// @notice compounds any existing SHADOW within the contract
    function compound() external;

    /// @notice direct claim
    function claimIncentives(address[] calldata _feeDistributors, address[][] calldata _tokens) external;

    /// @notice allows the operator to unlock the contract for the current period
    function unlock() external;

    /// @notice transfers the operator via accesshub
    function transferOperator(address _newOperator) external;

    /// @notice address of the current operator
    function operator() external view returns (address);

    /// @notice accessHub address
    function accessHub() external view returns (address);
}
