// SPDX-License-Identifier: MIT
pragma solidity 0.8.14;

interface IParaSpaceTimelock {
    function claim(uint256[] memory agreementIds) external;

    function claimETH(uint256[] memory agreementIds) external;

    function claimMoonBirds(uint256[] memory agreementIds) external;

    function claimPunk(uint256[] memory agreementIds) external;
}
