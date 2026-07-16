// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {IPollenStaking} from "lib/rewards/interfaces/IPollenStaking.sol";
import {IVotingEscrowPollen} from "src/interfaces/dao/ve/IVotingEscrowPollen.sol";

import {IMultiRewardsPollen} from "lib/rewards/interfaces/IMultiRewardsPollen.sol";


/**
 * @title  UserVeLockStakingRewards
 * @author Beraborrow
 * @notice This contract is responsible for managing the staking rewards for a specific user
 *         who has locked their tokens in the vePOLLEN contract.
 */
contract UserVeLockStakingRewards {
    using SafeERC20 for IERC20;

    /// @notice Instance of the PollenStaking contract.
    IPollenStaking public immutable staking;

    /// @notice The address of the user to account staking for.
    address public immutable user;
    /// @notice The address of the vePOLLEN contract.
    address public immutable vePollen;
    /// @notice The address of the shares token.
    address public immutable sharesToken;

    /// @notice Event emitted when the user claims staking rewards.
    event ClaimForVeLock(
        address indexed token,
        address indexed user,
        uint256 rewards
    );

    /// @notice Error emitted when the address is zero.
    error ZeroAddress();
    /// @notice Error emitted when the caller is not the user.
    error OnlyUser(address caller);
    /// @notice Error emitted when the caller is not the vePOLLEN contract.
    error OnlyVe(address caller);

    /// @notice Modifier to restrict access to the vePOLLEN contract.
    modifier onlyVe() {
        if (msg.sender != address(vePollen)) revert OnlyVe(msg.sender);
        _;
    }

    /**
     * @notice Constructor for the UserVeLockStakingRewards contract.
     * @param _user The user for which UserVeLockStakingRewards is being deployed.
     * @param _vePollen The address of the vePOLLEN contract.
     * @param _staking The address of the PollenStaking contract.
     * @param _sharesToken The address of the shares token.
     */
    constructor(
        address _user,
        address _vePollen,
        address _staking,
        address _sharesToken
    ) {
        if (
            _user == address(0) ||
            _vePollen == address(0) ||
            _staking == address(0) ||
            _sharesToken == address(0)
        ) revert ZeroAddress();

        staking = IPollenStaking(_staking);

        user = _user;
        vePollen = _vePollen;
        sharesToken = _sharesToken;
    }

    /**
     * @notice Deposit tokens into PollenStaking for users' vePollen lock.
     * @param _amount The amount of tokens to deposit.
     */
    function depositForVeLock(uint256 _amount) external onlyVe {
        IERC20(sharesToken).safeTransferFrom(
            msg.sender,
            address(this),
            _amount
        );

        IERC20(sharesToken).safeIncreaseAllowance(address(staking), _amount);
        staking.stake(_amount);
    }

    /**
     * @notice Withdraws tokens from PollenStaking for users' vePollen lock.
     * @param _amount The amount of tokens to withdraw.
     */
    function withdrawForVeLock(uint256 _amount) external onlyVe {
        IMultiRewardsPollen(address(staking)).withdraw(_amount, user);

        IERC20(sharesToken).safeTransfer(msg.sender, _amount);
    }

    /**
     * @notice Claim liquid staking rewards for users' vePollen lock.
     * @dev Can be called by the user directly or by the router on behalf of the user.
     */
    function claimForVeLock() external {
        // Allow the user or the router to call this function
        if (msg.sender != address(user) && msg.sender != IVotingEscrowPollen(vePollen).pollenRouter()) {
            revert OnlyUser(msg.sender);
        }
        
        address[] memory tokens = staking.getAllRewardTokens();
        uint256 gasLimit = IPollenStaking(staking).rewardGasLimit();

        staking.getReward();

        for (uint256 i; i < tokens.length; ++i) {
            uint256 rewards = IERC20(tokens[i]).balanceOf(address(this));

            /// @dev Gas limit acts as a fail-safe to prevent reverts
            if (rewards > 0) {
                (bool success, bytes memory data) = tokens[i].call{
                    gas: gasLimit
                }(
                    abi.encodeWithSelector(
                        IERC20.transfer.selector,
                        user, // Always transfer to the user, regardless of who called the function
                        rewards
                    )
                );
                if (success && (data.length == 0 || abi.decode(data, (bool)))) {
                    emit ClaimForVeLock(tokens[i], user, rewards);
                } else {
                    continue;
                }
            }
        }
    }
}
