// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import { IToken } from "./IToken.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

struct TokenInfo {
    IERC20 token;
    uint256 booksBurned;
    uint256 permaBurns;
    bool enabled;
}

interface IBurningBooks {
    function token() external view returns (IToken);

    function startTime() external view returns (uint256);

    function CHAPTER_LENGTH() external view returns (uint256);

    function totalBurns() external view returns (uint256);

    function tokenInfo(uint256) external view returns (IToken, uint256, uint256, bool);

    function chapterBurned(uint256, uint256) external view returns (uint256);

    function userBurned(address, uint256, uint256) external view returns (uint256);

    function userBurnedTotal(address) external view returns (uint256);

    function getAllPerChapter(uint256) external view returns (TokenInfo[] memory);

    function chapter() external view returns (uint256);
}
