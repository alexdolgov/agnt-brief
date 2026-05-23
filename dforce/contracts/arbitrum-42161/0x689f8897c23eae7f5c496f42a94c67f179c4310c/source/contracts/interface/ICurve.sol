//SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

interface ICurveMeta {
    function get_dy_underlying(
        int128 _i,
        int128 _j,
        uint256 _dx
    ) external view returns (uint256);
}
