// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.19;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { MerkleProof } from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @notice
 *   Allows users to claim crab tokens depending on merkel root verification.
 */
contract ShellDistributor is Ownable {
    //*********************************************************************//
    // --------------------------- custom errors ------------------------- //
    //*********************************************************************//
    error AlreadyClaimed();
    error InvalidInput();
    error InvalidProof();

    //*********************************************************************//
    // --------------------------- events ------------------------- //
    //*********************************************************************//
    event Claimed(address indexed account, uint256 amount);

    event Vested(uint256 indexed streamId, address account);

    event Withdraw(uint256 indexed streamId, address account);

    /**
     * @notice
     * shell token address.
     */
    IERC20 public immutable shell;

    /**
     * @notice
     * array to store merkel roots.
     */
    bytes32[] public root;

    /**
     * @notice
     * user address => root => bool(claim status).
     */
    mapping(address => mapping(bytes32 => bool)) public claimed;

    /**
     * @notice
     * constructor to initialize all immutables mentioned above.
     */
    constructor(IERC20 _shell) {
        shell = _shell;
    }

    /**
     * @notice claim shell based on merkle proof verification
     * @param amount_ claim amount array
     * @param merkleProof_ merkel proof nested array as each proof is a array itself
     */
    function claim(uint256[] calldata amount_, bytes32[][] calldata merkleProof_) public {
        // caching length
        uint256 length_ = merkleProof_.length;

        // avoid multiple SLOADS
        bytes32[] memory root_ = root;

        if (length_ != amount_.length) revert InvalidInput();
        if (length_ != root.length) revert InvalidInput();

        for (uint256 i = 0; i < length_;) {
            // pass in empty proof array where claiming not eligible
            if (merkleProof_[i].length != 0) {
                // checking if already claimed against a proof
                if (claimed[msg.sender][root_[i]]) revert AlreadyClaimed();

                // Verify the merkle proof.
                bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(msg.sender, amount_[i]))));
                if (!MerkleProof.verify(merkleProof_[i], root_[i], leaf)) revert InvalidProof();

                // update the claim status for this root
                claimed[msg.sender][root_[i]] = true;

                emit Claimed(msg.sender, amount_[i]);

                (bool success) = shell.transfer(msg.sender, amount_[i]);
                if (!success) revert();
            }
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice view claims status across roots for a given user
     * @param user_ address of u∏ser
     * @return claims bool array indicating whether the user has claimed against a root or not
     */
    function viewRewardClaims(address user_) public view returns (bool[] memory claims) {
        // avoid multiple SLOADS
        bytes32[] memory root_ = root;

        // caching length
        uint256 length_ = root_.length;

        claims = new bool[](length_);

        for (uint256 i = 0; i < length_;) {
            claims[i] = claimed[user_][root_[i]];
            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice update merkel root
     * @param newRoot_ new merkel root
     */
    function updateRoot(bytes32 newRoot_) external onlyOwner {
        root.push(newRoot_);
    }
}
