pragma solidity ^0.8.16;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract RewardEscrow is Ownable {
    using SafeERC20 for IERC20;

    IERC20 immutable public escrowToken;
    address private rewarder;
    struct Escrow {
        uint256 amount_;
        uint64 lockedTill;
    }
    mapping(address => uint256)  public unlockIndex;
    mapping(address => Escrow[]) public escrowRecords;

    constructor(address _escrowToken, address _rewarder) {
        rewarder = _rewarder;
        escrowToken = IERC20(_escrowToken);
    }

    function setRewarder(address rewarder_) external {
        require(msg.sender == owner(), "!auth");
        rewarder = rewarder_;
    }

    function vest(address beneficiary, uint256 amount_, uint64 lockTime) external {
        require(msg.sender == rewarder || msg.sender == owner());
        require(beneficiary != address(0));
        escrowToken.safeTransferFrom(msg.sender, address(this), amount_);
        uint64 unlockTime = uint64(block.timestamp)+lockTime;
        uint256 idx = escrowRecords[beneficiary].length;
        if (idx != 0) {
            require(escrowRecords[beneficiary][idx - 1].lockedTill < unlockTime);
        }
        escrowRecords[beneficiary].push(Escrow({ amount_: amount_, lockedTill: unlockTime }));
    }

    function claim(address beneficiary, uint256 claims) external {
        Escrow[] memory userRecords = escrowRecords[beneficiary];
        uint256 idx = unlockIndex[beneficiary];
        uint256 claimableAmount = 0;
        uint len = claims != 0 && userRecords.length > claims ? claims : userRecords.length;
        for (uint256 i = idx; i < len; i++) {
            if (userRecords[i].lockedTill > block.timestamp) {
                unlockIndex[beneficiary] = i;
                break;
            } else if (i == userRecords.length - 1) {
                unlockIndex[beneficiary] = userRecords.length;
            }
            claimableAmount += userRecords[i].amount_;
        }
        if (claimableAmount > 0){
            escrowToken.safeTransfer(beneficiary, claimableAmount);
        }
    }
}