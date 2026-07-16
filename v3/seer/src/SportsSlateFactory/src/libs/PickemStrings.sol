// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/// @notice String helpers for pick'em slate market creation.
library PickemStrings {
    function formatQuestion(
        string memory teamHome,
        string memory teamAway,
        string memory tournament,
        string memory matchDate
    ) internal pure returns (string memory) {
        return string(
            abi.encodePacked(
                "What will be the result of the match between ",
                teamHome,
                " and ",
                teamAway,
                " for ",
                tournament,
                " on ",
                matchDate,
                "?"
            )
        );
    }
}
