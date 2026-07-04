// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IOracleBonds {
    /* ========== VIEWS / VARIABLES ========== */
    function getTotalDepositedBondAmountForMarket(address _market) external view returns (uint256);

    function getClaimedBondAmountForMarket(address _market) external view returns (uint256);

    function getClaimableBondAmountForMarket(address _market) external view returns (uint256);

    function getDisputorBondForMarket(address _market, address _disputorAddress) external view returns (uint256);

    function getResolverBondForMarket(address _market) external view returns (uint256);

    function getEscalatedDisputorBondForMarket(address _market) external view returns (uint256);

    function sendResolverBondToMarket(address _market, address _resolverAddress, uint256 _amount) external;

    function sendDisputorBondToMarket(address _market, address _disputorAddress, uint256 _amount) external;

    function sendEscalatedDisputorBondToMarket(address _market, address _escalatedDisputorAddress, uint256 _amount)
        external;

    function sendOpenDisputeBondFromMarketToDisputor(address _market, address _disputorAddress) external;

    function sendBondFromMarketToSafeBox(address _market, uint256 _bondToReduce, address _disputorAddress) external;

    function setManagerAddress(address _managerAddress) external;

    function issueBondsBackToResolver(address _market) external;

    function issueBondsBackToEscalatedDisputor(address _market) external;

    function issueBondsBackToDisputor(address _market, address _disputorAddress) external;
}

