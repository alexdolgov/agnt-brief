// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

interface ILIQStakingDistributor {
    function notifyRewardAmount(address token, uint256 amount) external payable;
}

/// @title TreasuryDistributor
/// @notice Splits protocol treasury funds: 80% to LIQ stakers, 20% to treasury
/// @dev OZ v5 compatible, handles both ERC20 and ETH distributions
contract TreasuryDistributor is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // ========= Errors =========
    error ZeroAddress();
    error TransferFailed();

    // ========= Constants =========
    uint256 public constant LIQ_SHARE_BPS = 8000;      // 80% to LIQ stakers
    uint256 public constant TREASURY_KEEP_BPS = 2000;  // 20% to treasury
    uint256 public constant BPS = 10000;

    // ========= Immutables =========
    address public immutable treasury;
    address public immutable liqStakingDistributor;

    // ========= Events =========
    event FundsDistributed(address indexed token, uint256 toLiqStakers, uint256 toTreasury);

    // ========= Constructor =========
    constructor(address _treasury, address _liqStaking) Ownable(msg.sender) {
        if (_treasury == address(0) || _liqStaking == address(0)) revert ZeroAddress();
        treasury = _treasury;
        liqStakingDistributor = _liqStaking;
    }

    // ========= External Functions =========
    
    /// @notice Distribute a single token's balance
    /// @param token Token address (use address(0) for ETH)
    function distribute(address token) external nonReentrant {
        _distribute(token);
    }
    
    /// @notice Distribute multiple tokens in one transaction
    /// @param tokens Array of token addresses (use address(0) for ETH)
    function distributeMultiple(address[] calldata tokens) external nonReentrant {
        for (uint256 i = 0; i < tokens.length; i++) {
            _distribute(tokens[i]);
        }
    }

    function sweep(address token, address to) external onlyOwner {
        uint256 bal = token == address(0) ? address(this).balance : IERC20(token).balanceOf(address(this));
        if (bal > 0) {
            if (token == address(0)) { (bool ok,) = payable(to).call{value: bal}(""); require(ok, "sweep ETH fail"); }
            else IERC20(token).safeTransfer(to, bal);
        }
    }
    
    // ========= Internal Functions =========
    
    function _distribute(address token) internal {
        if (token == address(0)) {
            // Handle ETH
            uint256 balance = address(this).balance;
            if (balance == 0) return;
            
            uint256 toLiq = (balance * LIQ_SHARE_BPS) / BPS;
            uint256 toTreas = balance - toLiq;
            
            // Send to LIQ stakers
            if (toLiq > 0) {
                ILIQStakingDistributor(liqStakingDistributor).notifyRewardAmount{value: toLiq}(
                    address(0), 
                    toLiq
                );
            }
            
            // Send to treasury
            if (toTreas > 0) {
                (bool success, ) = payable(treasury).call{value: toTreas}("");
                if (!success) revert TransferFailed();
            }
            
            emit FundsDistributed(address(0), toLiq, toTreas);
            
        } else {
            // Handle ERC20
            IERC20 erc = IERC20(token);
            uint256 balance = erc.balanceOf(address(this));
            if (balance == 0) return;
            
            uint256 toLiq = (balance * LIQ_SHARE_BPS) / BPS;
            uint256 toTreas = balance - toLiq;
            
            // For LIQStakingDistributor: it expects to pull tokens via transferFrom
            // So we approve it to pull the tokens
            if (toLiq > 0) {
                erc.forceApprove(liqStakingDistributor, toLiq);
                ILIQStakingDistributor(liqStakingDistributor).notifyRewardAmount(token, toLiq);
                erc.forceApprove(liqStakingDistributor, 0); // Reset allowance for safety
            }
            
            // Send to treasury directly
            if (toTreas > 0) {
                erc.safeTransfer(treasury, toTreas);
            }
            
            emit FundsDistributed(token, toLiq, toTreas);
        }
    }
    
    /// @notice Allow contract to receive ETH
    receive() external payable {}
}