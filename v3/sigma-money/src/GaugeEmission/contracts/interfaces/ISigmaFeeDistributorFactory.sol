// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.26;

interface ISigmaFeeDistributorFactory {
    function createFeeDistributor() external returns (address);
}
