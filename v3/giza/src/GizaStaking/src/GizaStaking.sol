// SPDX-License-Identifier: MIT
/*
Copyright 2025 Giza Association
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), 
to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE 
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/
pragma solidity 0.8.26;

/// Utils /////
import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {Ownable} from "src/utils/Ownable.sol";
import {SafeERC20} from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";

/// @notice Staking data
struct ProtocolStake {
    /// @notice Total staked amount
    uint104 totalStaked;
    /// @notice Total cooling down amount
    uint104 totalCoolingDownAmount;
    /// @notice Cooldown period
    uint48 cooldown;
}

/// @notice User stake data
struct UserStake {
    /// @notice Staked amount
    uint104 stakedAmount;
    /// @notice Cooling down amount
    uint104 coolingDownAmount;
    /// @notice Cooldown start timestamp
    uint48 cooldownStartTimestamp;
}

///@title  Giza Staking contract
///@notice This is a standard staking contract for Giza token, with a cooldown period for unstaking
contract GizaStaking is Ownable {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                             EVENTS
    //////////////////////////////////////////////////////////////*/

    /// @notice Emitted when a user stakes
    event Stake(address indexed user, uint104 amount, uint48 timestamp);

    /// @notice Emitted when a user unstakes
    event Unstake(address indexed user, uint104 amount, uint48 timestamp);

    /// @notice Emitted when a user withdraws
    event Withdraw(address indexed user, uint104 amount, uint48 timestamp);

    /*//////////////////////////////////////////////////////////////
                             ERRORS
    //////////////////////////////////////////////////////////////*/

    error MaxCooldownExceeded();
    error ZeroAmount();
    error InvariantBroken();
    error InvalidAmount();
    error CooldownNotOver();

    /*//////////////////////////////////////////////////////////////
                             STORAGE
    //////////////////////////////////////////////////////////////*/

    /// @notice Giza token
    IERC20 public immutable giza;

    /// @notice Maximum cooldown period the owner can set for the token
    uint48 constant MAX_COOLDOWN_PERIOD = 30 days;

    /// @notice Tracks stakes by user
    mapping(address user => UserStake) public userStakes;

    /// @notice Tracks protocol stake
    ProtocolStake public protocolStake;

    constructor(address _owner, address _giza, uint48 _cooldown) Ownable(_owner) {
        giza = IERC20(_giza);
        if (_cooldown > MAX_COOLDOWN_PERIOD) revert MaxCooldownExceeded();
        protocolStake.cooldown = _cooldown;
    }

    /*//////////////////////////////////////////////////////////////
                             OWNER
    //////////////////////////////////////////////////////////////*/

    /// @notice Updates the cooldown period for the token
    /// @param cooldown The new cooldown period
    function updateCooldown(uint48 cooldown) public onlyOwner {
        if (cooldown > MAX_COOLDOWN_PERIOD) revert MaxCooldownExceeded();
        protocolStake.cooldown = cooldown;
    }

    ///@notice Recover token from the contract in case of emergency
    function recoverToken(address token, address to, uint256 amount) external onlyOwner {
        IERC20(token).safeTransfer(to, amount);
    }

    /*//////////////////////////////////////////////////////////////
                             ENTRYPOINT
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Function to stake tokens
     * @param amount the amount of tokens to stake
     */
    function stake(uint104 amount) external {
        _stake(msg.sender, amount);
    }

    /**
     * @notice Stake tokens on behalf of a user, this will transfer the tokens from the caller to the contract and update the user's stake
     * @param user the user to stake for
     * @param amount the amount of tokens to stake
     * @dev this function is useful when atomic claiming and staking is needed, for example in airdrop distribution
     */
    function stakeOnBehalf(address user, uint104 amount) external {
        _stake(user, amount);
    }

    /**
     * @notice Users can unstake tokens to initiate the cooldown period.
     * They will not be able to withdraw until the cooldown period has passed and do not earn rewards during this period.
     * @param amount the amount of tokens to unstake
     */
    function unstake(uint104 amount) external {
        // Update user position
        UserStake storage stakeData = userStakes[msg.sender];
        if (amount == 0) revert ZeroAmount();
        if (stakeData.stakedAmount < amount) revert InvalidAmount();
        stakeData.stakedAmount -= amount;
        stakeData.coolingDownAmount += amount;
        stakeData.cooldownStartTimestamp = uint48(block.timestamp);

        // Update protocol position
        protocolStake.totalStaked -= amount;
        protocolStake.totalCoolingDownAmount += amount;

        // Check invariant
        _checkInvariant();

        emit Unstake(msg.sender, amount, uint48(block.timestamp));
    }

    /**
     * @notice Users can withdraw tokens after the cooldown period has passed
     * @param amount the amount of tokens to withdraw
     */
    function withdraw(uint104 amount) external {
        UserStake storage stakeData = userStakes[msg.sender];
        if (stakeData.coolingDownAmount < amount) revert InvalidAmount();
        if (amount == 0) revert ZeroAmount();
        if (block.timestamp < stakeData.cooldownStartTimestamp + protocolStake.cooldown) revert CooldownNotOver();

        // Update user position
        stakeData.coolingDownAmount -= amount;

        // Update protocol position
        protocolStake.totalCoolingDownAmount -= amount;

        giza.safeTransfer(msg.sender, amount);

        // Check invariant
        _checkInvariant();

        emit Withdraw(msg.sender, amount, uint48(block.timestamp));
    }

    /*//////////////////////////////////////////////////////////////
                             VIEW
    //////////////////////////////////////////////////////////////*/

    /// @notice Returns the voting power of a user
    /// @param user the user to get the voting power of
    /// @return the voting power of the user
    ///@dev this is used for voting and governance purposes and intented to be called offchain by Snapshot
    function votingPower(address user) public view returns (uint256) {
        return userStakes[user].stakedAmount;
    }

    /*//////////////////////////////////////////////////////////////
                             INTERNAL
    //////////////////////////////////////////////////////////////*/

    function _stake(address user, uint104 amount) internal {
        if (amount == 0) revert ZeroAmount();
        // Update protocol position
        protocolStake.totalStaked += amount;

        // Update user position
        userStakes[user].stakedAmount += amount;

        giza.safeTransferFrom(msg.sender, address(this), amount);

        // Check invariant
        _checkInvariant();

        emit Stake(user, amount, uint48(block.timestamp));
    }

    /**
     * @notice Checks that the invariant is not broken
     * @dev the invariant is that the contract should never hold less of a token than the total staked and cooling down
     * @dev despite the higher gas cost of an extra sload here, we intentionally do not pass in the stake parameters
     * because we want to ensure that the invariant is checked against the current state of the contract
     */
    function _checkInvariant() internal view {
        uint256 balance = giza.balanceOf(address(this));
        if (balance < protocolStake.totalStaked + protocolStake.totalCoolingDownAmount) revert InvariantBroken();
    }
}
