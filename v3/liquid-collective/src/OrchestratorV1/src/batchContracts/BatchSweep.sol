// SPDX-License-Identifier: Proprietary
pragma solidity 0.8.29;

import { ITVS } from "tvs/interfaces/ITVS.sol";

/// @title BatchSweep
/// @author Alluvial Finance Inc.
/// @notice Contract for processing sweeps of funds from multiple validator sets in a batch
contract BatchSweep {
    /// @notice Thrown when there is a mismatch in the input lengths
    error InvalidInputLengths();

    /// @notice Emitted when a sweep is successful
    /// @param sources The list of TVS addresses to sweep from
    /// @param amounts The amounts swept in wei
    event Swept(address[] sources, uint256[] amounts);

    /// @notice Sweeps funds from multiple addresses to the beneficiary address stored in the TVS
    /// @param sources The list of TVS addresses to sweep from
    /// @param amounts The list of amounts to sweep in wei
    function sweepToBeneficiary(address[] calldata sources, uint256[] calldata amounts) external virtual {
        _sweepToBeneficiary(sources, amounts);
    }

    /// @notice Internal function to sweep funds from multiple addresses to the beneficiary address stored in the TVS
    /// @param sources The list of TVS addresses to sweep from
    /// @param amounts The list of amounts to sweep in wei
    function _sweepToBeneficiary(address[] calldata sources, uint256[] calldata amounts) internal virtual {
        if (sources.length != amounts.length) {
            revert InvalidInputLengths();
        }

        for (uint256 i = 0; i < sources.length; i++) {
            ITVS(payable(sources[i])).sweep(address(0), amounts[i]);
        }
        emit Swept(sources, amounts);
    }
}
