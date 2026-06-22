// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import "./Ownable.sol";
import {SafeERC20} from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import {MerkleProof} from "openzeppelin-contracts/utils/cryptography/MerkleProof.sol";
import {IRelayerV2, UserRequest} from "./IRelayerV2.sol";

contract WithdrawETH is Ownable {
    using SafeERC20 for IERC20;

    event Withdraw(address indexed user, uint256 amount);

    error AlreadyWithdrawn();
    error InvalidProof();

    /*//////////////////////////////////////////////////////////////
                             STORAGE
    //////////////////////////////////////////////////////////////*/

    ///@notice Mapping of merkle roots for a given asset
    bytes32 public merkleRoot;

    ///@notice Mapping of asset to claimed bitmap
    mapping(address => bool) public withdrawnMap;

    ///@notice WETH Address
    address public immutable WETH;

    ///@notice TRSY Address
    address public immutable TRSY;

    IRelayerV2 public immutable RELAYER;

    constructor(address _WETH, address _TRSY, address _RELAYER) Ownable(msg.sender) {
        WETH = _WETH;
        TRSY = _TRSY;
        RELAYER = IRelayerV2(_RELAYER);
        IERC20(WETH).forceApprove(address(RELAYER), type(uint256).max);
    }

    /*//////////////////////////////////////////////////////////////
                             ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    ///@notice Set the merkle root for a given asset
    ///@param _merkleRoot bytes32 of the merkle root
    function setMerkleRoot(bytes32 _merkleRoot) external onlyOwner {
        merkleRoot = _merkleRoot;
    }

    ///@notice Recover asset from the contract in case of emergency
    function recoverAsset(address to, uint256 amount) external onlyOwner {
        IERC20(WETH).safeTransfer(to, amount);
    }

    /*//////////////////////////////////////////////////////////////
                            EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    ///@notice Claim the reward for a given asset
    ///@param amount amount of the reward
    ///@param merkleProof bytes32[] of the merkle proof
    function withdraw(uint256 amount, bytes32[] calldata merkleProof) external {
        address user = msg.sender;
        if (isWithdrawn(user)) revert AlreadyWithdrawn();

        // Verify the merkle proof.
        bytes32 node = keccak256(bytes.concat(keccak256(abi.encode(user, amount))));
        if (!MerkleProof.verify(merkleProof, merkleRoot, node)) revert InvalidProof();

        // Mark it claimed and send the token.
        _setWithdrawn(user);
        IERC20(WETH).safeTransfer(user, amount);

        emit Withdraw(user, amount);
    }

    function withdrawAndDepositToLiquidVault(uint256 amount, bytes32[] calldata merkleProof, uint256 minTrsyToReceived)
        external
    {
        address user = msg.sender;
        if (isWithdrawn(user)) revert AlreadyWithdrawn();

        // Verify the merkle proof.
        bytes32 node = keccak256(bytes.concat(keccak256(abi.encode(user, amount))));
        if (!MerkleProof.verify(merkleProof, merkleRoot, node)) revert InvalidProof();

        // Mark it claimed and send the token.
        _setWithdrawn(user);

        uint256 trsyBefore = IERC20(TRSY).balanceOf(address(this));
        UserRequest[] memory requests = new UserRequest[](1);
        requests[0] = UserRequest({asset: WETH, amount: amount});
        RELAYER.deposit(requests, false, 90 * minTrsyToReceived / 100);
        uint256 trsyAfter = IERC20(TRSY).balanceOf(address(this));
        uint256 receivedAmount = trsyAfter - trsyBefore;
        require(receivedAmount > 0, "No TRSY received");
        IERC20(TRSY).safeTransfer(user, receivedAmount);
    }

    ///@notice Return if user at index claimed the reward for a given asset
    function isWithdrawn(address user) public view returns (bool) {
        return withdrawnMap[user];
    }

    /*//////////////////////////////////////////////////////////////
                            INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    ///@notice Set user at index claimed the reward for a given asset
    function _setWithdrawn(address user) internal {
        withdrawnMap[user] = true;
    }
}
