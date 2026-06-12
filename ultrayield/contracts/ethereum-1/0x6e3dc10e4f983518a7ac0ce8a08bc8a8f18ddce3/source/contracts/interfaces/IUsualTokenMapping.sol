//SPDX-License-Identifier: CC-BY-NC-ND-4.0
pragma solidity ^0.8.18;

/// @notice IUsualTokenMapping reps Usual's Token Mapping Contract
interface IUsualTokenMapping {
    /**
     * @notice Retrieves the list of all USD0RWA tokens mapped
     * @return An array of addresses representing the mapped USD0RWA tokens
     */
    function getAllUsd0Rwa( ) external view returns (address[] memory);
}
