// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IBaultFactory} from "./IBaultFactory.sol";

interface IBault {
    function initialize(
        string memory name_,
        string memory symbol_,
        address _stakingToken,
        address _rewardVault,
        uint256 _bounty
    ) external;
    function totalAssets() external view returns (uint256);
    function factory() external view returns (IBaultFactory);
    function bounty() external view returns (uint256);
    function stakingToken() external view returns (address);
    function claimBgt(address bgtRecipient, uint256 minAmountOut) external;
    function claimBgtWrapper(address bgtWrapper, address bgtRecipient, uint256 minAmountOut) external returns (uint256 bgtWrapperMinted);
}
