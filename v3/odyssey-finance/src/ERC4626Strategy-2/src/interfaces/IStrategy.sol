// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IMasterOracle} from "./external/IMasterOracle.sol";
import {IPositionRegistry} from "./IPositionRegistry.sol";
import {IFeePolicy} from "./IFeePolicy.sol";
import {SwapParams} from "src/components/SwapAggregator.sol";

interface IStrategy {
    function latest() external view returns (uint256 _tvl, uint256 _timestamp);

    function feePolicy() external view returns (IFeePolicy);

    function asset() external view returns (IERC20);

    function strategyId() external view returns (uint256);

    function open(bytes memory positionParams_, bytes memory pushParams_) external;

    function push(bytes memory params_) external;

    function pull(bytes memory params_) external;

    function close(bytes memory claimParams_, bytes memory pullParams_) external;

    function close(bytes memory claimParams_, bytes memory pullParams_, bytes memory withdrawParams_) external;

    function claim(bytes memory params_) external returns (uint256 _claimed);

    function totalAllocated() external view returns (uint256);

    function oracle() external view returns (IMasterOracle);

    function transferOut(IERC20 token_, uint256 amountOut_) external;

    function transferOut(IERC20 token_, uint256 amountOut_, SwapParams memory zapOut_) external;

    function isOpen() external view returns (bool);

    function pendingFees() external view returns (uint256);

    function totalShares() external view returns (uint256);

    function positionRegistry() external view returns (IPositionRegistry);
}
