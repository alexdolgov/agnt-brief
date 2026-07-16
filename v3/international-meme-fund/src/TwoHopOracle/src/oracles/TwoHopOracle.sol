// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IOracle} from "../interfaces/IOracle.sol";

/// @title TwoHopOracle
/// @author Some IMFer
/// @notice Compose 2 oracles together
contract TwoHopOracle is IOracle {
    address public immutable oracle1;
    address public immutable oracle2;

    constructor(address _oracle1, address _oracle2) {
        oracle1 = _oracle1;
        oracle2 = _oracle2;
    }

    /// @inheritdoc IOracle
    function price() external view override returns (uint256) {
        uint256 price1 = IOracle(oracle1).price();
        uint256 price2 = IOracle(oracle2).price();
        return price1 * price2 / 1e36;
    }
}