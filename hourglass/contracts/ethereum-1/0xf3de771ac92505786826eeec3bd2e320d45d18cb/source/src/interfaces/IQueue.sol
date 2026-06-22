// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {IERC1155Upgradeable as IERC1155} from
    "@openzeppelin-contracts-upgradeable/contracts/token/ERC1155/IERC1155Upgradeable.sol";

interface IQueue is IERC1155 {
    function mintQueuePosition(address account, uint256 amount, uint256 queueTranche, uint256 positionId) external;
    function burnQueuePosition(address account, uint256 amount, uint256 positionId) external;
    function burnBatchQueuePositions(address account, uint256[] memory amounts, uint256[] memory positionIds)
        external;
    function tokenTranche(uint256 positionId) external view returns (uint256 queueTranche);
    function minter() external view returns (address);
    function tranchesAndAmounts(uint256[] calldata positionIds)
        external
        view
        returns (uint256[] memory tranches, uint256[] memory amountsBurned); //, uint256[] memory userBalances);
    function balanceAndTranche(address account, uint256 positionId)
        external
        view
        returns (uint256 balance, uint256 queueTranche);
    function balancesOf(address account, uint256[] calldata positionIds)
        external
        view
        returns (uint256[] memory balances);
    /// Supply components
    function totalSupplyCreated(uint256 positionId) external view returns (uint256);
    function totalAmountBurned(uint256 positionId) external view returns (uint256);
    function currentSupply(uint256 positionId) external view returns (uint256);
    function exists(uint256 positionId) external view returns (bool);
    function supplys(uint256 positionId) external view returns (uint256, uint256);
}
