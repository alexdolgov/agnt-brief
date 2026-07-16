//SPDX-License-Identifier: MIT

pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "contracts/system/ProtocolGovernor.sol";
import "contracts/system/ProtocolModule.sol";

contract FixedPresale is ProtocolModule, ReentrancyGuard {
    using SafeERC20 for IERC20;

    event PresaleClaimed(address indexed user, uint256 amount);
    error UserNotWhitelisted();

    // information that determines claiming window for users
    struct ClaimTimeConfig {
        uint256 claimStart;
        uint256 claimEnd;
    }

    ////////////////////////////////
    /////////// STATE  /////////////
    ////////////////////////////////

    ClaimTimeConfig public claimTimeInfo;

    // merkle root, calculated from leaves of (user, amount)
    bytes32 immutable whitelistMerkleRoot;
    // juice token address
    address public immutable token;
    // to prevent user from claiming multiple times
    mapping(address => bool) public hasBeenClaimed;

    uint256 public totalUsersWhoHaveClaimed;
    uint256 public totalJuiceClaimed;

    ////////////////////////////////
    /////// PROGRAM LOGIC //////////
    ////////////////////////////////

    constructor(
        address protocolGovernor_,
        bytes32 whitelistMerkleRoot_,
        address token_,
        uint256 claimStart_,
        uint256 claimEnd_
    )
        ProtocolModule(protocolGovernor_)
    {
        whitelistMerkleRoot = whitelistMerkleRoot_;
        token = token_;

        _setClaimWindow(claimStart_, claimEnd_);
    }

    // allows whitelisted users to claim their entire allocated amount, cannot be called twice
    // this is the only user facing endpoint in the program
    function claimTokens(bytes32[] calldata proof, uint256 amount) external nonReentrant {
        // make sure the user has not already claimed their allocation
        require(!hasBeenClaimed[msg.sender], "allocation already claimed");

        // make sure the user is not claiming before the window opens, or
        // after it closes
        require(claimTimeInfo.claimStart <= block.timestamp, "claim has not started yet");
        require(claimTimeInfo.claimEnd > block.timestamp, "claim period has ended");

        // validate the user is whitelisted for the amount provided
        if (!verifyProof(proof, msg.sender, amount)) {
            revert UserNotWhitelisted();
        }

        // send the user their tokens
        IERC20(token).safeTransfer(msg.sender, amount);

        hasBeenClaimed[msg.sender] = true;

        totalUsersWhoHaveClaimed += 1;
        totalJuiceClaimed += amount;

        emit PresaleClaimed(msg.sender, amount);
    }

    function verifyProof(bytes32[] calldata proof, address sender, uint256 amount) public view virtual returns (bool) {
        bytes32 leaf = keccak256(abi.encodePacked(sender, amount));
        return MerkleProof.verify(proof, whitelistMerkleRoot, leaf);
    }

    //////////////////////////////////////////////
    //////////// Admin functionality /////////////
    /////////////////////////////////////////////

    // allows the admin to adjust the start date of the claiming window
    // only possible to call if claim period has not already started.
    function changeClaimWindow(uint256 _claimStart, uint256 _claimEnd) external onlyOwner {
        _setClaimWindow(_claimStart, _claimEnd);
    }

    // allows admin to withdraw leftover tokens after claiming window has ended
    function withdrawLeftoverJuice(address _to) external onlyOwner {
        require(claimTimeInfo.claimEnd < block.timestamp, "cannot withdraw remaining until claim period has ended");

        // transfer the entire contract balance to the specified "_to" address
        uint256 contractJuiceBalance = IERC20(token).balanceOf(address(this));
        IERC20(token).transfer(_to, contractJuiceBalance);
    }

    // allows the admin to adjust the start date of the claiming window
    // only possible to call if claim period has not already started.
    function _setClaimWindow(uint256 _claimStart, uint256 _claimEnd) internal {
        require(block.timestamp < _claimStart, "claim already started");
        require(_claimStart < _claimEnd, "end cannot occur before start time");

        claimTimeInfo.claimStart = _claimStart;
        claimTimeInfo.claimEnd = _claimEnd;
    }
}
