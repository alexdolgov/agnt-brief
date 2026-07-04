// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

interface IGuessHook {
    function onGuess(address player, uint32 gameId, bytes32 phraseHash) external;
}
