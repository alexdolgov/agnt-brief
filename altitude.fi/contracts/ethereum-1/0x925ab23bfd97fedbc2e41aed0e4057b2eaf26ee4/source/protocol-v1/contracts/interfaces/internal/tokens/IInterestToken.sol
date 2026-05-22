// SPDX-License-Identifier: AGPL-3.0.
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/interfaces/IERC20Metadata.sol";

interface IInterestToken is IERC20, IERC20Metadata {
    event UserSnapshot(address account, uint256 _interestIndex);

    // Interest Token Errors
    error IT_ONLY_VAULT();
    error IT_MINT_MORE_THAN_SIZE();
    error IT_TRANSFER_NOT_SUPPORTED();
    error IT_INTEREST_INDEX_OUT_OF_RANGE();
    error IT_TOKEN_ITESELF_HAS_NO_BALANCE();
    error IT_INSUFFICIENT_TOKENS_IN_BUFFER();
    error IT_TRANSFER_BETWEEN_THE_SAME_ADDRESSES();

    function vault() external view returns (address);

    function underlying() external view returns (address);

    function activeLenderStrategy() external view returns (address);

    function balanceAtIndex() external view returns (int256);

    function userIndex(address user) external view returns (uint256);

    function interestIndex() external view returns (uint256);

    function bufferSize() external view returns (uint256);

    function bufferDetails() external view returns (uint256, uint256);

    function bufferTaken() external view returns (uint256);

    function mint(address account, uint256 amount) external;

    function mintBuffer(uint256 amount) external;

    function burnBuffer(uint256 amount) external;

    function burn(address account, uint256 amount) external;

    function transferToBuffer(address from, uint256 amount) external;

    function transferFromBuffer(address to, uint256 amount) external;

    function vaultTransfer(
        address owner,
        address to,
        uint256 amount
    ) external returns (bool);

    function setActiveLenderStrategy(address newStrategy) external;

    function setBufferSize(
        uint256 newBufferSize
    ) external returns (bool, uint256);

    function increaseBalanceAtIndex(uint256 amount) external;

    function snapshotUser(address account) external;

    function snapshot() external;

    function calcNewIndex()
        external
        view
        returns (uint256 index, int256 balanceCurrent);

    function circulatingSupply(
        uint256 index
    ) external view returns (uint256 balance);

    function balanceStored(address account) external view returns (uint256);

    function setBalance(
        address account,
        uint256 newBalance,
        uint256 newIndex
    ) external;

    function calcLiquidationData()
        external
        view
        returns (
            uint256 liquidationLoss,
            uint256 indexAtLiquidation,
            uint256 totalBalanceAtLiquidation
        );

    function updateTotalBalance(uint256 newBalanceAtIndex) external;
}
