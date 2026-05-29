// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

/**
 * @title IICHIVaultHelper
 * @notice Interface for ICHIVaultHelper contract
 * @dev Provides view functions to get staked and unstaked positions
 */
interface IICHIVaultHelper {
    struct UserPosition {
        uint256 amountToken0;
        uint256 amountToken1;
        uint256 lpBalance;
    }

    struct CompleteUserPosition {
        uint256 amountToken0;
        uint256 amountToken1;
        uint256 lpBalance;
        uint256 earnedRewards;
    }

    // Single vault functions
    function getUserPositions(address vault, address user) external view returns (UserPosition[] memory);
    function getUserStakedPosition(address vault, address user) external view returns (UserPosition memory);
    function getUserUnstakedPosition(address vault, address user) external view returns (UserPosition memory);
    function getPositionAmounts(address vault, uint256 lpBalance) external view returns (UserPosition memory);
    function getCompleteUserPositions(address vault, address user) external view returns (CompleteUserPosition[] memory);
    function getCompleteUserStakedPosition(address vault, address user) external view returns (CompleteUserPosition memory);
    function getCompleteUserUnstakedPosition(address vault, address user) external view returns (CompleteUserPosition memory);

    // Multi vault functions
    function getUserPositionsMulti(address[] calldata vaults, address user) external view returns (UserPosition[][] memory);
    function getUserStakedPositionsMulti(address[] calldata vaults, address user) external view returns (UserPosition[] memory);
    function getUserUnstakedPositionsMulti(address[] calldata vaults, address user) external view returns (UserPosition[] memory);
    function getPositionAmountsMulti(address[] calldata vaults, uint256[] calldata lpBalances) external view returns (UserPosition[] memory);
    function getCompleteUserPositionsMulti(address[] calldata vaults, address user) external view returns (CompleteUserPosition[][] memory);
    function getCompleteUserStakedPositionsMulti(address[] calldata vaults, address user) external view returns (CompleteUserPosition[] memory);
    function getCompleteUserUnstakedPositionsMulti(address[] calldata vaults, address user) external view returns (CompleteUserPosition[] memory);

    // Additional view functions
    function voter() external view returns (address);
}