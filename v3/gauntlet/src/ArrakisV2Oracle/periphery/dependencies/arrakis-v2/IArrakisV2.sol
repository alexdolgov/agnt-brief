// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

import "@openzeppelin/IERC20.sol";
import "@openzeppelin/IERC20Metadata.sol";

interface IArrakisV2 is IERC20 {
    function token0() external view returns (IERC20Metadata);

    function token1() external view returns (IERC20Metadata);
}
