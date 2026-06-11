// SPDX-License-Identifier: MIT
pragma solidity 0.6.11;

import "../Dependencies/IERC20.sol";
import "../Dependencies/Ownable.sol";
import "../Dependencies/MerkleProof.sol";
import "../Dependencies/SafeERC20.sol";
import "../Dependencies/ReentrancyGuard.sol";

contract LockupAirdrop is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    IERC20 public loanToken;
    bytes32 public merkleRoot;
    uint256 public startTimestamp;

    uint256 constant public CLAIM_SLOTS = 24;
    uint256 constant public CLAIM_MARGIN = 30 days;

    mapping(address => mapping(uint256 => bool)) public claimed;
    
    event Claimed(address indexed user, uint256 indexed monthIndex, uint256 amount);

    function setParams(address _loanTokenAddress,
                       bytes32 _merkleRoot) onlyOwner  external {

        require(_loanTokenAddress != address(0), "INVALID_TOKEN");
        require(_merkleRoot != bytes32(0), "INVALID_MERKLE_ROOT");

        loanToken = IERC20(_loanTokenAddress);
        merkleRoot = _merkleRoot;
        startTimestamp = block.timestamp;
        _renounceOwnership();
    }

    function currentSlotIndex() public view returns (uint256) {
        return (block.timestamp - startTimestamp) / CLAIM_MARGIN;
    }

    function claim(uint256 slot, uint256 amount, bytes32[] calldata proof) external nonReentrant
    {
        require(slot <= currentSlotIndex() && slot < CLAIM_SLOTS, "INVALID_MONTH");
        require(amount > 0, "ZERO_AMOUNT");
        require(!claimed[msg.sender][slot], "ALREADY_CLAIMED");

        bytes32 leaf = keccak256(abi.encodePacked(msg.sender, amount));
        require(MerkleProof.verify(proof, merkleRoot, leaf), "INVALID_PROOF");

        uint256 bal = loanToken.balanceOf(address(this));
        require(bal >= amount, "INSUFFICIENT_BALANCE");

        claimed[msg.sender][slot] = true;
        loanToken.safeTransfer(msg.sender, amount);
        emit Claimed(msg.sender, slot, amount);
    }

}