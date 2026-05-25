// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface IPSM {
    function dai2usdc(uint256 _fromAmount) external returns (uint256);

    function usds2usdc(uint256 _fromAmount) external returns (uint256);
}
