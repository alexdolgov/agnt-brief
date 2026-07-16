// SPDX-License-Identifier: GPL-v3
pragma solidity 0.8.21;

interface IPositionManager9 {
	struct DepositReservesParams {
        uint16 protocolId;
        address cfmm;
        address to;
        uint256 deadline;
        uint256[] amountsDesired;
        uint256[] amountsMin;
    }

	function depositReserves(DepositReservesParams calldata params) external returns (uint256[] memory reserves, uint256 shares);
}