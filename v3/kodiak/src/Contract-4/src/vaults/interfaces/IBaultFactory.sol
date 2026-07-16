// SPDX-License-Identifier: GPL-3.0
pragma solidity =0.8.19;

interface IBaultFactory {
    function isLegitBault(address bault) external view returns (bool);
}
