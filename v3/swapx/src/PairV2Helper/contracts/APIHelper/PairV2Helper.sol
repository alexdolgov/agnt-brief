// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import {IGauge} from "../interfaces/IGauge.sol";
import {IVoter} from "../interfaces/IVoter.sol";
import {IPairV2Helper} from "../interfaces/IPairV2Helper.sol";

interface IPair {
    function totalSupply() external view returns (uint256);
    function balanceOf(address user) external view returns (uint256);
    function getReserves()
        external
        view
        returns (
            uint256 reserve0,
            uint256 reserve1,
            uint256 blockTimestampLast
        );
    function claimable0(address user) external view returns (uint256);
    function claimable1(address user) external view returns (uint256);
    function index0() external view returns (uint256);
    function index1() external view returns (uint256);
    function supplyIndex0(address user) external view returns (uint256);
    function supplyIndex1(address user) external view returns (uint256);
}

contract PairV2Helper is IPairV2Helper {
    address public immutable voter;

    /**
     * @notice Constructor
     * @param _voter Address of the VoterV3 contract
     */
    constructor(address _voter) {
        require(
            _voter != address(0),
            "PairV2Helper: voter cannot be zero address"
        );
        voter = _voter;
    }

    /**
     * @notice Get user positions (staked + unstaked) in a Pair contract
     * @param pair Address of the Pair contract
     * @param user Address of the user
     * @return positions Array of user positions
     */
    function getUserPositions(
        address pair,
        address user
    ) external view override returns (UserPosition[] memory) {
        UserPosition[] memory positions = new UserPosition[](2);

        IPair pairInst = IPair(pair);
        uint256 totalSupply = pairInst.totalSupply();

        // Get unstaked LP balance
        uint256 unstakedLpBalance = pairInst.balanceOf(user);

        // Get staked LP balance
        address gauge = IVoter(voter).gauges(pair);
        uint256 stakedLpBalance = (gauge != address(0))
            ? IGauge(gauge).balanceOf(user)
            : 0;

        // If totalSupply is 0 or user has no balance, return zero positions
        if (
            totalSupply == 0 || (unstakedLpBalance == 0 && stakedLpBalance == 0)
        ) {
            positions[0] = UserPosition(0, 0, unstakedLpBalance);
            positions[1] = UserPosition(0, 0, stakedLpBalance);
            return positions;
        }

        // Get total amounts in the pair only once
        (uint256 total0, uint256 total1, ) = pairInst.getReserves();

        // Calculate unstaked position
        if (unstakedLpBalance > 0) {
            uint256 amount0 = (total0 * unstakedLpBalance) / totalSupply;
            uint256 amount1 = (total1 * unstakedLpBalance) / totalSupply;
            positions[0] = UserPosition(amount0, amount1, unstakedLpBalance);
        } else {
            positions[0] = UserPosition(0, 0, 0);
        }

        // Calculate staked position
        if (stakedLpBalance > 0) {
            uint256 amount0 = (total0 * stakedLpBalance) / totalSupply;
            uint256 amount1 = (total1 * stakedLpBalance) / totalSupply;
            positions[1] = UserPosition(amount0, amount1, stakedLpBalance);
        } else {
            positions[1] = UserPosition(0, 0, 0);
        }

        return positions;
    }

    /**
     * @notice Get user's staked position in a Pair contract
     * @param pair Address of the Pair contract
     * @param user Address of the user
     * @return position User's staked position
     */
    function getUserStakedPosition(
        address pair,
        address user
    ) public view override returns (UserPosition memory) {
        // Get the gauge associated with the pair
        address gauge = IVoter(voter).gauges(pair);

        // If no gauge exists, return zero position
        if (gauge == address(0)) {
            return UserPosition(0, 0, 0);
        }

        // Get user's staked LP balance
        uint256 stakedLpBalance = IGauge(gauge).balanceOf(user);

        // Calculate equivalent token amounts
        return getPositionAmounts(pair, stakedLpBalance);
    }

    /**
     * @notice Get user's unstaked position in a Pair contract
     * @param pair Address of the Pair contract
     * @param user Address of the user
     * @return position User's unstaked position
     */
    function getUserUnstakedPosition(
        address pair,
        address user
    ) public view override returns (UserPosition memory) {
        // Get user's unstaked LP balance
        uint256 unstakedLpBalance = IPair(pair).balanceOf(user);

        // Calculate equivalent token amounts
        return getPositionAmounts(pair, unstakedLpBalance);
    }

    /**
     * @notice Calculate token amounts for a given LP balance
     * @param pair Address of the Pair contract
     * @param lpBalance LP token balance
     * @return position Calculated position with token amounts
     */
    function getPositionAmounts(
        address pair,
        uint256 lpBalance
    ) public view override returns (UserPosition memory) {
        if (lpBalance == 0) {
            return UserPosition(0, 0, lpBalance);
        }

        IPair pairInst = IPair(pair);
        uint256 totalSupply = pairInst.totalSupply();

        // If totalSupply is 0, return zero position to avoid division by zero
        if (totalSupply == 0) {
            return UserPosition(0, 0, lpBalance);
        }

        // Get total amounts in the pair
        (uint256 total0, uint256 total1, ) = pairInst.getReserves();

        // Calculate user's share of tokens
        uint256 amount0 = (total0 * lpBalance) / totalSupply;
        uint256 amount1 = (total1 * lpBalance) / totalSupply;

        return UserPosition(amount0, amount1, lpBalance);
    }

    /**
     * @notice Get complete user positions (staked + unstaked) with rewards in a Pair contract
     * @param pair Address of the Pair contract
     * @param user Address of the user
     * @return positions Array of complete user positions
     */
    function getCompleteUserPositions(
        address pair,
        address user
    ) external view override returns (CompleteUserPosition[] memory) {
        CompleteUserPosition[] memory positions = new CompleteUserPosition[](2);

        IPair pairInst = IPair(pair);
        uint256 totalSupply = pairInst.totalSupply();

        // Get unstaked LP balance
        uint256 unstakedLpBalance = pairInst.balanceOf(user);

        // Get staked LP balance and rewards
        address gauge = IVoter(voter).gauges(pair);
        uint256 stakedLpBalance = 0;
        uint256 earnedRewards = 0;

        if (gauge != address(0)) {
            stakedLpBalance = IGauge(gauge).balanceOf(user);
            earnedRewards = IGauge(gauge).earned(user);
        }

        // If totalSupply is 0 or user has no balance, return zero positions
        if (
            totalSupply == 0 || (unstakedLpBalance == 0 && stakedLpBalance == 0)
        ) {
            positions[0] = CompleteUserPosition(0, 0, unstakedLpBalance, 0);
            positions[1] = CompleteUserPosition(
                0,
                0,
                stakedLpBalance,
                earnedRewards
            );
            return positions;
        }

        // Get total amounts in the pair only once
        (uint256 total0, uint256 total1, ) = pairInst.getReserves();

        // Calculate unstaked position (rewards always 0)
        if (unstakedLpBalance > 0) {
            uint256 amount0 = (total0 * unstakedLpBalance) / totalSupply;
            uint256 amount1 = (total1 * unstakedLpBalance) / totalSupply;
            positions[0] = CompleteUserPosition(
                amount0,
                amount1,
                unstakedLpBalance,
                0
            );
        } else {
            positions[0] = CompleteUserPosition(0, 0, 0, 0);
        }

        // Calculate staked position with rewards
        if (stakedLpBalance > 0) {
            uint256 amount0 = (total0 * stakedLpBalance) / totalSupply;
            uint256 amount1 = (total1 * stakedLpBalance) / totalSupply;
            positions[1] = CompleteUserPosition(
                amount0,
                amount1,
                stakedLpBalance,
                earnedRewards
            );
        } else {
            positions[1] = CompleteUserPosition(0, 0, 0, earnedRewards);
        }

        return positions;
    }

    /**
     * @notice Get user's complete staked position with rewards in a Pair contract
     * @param pair Address of the Pair contract
     * @param user Address of the user
     * @return position User's complete staked position
     */
    function getCompleteUserStakedPosition(
        address pair,
        address user
    ) public view override returns (CompleteUserPosition memory) {
        // Get the gauge associated with the pair
        address gauge = IVoter(voter).gauges(pair);

        // If no gauge exists, return zero position
        if (gauge == address(0)) {
            return CompleteUserPosition(0, 0, 0, 0);
        }

        // Get user's staked LP balance
        uint256 stakedLpBalance = IGauge(gauge).balanceOf(user);

        // Get user's earned rewards
        uint256 earnedRewards = IGauge(gauge).earned(user);

        // Calculate equivalent token amounts
        UserPosition memory basePosition = getPositionAmounts(
            pair,
            stakedLpBalance
        );

        return
            CompleteUserPosition(
                basePosition.amountToken0,
                basePosition.amountToken1,
                stakedLpBalance,
                earnedRewards
            );
    }

    /**
     * @notice Get user's complete unstaked position in a Pair contract
     * @param pair Address of the Pair contract
     * @param user Address of the user
     * @return position User's complete unstaked position
     */
    function getCompleteUserUnstakedPosition(
        address pair,
        address user
    ) public view override returns (CompleteUserPosition memory) {
        // Get user's unstaked position
        UserPosition memory unstakedPosition = getUserUnstakedPosition(
            pair,
            user
        );

        // For unstaked positions, earned rewards are always 0
        return
            CompleteUserPosition(
                unstakedPosition.amountToken0,
                unstakedPosition.amountToken1,
                unstakedPosition.lpBalance,
                0
            );
    }

    /** @notice Get earned fees for user's unstaked v2 position
     * @param pair Pair contract addresses
     * @param user Address of the user
     * @return fees An amount of earned fees
     */
    function getEarnedFees(
        address pair,
        address user
    ) public view returns (EarnedFees memory fees) {
        IPair pairInst = IPair(pair);

        uint256 lpBalance = pairInst.balanceOf(user); // possible to has lpBalance == 0 and claimable > 0, so do not check

        (uint256 index0, uint256 index1) = (
            pairInst.index0(),
            pairInst.index1()
        );
        (uint256 supplyIndex0, uint256 supplyIndex1) = (
            pairInst.supplyIndex0(user),
            pairInst.supplyIndex1(user)
        );
        (uint256 claimable0, uint256 claimable1) = (
            pairInst.claimable0(user),
            pairInst.claimable1(user)
        );

        (fees.fees0, fees.fees1) = (
            (lpBalance * (index0 - supplyIndex0)) / 1e18 + claimable0,
            (lpBalance * (index1 - supplyIndex1)) / 1e18 + claimable1
        );
    }

    /** @notice Get earned fees for user's unstaked v2 position
     * @param pairs Array of Pair contract addresses
     * @param user Address of the user
     * @return fees An array of amounts of earned fees
     */
    function getEarnedFeesMulti(
        address[] calldata pairs,
        address user
    ) external view returns (EarnedFees[] memory fees) {
        uint256 len = pairs.length;
        fees = new EarnedFees[](len);
        for (uint256 i; i < len; ) {
            fees[i] = getEarnedFees(pairs[i], user);
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Get user positions across multiple Pair contracts
     * @param pairs Array of Pair contract addresses
     * @param user Address of the user
     * @return positions Array of arrays of user positions (staked + unstaked)
     */
    function getUserPositionsMulti(
        address[] calldata pairs,
        address user
    ) external view override returns (UserPosition[][] memory) {
        UserPosition[][] memory allPositions = new UserPosition[][](
            pairs.length
        );

        for (uint256 i = 0; i < pairs.length; i++) {
            address pair = pairs[i];
            IPair pairInst = IPair(pair);
            allPositions[i] = new UserPosition[](2);

            uint256 totalSupply = pairInst.totalSupply();

            // Get unstaked LP balance
            uint256 unstakedLpBalance = pairInst.balanceOf(user);

            // Get staked LP balance
            address gauge = IVoter(voter).gauges(pair);
            uint256 stakedLpBalance = (gauge != address(0))
                ? IGauge(gauge).balanceOf(user)
                : 0;

            // If totalSupply is 0 or user has no balance, return zero positions for this pair
            if (
                totalSupply == 0 ||
                (unstakedLpBalance == 0 && stakedLpBalance == 0)
            ) {
                allPositions[i][0] = UserPosition(0, 0, unstakedLpBalance);
                allPositions[i][1] = UserPosition(0, 0, stakedLpBalance);
                continue;
            }

            // Get total amounts in the pair only once
            (uint256 total0, uint256 total1, ) = pairInst.getReserves();

            // Calculate unstaked position
            if (unstakedLpBalance > 0) {
                uint256 amount0 = (total0 * unstakedLpBalance) / totalSupply;
                uint256 amount1 = (total1 * unstakedLpBalance) / totalSupply;
                allPositions[i][0] = UserPosition(
                    amount0,
                    amount1,
                    unstakedLpBalance
                );
            } else {
                allPositions[i][0] = UserPosition(0, 0, 0);
            }

            // Calculate staked position
            if (stakedLpBalance > 0) {
                uint256 amount0 = (total0 * stakedLpBalance) / totalSupply;
                uint256 amount1 = (total1 * stakedLpBalance) / totalSupply;
                allPositions[i][1] = UserPosition(
                    amount0,
                    amount1,
                    stakedLpBalance
                );
            } else {
                allPositions[i][1] = UserPosition(0, 0, 0);
            }
        }

        return allPositions;
    }

    /**
     * @notice Get user's staked positions across multiple Pair contracts
     * @param pairs Array of Pair contract addresses
     * @param user Address of the user
     * @return positions Array of user's staked positions
     */
    function getUserStakedPositionsMulti(
        address[] calldata pairs,
        address user
    ) external view override returns (UserPosition[] memory) {
        UserPosition[] memory positions = new UserPosition[](pairs.length);

        for (uint256 i = 0; i < pairs.length; i++) {
            positions[i] = getUserStakedPosition(pairs[i], user);
        }

        return positions;
    }

    /**
     * @notice Get user's unstaked positions across multiple Pair contracts
     * @param pairs Array of Pair contract addresses
     * @param user Address of the user
     * @return positions Array of user's unstaked positions
     */
    function getUserUnstakedPositionsMulti(
        address[] calldata pairs,
        address user
    ) external view override returns (UserPosition[] memory) {
        UserPosition[] memory positions = new UserPosition[](pairs.length);

        for (uint256 i = 0; i < pairs.length; i++) {
            positions[i] = getUserUnstakedPosition(pairs[i], user);
        }

        return positions;
    }

    /**
     * @notice Calculate token amounts for LP balances across multiple Pair contracts
     * @param pairs Array of Pair contract addresses
     * @param lpBalances Array of LP token balances
     * @return positions Array of calculated positions with token amounts
     */
    function getPositionAmountsMulti(
        address[] calldata pairs,
        uint256[] calldata lpBalances
    ) external view override returns (UserPosition[] memory) {
        require(
            pairs.length == lpBalances.length,
            "PairV2Helper: arrays length mismatch"
        );

        UserPosition[] memory positions = new UserPosition[](pairs.length);

        for (uint256 i = 0; i < pairs.length; i++) {
            positions[i] = getPositionAmounts(pairs[i], lpBalances[i]);
        }

        return positions;
    }

    /**
     * @notice Get complete user positions across multiple Pair contracts
     * @param pairs Array of Pair contract addresses
     * @param user Address of the user
     * @return positions Array of arrays of complete user positions
     */
    function getCompleteUserPositionsMulti(
        address[] calldata pairs,
        address user
    ) external view override returns (CompleteUserPosition[][] memory) {
        CompleteUserPosition[][]
            memory allPositions = new CompleteUserPosition[][](pairs.length);

        for (uint256 i = 0; i < pairs.length; i++) {
            address pair = pairs[i];
            allPositions[i] = new CompleteUserPosition[](2);

            IPair pairInst = IPair(pair);
            uint256 totalSupply = pairInst.totalSupply();

            // Get unstaked LP balance
            uint256 unstakedLpBalance = pairInst.balanceOf(user);

            // Get staked LP balance and rewards
            address gauge = IVoter(voter).gauges(pair);
            uint256 stakedLpBalance = 0;
            uint256 earnedRewards = 0;

            if (gauge != address(0)) {
                stakedLpBalance = IGauge(gauge).balanceOf(user);
                earnedRewards = IGauge(gauge).earned(user);
            }

            // If totalSupply is 0 or user has no balance, return zero positions for this pair
            if (
                totalSupply == 0 ||
                (unstakedLpBalance == 0 && stakedLpBalance == 0)
            ) {
                allPositions[i][0] = CompleteUserPosition(
                    0,
                    0,
                    unstakedLpBalance,
                    0
                );
                allPositions[i][1] = CompleteUserPosition(
                    0,
                    0,
                    stakedLpBalance,
                    earnedRewards
                );
                continue;
            }

            // Get total amounts in the pair only once
            (uint256 total0, uint256 total1, ) = pairInst.getReserves();

            // Calculate unstaked position (rewards always 0)
            if (unstakedLpBalance > 0) {
                uint256 amount0 = (total0 * unstakedLpBalance) / totalSupply;
                uint256 amount1 = (total1 * unstakedLpBalance) / totalSupply;
                allPositions[i][0] = CompleteUserPosition(
                    amount0,
                    amount1,
                    unstakedLpBalance,
                    0
                );
            } else {
                allPositions[i][0] = CompleteUserPosition(0, 0, 0, 0);
            }

            // Calculate staked position with rewards
            if (stakedLpBalance > 0) {
                uint256 amount0 = (total0 * stakedLpBalance) / totalSupply;
                uint256 amount1 = (total1 * stakedLpBalance) / totalSupply;
                allPositions[i][1] = CompleteUserPosition(
                    amount0,
                    amount1,
                    stakedLpBalance,
                    earnedRewards
                );
            } else {
                allPositions[i][1] = CompleteUserPosition(
                    0,
                    0,
                    0,
                    earnedRewards
                );
            }
        }

        return allPositions;
    }

    /**
     * @notice Get user's complete staked positions across multiple Pair contracts
     * @param pairs Array of Pair contract addresses
     * @param user Address of the user
     * @return positions Array of user's complete staked positions
     */
    function getCompleteUserStakedPositionsMulti(
        address[] calldata pairs,
        address user
    ) external view override returns (CompleteUserPosition[] memory) {
        CompleteUserPosition[] memory positions = new CompleteUserPosition[](
            pairs.length
        );

        for (uint256 i = 0; i < pairs.length; i++) {
            positions[i] = getCompleteUserStakedPosition(pairs[i], user);
        }

        return positions;
    }

    /**
     * @notice Get user's complete unstaked positions across multiple Pair contracts
     * @param pairs Array of Pair contract addresses
     * @param user Address of the user
     * @return positions Array of user's complete unstaked positions
     */
    function getCompleteUserUnstakedPositionsMulti(
        address[] calldata pairs,
        address user
    ) external view override returns (CompleteUserPosition[] memory) {
        CompleteUserPosition[] memory positions = new CompleteUserPosition[](
            pairs.length
        );

        for (uint256 i = 0; i < pairs.length; i++) {
            positions[i] = getCompleteUserUnstakedPosition(pairs[i], user);
        }

        return positions;
    }
}
