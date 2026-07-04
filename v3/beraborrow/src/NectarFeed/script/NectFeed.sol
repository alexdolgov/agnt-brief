// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {ISpotOracle} from "src/interfaces/core/oracles/ISpotOracle.sol";

contract NectarFeed is ISpotOracle {
    /// @dev Hardcoding NECT price to 1 USD to act as soft peg, only intended to be used for internal Yari contracts
    uint256 public constant PRICE = 1e18;

    function fetchPrice() external pure returns (uint256) {
        return PRICE;
    }
}