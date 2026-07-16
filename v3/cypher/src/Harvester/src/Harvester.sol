// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IPositionManager} from "src/interfaces/IPositionManager.sol";

/**
 * @title Harvester
 * @author Camelot
 * @notice Collects LP position fees from Algebra pools on behalf of the protocol owner.
 */
contract Harvester is Ownable {
    /**
     * @notice Parameters for collecting fees from multiple LP positions.
     * @param tokenId The ID of the NFT position.
     * @param amount0 The maximum amount of token0 to collect.
     * @param amount1 The maximum amount of token1 to collect.
     */
    struct CollectParams {
        uint256 tokenId;
        uint128 amount0;
        uint128 amount1;
    }

    /**
     * @notice Emitted when the worker is updated.
     */
    event WorkerUpdated(address indexed oldWorker, address indexed newWorker);

    /**
     * @notice Caller is not the owner or worker.
     */
    error UnauthorizedCaller();

    /// @notice Address of the NFTPositionManager.
    address public immutable POSITION_MANAGER;

    /// @notice Address of the worker that can collect rewards.
    address public worker;

    /**
     * @notice Modifier to restrict access to owner or worker.
     */
    modifier onlyOwnerOrWorker() {
        if (msg.sender != owner() && msg.sender != worker) revert UnauthorizedCaller();
        _;
    }

    /**
     * @notice Initialises the Harvester contract.
     * @param owner The address that will own this contract.
     * @param positionManager The address of the NFT Position Manager contract.
     */
    constructor(address owner, address positionManager) Ownable(owner) {
        POSITION_MANAGER = positionManager;
    }

    /**
     * @notice Sets the worker address.
     * @param _worker The new worker address (can be address(0) to disable).
     */
    function setWorker(address _worker) external onlyOwner {
        address oldWorker = worker;
        worker = _worker;
        emit WorkerUpdated(oldWorker, _worker);
    }

    /**
     * @notice Collects rewards for a single NFT position.
     * @param tokenId The ID of the NFT position.
     * @param amount0 The amount of token0 to claim.
     * @param amount1 The amount of token1 to claim.
     */
    function collect(uint256 tokenId, uint128 amount0, uint128 amount1) external onlyOwnerOrWorker {
        IPositionManager.CollectParams memory params = IPositionManager.CollectParams({
            tokenId: tokenId,
            recipient: owner(),
            amount0Max: amount0,
            amount1Max: amount1
        });

        IPositionManager(POSITION_MANAGER).collect(params);
    }

    /**
     * @notice Collects rewards for multiple NFT positions.
     * @param multiParams Array of objects with individual position collection data.
     */
    function multiCollect(CollectParams[] calldata multiParams) external onlyOwnerOrWorker {
        uint256 paramsLength = multiParams.length;

        for (uint256 i; i < paramsLength;) {
            IPositionManager.CollectParams memory params = IPositionManager.CollectParams({
                tokenId: multiParams[i].tokenId,
                recipient: owner(),
                amount0Max: multiParams[i].amount0,
                amount1Max: multiParams[i].amount1
            });

            IPositionManager(POSITION_MANAGER).collect(params);

            unchecked {
                ++i;
            }
        }
    }
}
