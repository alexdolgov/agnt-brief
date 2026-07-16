// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.20;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

error AlreadyClaimed();
error NotInMerkleTree();
error NotEnoughBalance();

contract MerkleClaim is Ownable {
    using SafeERC20 for IERC20;

    /// @notice ERC20-claimee inclusion root
    bytes32 public immutable merkleRoot;
    address public immutable dropToken;

    /// @notice Mapping of addresses who have claimed tokens
    mapping(address => bool) public hasClaimed;

    constructor(
        bytes32 _merkleRoot,
        address _dropToken,
        address _owner
    ) Ownable(_owner) {
        merkleRoot = _merkleRoot;
        dropToken = _dropToken;
    }

    event Claim(address indexed to, uint256 amount);

    /// @notice Allows claiming tokens if address is part of merkle tree
    /// @param to address of claimee
    /// @param amount of tokens owed to claimee
    /// @param proof merkle proof to prove address and amount are in tree
    function claim(
        address to,
        uint256 amount,
        bytes32[] memory proof
    ) external {
        if (hasClaimed[to]) revert AlreadyClaimed();

        // Verify merkle proof, or revert if not in tree
        bytes32 leaf = keccak256(
            bytes.concat(keccak256(abi.encode(to, amount)))
        );
        if (!MerkleProof.verify(proof, merkleRoot, leaf))
            revert NotInMerkleTree();

        hasClaimed[to] = true;

        IERC20(dropToken).safeTransfer(to, amount);

        emit Claim(to, amount);
    }

    /// @notice Used to withdraw funds by the owner.
    /// @dev 'MerkleClaims' spawned via proposals will be
    ///      owned by the Governance, thus in such case
    ///      withdrawal is possible only via another proposal.
    function withdraw(uint256 amount) external onlyOwner {
        if (amount > IERC20(dropToken).balanceOf(address(this)))
            revert NotEnoughBalance();
        IERC20(dropToken).safeTransfer(owner(), amount);
    }
}
