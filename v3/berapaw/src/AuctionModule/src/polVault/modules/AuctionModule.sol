// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.28;

import { IERC4626 } from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

import { IBeraPawForge } from "src/core/interfaces/IBeraPawForge.sol";
import { IPolVault } from "src/polVault/interfaces/IPolVault.sol";
import { HarvestModule } from "../HarvestModule.sol";
import { Constants } from "../../Constants.sol";

contract AuctionModule is HarvestModule {
    IERC20 public immutable asset;
    uint256 public constant BASIS_POINT_SCALE = 1e4;
    
    uint256 public payoutAmount;
    uint256 public rewardVaultSplit;
    bool public isAuctionOpen;
    mapping(address => bool) public auctionAuthorized;

    modifier checkAuctionPerms() {
        require(isAuctionOpen || auctionAuthorized[msg.sender], "Auction not open");
        _;
    }

    event Collected(address indexed sender, address indexed recipient, uint256 amountReceived, uint256 amountPaid);

    constructor(address _polVault, uint256 _rewardVaultSplit, uint256 _payoutAmount) HarvestModule(_polVault) {
        require(_rewardVaultSplit <= BASIS_POINT_SCALE, "Invalid reward vault split");
        require(_payoutAmount > 0, "Invalid payout amount");
        rewardVaultSplit = _rewardVaultSplit;
        payoutAmount = _payoutAmount;
        asset = IERC20(IPolVault(_polVault).asset());
    }

    function setRewardVaultSplit(uint256 _rewardVaultSplit) external onlyAdmin {
        require(_rewardVaultSplit <= BASIS_POINT_SCALE, "Invalid reward vault split");
        rewardVaultSplit = _rewardVaultSplit;
    }

    function setPayoutAmount(uint256 _payoutAmount) external onlyAdmin {
        require(_payoutAmount > 0, "Invalid payout amount");
        payoutAmount = _payoutAmount;
    }

    function setAuctionOpen(bool _isAuctionOpen) external onlyAdmin {
        isAuctionOpen = _isAuctionOpen;
    }

    function setAuctionAuthorized(address _account, bool _isAuthorized) external onlyAdmin {
        auctionAuthorized[_account] = _isAuthorized;
    }

    function harvestCallback(uint256 amount) external override onlyPolVault {
        uint256 rewardVaultAmount = _calculateVaultSplit(amount);
        if (rewardVaultAmount > 0) {
            SafeERC20.safeTransfer(lbgt, address(rewardVault), rewardVaultAmount);
        }
    }

    function collect(address recipient) external checkAuctionPerms {
        // Harvest the vault.
        IPolVault(polVault).harvest();
        // Collect the payout amount of the payout token to the reward contract from msg.sender.
        SafeERC20.safeTransferFrom(asset, msg.sender, address(this), payoutAmount);
        // Transfer the payout amount to the vault.
        SafeERC20.safeTransfer(asset, address(polVault), payoutAmount);
        // Transfer all the LBGT to the recipient.
        uint256 reward = _lbgtBalance();
        SafeERC20.safeTransfer(lbgt, recipient, reward);

        emit Collected(msg.sender, recipient, payoutAmount, reward);
    }

    function keeperReward() public view returns (uint256) {
        uint256 earned = IPolVault(polVault).rewardVaultEarned();
        return lbgt.balanceOf(address(this)) + _subtractReductions(earned);
    }

    function _subtractReductions(uint256 amount) internal view returns (uint256) {
        if (rewardVaultSplit > 0) {
            amount -= _calculateVaultSplit(amount);
        }
        (,uint256 bribeBack) = IBeraPawForge(Constants.BERAPAW_FORGE).bribeBack(address(rewardVault));
        if (bribeBack > 0) {
            amount -= Math.mulDiv(amount, bribeBack, 1e18);
        }
        uint256 performanceFee = IPolVault(polVault).performanceFee();
        if (performanceFee > 0) {
            amount -= Math.mulDiv(amount, performanceFee, 1e4);
        }
        return amount;
    }

    function _calculateVaultSplit(uint256 amount) internal view returns (uint256) {
        return Math.mulDiv(amount, rewardVaultSplit, BASIS_POINT_SCALE);
    }
}
