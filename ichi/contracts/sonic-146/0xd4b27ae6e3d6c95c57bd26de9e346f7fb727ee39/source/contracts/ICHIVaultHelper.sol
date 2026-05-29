// SPDX-License-Identifier: MIT
pragma solidity >=0.8.4;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import { IICHIVaultHelper } from "../interfaces/IICHIVaultHelper.sol";

interface IICHIVault is IERC20 {
    function getTotalAmounts() external view returns (uint256, uint256);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function totalSupply() external view returns (uint256);
}

interface IVoterV3 {
    function gauges(address vault) external view returns (address);
}

interface IGaugeV2 {
    function balanceOf(address account) external view returns (uint256);
    function earned(address account) external view returns (uint256);
}

/**
 * @title ICHIVaultHelper
 * @notice Helper contract to fetch user positions in ICHIVaults
 * @dev Provides view functions to get staked and unstaked positions
 */
contract ICHIVaultHelper is IICHIVaultHelper {
    using SafeMath for uint256;

    address public immutable voter;

    /**
     * @notice Constructor
     * @param _voter Address of the VoterV3 contract
     */
    constructor(address _voter) {
        require(_voter != address(0), "ICHIVaultHelper: voter cannot be zero address");
        voter = _voter;
    }

    /**
     * @notice Get user positions (staked + unstaked) in an ICHIVault
     * @param vault Address of the ICHIVault
     * @param user Address of the user
     * @return positions Array of user positions
     */
    function getUserPositions(address vault, address user) external override view returns (UserPosition[] memory) {
        UserPosition[] memory positions = new UserPosition[](2);

        IICHIVault ichiVault = IICHIVault(vault);
        uint256 totalSupply = ichiVault.totalSupply();

        // Get unstaked LP balance
        uint256 unstakedLpBalance = ichiVault.balanceOf(user);

        // Get staked LP balance
        address gauge = IVoterV3(voter).gauges(vault);
        uint256 stakedLpBalance = (gauge != address(0)) ? IGaugeV2(gauge).balanceOf(user) : 0;

        // If totalSupply is 0 or user has no balance, return zero positions
        if (totalSupply == 0 || (unstakedLpBalance == 0 && stakedLpBalance == 0)) {
            positions[0] = UserPosition(0, 0, unstakedLpBalance);
            positions[1] = UserPosition(0, 0, stakedLpBalance);
            return positions;
        }

        // Get total amounts in the vault only once
        (uint256 total0, uint256 total1) = ichiVault.getTotalAmounts();

        // Calculate unstaked position
        if (unstakedLpBalance > 0) {
            uint256 amount0 = total0.mul(unstakedLpBalance).div(totalSupply);
            uint256 amount1 = total1.mul(unstakedLpBalance).div(totalSupply);
            positions[0] = UserPosition(amount0, amount1, unstakedLpBalance);
        } else {
            positions[0] = UserPosition(0, 0, 0);
        }

        // Calculate staked position
        if (stakedLpBalance > 0) {
            uint256 amount0 = total0.mul(stakedLpBalance).div(totalSupply);
            uint256 amount1 = total1.mul(stakedLpBalance).div(totalSupply);
            positions[1] = UserPosition(amount0, amount1, stakedLpBalance);
        } else {
            positions[1] = UserPosition(0, 0, 0);
        }

        return positions;
    }

    /**
     * @notice Get user's staked position in an ICHIVault
     * @param vault Address of the ICHIVault
     * @param user Address of the user
     * @return position User's staked position
     */
    function getUserStakedPosition(address vault, address user) public override view returns (UserPosition memory) {
        // Get the gauge associated with the vault
        address gauge = IVoterV3(voter).gauges(vault);

        // If no gauge exists, return zero position
        if (gauge == address(0)) {
            return UserPosition(0, 0, 0);
        }

        // Get user's staked LP balance
        uint256 stakedLpBalance = IGaugeV2(gauge).balanceOf(user);

        // Calculate equivalent token amounts
        return getPositionAmounts(vault, stakedLpBalance);
    }

    /**
     * @notice Get user's unstaked position in an ICHIVault
     * @param vault Address of the ICHIVault
     * @param user Address of the user
     * @return position User's unstaked position
     */
    function getUserUnstakedPosition(address vault, address user) public override view returns (UserPosition memory) {
        // Get user's unstaked LP balance
        uint256 unstakedLpBalance = IICHIVault(vault).balanceOf(user);

        // Calculate equivalent token amounts
        return getPositionAmounts(vault, unstakedLpBalance);
    }

    /**
     * @notice Calculate token amounts for a given LP balance
     * @param vault Address of the ICHIVault
     * @param lpBalance LP token balance
     * @return position Calculated position with token amounts
     */
    function getPositionAmounts(address vault, uint256 lpBalance) public override view returns (UserPosition memory) {
        if (lpBalance == 0) {
            return UserPosition(0, 0, lpBalance);
        }

        IICHIVault ichiVault = IICHIVault(vault);
        uint256 totalSupply = ichiVault.totalSupply();

        // If totalSupply is 0, return zero position to avoid division by zero
        if (totalSupply == 0) {
            return UserPosition(0, 0, lpBalance);
        }

        // Get total amounts in the vault
        (uint256 total0, uint256 total1) = ichiVault.getTotalAmounts();

        // Calculate user's share of tokens
        uint256 amount0 = total0.mul(lpBalance).div(totalSupply);
        uint256 amount1 = total1.mul(lpBalance).div(totalSupply);

        return UserPosition(amount0, amount1, lpBalance);
    }

    /**
     * @notice Get complete user positions (staked + unstaked) with rewards in an ICHIVault
     * @param vault Address of the ICHIVault
     * @param user Address of the user
     * @return positions Array of complete user positions
     */
    function getCompleteUserPositions(address vault, address user) external override view returns (CompleteUserPosition[] memory) {
        CompleteUserPosition[] memory positions = new CompleteUserPosition[](2);

        IICHIVault ichiVault = IICHIVault(vault);
        uint256 totalSupply = ichiVault.totalSupply();

        // Get unstaked LP balance
        uint256 unstakedLpBalance = ichiVault.balanceOf(user);

        // Get staked LP balance and rewards
        address gauge = IVoterV3(voter).gauges(vault);
        uint256 stakedLpBalance = 0;
        uint256 earnedRewards = 0;

        if (gauge != address(0)) {
            stakedLpBalance = IGaugeV2(gauge).balanceOf(user);
            earnedRewards = IGaugeV2(gauge).earned(user);
        }

        // If totalSupply is 0 or user has no balance, return zero positions
        if (totalSupply == 0 || (unstakedLpBalance == 0 && stakedLpBalance == 0)) {
            positions[0] = CompleteUserPosition(0, 0, unstakedLpBalance, 0);
            positions[1] = CompleteUserPosition(0, 0, stakedLpBalance, earnedRewards);
            return positions;
        }

        // Get total amounts in the vault only once
        (uint256 total0, uint256 total1) = ichiVault.getTotalAmounts();

        // Calculate unstaked position (rewards always 0)
        if (unstakedLpBalance > 0) {
            uint256 amount0 = total0.mul(unstakedLpBalance).div(totalSupply);
            uint256 amount1 = total1.mul(unstakedLpBalance).div(totalSupply);
            positions[0] = CompleteUserPosition(amount0, amount1, unstakedLpBalance, 0);
        } else {
            positions[0] = CompleteUserPosition(0, 0, 0, 0);
        }

        // Calculate staked position with rewards
        if (stakedLpBalance > 0) {
            uint256 amount0 = total0.mul(stakedLpBalance).div(totalSupply);
            uint256 amount1 = total1.mul(stakedLpBalance).div(totalSupply);
            positions[1] = CompleteUserPosition(amount0, amount1, stakedLpBalance, earnedRewards);
        } else {
            positions[1] = CompleteUserPosition(0, 0, 0, earnedRewards);
        }

        return positions;
    }

    /**
     * @notice Get user's complete staked position with rewards in an ICHIVault
     * @param vault Address of the ICHIVault
     * @param user Address of the user
     * @return position User's complete staked position
     */
    function getCompleteUserStakedPosition(address vault, address user) public override view returns (CompleteUserPosition memory) {
        // Get the gauge associated with the vault
        address gauge = IVoterV3(voter).gauges(vault);

        // If no gauge exists, return zero position
        if (gauge == address(0)) {
            return CompleteUserPosition(0, 0, 0, 0);
        }

        // Get user's staked LP balance
        uint256 stakedLpBalance = IGaugeV2(gauge).balanceOf(user);

        // Get user's earned rewards
        uint256 earnedRewards = IGaugeV2(gauge).earned(user);

        // Calculate equivalent token amounts
        UserPosition memory basePosition = getPositionAmounts(vault, stakedLpBalance);

        return CompleteUserPosition(
            basePosition.amountToken0,
            basePosition.amountToken1,
            stakedLpBalance,
            earnedRewards
        );
    }

    /**
     * @notice Get user's complete unstaked position in an ICHIVault
     * @param vault Address of the ICHIVault
     * @param user Address of the user
     * @return position User's complete unstaked position
     */
    function getCompleteUserUnstakedPosition(address vault, address user) public override view returns (CompleteUserPosition memory) {
        // Get user's unstaked position
        UserPosition memory unstakedPosition = getUserUnstakedPosition(vault, user);

        // For unstaked positions, earned rewards are always 0
        return CompleteUserPosition(
            unstakedPosition.amountToken0,
            unstakedPosition.amountToken1,
            unstakedPosition.lpBalance,
            0
        );
    }

    /**
     * @notice Get user positions across multiple ICHIVaults
     * @param vaults Array of ICHIVault addresses
     * @param user Address of the user
     * @return positions Array of arrays of user positions (staked + unstaked)
     */
    function getUserPositionsMulti(address[] calldata vaults, address user) external override view returns (UserPosition[][] memory) {
        UserPosition[][] memory allPositions = new UserPosition[][](vaults.length);

        for (uint256 i = 0; i < vaults.length; i++) {
            address vault = vaults[i];
            allPositions[i] = new UserPosition[](2);

            IICHIVault ichiVault = IICHIVault(vault);
            uint256 totalSupply = ichiVault.totalSupply();

            // Get unstaked LP balance
            uint256 unstakedLpBalance = ichiVault.balanceOf(user);

            // Get staked LP balance
            address gauge = IVoterV3(voter).gauges(vault);
            uint256 stakedLpBalance = (gauge != address(0)) ? IGaugeV2(gauge).balanceOf(user) : 0;

            // If totalSupply is 0 or user has no balance, return zero positions for this vault
            if (totalSupply == 0 || (unstakedLpBalance == 0 && stakedLpBalance == 0)) {
                allPositions[i][0] = UserPosition(0, 0, unstakedLpBalance);
                allPositions[i][1] = UserPosition(0, 0, stakedLpBalance);
                continue;
            }

            // Get total amounts in the vault only once
            (uint256 total0, uint256 total1) = ichiVault.getTotalAmounts();

            // Calculate unstaked position
            if (unstakedLpBalance > 0) {
                uint256 amount0 = total0.mul(unstakedLpBalance).div(totalSupply);
                uint256 amount1 = total1.mul(unstakedLpBalance).div(totalSupply);
                allPositions[i][0] = UserPosition(amount0, amount1, unstakedLpBalance);
            } else {
                allPositions[i][0] = UserPosition(0, 0, 0);
            }

            // Calculate staked position
            if (stakedLpBalance > 0) {
                uint256 amount0 = total0.mul(stakedLpBalance).div(totalSupply);
                uint256 amount1 = total1.mul(stakedLpBalance).div(totalSupply);
                allPositions[i][1] = UserPosition(amount0, amount1, stakedLpBalance);
            } else {
                allPositions[i][1] = UserPosition(0, 0, 0);
            }
        }

        return allPositions;
    }

    /**
     * @notice Get user's staked positions across multiple ICHIVaults
     * @param vaults Array of ICHIVault addresses
     * @param user Address of the user
     * @return positions Array of user's staked positions
     */
    function getUserStakedPositionsMulti(address[] calldata vaults, address user) external override view returns (UserPosition[] memory) {
        UserPosition[] memory positions = new UserPosition[](vaults.length);

        for (uint256 i = 0; i < vaults.length; i++) {
            positions[i] = getUserStakedPosition(vaults[i], user);
        }

        return positions;
    }

    /**
     * @notice Get user's unstaked positions across multiple ICHIVaults
     * @param vaults Array of ICHIVault addresses
     * @param user Address of the user
     * @return positions Array of user's unstaked positions
     */
    function getUserUnstakedPositionsMulti(address[] calldata vaults, address user) external override view returns (UserPosition[] memory) {
        UserPosition[] memory positions = new UserPosition[](vaults.length);

        for (uint256 i = 0; i < vaults.length; i++) {
            positions[i] = getUserUnstakedPosition(vaults[i], user);
        }

        return positions;
    }

    /**
     * @notice Calculate token amounts for LP balances across multiple ICHIVaults
     * @param vaults Array of ICHIVault addresses
     * @param lpBalances Array of LP token balances
     * @return positions Array of calculated positions with token amounts
     */
    function getPositionAmountsMulti(address[] calldata vaults, uint256[] calldata lpBalances) external override view returns (UserPosition[] memory) {
        require(vaults.length == lpBalances.length, "ICHIVaultHelper: arrays length mismatch");

        UserPosition[] memory positions = new UserPosition[](vaults.length);

        for (uint256 i = 0; i < vaults.length; i++) {
            positions[i] = getPositionAmounts(vaults[i], lpBalances[i]);
        }

        return positions;
    }

    /**
     * @notice Get complete user positions across multiple ICHIVaults
     * @param vaults Array of ICHIVault addresses
     * @param user Address of the user
     * @return positions Array of arrays of complete user positions
     */
    function getCompleteUserPositionsMulti(address[] calldata vaults, address user) external override view returns (CompleteUserPosition[][] memory) {
        CompleteUserPosition[][] memory allPositions = new CompleteUserPosition[][](vaults.length);

        for (uint256 i = 0; i < vaults.length; i++) {
            address vault = vaults[i];
            allPositions[i] = new CompleteUserPosition[](2);

            IICHIVault ichiVault = IICHIVault(vault);
            uint256 totalSupply = ichiVault.totalSupply();

            // Get unstaked LP balance
            uint256 unstakedLpBalance = ichiVault.balanceOf(user);

            // Get staked LP balance and rewards
            address gauge = IVoterV3(voter).gauges(vault);
            uint256 stakedLpBalance = 0;
            uint256 earnedRewards = 0;

            if (gauge != address(0)) {
                stakedLpBalance = IGaugeV2(gauge).balanceOf(user);
                earnedRewards = IGaugeV2(gauge).earned(user);
            }

            // If totalSupply is 0 or user has no balance, return zero positions for this vault
            if (totalSupply == 0 || (unstakedLpBalance == 0 && stakedLpBalance == 0)) {
                allPositions[i][0] = CompleteUserPosition(0, 0, unstakedLpBalance, 0);
                allPositions[i][1] = CompleteUserPosition(0, 0, stakedLpBalance, earnedRewards);
                continue;
            }

            // Get total amounts in the vault only once
            (uint256 total0, uint256 total1) = ichiVault.getTotalAmounts();

            // Calculate unstaked position (rewards always 0)
            if (unstakedLpBalance > 0) {
                uint256 amount0 = total0.mul(unstakedLpBalance).div(totalSupply);
                uint256 amount1 = total1.mul(unstakedLpBalance).div(totalSupply);
                allPositions[i][0] = CompleteUserPosition(amount0, amount1, unstakedLpBalance, 0);
            } else {
                allPositions[i][0] = CompleteUserPosition(0, 0, 0, 0);
            }

            // Calculate staked position with rewards
            if (stakedLpBalance > 0) {
                uint256 amount0 = total0.mul(stakedLpBalance).div(totalSupply);
                uint256 amount1 = total1.mul(stakedLpBalance).div(totalSupply);
                allPositions[i][1] = CompleteUserPosition(amount0, amount1, stakedLpBalance, earnedRewards);
            } else {
                allPositions[i][1] = CompleteUserPosition(0, 0, 0, earnedRewards);
            }
        }

        return allPositions;
    }

    /**
     * @notice Get user's complete staked positions across multiple ICHIVaults
     * @param vaults Array of ICHIVault addresses
     * @param user Address of the user
     * @return positions Array of user's complete staked positions
     */
    function getCompleteUserStakedPositionsMulti(address[] calldata vaults, address user) external override view returns (CompleteUserPosition[] memory) {
        CompleteUserPosition[] memory positions = new CompleteUserPosition[](vaults.length);

        for (uint256 i = 0; i < vaults.length; i++) {
            positions[i] = getCompleteUserStakedPosition(vaults[i], user);
        }

        return positions;
    }

    /**
     * @notice Get user's complete unstaked positions across multiple ICHIVaults
     * @param vaults Array of ICHIVault addresses
     * @param user Address of the user
     * @return positions Array of user's complete unstaked positions
     */
    function getCompleteUserUnstakedPositionsMulti(address[] calldata vaults, address user) external override view returns (CompleteUserPosition[] memory) {
        CompleteUserPosition[] memory positions = new CompleteUserPosition[](vaults.length);

        for (uint256 i = 0; i < vaults.length; i++) {
            positions[i] = getCompleteUserUnstakedPosition(vaults[i], user);
        }

        return positions;
    }

}