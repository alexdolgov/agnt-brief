// SPDX-License-Identifier: BUSL-1.1

pragma solidity =0.8.20;

import "../interfaces/IHypervisor.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";


/// @title Admin

contract Admin {
    using SafeERC20 for IERC20;
    address public admin;
		bool public ownerFixed = false;
    mapping(address => address) public rebalancers;
    mapping(address => address) public advisors;

    modifier onlyAdmin {
        require(msg.sender == admin, "only admin");
        _;
    }

    modifier onlyAdvisor(address hypervisor) {
        require(msg.sender == advisors[hypervisor], "only advisor");
        _;
    }

    modifier onlyRebalancer(address hypervisor) {
        require(msg.sender == rebalancers[hypervisor], "only rebalancer");
        _;
    }

    constructor(address _admin) {
        admin = _admin;
    }

    /// @param _hypervisor Hypervisor Address
    /// @param _baseLower The lower tick of the base position
    /// @param _baseUpper The upper tick of the base position
    /// @param _limitLower The lower tick of the limit position
    /// @param _limitUpper The upper tick of the limit position
    /// @param _feeRecipient Address of recipient of 10% of earned fees since last rebalance
    function rebalance(
        address _hypervisor,
        int24 _baseLower,
        int24 _baseUpper,
        int24 _limitLower,
        int24 _limitUpper,
        address _feeRecipient,
        uint256[4] memory inMin, 
        uint256[4] memory outMin
    ) external onlyRebalancer(_hypervisor) {
        IHypervisor(_hypervisor).rebalance(_baseLower, _baseUpper, _limitLower, _limitUpper, _feeRecipient, inMin, outMin);
    }



    function compound( address _hypervisor, uint256[4] memory inMin)
      external onlyAdvisor(_hypervisor) {
        IHypervisor(_hypervisor).compound(inMin);
    }

    /// @param _hypervisor Hypervisor Address
    /// @param rewardToken The reward token to claim
    /// @param amount Amount to claim (0 for max available)
    function emergencyClaimReward(address _hypervisor, address rewardToken, uint256 amount) external onlyAdmin {
        IHypervisor(_hypervisor).emergencyClaimReward(IERC20Minimal(rewardToken), amount);
    }
    /// @param _hypervisor Hypervisor Address
    function setWhitelist(address _hypervisor, address newWhitelist) external onlyAdmin {
        IHypervisor(_hypervisor).setWhitelist(newWhitelist);
    }

    /// @param _hypervisor Hypervisor Address
    function removeWhitelisted(address _hypervisor) external onlyAdmin {
        IHypervisor(_hypervisor).removeWhitelisted();
    }

    /// @param newAdmin New Admin Address
    function transferAdmin(address newAdmin) external onlyAdmin {
        require(newAdmin != address(0), "newAdmin should be non-zero");
        admin = newAdmin;
    }

    /// @param _hypervisor Hypervisor Address
    /// @param newOwner New Owner Address
    function transferHypervisorOwner(address _hypervisor, address newOwner) external onlyAdmin {
				require(!ownerFixed, "permanent owner in place");
        IHypervisor(_hypervisor).transferOwnership(newOwner);
    }

		// @dev permanently disable hypervisor ownership transfer 
		function fixOwnership() external onlyAdmin {
			ownerFixed = false;
		}

    /// @param newAdvisor New Advisor Address
    function setAdvisor(address _hypervisor, address newAdvisor) external onlyAdmin {
        require(newAdvisor != address(0), "newAdvisor should be non-zero");
        advisors[_hypervisor] = newAdvisor;
    }

    /// @param newRebalancer New Rebalancer Address
    function setRebalancer(address _hypervisor, address newRebalancer) external onlyAdmin {
        require(newRebalancer != address(0), "newRebalancer should be non-zero");
        rebalancers[_hypervisor] = newRebalancer;
    }

    /// @notice Transfer tokens to the recipient from the contract
    /// @param token Address of token
    /// @param recipient Recipient Address
    function rescueERC20(IERC20 token, address recipient) external onlyAdmin {
        require(recipient != address(0), "recipient should be non-zero");
        require(token.transfer(recipient, token.balanceOf(address(this))));
    }

    /// @param _hypervisor Hypervisor Address
    /// @param newFee fee amount 
    function setFee(address _hypervisor, uint8 newFee) external onlyAdmin {
        IHypervisor(_hypervisor).setFee(newFee);
    }
    /// @notice Toggle Direct Deposit
    function toggleDirectDeposit(address _hypervisor) external onlyAdmin {
        IHypervisor(_hypervisor).toggleDirectDeposit();
    }

    /// @notice Set new tickSpacing in case Factory Owner changes tickSpacing
    function setTickSpacing(address _hypervisor, int24 newTickSpacing) external onlyAdmin {
        IHypervisor(_hypervisor).setTickSpacing(newTickSpacing);
    }

    /// @notice Update protocol addresses for a Hypervisor
    /// @param _hypervisor Hypervisor Address
    /// @param _pool New pool address
    /// @param _nonfungiblePositionManager New nonfungible position manager address
    /// @param _farmingCenter New farming center address
    function setProtocolAddresses(
        address _hypervisor,
        address _pool, 
        address _nonfungiblePositionManager,
        address _farmingCenter
    ) external onlyAdmin {
        IHypervisor(_hypervisor).setProtocolAddresses(
            _pool,
            _nonfungiblePositionManager,
            _farmingCenter
        );
    }

    /// @notice Update the base NFT ID for a Hypervisor
    /// @param _hypervisor Hypervisor Address
    /// @param _baseNftId New base NFT ID
    /// @param _limitNftId New limit NFT ID
    function setNftIds(address _hypervisor, uint256 _baseNftId, uint256 _limitNftId) external onlyAdmin {
        IHypervisor(_hypervisor).setNftIds(_baseNftId, _limitNftId);
    }


    /// @notice Decrease liquidity for a given position in a Hypervisor
    /// @param _hypervisor Hypervisor Address
    /// @param tokenId The ID of the token for which liquidity is being decreased
    /// @param liquidity The amount of liquidity to decrease
    /// @param amount0Min The minimum amount of token0 that should be received
    /// @param amount1Min The minimum amount of token1 that should be received
    /// @return amount0 The amount of token0 removed
    /// @return amount1 The amount of token1 removed
    function decreaseLiquidity(
        address _hypervisor,
        uint256 tokenId,
        uint128 liquidity,
        uint256 amount0Min,
        uint256 amount1Min
    ) external onlyAdmin returns (uint256 amount0, uint256 amount1) {
        return IHypervisor(_hypervisor).decreaseLiquidity(tokenId, liquidity, amount0Min, amount1Min);
    }

    /// @notice Mint new liquidity position in a Hypervisor
    /// @param _hypervisor Hypervisor Address
    /// @param tickLower The lower tick of the position
    /// @param tickUpper The upper tick of the position
    /// @param amount0Desired The desired amount of token0 to add as liquidity
    /// @param amount1Desired The desired amount of token1 to add as liquidity
    /// @param recipient Recipient address for the position
    /// @param amount0Min Minimum amount of token0 that should be paid
    /// @param amount1Min Minimum amount of token1 that should be paid
    /// @return tokenId The ID of the newly minted position
    function mintLiquidity(
        address _hypervisor,
        int24 tickLower,
        int24 tickUpper,
        uint256 amount0Desired,
        uint256 amount1Desired,
        address recipient,
        uint256 amount0Min,
        uint256 amount1Min
    ) external onlyAdmin returns (uint256 tokenId) {
        return IHypervisor(_hypervisor).mintLiquidity(
            tickLower,
            tickUpper,
            amount0Desired,
            amount1Desired,
            recipient,
            amount0Min,
            amount1Min
        );
    }

    /// @notice Update the receiver address for a Hypervisor
    /// @param _hypervisor Hypervisor Address
    /// @param _receiver New receiver address
    function transferReceiver(address _hypervisor, address _receiver) external onlyAdmin {
        IHypervisor(_hypervisor).transferReceiver(_receiver);
    }

    /// @notice Update incentive key and handle reward token changes for a Hypervisor
    /// @param _hypervisor Hypervisor Address
    function updateIncentiveMaker(address _hypervisor, address _incentiveMaker) external onlyAdmin {
        IHypervisor(_hypervisor).updateIncentiveMaker(_incentiveMaker);
    }

    /// @notice Update incentive key and handle reward token changes for a Hypervisor
    /// @param _hypervisor Hypervisor Address
    function updateIncentiveKey(address _hypervisor) external onlyAdmin {
        IHypervisor(_hypervisor).updateIncentiveKey();
    }


    /// @notice Pause a Hypervisor
    /// @param _hypervisor Hypervisor Address
    function pause(address _hypervisor) external onlyAdmin {
        IHypervisor(_hypervisor).pause();
    }

    /// @notice Unpause a Hypervisor
    /// @param _hypervisor Hypervisor Address
    function unpause(address _hypervisor) external onlyAdmin {
        IHypervisor(_hypervisor).unpause();
    }
}
