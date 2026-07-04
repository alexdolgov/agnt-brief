// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {IFeePolicy} from "./IFeePolicy.sol";

interface IPositionRegistry {
    function feeCollector() external view returns (address);

    function swapAggregator() external view returns (address);

    function implementationIndexOf(uint256 strategyId_, address implementation_) external view returns (uint256);

    function implementationsOf(uint256 strategyId_) external view returns (address[] memory);

    function updateOwnerOf(address owner_, address newOwner_) external;

    function feePolicyOf(uint256 strategyId_) external view returns (IFeePolicy);

    function isKeeper(address keeper_) external view returns (bool);

    function isCalldataWhitelisted(address target_, bytes calldata calldata_) external view returns (bool);

    function getPositionAddress(address owner_, uint256 strategyId_, uint256 salt_) external view returns (address);

    function deployPosition(address owner_, uint256 strategyId_, uint256 salt_) external returns (address _position);
}
