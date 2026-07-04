// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;
interface IComptroller {
    struct CompMarketState {
        uint224 index;
        uint32 block;
    }
    function claimComp(address holder) external ;
    function getCompAddress() external view returns(address);
    function compSupplyState(address ctoken) external view returns (CompMarketState calldata);
    function compSupplierIndex(address ctoken,address user) external view returns (uint256);
    function compAccrued(address user) external view returns (uint256);
}