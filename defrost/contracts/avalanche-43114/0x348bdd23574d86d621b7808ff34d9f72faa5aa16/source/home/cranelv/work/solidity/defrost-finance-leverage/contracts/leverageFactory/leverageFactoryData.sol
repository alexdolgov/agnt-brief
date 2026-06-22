// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.7.0 <0.8.0;
import "../modules/proxyOwner.sol";
abstract contract leverageFactoryData is proxyOwner{
    mapping(bytes32=>address) public poolsMap;
    address[] public allPools;
    address payable public feePool;
    address public oracle;

    event CreateLeveragePool(address indexed poolAddress,bytes32 indexed poolID,
    address lendingPool,address underlying,uint256 collateralRate,uint256 liquidationReward,uint256 liquidationPenalty);
}