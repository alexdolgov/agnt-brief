// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.2.0
pragma solidity =0.8.26;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { MerkleProof } from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { Clock } from "./Clock.sol";

contract Drip is Clock, Ownable {
    using SafeERC20 for IERC20;
    using MerkleProof for bytes32[];
    /**
     * CUSTOM ERRORS ******************
     */

    error DripNotActive();
    error DripAlreadyActive();
    error NotEnoughTokens();
    error HasNotClaimed(bytes32 turtleProfileID);
    error ClaimAlreadyRealised();
    error InvalidTurtleTokenAddress();
    error ClaimingAmountIsZero();
    error DripNotStarted();
    error InitialClaimEnded();
    error AlreadyClaimed(address account);
    error InvalidMerkleProof(bytes32 root, address account, uint amount, bytes32 turtleProfileID, bytes32[] proof);
    error InvalidTotalDrip();
    error InvalidStartTime();
    error InvalidClaimDuration();
    error InvalidDuration();
    error InvalidVestingFactor();
    error NothingToClaim(bytes32 turtleProfileID);
    error InvalidSlashFactor();

    /**
     * EVENTS ******************
     */
    event InitialClaimed(address indexed account, uint amount, bytes32 turtleProfileID, bool isVested);
    event ClaimedDrip(address account, uint amount, bytes32 turtleProfileID);

    /**
     * @dev Configuration parameters for a drip distribution.
     * @param active Indicates whether the drip is currently active.
     * @param root Merkle root used for claim verification.
     * @param totalDrip Total amount of tokens allocated to the drip.
     * @param start Timestamp when the drip period starts.
     * @param duration Duration of the drip period, in seconds.
     * @param claimDuration Time allowed for claiming tokens after the drip ends.
     * @param vestingFactor Factor of the total tokens subject to vesting (1 ether = 100%).
     * @param minTokensToVest Minimum number of tokens required to initiate vesting.
     * @param slashFactor Factor to reduce the vesting amount in case of slashing.
     */
    struct Config {
        bool active;
        bytes32 root;
        uint totalDrip;
        uint start;
        uint duration;
        uint claimDuration;
        uint vestingFactor;
        uint minTokensToVest;
        uint slashFactor;
    }

    enum ClaimState {
        NOT_STARTED,
        VESTED,
        UNVESTED
    }

    struct Claim {
        ClaimState state;
        address turtleProfileMainAddress;
        uint start;
        uint amount;
        uint vestingAmount;
    }

    uint private constant ONE_UNIT = 1 ether;

    /**
     * STORAGE VARIABLES ****************
     */

    // The token that is being dripped
    IERC20 public immutable turtle;
    // Configuration for the drip
    Config public config;
    // bytes32 => Claim mapping to track claims
    // Each claim is associated with a turtle profile ID
    mapping(bytes32 turtleProfileID => Claim claim) public claims;
    // total amount of tokens claimed
    uint public totalClaimed;
    // total amount of tokens slashed
    uint public totalSlashed;

    /**
     * @notice Initializes the contract with the Turtle token address and sets up ownership and clock.
     * @param _turtle Address of the Turtle ERC20 token used by the contract.
     * @dev Validates the Turtle token address to ensure it is not the zero address.
     */
    constructor(
        IERC20 _turtle
    ) Ownable(msg.sender) {
        // checks that the turtle token address is valid
        if (address(_turtle) == address(0)) {
            revert InvalidTurtleTokenAddress();
        }
        turtle = _turtle;
    }

    /*
     * @Notice Start the drip.
     * @param _config Struct with the Drip configuration.
     */
    function start(
        Config memory _config
    ) external onlyOwner {
        if (config.active) {
            revert DripAlreadyActive();
        }
        if (!_config.active) {
            revert DripNotActive();
        }
        if (_config.totalDrip == 0) {
            revert InvalidTotalDrip();
        }
        if (_config.claimDuration == 0) {
            revert InvalidClaimDuration();
        }
        if (_config.duration == 0) {
            revert InvalidDuration();
        }
        if (_config.vestingFactor == 0 || _config.vestingFactor > ONE_UNIT) {
            revert InvalidVestingFactor();
        }
        if (_config.slashFactor > ONE_UNIT) {
            revert InvalidSlashFactor();
        }

        config = _config;
        config.start = _time();
        turtle.safeTransferFrom(msg.sender, address(this), _config.totalDrip);
    }

    /*
     * @dev Take the tokens from the contract. If the token is the turtle, the drip must be finished.
     *      Even then have to make sure there's enough tokens to take.
     * @param token The token to take.
     * @param to The address to send the tokens to.
     * @param amount The amount to take.
     */
    function takeTokens(IERC20 token, address to, uint amount) external onlyOwner {
        if (token == turtle) {
            // solhint-disable-next-line gas-custom-errors
            require(
                _time() > config.start + config.duration + config.claimDuration + 2 weeks, "Drip: drip not finished"
            );
        }

        token.safeTransfer(to, amount);
    }

    /*
     * @notice Transfers the total amount of slashed turtle tokens to a specified address and resets the slashed token counter.
     * @dev Only callable by the contract owner. Uses the `safeTransfer` method to transfer tokens.
     * @param to The recipient address to receive the slashed tokens.
     */
    function takeSlashedTokens(
        address to
    ) external onlyOwner {
        uint tokenToSend = totalSlashed;
        totalSlashed = 0;
        turtle.safeTransfer(to, tokenToSend);
    }

    function claimInitial(uint amount, bytes32 turtleProfileID, bytes32[] calldata proof) external {
        address _msgSender = msg.sender;
        // check that the drip has started and is active, also check the proof
        _checkClaim(amount, turtleProfileID, proof);

        // get the current time
        uint time = internalClockTime();
        bool isVested = amount >= config.minTokensToVest;
        uint vestingAmount = isVested ? (amount * config.vestingFactor) / ONE_UNIT : 0;

        // update the total claimed amount
        totalClaimed += amount;

        if (totalClaimed > config.totalDrip) {
            revert NotEnoughTokens();
        }

        // update the claim state
        claims[turtleProfileID] = Claim({
            state: isVested ? ClaimState.VESTED : ClaimState.UNVESTED,
            start: time,
            amount: amount,
            vestingAmount: vestingAmount,
            turtleProfileMainAddress: _msgSender
        });

        // transfer the non-vesting (vested) amount to the user
        unchecked {
            // safe: vestingAmount <= amount
            turtle.safeTransfer(_msgSender, amount - vestingAmount);
        }

        // emit the initial claim event
        emit InitialClaimed(_msgSender, amount, turtleProfileID, isVested);
    }

    function claimDrip(bytes32 turtleProfileID, bytes32[] calldata proof) external {
        Claim storage claim = claims[turtleProfileID];

        // check that the sender belongs to the turtle profile
        _checkProof(claim.amount, turtleProfileID, proof);
        uint vestedAmount = _availableDrip(turtleProfileID);

        if (vestedAmount == 0) {
            revert NothingToClaim(turtleProfileID);
        }

        // update storage values
        claim.start = _time();
        // apply penalty and update the vesting amount
        // vestingAmount is reduced by the slash factor
        uint unvestedAmount = claim.vestingAmount - vestedAmount;
        uint slashedAmount = unvestedAmount * config.slashFactor / ONE_UNIT;
        unchecked {
            claim.vestingAmount = unvestedAmount - slashedAmount;
        }

        // update totalSlashed
        totalSlashed += slashedAmount;

        // transfer the tokens to the turtle profile main address
        turtle.safeTransfer(claim.turtleProfileMainAddress, vestedAmount);

        // emit the drip claimed event
        emit ClaimedDrip(claim.turtleProfileMainAddress, vestedAmount, turtleProfileID);
    }

    function availableDrip(
        bytes32 turtleProfileID
    ) external returns (uint) {
        return _availableDrip(turtleProfileID);
    }

    // function to get the amount of vesting tokens for a turtle profile ID
    function getVestingAmount(
        bytes32 turtleProfileID
    ) external view returns (uint) {
        return claims[turtleProfileID].vestingAmount;
    }

    /**
     * INTERNAL AND PRIVATE FUNCTIONS **************
     */
    function _checkClaim(uint amount, bytes32 turtleProfileID, bytes32[] calldata proof) private {
        address account = msg.sender;
        if (amount == 0) {
            revert ClaimingAmountIsZero();
        }

        if (!config.active) {
            revert DripNotActive();
        }

        if (claims[turtleProfileID].state != ClaimState.NOT_STARTED) {
            revert AlreadyClaimed(account);
        }

        uint time = _time();

        if (time > config.start + config.duration) {
            revert InitialClaimEnded();
        }

        if (time < config.start) {
            revert DripNotStarted();
        }

        bytes32 root = config.root;

        if (!_checkProof(amount, turtleProfileID, proof)) {
            revert InvalidMerkleProof(root, account, amount, turtleProfileID, proof);
        }
    }

    // private function to check proof validity
    function _checkProof(uint amount, bytes32 turtleProfileID, bytes32[] calldata proof) private view returns (bool) {
        bytes32 leaf = keccak256(abi.encodePacked(msg.sender, amount, turtleProfileID));
        return proof.verifyCalldata(config.root, leaf);
    }

    function _availableDrip(
        bytes32 turtleProfileID
    ) private returns (uint) {
        Claim storage claim = claims[turtleProfileID];

        ClaimState state_ = claim.state;

        if (state_ == ClaimState.NOT_STARTED || state_ == ClaimState.UNVESTED) {
            return 0;
        }

        // Cache claim fields
        uint start_ = claim.start;
        uint vesting_ = claim.vestingAmount;

        // Cache config fields
        uint cfgStart = config.start;
        uint cfgDuration = config.duration;
        uint cfgClaimDuration = config.claimDuration;

        uint time = _time();
        // Check if the current time is within the drip period
        if (time < start_ || time > cfgStart + cfgDuration + cfgClaimDuration) {
            return 0;
        }
        // if the drip period has ended, return the total vesting amount if the time is within the claim duration
        if (time >= cfgStart + cfgDuration) {
            return vesting_;
        }
        // Calculate the amount of tokens that can be claimed based on the time elapsed since the last claim
        // In every claim we override the start time and the vesting amount
        uint profileTotalDripDuration = cfgStart + cfgDuration - start_;
        uint timeSinceStart = time - start_;

        uint earnedTokens = (vesting_ * timeSinceStart) / profileTotalDripDuration;

        return earnedTokens;
    }
}
