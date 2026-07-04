/*
    Copyright (C) 2020 InsurAce.io

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see http://www.gnu.org/licenses/
*/

// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.7.3;

interface IClaim {
    function getClaimFeeAmount(uint256 claimAmount) external view returns (uint256);

    function getAdjustedClaimStatus(uint256 claimId) external view returns (uint256);

    function getClaimDetails(uint256 claimId)
        external
        view
        returns (
            uint256,
            address,
            uint256,
            uint256,
            uint256,
            string memory,
            uint256
        );

    function claim(
        uint256 coverId,
        uint256 lossAmount,
        uint256 lossEventTime,
        uint256 claimAmount,
        string memory otherClaimInfo
    ) external payable;

    function deposit(address currency, uint256 amount) external payable;

    function withdrawPayout(address currency, uint256 amount) external;

    function unlockRewardByController(address assessor, address to) external returns (uint256);

    function getRewardAmount() external view returns (uint256);
}
