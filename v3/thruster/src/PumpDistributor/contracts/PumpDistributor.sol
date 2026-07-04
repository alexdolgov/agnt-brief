// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import "interfaces/IPump.sol";

contract PumpDistributor is Ownable {
    event Claimed(address indexed owner, address indexed claimer, uint256 amount);
    event SetIsAllowed(address indexed account, bool allowed);
    event SetPump(address indexed pump, uint256 deadline);

    address public pump;

    bytes32 public root;

    uint256 public threshold;
    uint256 public claimDeadline;

    mapping(address => bool) public claimed;

    /**
     * @dev Constructor for the PumpDistributor contract.
     * @param owner_ - The owner of the contract
     * @param root_ - The root of the merkle tree
     * @param threshold_ - The threshold for enabling transfers, in terms of remaining balance of the distributor contract
     */
    constructor(address owner_, bytes32 root_, uint256 threshold_) Ownable(owner_) {
        root = root_;
        threshold = threshold_;
    }

    /**
     * @dev Sets the PUMP token address, only callable by owner, and starts the claims.
     * @param pump_ - The address of the PUMP token
     */
    function setPump(address pump_) external onlyOwner {
        require(pump == address(0), "PumpDistributor: Pump already set");
        claimDeadline = block.timestamp + 366 days;
        pump = pump_;
        emit SetPump(pump_, claimDeadline);
    }

    /**
     * @dev Allows claiming by an external address if it exists in the tree. Only callabe once per owner, requires merkle tree to be constructed correctly.
     * @param owner_ - The address to claim tokens for
     * @param amount_ - The amount of tokens to claim
     * @param proof_ - The merkle proof to verify the claim
     */
    function claim(address owner_, uint256 amount_, bytes32[] calldata proof_) external {
        require(block.timestamp < claimDeadline, "PumpDistributor: Deadline passed");
        bytes32 node = keccak256(abi.encodePacked(msg.sender, owner_, amount_));
        require(MerkleProof.verify(proof_, root, node), "PumpDistributor: Invalid proof");
        require(!claimed[owner_], "PumpDistributor: Already claimed");
        claimed[owner_] = true;
        IPump(pump).transfer(owner_, amount_);
        emit Claimed(owner_, msg.sender, amount_);
    }

    /**
     * @dev Set the allowed status for an account, only callable by owner.
     * @param account_ - The account to set the allowed status for
     * @param allowed_ - The status to set
     */
    function setIsAllowed(address account_, bool allowed_) external onlyOwner {
        IPump(pump).setIsAllowed(account_, allowed_);
        emit SetIsAllowed(account_, allowed_);
    }

    /**
     * @dev Enables transfers for the PUMP token if the distribution threshold has been reached.
     */
    function enableTransfers() external {
        require(IPump(pump).balanceOf(address(this)) < threshold, "PumpDistributor: Threshold not reached");
        IPump(pump).setEnableTransfers(true);
    }

    /**
     * @dev Burns remaining tokens, anyone call this function as long as the claim deadline has passed.
     */
    function burnRemaining() external {
        require(block.timestamp > claimDeadline, "PumpDistributor: Deadline not passed");
        IPump(pump).burn(IPump(pump).balanceOf(address(this)));
    }

    function updateRoot(bytes32 _root) external onlyOwner {
        root = _root;
    }
}