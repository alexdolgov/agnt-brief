// SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

import {IRewardDistributor} from "./interfaces/IRewardDistributor.sol";
import {IVotingEscrow} from "./interfaces/IVotingEscrow.sol";

/// @title Reward Distributor Contract
/// @notice Distributes rewards to users based on their locked tokens in the Voting Escrow contract.
/// @dev This contract is upgradeable and uses OpenZeppelin libraries for ERC20 token interactions and access control.
contract RewardDistributor is
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable,
    IRewardDistributor
{
    using SafeERC20 for IERC20;

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * Needed in case new contracts will be inhereted.
     * Need to make a big value because a lot of upgradeable contracts from OpenZeppelin
     * have their own storage gaps and can have more than 50 storage slots.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     */
    uint256[1000] private __gapOpening;

    /// @notice The address of the Voting Escrow contract.
    address public votingEscrow;

    /// @notice The role identifier for reward distributors.
    bytes32 public constant REWARD_DISTRIBUTOR_ROLE =
        keccak256("REWARD_DISTRIBUTOR_ROLE");

    /// @dev An array of all reward distributions.
    RewardDistributionInfo[] private _rewardDistributions;

    /// @dev An array of all reward distributions with info for internal needs.
    RewardDistributionInternalInfo[] private _rewardDistributionsInternal;

    /// @dev Mapping to track claimed reward distributions by users.
    mapping(address user => mapping(uint256 rewardDistributionId => bool))
        private _isClaimedRewardDistribution;

    /// @notice Disables initializers to prevent unauthorized contract initialization.
    constructor() {
        _disableInitializers();
    }

    /// @notice Initializes the contract with the specified Voting Escrow address and admin address.
    /// @param _votingEscrow The address of the Voting Escrow contract.
    /// @param admin The address of the admin.
    function initialize(
        address _votingEscrow,
        address admin
    ) external initializer {
        if (_votingEscrow == address(0) || admin == address(0)) {
            revert RewardDistributor__ZeroAddress();
        }

        __ReentrancyGuard_init();
        __AccessControl_init();

        votingEscrow = _votingEscrow;

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(REWARD_DISTRIBUTOR_ROLE, _votingEscrow);
    }

    /// @notice Adds multiple reward distributions.
    /// @param _newRewardDistributions An array of RewardDistributionInfo structs containing new reward distributions.
    function addRewardDistributions(
        RewardDistributionInfo[] memory _newRewardDistributions
    ) external nonReentrant onlyRole(REWARD_DISTRIBUTOR_ROLE) {
        uint256 length = _newRewardDistributions.length;
        for (uint256 i = 0; i < length; ++i) {
            _addRewardDistribution(_newRewardDistributions[i]);
        }
    }

    /// @notice Adds a single reward distribution.
    /// @param _newRewardDistribution A RewardDistributionInfo struct containing a new reward distribution.
    function addRewardDistribution(
        RewardDistributionInfo memory _newRewardDistribution
    ) external nonReentrant onlyRole(REWARD_DISTRIBUTOR_ROLE) {
        _addRewardDistribution(_newRewardDistribution);
    }

    function removeRewardDistributions(
        uint256[] memory rewardDistributionIds
    ) external nonReentrant {
        uint256 length = rewardDistributionIds.length;
        for (uint256 i = 0; i < length; ++i) {
            _removeRewardDistribution(rewardDistributionIds[i]);
        }
    }

    function removeRewardDistribution(
        uint256 rewardDistributionId
    ) external nonReentrant {
        _removeRewardDistribution(rewardDistributionId);
    }

    /// @notice Claims rewards for the specified reward distribution IDs.
    /// @param rewardDistributionIds An array of reward distribution IDs to claim rewards for.
    /// @return claims An array of ClaimInfo structs containing the claimed rewards.
    function claim(
        uint256[] memory rewardDistributionIds
    ) external nonReentrant returns (ClaimInfo[] memory claims) {
        claims = _claimable(msg.sender, rewardDistributionIds);

        uint256 length = claims.length;
        for (uint256 i = 0; i < length; ++i) {
            address token = claims[i].token;
            uint256 amount = claims[i].amount;
            uint256 rewardDistributionId = rewardDistributionIds[i];

            if (amount == 0) {
                continue;
            }

            assert(
                !_isClaimedRewardDistribution[msg.sender][rewardDistributionId]
            );
            _isClaimedRewardDistribution[msg.sender][
                rewardDistributionId
            ] = true;

            _rewardDistributionsInternal[rewardDistributionId]
                .claimedBalances += claims[i].veBalanceOfUser;
            _rewardDistributionsInternal[rewardDistributionId]
                .claimedRewardAmount += amount;

            IERC20(token).safeTransfer(msg.sender, amount);

            emit RewardDistributionClaimed({
                user: msg.sender,
                rewardDistributionId: rewardDistributionId,
                token: token,
                amount: amount
            });
        }
    }

    /// @notice Returns the claimable rewards for a user for the specified reward distribution IDs.
    /// @param user The address of the user.
    /// @param rewardDistributionIds An array of reward distribution IDs.
    /// @return claims An array of ClaimInfo structs containing the claimable rewards.
    function claimable(
        address user,
        uint256[] memory rewardDistributionIds
    ) external view returns (ClaimInfo[] memory claims) {
        return _claimable(user, rewardDistributionIds);
    }

    /// @notice Returns the length of the reward distributions array.
    /// @return The number of reward distributions.
    function rewardDistributionsLength() external view returns (uint256) {
        return _rewardDistributions.length;
    }

    /// @notice Returns all reward distributions.
    /// @return An array of RewardDistributionInfo structs.
    function rewardDistributions()
        external
        view
        returns (RewardDistributionInfo[] memory)
    {
        return _rewardDistributions;
    }

    /// @notice Returns a specific reward distribution by ID.
    /// @param rewardDistributionId The ID of the reward distribution.
    /// @return A RewardDistributionInfo struct containing the reward distribution information.
    function rewardDistribution(
        uint256 rewardDistributionId
    ) external view returns (RewardDistributionInfo memory) {
        return _rewardDistributions[rewardDistributionId];
    }

    /// @dev Internal function to calculate claimable rewards for a user.
    /// @param user The address of the user.
    /// @param rewardDistributionIds An array of reward distribution IDs.
    /// @return claims An array of ClaimInfo structs containing the claimable rewards.
    function _claimable(
        address user,
        uint256[] memory rewardDistributionIds
    ) private view returns (ClaimInfo[] memory claims) {
        uint256 length = rewardDistributionIds.length;
        claims = new ClaimInfo[](length);

        for (uint256 i = 0; i < length; ++i) {
            uint256 rewardDistributionId = rewardDistributionIds[i];
            if (i > 0 && rewardDistributionIds[i - 1] >= rewardDistributionId) {
                revert RewardDistributor__RewardDistributionIdsAreNotInAscendingOrder();
            }

            if (rewardDistributionId >= _rewardDistributions.length) {
                revert RewardDistributor__BadRewardDistributionId(
                    rewardDistributionId
                );
            }

            if (_isClaimedRewardDistribution[user][rewardDistributionId]) {
                claims[i].token = _rewardDistributions[rewardDistributionId]
                    .token;
                claims[i].amount = 0;
                continue;
            }

            RewardDistributionInfo
                memory rewardDistributionMem = _rewardDistributions[
                    rewardDistributionId
                ];

            claims[i].token = rewardDistributionMem.token;

            uint256 rewardTimestamp = rewardDistributionMem.rewardTimestamp;
            if (rewardTimestamp >= block.timestamp) {
                claims[i].amount = 0;
                continue;
            }

            RewardDistributionInternalInfo
                memory rewardDistributionInternalInfoMem = _rewardDistributionsInternal[
                    rewardDistributionId
                ];

            if (rewardDistributionInternalInfoMem.isRemoved) {
                claims[i].amount = 0;
                continue;
            }

            address _votingEscrow = votingEscrow;

            uint256 unclaimedTotalSupply;
            {
                uint256 totalSupply = IVotingEscrow(_votingEscrow).totalSupply(
                    rewardTimestamp
                );
                uint256 claimedBalances = rewardDistributionInternalInfoMem
                    .claimedBalances;

                if (totalSupply == 0 || totalSupply <= claimedBalances) {
                    claims[i].amount = 0;
                    continue;
                }

                unclaimedTotalSupply = totalSupply - claimedBalances;
            }

            uint256 unclaimedRewardAmount;
            {
                uint256 claimedRewardAmount = rewardDistributionInternalInfoMem
                    .claimedRewardAmount;

                if (rewardDistributionMem.amount <= claimedRewardAmount) {
                    claims[i].amount = 0;
                    continue;
                }

                unclaimedRewardAmount =
                    rewardDistributionMem.amount -
                    claimedRewardAmount;
            }

            uint256 balanceOfUser = IVotingEscrow(_votingEscrow).balanceOf(
                user,
                rewardTimestamp
            );
            claims[i].veBalanceOfUser = balanceOfUser;

            claims[i].amount =
                (unclaimedRewardAmount * balanceOfUser) /
                unclaimedTotalSupply;
        }
    }

    /// @dev Internal function to add a new reward distribution.
    /// @param newRewardDistribution A RewardDistributionInfo struct containing the new reward distribution.
    function _addRewardDistribution(
        RewardDistributionInfo memory newRewardDistribution
    ) private {
        uint256 rewardTimestamp = newRewardDistribution.rewardTimestamp;
        if (
            rewardTimestamp <= block.timestamp &&
            IVotingEscrow(votingEscrow).totalSupply(rewardTimestamp) == 0
        ) {
            revert RewardDistributor__NoTotalSupply(rewardTimestamp);
        }

        uint256 amount = newRewardDistribution.amount;
        if (amount == 0) {
            revert RewardDistributor__ZeroAmount();
        }

        address token = newRewardDistribution.token;

        uint256 balanceBeforeTransfer = IERC20(token).balanceOf(address(this));
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        uint256 balanceAfterTransfer = IERC20(token).balanceOf(address(this));

        uint256 transferAmount = balanceAfterTransfer - balanceBeforeTransfer;
        newRewardDistribution.amount = transferAmount;

        _rewardDistributions.push(newRewardDistribution);

        RewardDistributionInternalInfo
            memory rewardDistributionInternalInfo = RewardDistributionInternalInfo({
                claimedBalances: 0,
                claimedRewardAmount: 0,
                rewardProvider: msg.sender,
                isRemoved: false
            });
        _rewardDistributionsInternal.push(rewardDistributionInternalInfo);

        emit AddedRewardDistribution({
            sender: msg.sender,
            token: token,
            amount: transferAmount,
            rewardTimestamp: rewardTimestamp
        });
    }

    function _removeRewardDistribution(uint256 rewardDistributionId) private {
        RewardDistributionInternalInfo
            memory rewardDistributionInternalInfo = _rewardDistributionsInternal[
                rewardDistributionId
            ];
        if (msg.sender != rewardDistributionInternalInfo.rewardProvider) {
            revert RewardDistributor__NotRewardProvider({
                rewardDistributionId: rewardDistributionId,
                user: msg.sender,
                rewardProvider: rewardDistributionInternalInfo.rewardProvider
            });
        }

        if (rewardDistributionInternalInfo.isRemoved) {
            revert RewardDistributor__RewardDistributionIsRemoved({
                rewardDistributionId: rewardDistributionId
            });
        }

        RewardDistributionInfo
            memory rewardDistributionMem = _rewardDistributions[
                rewardDistributionId
            ];
        if (block.timestamp <= rewardDistributionMem.rewardTimestamp) {
            revert RewardDistributor__RewardDistributionShouldBeInThePastToRemoveIt({
                rewardDistributionId: rewardDistributionId,
                blockTimestamp: block.timestamp,
                rewardTimestamp: rewardDistributionMem.rewardTimestamp
            });
        }

        uint256 totalSupply = IVotingEscrow(votingEscrow).totalSupply(
            rewardDistributionMem.rewardTimestamp
        );
        if (totalSupply != 0) {
            revert RewardDistributor__TotalSupplyIsNotZero({
                timestamp: rewardDistributionMem.rewardTimestamp
            });
        }

        uint256 transferAmount;
        if (
            rewardDistributionMem.amount >
            rewardDistributionInternalInfo.claimedRewardAmount
        ) {
            transferAmount =
                rewardDistributionMem.amount -
                rewardDistributionInternalInfo.claimedRewardAmount;
        }

        if (transferAmount > 0) {
            IERC20(rewardDistributionMem.token).safeTransfer(
                rewardDistributionInternalInfo.rewardProvider,
                transferAmount
            );
        }

        _rewardDistributionsInternal[rewardDistributionId].isRemoved = true;

        emit RemovedRewardDistribution({
            rewardDistributionId: rewardDistributionId,
            rewardProvider: rewardDistributionInternalInfo.rewardProvider,
            token: rewardDistributionMem.token,
            amount: transferAmount
        });
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/contracts/4.x/upgradeable#storage_gaps
     * Needed in case some new variables will be added.
     */
    uint256[50] private __gapClosing;
}
