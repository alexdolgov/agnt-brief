// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

interface IGizaStaking {
    function stakeOnBehalf(address user, uint104 amount) external;
}
