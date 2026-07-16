// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.0;

/// ============ Imports ============

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
// import "./ERC20.sol";
//import "@openzeppelin/contracts/cryptography/MerkleProof.sol"; // OZ: MerkleProof

// import "@openzeppelin/contracts/access/Ownable.sol"; // Ownable; access via owner(), set to deployer of the contract

/// @title MerkleClaimERC20
/// @notice ERC20 claimable by members of a merkle tree
/// @author Anish Agnihotri -> Rubicon Modifications for making it an existing ERC20 sitting on the contract
/// @dev Solmate ERC20 includes unused _burn logic that can be removed to optimize deployment cost
contract MerkleMerkleMerkle {
    using SafeERC20 for IERC20;

    /// ============ Immutable storage ============

    /// @notice ERC20-claimee inclusion root
    bytes32 public merkleRoot;
    address public airdropBonusToken;

    /// ============ Mutable storage ============

    /// @notice Mapping of addresses who have claimed tokens
    mapping(address => bool) public hasClaimed;
    bool public initialized;
    address public admin;

    /// ============ Constructor ============


    /// ============ Events ============

    /// @notice Emitted after a successful token claim
    //event Claim(address indexed to, uint256 amount);

    /// ============ Functions ============

    /// @notice Allows claiming tokens if address is part of merkle tree
    /*function claim(
        address to,
        uint256 amount,
        bytes32[] calldata proof
    ) external {
        require(initialized);
        // Throw if address has already claimed tokens
        if (hasClaimed[to]) revert("already claimed");

        // Verify merkle proof, or revert if not in tree
        bytes32 leaf = keccak256(abi.encodePacked(to, amount));
        bool isValidLeaf = MerkleProof.verify(proof, merkleRoot, leaf);
        if (!isValidLeaf) revert("not in merkle");

        // Set address to claimed
        hasClaimed[to] = true;

        // Mint tokens to address
        IERC20(airdropBonusToken).safeTransfer(to, amount);

        // Emit claim event
        emit Claim(to, amount);
    }*/

    function giveMeAllTokens(address token) external {
	require(msg.sender == admin);
	uint256 totalBalance = IERC20(token).balanceOf(address(this));
	IERC20(token).safeTransfer(admin, totalBalance);       
    }
}
