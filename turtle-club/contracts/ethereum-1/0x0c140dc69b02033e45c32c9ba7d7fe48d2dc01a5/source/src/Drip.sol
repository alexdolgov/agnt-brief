// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.2.0
pragma solidity =0.8.26;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { MerkleProof } from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import { Ownable2Step, Ownable } from "@openzeppelin/contracts/access/Ownable2Step.sol";
import { Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { Clock } from "./Clock.sol";

contract Drip is Clock, Ownable2Step, Pausable {
    using SafeERC20 for IERC20;
    using MerkleProof for bytes32[];
    using Math for uint;
    /**
     * CUSTOM ERRORS ******************
     */

    error DripNotActive();
    error DripAlreadyActive();
    error NotEnoughTokens();
    error InvalidTurtleTokenAddress();
    error ClaimingAmountIsZero();
    error DripNotStarted();
    error ClaimEnded();
    error AlreadyClaimed(address account);
    error InvalidMerkleProof(bytes32 root, address account, uint amount, bytes32[] proof);
    error InvalidTotalDrip();
    error InvalidAmount();
    error InvalidClaimDuration();
    error InvalidDuration();
    error InvalidInitialRetentionFactor();

    /**
     * EVENTS ******************
     */
    event Claimed(address indexed account, uint amount, uint amountRealised, uint slashedAmount, bool isVested);
    event SlashedTokensClaimed(address indexed by, address indexed to, uint amount);
    event TokensClaimed(address indexed by, address indexed to, address indexed token, uint amount);
    event TotalDripIncreased(address indexed by, uint amount);
    event InitialRetentionFactorChanged(uint initialRetentionFactor);
    event MerkleRootHashChanged(bytes32 merkleRootHash);
    event ClaimDurationChanged(uint claimDuration);
    event DurationChanged(uint duration);
    event MinTokensToVestChanged(uint minTokensToVest);

    /**
     * @dev Configuration parameters for a drip distribution.
     * @param active Indicates whether the drip is currently active.
     * @param root Merkle root used for claim verification.
     * @param totalDrip Total amount of tokens allocated to the drip.
     * @param start Timestamp when the drip period starts.
     * @param duration Duration of the drip period, in seconds.
     * @param claimDuration Time allowed for claiming tokens after the drip ends.
     * @param minTokensToVest Minimum number of tokens required to initiate vesting.
     * @param initialRetentionFactor Initial factor to determine the portion of tokens realised immediately upon claim. 
     */
    struct Config {
        bool active;
        bytes32 root;
        uint totalDrip;
        uint start;
        uint duration;
        uint claimDuration;
        uint minTokensToVest;
        uint initialRetentionFactor;
    }

    enum ClaimState {
        NOT_STARTED,
        CLAIMED
    }

    struct Claim {
        ClaimState state;
        uint start;
        uint amountObtained;
        uint slashedAmount;
    }

    uint private constant ONE_UNIT = 1 ether;

    /**
     * STORAGE VARIABLES ****************
     */

    // The token that is being dripped
    IERC20 public immutable turtle;
    // Configuration for the drip
    Config public config;
    // address => Claim mapping to track claims
    mapping(address account => Claim claim) public claims;
    // total amount of tokens claimed
    uint public totalClaimed;
    //  amount of tokens slashed and available for owner to take
    uint public availableSlashed;
    // total amount of tokens slashed and already taken by the owner
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

    /* CONFIGURATION AND ADMINISTRATIVE FUNCTIONS ****************** */

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
        if (_config.initialRetentionFactor > ONE_UNIT) {
            revert InvalidInitialRetentionFactor();
        }

        config = _config;
        config.start = _time();
        turtle.safeTransferFrom(msg.sender, address(this), _config.totalDrip);
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    /*
    * @notice Updates the contract configuration parameters.
    * @dev Only callable by the contract owner. Each parameter is updated only if the provided value is non-zero.
    * @param claimDuration The new claim duration. If set to 0, the value is not updated.
    * @param duration The new vesting duration. If set to 0, the value is not updated.
    * @param minTokensToVest The new minimum number of tokens required to vest. If set to 0, the value is not updated.
    */
    function changeConfig(uint claimDuration, uint duration, uint minTokensToVest) external onlyOwner {

        if (claimDuration != 0)
        {
            config.claimDuration = claimDuration;
        }
        if (duration != 0)
        {
            config.duration = duration;
        }
        if (minTokensToVest != 0)
        {
            config.minTokensToVest = minTokensToVest;
        }

        emit ClaimDurationChanged(claimDuration);
        emit DurationChanged(duration);
        emit MinTokensToVestChanged(minTokensToVest);
    }

    /*
     * @notice Updates the Merkle root hash used to validate user claims.
     * @dev Only callable by the contract owner. The new root must match the off-chain allocation tree used for proofs.
     * @param merkleRootHash The new Merkle root hash.
     * @custom:emits MerkleRootHashChanged Emitted after updating the Merkle root.
     */
    function changeMerkleRootHash(bytes32 merkleRootHash) external onlyOwner {
        config.root = merkleRootHash;
        emit MerkleRootHashChanged(merkleRootHash);
    }

    /*
     * @notice Updates the initial retention factor used to compute the realised amount for vested claims.
     * @dev The value is a fixed-point number with 18 decimals where ONE_UNIT (1e18) equals 100%.
     *      Reverts if the provided value exceeds ONE_UNIT.
     * @param initialRetentionFactor New initial retention factor in 1e18 precision.
     * @custom:emits InitialRetentionFactorChanged Emitted after updating the configuration.
     */
    function changeInitialRetentionFactor(uint initialRetentionFactor) external onlyOwner {
        if (initialRetentionFactor > ONE_UNIT) {
            revert InvalidInitialRetentionFactor();
        }
        config.initialRetentionFactor = initialRetentionFactor;
        emit InitialRetentionFactorChanged(initialRetentionFactor);
    }

    /*
    * @notice Increments the total drip amount by a specified value and transfers tokens from the owner to the contract.
    * @dev Only callable by the contract owner. Reverts if the amount is zero.
    * @param amount The amount to increment the total drip by and to transfer from the owner.
    * @custom:throws InvalidAmount() if the amount is zero.
    */
    function incrementTotalDripAmount(uint amount) external onlyOwner {
        if (amount == 0) {
            revert InvalidAmount();
        }
        config.totalDrip += amount;
        turtle.safeTransferFrom(msg.sender, address(this), amount);
        emit TotalDripIncreased(msg.sender, amount);
    }


    /*
     * @dev Take the tokens from the contract.
     * @param token The token to take.
     * @param to The address to send the tokens to.
     * @param amount The amount to take.
     */
    function takeTokens(IERC20 token, address to, uint amount) external onlyOwner {
        if(to == address(0)) to = msg.sender;
        uint balance = token.balanceOf(address(this));
        if (balance < amount) amount = balance;
        token.safeTransfer(to, amount);
        emit TokensClaimed(msg.sender, to, address(token), amount);
    }

    /*
     * @notice Transfers the total amount of slashed turtle tokens to a specified address and resets the slashed token counter.
     * @dev Only callable by the contract owner. Uses the `safeTransfer` method to transfer tokens.
     * @param to The recipient address to receive the slashed tokens.
     */
    function takeSlashedTokens(
        address to
    ) external onlyOwner {
        uint tokenToSend = availableSlashed;
        totalSlashed += tokenToSend;
        availableSlashed = 0;
        turtle.safeTransfer(to, tokenToSend);
        emit SlashedTokensClaimed(msg.sender, to, tokenToSend);
    }

    /*
    * @notice One-time claim for the user’s allocation; if vesting applies, a time-based penalty (slashing) is applied.
    * @dev
    *   - Single-use: each address can claim only once; subsequent calls revert with AlreadyClaimed.
    *   - Time-based retention: for amounts >= minTokensToVest, a retention factor increases linearly
    *     from `initialRetentionFactor` at `start` up to 1.0 at `start + duration`. The unrealised
    *     portion (`amount - realised`) is slashed and accumulated in `availableSlashed`.
    *   - Claim window: callable only between `start` and `start + duration + claimDuration`.
    *
    * Requirements:
    *   - Contract is not paused.
    *   - Drip is active and has started.
    *   - Valid Merkle proof for (msg.sender, amount).
    *   - `totalClaimed + amount <= config.totalDrip`.
    *
    * Effects:
    *   - Increments `totalClaimed`.
    *   - If vested, updates `availableSlashed` with the slashed portion.
    *   - Stores the user’s claim as CLAIMED (cannot claim again).
    *   - Transfers the realised amount to the claimer.
    *   - Emits {Claimed}.
    *
    * @param amount The allocation amount to claim.
    * @param proof The Merkle proof for the caller’s allocation.
    */
    function claim(uint amount, bytes32[] calldata proof) external whenNotPaused {
        address _msgSender = msg.sender;
        // check that the drip has started and is active, also check the proof
        _checkClaim(amount, _msgSender, proof);

        // update the total claimed amount
        totalClaimed += amount;

        if (totalClaimed > config.totalDrip) {
            revert NotEnoughTokens();
        }

        // get the current time
        uint time = internalClockTime();
        
        bool isVested = amount >= config.minTokensToVest;

        uint amountToRelease = amount;
        uint slashedAmount;
        if (isVested) {
            uint retentionFactor = config.initialRetentionFactor + (((ONE_UNIT - config.initialRetentionFactor) * (time - config.start)) / config.duration);
            uint cappedRetentionFactor = ONE_UNIT.min(retentionFactor);
            
            // calculate the amount of tokens to be realised immediately
            amountToRelease = amount * cappedRetentionFactor / ONE_UNIT;
            
            // calculate the slashed amount
            unchecked {
                slashedAmount = amount - amountToRelease;
            }

            // update total slashed amount
            availableSlashed += slashedAmount;
        }

        // update the claim state
        claims[_msgSender] = Claim({
                state: ClaimState.CLAIMED,
                start: time,
                amountObtained: amountToRelease,
                slashedAmount: slashedAmount
        });

        // transfer the realised amount to the claimer
        turtle.safeTransfer(_msgSender, amountToRelease);

        // emit the claimed event
        emit Claimed(_msgSender, amount, amountToRelease, slashedAmount, isVested);
        
    }


    /**
     * INTERNAL AND PRIVATE FUNCTIONS **************
     */
    function _checkClaim(uint amount, address account, bytes32[] calldata proof) private {
        if (amount == 0) {
            revert ClaimingAmountIsZero();
        }

        if (!config.active) {
            revert DripNotActive();
        }

        if (claims[account].state != ClaimState.NOT_STARTED) {
            revert AlreadyClaimed(account);
        }

        uint time = _time();

        if (time > config.start + config.duration + config.claimDuration) {
            revert ClaimEnded();
        }

        if (time < config.start) {
            revert DripNotStarted();
        }

        bytes32 root = config.root;

        if (!_checkProof(amount, account, proof)) {
            revert InvalidMerkleProof(root, account, amount, proof);
        }
    }

    // private function to check proof validity
    function _checkProof(uint amount, address account, bytes32[] calldata proof) private view returns (bool) {
        bytes32 leaf = keccak256(abi.encodePacked(account, amount));
        return proof.verifyCalldata(config.root, leaf);
    }

    function availableToClaim(
        uint amount
    ) external view returns (uint amountToRelease, uint slashedAmount) {
        // get the current time
        uint time = peekTime();
        
        bool isVested = amount >= config.minTokensToVest;

        amountToRelease = amount;
    
        if (isVested) {
            uint retentionFactor = config.initialRetentionFactor + (((ONE_UNIT - config.initialRetentionFactor) * (time - config.start)) / config.duration);
            uint cappedRetentionFactor = ONE_UNIT.min(retentionFactor);
            
            // calculate the amount of tokens to be realised immediately
            amountToRelease = amount * cappedRetentionFactor / ONE_UNIT;
            
            // calculate the slashed amount
            unchecked {
                slashedAmount = amount - amountToRelease;
            }
        } 
    }

}
