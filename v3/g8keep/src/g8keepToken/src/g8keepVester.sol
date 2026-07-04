// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

import {ERC20} from "solady/tokens/ERC20.sol";
import {IG8keepDeployerVesting} from "./interfaces/IG8keepDeployerVesting.sol";
import {IG8keepFactory} from "./interfaces/IG8keepFactory.sol";
import {g8keepToken} from "./g8keepToken.sol";

/**
 * @title   g8keepVester
 * @notice  A vesting contract for tokens deployed on the g8keep platform.
 */
contract g8keepVester is IG8keepDeployerVesting {
    /// @dev The next ID to assign to a token vesting.
    uint256 public nextVestingId;

    /// @dev The g8keep factory contract.
    IG8keepFactory public immutable G8KEEP_FACTORY;

    /// @dev Struct of the vesting parameters for an ID.
    struct DeploymentVesting {
        address recipient;
        uint40 vestingStart;
        uint40 vestingEnd;
        address token;
        uint40 lastClaim;
        uint128 amount;
        uint128 claimed;
        uint40 vestTime;
    }

    /// @dev Mapping of vesting IDs to their vesting parameters.
    mapping(uint256 => DeploymentVesting) public deploymentVestings;

    /// @dev Emitted when a deployment vest is created.
    event DeploymentVestCreated(
        uint256 indexed id,
        address indexed recipient,
        address indexed token,
        uint128 amount,
        uint40 vestTime
    );

    /// @dev Emitted when a claim is made for vested tokens.
    event DeploymentVestClaimed(
        uint256 indexed id,
        address indexed recipient,
        address indexed token,
        uint256 amountClaimed
    );

    /// @dev Thrown when a deployment vest is being created and the deployer address is zero.
    error InvalidAddress();
    /// @dev Thrown when a deployment vest is being created and the amount of tokens is zero.
    error InvalidAmount();
    /// @dev Thrown when claiming vested tokens and the caller is not the vesting recipient.
    error InvalidCaller();
    /// @dev Thrown when a deployment vest is being created and the vesting time is zero or 
    /// @dev the end time would overflow a uint40.
    error InvalidDuration();
    /// @dev Thrown when claiming vested tokens and the vesting ID is greater than or equal to the next ID.
    error InvalidVestingId();
    /// @dev Thrown when claiming vested tokens and there are no tokens available to claim.
    error NoTokensVested();

    constructor(address _g8keepFactory) {
        G8KEEP_FACTORY = IG8keepFactory(_g8keepFactory);
    }

    /**
     * @notice  Creates a vesting at the time of token deployment for the deployer to
     * @notice  be able to claim their tokens linearly over a period of time.
     * 
     * @dev     The caller of this function must be the token contract.
     * 
     * @param _deployer          Address that owns the vesting and will receive tokens when claiming.
     * @param _tokensToDeployer  Amount of tokens that are being vested.
     * @param _vestTime          Amount of times in seconds for the tokens to vest over.
     */
    function deploymentVest(
        address _deployer,
        uint256 _tokensToDeployer,
        uint256 _vestTime
    ) external returns (uint256 vestingId) {
        if (_deployer == address(0)) revert InvalidAddress();
        if (_tokensToDeployer == 0) revert InvalidAmount();
        if (_vestTime == 0 || (_vestTime + block.timestamp) > type(uint40).max) revert InvalidDuration();

        vestingId = nextVestingId;

        unchecked {
            ++nextVestingId;
        }

        DeploymentVesting memory deploymentVesting = DeploymentVesting({
            recipient: _deployer,
            vestingStart: 0,
            vestingEnd: 0,
            token: msg.sender,
            lastClaim: uint40(block.timestamp),
            amount: uint128(_tokensToDeployer),
            claimed: uint128(0),
            vestTime: uint40(_vestTime)
        });
        deploymentVestings[vestingId] = deploymentVesting;

        // emit event for UI to store vesting details
        emit DeploymentVestCreated(
            vestingId,
            _deployer,
            msg.sender,
            uint128(_tokensToDeployer),
            uint40(_vestTime)
        );
    }

    /**
     * @notice  Calculates the claimable tokens for a vesting ID and transfers them to the recipient.
     * 
     * @dev     Must be called by the owner of the vesting ID.
     *
     * @param _id  ID of the vesting to be claimed.
     */
    function claim(uint256 _id) external {
        if (_id >= nextVestingId) {
            revert InvalidVestingId();
        }

        (DeploymentVesting storage vesting, g8keepToken token, uint256 vestedAmount) = _vested(_id);

        if (vesting.recipient != msg.sender) {
            revert InvalidCaller();
        }

        if (vestedAmount == 0) {
            revert NoTokensVested();
        }

        vesting.lastClaim = uint40(block.timestamp);

        unchecked {
            vesting.claimed += uint128(vestedAmount);
        }

        token.transfer(vesting.recipient, vestedAmount);

        emit DeploymentVestClaimed(
            _id,
            vesting.recipient,
            address(token),
            vestedAmount
        );
    }

    /**
     * @notice  Calculates the amount of tokens available to claim for a vesting ID.
     * 
     * @param _id  ID of the vesting to check.
     * 
     * @return vestedAmount  Amount of tokens available to claim.
     */
    function vested(uint256 _id) external view returns (uint256 vestedAmount) {
        vestedAmount = _vestedView(_id);
    }

    /**
     * @notice  Returns all of the vesting parameters for a vesting ID.
     *
     * @param _id  ID of the vesting to return parameters of.
     */
    function getVesting(uint256 _id) external view returns (DeploymentVesting memory) {
        return deploymentVestings[_id];
    }

    /**
     * @dev  Internal function to calculate the amount of tokens that are available to claim 
     * @dev  for the vesting ID and returns a storage pointer for the vesting to update in storage
     * @dev  in the `claim` function.
     * 
     * @param _id  ID of the vesting to be claimed.
     * 
     * @return vesting           Storage pointer to the vesting parameters for updates.
     * @return token             Address of the token that was vested.
     * @return vestedAmount      Amount of tokens available to claim.
     */
    function _vested(uint256 _id) internal returns (DeploymentVesting storage vesting, g8keepToken token, uint256 vestedAmount) {
        vesting = deploymentVestings[_id];

        uint40 vestingStart = vesting.vestingStart;
        uint40 vestingEnd = vesting.vestingEnd;
        token = g8keepToken(vesting.token);
        uint40 lastClaim = vesting.lastClaim;
        uint256 vestingAmount = vesting.amount;
        uint256 vestingClaimed = vesting.claimed;
        uint40 vestTime = vesting.vestTime;
        if (vestingStart == 0) {
            vestingStart = uint40(token.SNIPE_PROTECTION_END());
            lastClaim = vestingStart;
            vestingEnd = vestingStart + vestTime;
            if (vestingStart > block.timestamp) {
                revert NoTokensVested();
            }
            address penaltyReceiver = G8KEEP_FACTORY.penaltyReceiver();
            uint256 penaltyReceiverBalance = token.balanceOf(penaltyReceiver);
            if (penaltyReceiverBalance > 0) {
                unchecked {
                    uint256 vestingReduction = vestingAmount * penaltyReceiverBalance / token.totalSupply();
                    token.transfer(penaltyReceiver, vestingReduction);
                    vestingAmount -= vestingReduction;
                    vesting.amount = uint128(vestingAmount);
                }
            }
            vesting.vestingStart = vestingStart;
            vesting.vestingEnd = vestingEnd;
            vesting.lastClaim = lastClaim;
        }

        if (block.timestamp >= vestingEnd) return (vesting, token, (vestingAmount - vestingClaimed));

        uint256 timeSinceLastClaim = block.timestamp - lastClaim;
        vestedAmount = (vestingAmount * timeSinceLastClaim) / vestTime;
    }

    /**
     * @dev  Internal view function to calculate the amount of tokens that are available  
     * @dev  to claim for the vesting ID.
     * 
     * @param _id  ID of the vesting to be look up.
     * 
     * @return vestedAmount      Amount of tokens available to claim.
     */
    function _vestedView(uint256 _id) internal view returns (uint256 vestedAmount) {
        DeploymentVesting storage vesting = deploymentVestings[_id];

        uint40 vestingStart = vesting.vestingStart;
        uint40 vestingEnd = vesting.vestingEnd;
        g8keepToken token = g8keepToken(vesting.token);
        uint40 lastClaim = vesting.lastClaim;
        uint256 vestingAmount = vesting.amount;
        uint256 vestingClaimed = vesting.claimed;
        uint40 vestTime = vesting.vestTime;
        if (vestingStart == 0) {
            vestingStart = uint40(token.SNIPE_PROTECTION_END());
            lastClaim = vestingStart;
            vestingEnd = vestingStart + vesting.vestTime;
            if (vestingStart > block.timestamp) {
                return 0;
            }
            address penaltyReceiver = G8KEEP_FACTORY.penaltyReceiver();
            uint256 penaltyReceiverBalance = token.balanceOf(penaltyReceiver);
            if (penaltyReceiverBalance > 0) {
                unchecked {
                    uint256 vestingReduction = vestingAmount * penaltyReceiverBalance / token.totalSupply();
                    vestingAmount -= vestingReduction;
                }
            }
        }

        if (block.timestamp >= vestingEnd) return (vestingAmount - vestingClaimed);

        uint256 timeSinceLastClaim = block.timestamp - lastClaim;
        vestedAmount = (vestingAmount * timeSinceLastClaim) / vestTime;
    }
}
