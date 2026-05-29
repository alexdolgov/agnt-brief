//SPDX-License-Identifier: CC-BY-NC-ND-4.0
pragma solidity ^0.8.18;

/// @notice IUsualTokenMapping reps Usual's Token Mapping Contract
interface IUsualClassicalOracle {
    function getPrice(address token) external view returns (int256);
}
