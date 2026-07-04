// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import { MerkleProof } from "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
// :::::::::::::::@@@@@:::::::@@@@@:::::::@@@@@@::::::::::::::
// ::::::::::::::@@@@@@:::::@@@@@@@:::::@@@@@@@@::::::::::::::
// ::::::::::::::@@@@@@:::#@@@@@@@@:::@@@@@@@@@@::::::::::::::
// ::::::::::::::@@@@@@.:@@@@@@@@@@::@@@@@@@@@@@::::::::::::::
// :::::::::::::::::::@@@@@@@@@@::@@@@@@@@@@::::::::::::::::::
// :::::::::::::::::::@@@@@@@@-:::@@@@@@@@::::::::::::::::::::
// :::::::::::::::::::@@@@@@@:::::@@@@@@@.::::::::::::::::::::
// :::::::::::::::::::@@@@@:::::::@@@@@:::::::::::::::::::::::
// :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

struct RootUpdate {
    address token;
    bytes32 root;
    uint256 amount;
}

struct Claim {
    address token;
    uint256 amount;
    bytes32[] proof;
}

struct UserClaimed {
    address token;
    uint256 amount;
}

/// @title RewardsDistributor
/// @author HyperLend
/// @notice contract for distributing multi-token rewards using merkle proofs
contract RewardsDistributor is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    error InvalidProof();
    error TokenInvalidated();
    error AmountRegression();

    /// @notice each token has it's own merkle root, which contains (chainId, address(this), user, token, cumulativeAmount)
    mapping(address token => bytes32 root) public rootByToken;

    /// @notice each user has a mapping of already claimed amounts of tokens
    mapping(address user => mapping(address token => uint256 claimedAmount)) public claimed;

    /// @notice list of all tokens that have ever had a root set
    address[] public tokenList;

    /// @notice tracks whether a token address has been added to _tokenList already
    mapping(address token => bool registered) public tokenRegistered;

    /// @notice emitted when merkle root of a certain token is updated
    event UpdatedRoot(address token, bytes32 newRoot, bytes32 oldRoot, uint256 amount);
    /// @notice emitted when a claim is completed
    event Claimed(address user, address token, uint256 amount);

    constructor() Ownable(msg.sender) {}

    /// @notice claims the unclaimed amount of the tokens to msg.sender
    function claim(Claim[] calldata claims) external nonReentrant() {
        for (uint256 i = 0; i < claims.length; i++){
            _claim(msg.sender, claims[i].token, claims[i].amount, claims[i].proof);
        }
    }

    /// @notice claims the unclaimed amount of the token to user
    function _claim(address user, address token, uint256 amountInProof, bytes32[] calldata proof) internal {
        //throw a specific error for invalidated tokens instead of just InvalidProof()
        if (rootByToken[token] == bytes32(0)) revert TokenInvalidated();

        //calculate how much to pay, explicitely revert on regression instead of reverting from underflow
        if (claimed[user][token] > amountInProof) revert AmountRegression();
        uint256 amountToPay = amountInProof - claimed[user][token];

        //verify the merkle proof
        bytes32 node = keccak256(abi.encodePacked(block.chainid, address(this), user, token, amountInProof));
        if (!MerkleProof.verifyCalldata(proof, rootByToken[token], node)) revert InvalidProof();

        //add the amount to the sum of the token
        claimed[user][token] += amountToPay;

        if (amountToPay > 0){
            IERC20(token).safeTransfer(user, amountToPay);
        }
        
        emit Claimed(user, token, amountToPay);
    }

    /// @notice set merkle roots per token and transfer needed amount from the caller
    /// @dev update.amount is calculated offchain, there is no onchain guarantee it matches required amount in the merkle tree
    function setRoots(RootUpdate[] calldata updates) external onlyOwner() {
        for (uint256 i = 0; i < updates.length; i++){
            address token = updates[i].token;
            bytes32 root = updates[i].root;
            uint256 amount = updates[i].amount;

            // register token in the list the first time a root is set for it
            if (!tokenRegistered[token]) {
                tokenRegistered[token] = true;
                tokenList.push(token);
            }

            emit UpdatedRoot(token, root, rootByToken[updates[i].token], amount);
            rootByToken[token] = root;

            IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        }
    }

    /// @notice get already claimed amounts for all tokens for the user
    function getClaimedByUser(address user) external view returns (UserClaimed[] memory) {
        UserClaimed[] memory result = new UserClaimed[](tokenList.length);
        for (uint256 i = 0; i < tokenList.length; i++) {
            result[i] = UserClaimed(tokenList[i], claimed[user][tokenList[i]]);
        }
        return result;
    }

    /// @notice Recovers ERC20 or native tokens sent directly to the contract
    /// @dev use address(0) to recover native tokens
    function recover(address tokenToRecover, uint256 amount) external onlyOwner {
        if (tokenToRecover == address(0)){
            (bool success, ) = payable(msg.sender).call{value: address(this).balance}("");
            require(success, "transfer failed");
        } else {
            IERC20(tokenToRecover).safeTransfer(owner(), amount);
        }
    }

}
