/**
 * Created by Pragma Labs
 * SPDX-License-Identifier: BUSL-1.1
 */
pragma solidity ^0.8.22;

import { ERC20 } from "../../lib/asset-managers/lib/accounts-v2/lib/solmate/src/tokens/ERC20.sol";
import { ERC721 } from "../../lib/asset-managers/lib/accounts-v2/lib/solmate/src/tokens/ERC721.sol";
import { ICLGauge } from "./interfaces/ICLGauge.sol";
import { ICLPool } from "./interfaces/ICLPool.sol";
import { ICLPositionManager } from "./interfaces/ICLPositionManager.sol";
import { Owned } from "../../lib/asset-managers/lib/accounts-v2/lib/solmate/src/auth/Owned.sol";
import { PoolAddress } from "../../lib/asset-managers/src/rebalancers/libraries/slipstream/PoolAddress.sol";
import { ReentrancyGuard } from "../../lib/asset-managers/lib/accounts-v2/lib/solmate/src/utils/ReentrancyGuard.sol";
import { SafeTransferLib } from "../../lib/asset-managers/lib/accounts-v2/lib/solmate/src/utils/SafeTransferLib.sol";
import { Strings } from "../../lib/asset-managers/lib/accounts-v2/src/libraries/Strings.sol";

/**
 * @title Wrapper for Staked Slipstream Liquidity Positions
 * @author Pragma Labs
 * @dev Wrapper only works for aero as the reward token.
 */
contract WrappedStakedSlipstream is ERC721, Owned, ReentrancyGuard {
    using SafeTransferLib for ERC20;
    using Strings for uint256;

    /* //////////////////////////////////////////////////////////////
                                CONSTANTS
    ////////////////////////////////////////////////////////////// */

    // The contract address of the Aerodrome Token.
    ERC20 public constant AERO = ERC20(0x940181a94A35A4569E4529A3CDfB74e38FD98631);

    // The contract address of the Slipstream Factory.
    address public constant CL_FACTORY = 0x5e7BB104d84c7CB9B682AaC2F3d509f5F406809A;

    // The Slipstream Pool Implementation contract.
    address internal constant POOL_IMPLEMENTATION = 0xeC8E5342B19977B4eF8892e02D8DAEcfa1315831;

    // The contract address of the NonfungiblePositionManager.
    ICLPositionManager public constant POSITION_MANAGER = ICLPositionManager(0x827922686190790b37229fd06084350E74485b72);

    /* //////////////////////////////////////////////////////////////
                                STORAGE
    ////////////////////////////////////////////////////////////// */

    // The baseURI of the ERC721 tokens.
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

    constructor() ERC721("Wrapped Staked Slipstream Positions", "wSSLIPP") Owned(msg.sender) { }

    /*///////////////////////////////////////////////////////////////
                              STAKING LOGIC
    ///////////////////////////////////////////////////////////////*/

    /**
     * @notice Stakes a Slipstream Liquidity Position in its Gauge and mints a new position.
     * @param positionId The id of the Liquidity Position.
     * @return positionId_ The id of the Minted Position.
     * @dev The Minted Position has the same id as the Liquidity Position.
     * @dev The gauge of the pool must have Aero as reward token.
     */
    function mint(uint256 positionId) external nonReentrant returns (uint256 positionId_) {
        POSITION_MANAGER.safeTransferFrom(msg.sender, address(this), positionId);

        // Get the Gauge.
        (,, address token0, address token1, int24 tickSpacing,,,,,,,) = POSITION_MANAGER.positions(positionId);
        address pool = PoolAddress.computeAddress(POOL_IMPLEMENTATION, CL_FACTORY, token0, token1, tickSpacing);
        address gauge = ICLPool(pool).gauge();
        idToGauge[positionId] = gauge;

        // Check that the reward token is aero.
        if (ICLGauge(gauge).rewardToken() != address(AERO)) revert RewardTokenNotValid();

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
        rewards = AERO.balanceOf(address(this));

        // Burn the position.
        delete idToGauge[positionId];
        _burn(positionId);

        // Pay out the rewards to the position owner.
        if (rewards > 0) {
            // Transfer reward
            AERO.safeTransfer(msg.sender, rewards);
            emit RewardPaid(positionId, address(AERO), uint128(rewards));
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
        rewards = AERO.balanceOf(address(this));

        // Pay out the rewards to the position owner.
        if (rewards > 0) {
            // Transfer reward
            AERO.safeTransfer(msg.sender, rewards);
            emit RewardPaid(positionId, address(AERO), uint128(rewards));
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
    function setBaseURI(string calldata newBaseURI) external onlyOwner {
        baseURI = newBaseURI;
    }

    /**
     * @notice Function that returns the token URI as defined in the ERC721 standard.
     * @param tokenId The id of the Account.
     * @return uri The token URI.
     */
    function tokenURI(uint256 tokenId) public view override returns (string memory uri) {
        return bytes(baseURI).length > 0 ? string(abi.encodePacked(baseURI, tokenId.toString())) : "";
    }

    /**
     * @notice Returns the onERC721Received selector.
     */
    function onERC721Received(address, address, uint256, bytes calldata) public pure returns (bytes4) {
        return this.onERC721Received.selector;
    }
}
