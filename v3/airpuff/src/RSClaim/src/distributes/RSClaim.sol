// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {IERC20} from "openzeppelin/token/ERC20/IERC20.sol";
import {MerkleProofLib} from "solmate/utils/MerkleProofLib.sol";
import {Ownable} from "openzeppelin/access/Ownable.sol";

contract RSClaim is Ownable {
    /// @notice List of tokens supported for claiming.
    address[] public tokens;

    /// @notice Claiming flag to enable or disable claim functionality.
    bool public canClaim;

    /// @notice Array of Merkle roots for verifying claims.
    bytes32[] public merkleRoots;

    /// @dev Tracks claimed status for each address and token combination.
    mapping(address => mapping(address => uint256)) public claimed;

    event MerkleRootChanged(bytes32[] merkleRoots);
    event TokenChanged(address[] tokens);
    event CanClaimChanged(bool canClaim);
    event Claim(address indexed claimant, uint256 amount);

    /// @notice Fallback function to receive native tokens.
    receive() external payable {}

    /// @notice Fallback function to handle plain calls.
    fallback() external payable {}

    /**
     * @notice Gets the balance of native tokens held by the contract.
     * @dev Returns the native token balance.
     * @return The balance of native tokens.
     */
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    /**
     * @notice Constructor to initialize the contract with tokens and Merkle roots.
     * @param _tokens The list of token addresses.
     * @param _merkleRoots The list of Merkle roots for verifying claims.
     */
    constructor(address[] memory _tokens, bytes32[] memory _merkleRoots) Ownable() {
        tokens = _tokens;
        merkleRoots = _merkleRoots;
    }

    /**
     * @notice Updates the claim flag to enable or disable claiming.
     * @param _canClaim The new claim flag state.
     */
    function setCanClaim(bool _canClaim) external onlyOwner {
        canClaim = _canClaim;
        emit CanClaimChanged(_canClaim);
    }

    /**
     * @notice Updates the Merkle roots for claim verification.
     * @param _merkleRoots The new Merkle roots.
     */
    function setMerkleRoots(bytes32[] memory _merkleRoots) external onlyOwner {
        merkleRoots = _merkleRoots;
        emit MerkleRootChanged(_merkleRoots);
    }

    /**
     * @notice Updates the list of tokens supported for claiming.
     * @param _tokens The new list of token addresses.
     */
    function setTokens(address[] memory _tokens) external onlyOwner {
        tokens = _tokens;
        emit TokenChanged(_tokens);
    }

    /**
     * @notice Allows the owner to claim all remaining tokens and native tokens.
     * @param receiver The address to receive the remaining tokens.
     */
    function claimRemainingTokens(address receiver) external onlyOwner {
        for (uint256 i = 0; i < tokens.length; i++) {
            address tokenAddress = tokens[i];
            if (tokenAddress == address(0)) {
                uint256 mntBalance = address(this).balance;
                if (mntBalance > 0) {
                    (bool success,) = payable(receiver).call{value: mntBalance}("");
                    require(success, "RS: claim MNT call failed.");
                }
            } else {
                uint256 tokenBalance = IERC20(tokenAddress).balanceOf(address(this));
                if (tokenBalance > 0) {
                    IERC20(tokenAddress).transfer(receiver, tokenBalance);
                }
            }
        }
    }

    /**
     * @notice Allows the owner to claim a specific token by its address.
     * @param tokenAddress The address of the token to claim.
     * @param receiver The address to receive the claimed tokens.
     */
    function claimTokenByAddress(address tokenAddress, address receiver) external onlyOwner {
        uint256 tokenBalance = IERC20(tokenAddress).balanceOf(address(this));
        if (tokenBalance > 0) {
            IERC20(tokenAddress).transfer(receiver, tokenBalance);
        }
    }

    /**
     * @notice Allows the owner to claim all native tokens (MNT).
     * @param receiver The address to receive the claimed native tokens.
     */
    function claimMNT(address receiver) external onlyOwner {
        uint256 mntBalance = address(this).balance;
        if (mntBalance > 0) {
            (bool success,) = payable(receiver).call{value: mntBalance}("");
            require(success, "RS: claim MNT call failed.");
        }
    }

    /**
     * @notice Allows a user to claim tokens by providing a valid Merkle proof.
     * @dev Verifies the claim using the Merkle proof and updates the claimed state.
     * @param proof The Merkle proof for the claim.
     * @param index The index of the token in the `tokens` array.
     * @param amount The amount of tokens to claim.
     */
    function claim(bytes32[] calldata proof, uint256 index, uint256 amount) public {
        require(canClaim, "RS: Cannot claim.");
        address tokenAddress = tokens[index];
        require(claimed[msg.sender][tokenAddress] == 0, "RS: Tokens already claimed.");
        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(msg.sender, amount))));
        bool valid = MerkleProofLib.verify(proof, merkleRoots[index], leaf);
        require(valid, "RS: Valid proof required.");

        claimed[msg.sender][tokenAddress] = 1;
        if (tokenAddress == address(0)) {
            (bool success,) = payable(msg.sender).call{value: amount}("");
            require(success, "RS: claim MNT call failed.");
        } else {
            IERC20(tokenAddress).transfer(msg.sender, amount);
        }
    }

    /**
     * @notice Verifies the validity of a Merkle proof for a given claim.
     * @dev Computes the Merkle leaf and verifies it against the Merkle root.
     * @param proof The Merkle proof to verify.
     * @param addr The address of the claimant.
     * @param index The index of the token in the `tokens` array.
     * @param amount The amount of tokens being claimed.
     * @return Whether the proof is valid or not.
     */
    function verify(bytes32[] calldata proof, address addr, uint256 index, uint256 amount) public view returns (bool) {
        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(addr, amount))));
        return MerkleProofLib.verify(proof, merkleRoots[index], leaf);
    }
}
