/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.30;

import { ERC20 } from "../../lib/asset-managers/lib/accounts-v2/lib/solmate/src/tokens/ERC20.sol";
import { ERC721 } from "../../lib/asset-managers/lib/accounts-v2/lib/solmate/src/tokens/ERC721.sol";
import { ICLGauge } from "./interfaces/ICLGauge.sol";
import { ICLPool } from "./interfaces/ICLPool.sol";
import { ICLPositionManager } from "./interfaces/ICLPositionManager.sol";
import { Owned } from "../../lib/asset-managers/lib/accounts-v2/lib/solmate/src/auth/Owned.sol";
import { SlipstreamLogic } from "../../lib/asset-managers/src/cl-managers/libraries/SlipstreamLogic.sol";
import { ReentrancyGuard } from "../../lib/asset-managers/lib/accounts-v2/lib/solmate/src/utils/ReentrancyGuard.sol";
import { SafeTransferLib } from "../../lib/asset-managers/lib/accounts-v2/lib/solmate/src/utils/SafeTransferLib.sol";
import { Strings } from "../../lib/asset-managers/lib/accounts-v2/src/libraries/Strings.sol";

/**
 * @title Wrapper for Staked Slipstream Liquidity Positions
 * @author Pragma Labs
 */
contract WrappedStakedSlipstream is ERC721, Owned, ReentrancyGuard {
    using SafeTransferLib for ERC20;
    using Strings for uint256;

    /* //////////////////////////////////////////////////////////////
                                CONSTANTS
    ////////////////////////////////////////////////////////////// */

    // The Slipstream Pool Implementation contract.
    address internal immutable POOL_IMPLEMENTATION;

    // The contract address of the Reward Token.
    ERC20 public immutable REWARD_TOKEN;

    // The contract address of the Slipstream Factory.
    address public immutable CL_FACTORY;

    // The contract address of the NonfungiblePositionManager.
    ICLPositionManager public immutable POSITION_MANAGER;

    /* //////////////////////////////////////////////////////////////
                                STORAGE
    ////////////////////////////////////////////////////////////// */

    // The baseURI of the ERC721 tokens.
    // forge-lint: disable-next-line(mixed-case-variable)
    string public baseURI;

    // Map a position id to the contract address of the corresponding gauge.
    mapping(uint256 id => address gauge) public idToGauge;

    /* //////////////////////////////////////////////////////////////
                                EVENTS
    ////////////////////////////////////////////////////////////// */

    event RewardPaid(uint256 indexed positionId, address indexed reward, uint128 amount);

    /* //////////////////////////////////////////////////////////////
                                ERRORS
    ////////////////////////////////////////////////////////////// */

    error NotOwner();
    error RewardTokenNotValid();

    /* //////////////////////////////////////////////////////////////
                                CONSTRUCTOR
    ////////////////////////////////////////////////////////////// */

    /**
     * @param owner_ The address of the Owner.
     * @param poolImplementation The Slipstream Pool Implementation contract.
     * @param rewardToken The contract address of the Reward Token.
     * @param clFactory The contract address of the Slipstream Factory.
     * @param positionManager The contract address of the NonfungiblePositionManager.
     */
    constructor(
        address owner_,
        address poolImplementation,
        address rewardToken,
        address clFactory,
        address positionManager
    ) ERC721("Wrapped Staked Slipstream Positions", "wSSLIPP") Owned(owner_) {
        POOL_IMPLEMENTATION = poolImplementation;
        REWARD_TOKEN = ERC20(rewardToken);
        CL_FACTORY = clFactory;
        POSITION_MANAGER = ICLPositionManager(positionManager);
    }

    /*///////////////////////////////////////////////////////////////
                              STAKING LOGIC
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Stakes a Slipstream Liquidity Position in its Gauge and mints a new position.
     * @param positionId The id of the Liquidity Position.
     * @return positionId_ The id of the Minted Position.
     * @dev The Minted Position has the same id as the Liquidity Position.
     * @dev The gauge of the pool must have the valid REWARD_TOKEN of this contract.
     */
    function mint(uint256 positionId) external nonReentrant returns (uint256 positionId_) {
        POSITION_MANAGER.safeTransferFrom(msg.sender, address(this), positionId);

        // Get the Gauge.
        (,, address token0, address token1, int24 tickSpacing,,,,,,,) = POSITION_MANAGER.positions(positionId);
        address pool = SlipstreamLogic.computeAddress(POOL_IMPLEMENTATION, CL_FACTORY, token0, token1, tickSpacing);
        address gauge = ICLPool(pool).gauge();
        idToGauge[positionId] = gauge;

        // Check that the reward token is valid.
        if (ICLGauge(gauge).rewardToken() != address(REWARD_TOKEN)) revert RewardTokenNotValid();

        // Stake the Liquidity Position.
        POSITION_MANAGER.approve(gauge, positionId);
        ICLGauge(gauge).deposit(positionId);

        // If the Liquidity Position already collected fees,
        // these were claimed during the deposit and send to this contract.
        uint256 balance0 = ERC20(token0).balanceOf(address(this));
        uint256 balance1 = ERC20(token1).balanceOf(address(this));
        if (balance0 > 0) ERC20(token0).safeTransfer(msg.sender, balance0);
        if (balance1 > 0) ERC20(token1).safeTransfer(msg.sender, balance1);

        // Mint the new position, with same id as the underlying position.
        positionId_ = positionId;
        _safeMint(msg.sender, positionId);
    }

    /**
     * @notice Unstakes a staked Slipstream Liquidity Position and claims rewards.
     * @param positionId The id of the position.
     * @return rewards The amount of reward tokens claimed.
     */
    function burn(uint256 positionId) external nonReentrant returns (uint256 rewards) {
        if (_ownerOf[positionId] != msg.sender) revert NotOwner();

        // Unstake the Liquidity Position.
        ICLGauge(idToGauge[positionId]).withdraw(positionId);
        rewards = REWARD_TOKEN.balanceOf(address(this));

        // Burn the position.
        delete idToGauge[positionId];
        _burn(positionId);

        // Pay out the rewards to the position owner.
        if (rewards > 0) {
            // Transfer reward
            REWARD_TOKEN.safeTransfer(msg.sender, rewards);
            // forge-lint: disable-next-line(unsafe-typecast)
            emit RewardPaid(positionId, address(REWARD_TOKEN), uint128(rewards));
        }

        // Transfer the asset back to the position owner.
        POSITION_MANAGER.safeTransferFrom(address(this), msg.sender, positionId);
    }

    /**
     * @notice Claims and transfers the staking rewards of the position.
     * @param positionId The id of the position.
     * @return rewards The amount of reward tokens claimed.
     */
    function claimReward(uint256 positionId) external nonReentrant returns (uint256 rewards) {
        if (_ownerOf[positionId] != msg.sender) revert NotOwner();

        // Claim the rewards from the external staking contract.
        ICLGauge(idToGauge[positionId]).getReward(positionId);
        rewards = REWARD_TOKEN.balanceOf(address(this));

        // Pay out the rewards to the position owner.
        if (rewards > 0) {
            // Transfer reward
            REWARD_TOKEN.safeTransfer(msg.sender, rewards);
            // forge-lint: disable-next-line(unsafe-typecast)
            emit RewardPaid(positionId, address(REWARD_TOKEN), uint128(rewards));
        }
    }

    /**
     * @notice Returns the amount of reward tokens claimable by a position.
     * @param positionId The id of the position to check the rewards for.
     * @return rewards The current amount of reward tokens claimable by the owner of the position.
     */
    function rewardOf(uint256 positionId) public view returns (uint256 rewards) {
        rewards = ICLGauge(idToGauge[positionId]).earned(address(this), positionId);
    }

    /*///////////////////////////////////////////////////////////////
                        ERC-721 LOGIC
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Function that stores a new base URI.
     * @param newBaseURI The new base URI to store.
     */
    // forge-lint: disable-next-item(mixed-case-function,mixed-case-variable)
    function setBaseURI(string calldata newBaseURI) external onlyOwner {
        baseURI = newBaseURI;
    }

    /**
     * @notice Function that returns the token URI as defined in the ERC721 standard.
     * @param tokenId The id of the Account.
     * @return uri The token URI.
     */
    // forge-lint: disable-next-item(mixed-case-function)
    function tokenURI(uint256 tokenId) public view override returns (string memory uri) {
        return bytes(baseURI).length > 0 ? string(abi.encodePacked(baseURI, tokenId.toString())) : "";
    }

    /**
     * @notice Returns the onERC721Received selector.
     */
    // forge-lint: disable-next-item(mixed-case-function)
    function onERC721Received(address, address, uint256, bytes calldata) public pure returns (bytes4) {
        return this.onERC721Received.selector;
    }
}
