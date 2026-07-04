// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {ERC20} from "solady/tokens/ERC20.sol";
import {Ownable} from "solady/auth/Ownable.sol";
import {MerkleProofLib} from "solady/utils/MerkleProofLib.sol";

contract Claimer is Ownable {
    ERC20 public immutable USDC;
    uint256 public immutable DEADLINE;

    bool public paused;
    bytes32 public root;
    mapping(bytes32 leaf => bool wasClaimed) public claimed;

    event EmergencyWithdraw(address indexed to, uint256 amount);
    event Pause(bool paused);
    event Claim(address indexed owner, address indexed sender, bytes32 indexed root, uint256 amount, bytes32 leaf);
    event RootUpdated(bytes32 indexed from, bytes32 indexed to);

    error ClaimEnded();
    error InvalidClaim();
    error AlreadyClaimed();
    error FailedToTransfer();
    error Paused();

    constructor(address _owner, bytes32 _initialRoot, address _usdcAddress, uint256 _claimDuration) {
        _initializeOwner(_owner);
        root = _initialRoot;
        USDC = ERC20(_usdcAddress);
        DEADLINE = block.timestamp + _claimDuration;
    }

    function claim(address _owner, uint256 _amount, bytes32[] calldata _proofs) external {
        if (paused) {
            revert Paused();
        }

        if (block.timestamp > DEADLINE) {
            revert ClaimEnded();
        }

        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(_owner, _amount))));

        if (claimed[leaf]) {
            revert AlreadyClaimed();
        }

        bool validClaim = MerkleProofLib.verify(_proofs, root, leaf);

        if (!validClaim) {
            revert InvalidClaim();
        }

        claimed[leaf] = true;

        bool transfer = USDC.transfer(_owner, _amount);

        if (!transfer) {
            revert FailedToTransfer();
        }

        emit Claim(_owner, msg.sender, root, _amount, leaf);
    }

    function setRoot(bytes32 _root) external onlyOwner {
        emit RootUpdated(root, _root);

        root = _root;
    }

    function pause(bool _paused) external onlyOwner {
        paused = _paused;

        emit Pause(_paused);
    }

    function emergencyWithdraw(address _to) external onlyOwner {
        uint256 amount = USDC.balanceOf(address(this));

        bool transfer = USDC.transfer(_to, amount);

        if (!transfer) {
            revert FailedToTransfer();
        }

        emit EmergencyWithdraw(_to, amount);
    }
}
