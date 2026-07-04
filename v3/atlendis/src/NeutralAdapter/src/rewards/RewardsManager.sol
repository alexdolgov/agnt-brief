// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import 'lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol';
import 'lib/openzeppelin-contracts/contracts/access/Ownable.sol';
import '../interfaces/IPositionManager.sol';
import './interfaces/IRewardsManager.sol';
import './modules/interfaces/IRewardsModule.sol';

/**
 * @title Rewards Manager
 * @author Atlendis Labs
 * @notice Implementation of the IRewardsManager
 */
contract RewardsManager is IRewardsManager, ERC721, Ownable {
    /*//////////////////////////////////////////////////////////////
                               STORAGE
    //////////////////////////////////////////////////////////////*/
    IPositionManager public immutable POSITION_MANAGER;
    uint256 public immutable MIN_POSITION_VALUE;

    IRewardsModule[] public modules;

    /*//////////////////////////////////////////////////////////////
                             CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /**
     * @dev Constructor
     * @param governance Address of the governance
     * @param positionManager Address of the position manager contract
     * @param minPositionValue Minimum position required value
     * @param name ERC721 name of the staked position NFT
     * @param symbol ERC721 symbol of the staked position NFT
     */
    constructor(
        address governance,
        address positionManager,
        uint256 minPositionValue,
        string memory name,
        string memory symbol
    ) ERC721(name, symbol) {
        if (minPositionValue == 0) revert INVALID_ZERO_MIN_POSITION_VALUE(minPositionValue);
        MIN_POSITION_VALUE = minPositionValue;

        POSITION_MANAGER = IPositionManager(positionManager);

        _transferOwnership(governance);
    }

    /*//////////////////////////////////////////////////////////////
                              GOVERNANCE
    //////////////////////////////////////////////////////////////*/

    /**
     * Note: temporary method, will be removed or updated with #196
     */
    function addRewardsModule(address module) public onlyOwner {
        modules.push(IRewardsModule(module));
    }

    /*//////////////////////////////////////////////////////////////
                            PUBLIC METHODS
    //////////////////////////////////////////////////////////////*/

    /**
     * @inheritdoc IRewardsManager
     */
    function stake(uint256 positionId) public {
        (address owner, uint256 rate, uint256 positionValue) = POSITION_MANAGER.getPosition(positionId);
        if (msg.sender != owner) revert UNAUTHORIZED(msg.sender, owner);
        if (positionValue < MIN_POSITION_VALUE) revert POSITION_VALUE_TOO_LOW(positionValue, MIN_POSITION_VALUE);

        POSITION_MANAGER.transferFrom(owner, address(this), positionId);

        for (uint256 i = 0; i < modules.length; i++) {
            modules[i].stake(positionId, owner, rate, positionValue);
        }

        _mint(owner, positionId);

        emit PositionStaked(positionId, owner, rate, positionValue);
    }

    /**
     * @inheritdoc IRewardsManager
     */
    function unstake(uint256 positionId) public {
        address owner = ownerOf(positionId);
        if (msg.sender != owner) revert UNAUTHORIZED(msg.sender, owner);

        _burn(positionId);

        for (uint256 i = 0; i < modules.length; i++) {
            modules[i].unstake(positionId, owner);
        }

        POSITION_MANAGER.transferFrom(address(this), owner, positionId);

        emit PositionUnstaked(positionId, owner);
    }

    /**
     * @inheritdoc IRewardsManager
     */
    function claimRewards(uint256 positionId) public {
        address owner = ownerOf(positionId);
        if (msg.sender != owner) revert UNAUTHORIZED(msg.sender, owner);

        for (uint256 i = 0; i < modules.length; i++) {
            modules[i].claimRewards(positionId, owner);
        }

        emit RewardsClaimed(positionId, owner);
    }
}
