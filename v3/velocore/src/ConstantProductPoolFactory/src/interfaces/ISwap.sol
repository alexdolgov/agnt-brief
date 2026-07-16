// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.19;

import "src/lib/Token.sol";
import "./IPool.sol";

interface ISwap is IPool {
    function velocore__execute(address user, Token[] calldata tokens, int128[] memory amounts, bytes calldata data)
        external
        returns (int128[] memory, int128[] memory);
    function swapType() external view returns (string memory);
    function listedTokens() external view returns (Token[] memory);
    function lpTokens() external view returns (Token[] memory);
    function underlyingTokens(Token lp) external view returns (Token[] memory);
    //function spotPrice(Token token, Token base) external view returns (uint256);
}
