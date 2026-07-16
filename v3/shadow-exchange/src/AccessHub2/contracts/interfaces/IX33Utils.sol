// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.0;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IXShadow} from "contracts/interfaces/IXShadow.sol";
import {IX33} from "contracts/interfaces/IX33.sol";

interface IX33Utils {
    event NewOperator(address _oldOperator, address _newOperator);

    /// @notice transfers the operator via accesshub
    function transferOperator(address _newOperator) external;

    /// @notice claims incentives on x33
    function x33ClaimIncentives(address[] calldata _feeDistributors, address[][] calldata _tokens) external;
}
