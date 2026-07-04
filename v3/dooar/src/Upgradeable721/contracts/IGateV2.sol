// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

interface IGateV2 {
    function check(
        address from,
        address to,
        uint256 id,
        address operator,
        address nft
    ) external view;

    function silentCheck(
        address from,
        address to,
        uint256 id,
        address operator,
        address nft
    ) external view returns (bool);

    function check(
        address from,
        address to,
        uint256[] memory ids,
        uint256[] memory values,
        address operator,
        address nft
    ) external view;

    function silentCheck(
        address from,
        address to,
        uint256[] memory ids,
        uint256[] memory values,
        address operator,
        address nft
    ) external view returns (bool);
}
