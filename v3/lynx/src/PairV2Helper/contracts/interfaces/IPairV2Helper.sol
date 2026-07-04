// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

/**
 * @title IPairV2Helper
 * @notice Interface for PairV2Helper contract
 * @dev Provides view functions to get staked and unstaked positions
 */
interface IPairV2Helper {
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

    struct EarnedFees {
        uint256 fees0;
        uint256 fees1;
    }

    // Single pair functions
    function getUserPositions(address pair, address user) external view returns (UserPosition[] memory);
    function getUserStakedPosition(address pair, address user) external view returns (UserPosition memory);
    function getUserUnstakedPosition(address pair, address user) external view returns (UserPosition memory);
    function getPositionAmounts(address pair, uint256 lpBalance) external view returns (UserPosition memory);
    function getCompleteUserPositions(address pair, address user) external view returns (CompleteUserPosition[] memory);
    function getCompleteUserStakedPosition(address pair, address user) external view returns (CompleteUserPosition memory);
    function getCompleteUserUnstakedPosition(address pair, address user) external view returns (CompleteUserPosition memory);

    // Multi pair functions
    function getUserPositionsMulti(address[] calldata pairs, address user) external view returns (UserPosition[][] memory);
    function getUserStakedPositionsMulti(address[] calldata pairs, address user) external view returns (UserPosition[] memory);
    function getUserUnstakedPositionsMulti(address[] calldata pairs, address user) external view returns (UserPosition[] memory);
    function getPositionAmountsMulti(address[] calldata pairs, uint256[] calldata lpBalances) external view returns (UserPosition[] memory);
    function getCompleteUserPositionsMulti(address[] calldata pairs, address user) external view returns (CompleteUserPosition[][] memory);
    function getCompleteUserStakedPositionsMulti(address[] calldata pairs, address user) external view returns (CompleteUserPosition[] memory);
    function getCompleteUserUnstakedPositionsMulti(address[] calldata pairs, address user) external view returns (CompleteUserPosition[] memory);

    // Additional view functions
    function voter() external view returns (address);
}