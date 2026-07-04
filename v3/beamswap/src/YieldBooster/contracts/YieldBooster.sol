// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import "./interfaces/IstGlintUsage.sol";
import "./interfaces/IBeamChefV3.sol";

/**
 * @title YieldBooster
 * @dev This contract allows users to allocate and deallocate their stGlint tokens to boost the pools reward rate.
 */
contract YieldBooster is Ownable, ReentrancyGuard, IstGlintUsage {
    using SafeERC20 for IERC20;
    /**
     * @dev Struct to hold user information.
     */
    struct UserInfo {
        uint256 poolId; // poolId of the staking token
        uint256 votePower; // vote power of the user
    }
    IBeamChefV3 public beamChefV3;

    /**
     * @dev Mapping to hold user information.
     */
    mapping(address => UserInfo) public userInfo;

    /**
     * @dev Address of the stGlint contract.
     */
    address public immutable stGlint;
    /**
     * @dev Mapping to hold user's stGlint allocation.
     */
    mapping(address => uint256) public usersAllocation;

    /**
     * @dev Total stGlint allocation of the contract.
     */
    uint256 public totalAllocation;

    /**
     * @dev Mapping to check if a user has voted.
     */
    mapping(address => bool) public voted;

    /**
     * @dev Contract constructor that sets the stGlint contract address.
     */

    constructor(address _stGlint) {
        require(_stGlint != address(0), "zero address");
        stGlint = _stGlint;
    }

    /**
     * @dev Function to prevent accepting Glmr.
     */
    receive() external payable {
        revert("YieldBooster: Glmr not accepted");
    }

    /********************************************/
    /****************** EVENTS ******************/
    /********************************************/

    /**
     * @dev Event emitted when a user's allocation is updated.
     */
    event UserUpdated(
        address indexed user,
        uint256 previousBalance,
        uint256 newBalance
    );

    /**
     * @dev Checks if caller is the stGlint contract
     */
    modifier stGlintTokenOnly() {
        require(
            msg.sender == stGlint,
            "stGlintTokenOnly: caller should be stGlint"
        );
        _;
    }

    /*****************************************************************/
    /****************** OWNABLE FUNCTIONS  ******************/
    /*****************************************************************/

    /**
     * @dev Allocates "userAddress" user's "amount" of stGlint to this farmbooster.
     * Can only be called by stGlint contract, which is trusted to verify amounts.
     * data should contain pool id.
     */
    function allocate(
        address userAddress,
        uint256 amount,
        bytes calldata data
    ) external override nonReentrant stGlintTokenOnly {
        uint256 poolId = abi.decode(data, (uint256));
        require(beamChefV3.isPoolVoteable(poolId), "pool is not voteable");
        UserInfo storage user = userInfo[userAddress];
        if (!voted[userAddress]) {
            voted[userAddress] = true;

            uint256 newUserAllocation = usersAllocation[userAddress] + amount;
            uint256 newTotalAllocation = totalAllocation + amount;
            user.poolId = poolId;
            user.votePower = newUserAllocation;
            _updateUser(userAddress, newUserAllocation, newTotalAllocation);
            beamChefV3.votePool(userAddress, poolId);
        } else {
            require(user.poolId == poolId, "allocate: invalid poolId");
            uint256 newUserAllocation = usersAllocation[userAddress] + amount;
            uint256 newTotalAllocation = totalAllocation + amount;

            user.votePower = newUserAllocation;

            _updateUser(userAddress, newUserAllocation, newTotalAllocation);
            beamChefV3.updateVotePool(userAddress, newUserAllocation, poolId);
        }
    }

    /**
     * @dev Deallocates "userAddress" user's "amount" of stGlint allocation from this farmbooster.
     * Can only be called by stGlint contract, which is trusted to verify amounts.
     * data should contain pool id.
     */
    function deallocate(
        address userAddress,
        uint256 amount,
        bytes calldata data
    ) external override nonReentrant stGlintTokenOnly {
        require(voted[userAddress], "already voted");
        UserInfo storage user = userInfo[userAddress];
        uint256 poolId = abi.decode(data, (uint256));
        require(user.poolId == poolId, "deallocate: invalid poolId");
        uint256 newUserAllocation = usersAllocation[userAddress] - amount;
        uint256 newTotalAllocation = totalAllocation - amount;

        user.votePower = newUserAllocation;
        if (newUserAllocation == 0) {
            voted[userAddress] = false;
            user.poolId = 0;
            beamChefV3.unVotePool(userAddress, poolId);
        } else {
            beamChefV3.updateVotePool(userAddress, newUserAllocation, poolId);
        }

        _updateUser(userAddress, newUserAllocation, newTotalAllocation);
    }

    /********************************************************/
    /****************** INTERNAL FUNCTIONS ******************/
    /********************************************************/

    /**
     * @dev Updates "userAddress" user's and total allocations for each distributed token.
     */
    function _updateUser(
        address userAddress,
        uint256 newUserAllocation,
        uint256 newTotalAllocation
    ) internal {
        uint256 previousUserAllocation = usersAllocation[userAddress];

        usersAllocation[userAddress] = newUserAllocation;
        totalAllocation = newTotalAllocation;

        emit UserUpdated(
            userAddress,
            previousUserAllocation,
            newUserAllocation
        );
    }

    /**
     * @dev Returns the voting power of a user.
     */
    function getVotingPower(
        address userAddress
    ) external view returns (uint256) {
        return userInfo[userAddress].votePower;
    }

    /**
     * @dev Sets the BeamChefV3 contract.
     */
    function setBeamChefV3(IBeamChefV3 _beamChefV3) external onlyOwner {
        beamChefV3 = _beamChefV3;
    }

    /**
     * @dev Checks if a user has voted.
     */
    function hasUserVoted(address userAddress) external view returns (bool) {
        return voted[userAddress];
    }
}
